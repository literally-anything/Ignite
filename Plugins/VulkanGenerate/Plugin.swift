/**
 * Plugin.swift
 * GeneratePlugin
 *
 * Created by Hunter Baker on 4/11/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

#if canImport(PackagePlugin)
    import PackagePlugin
#endif

/// An error that can occur when running the generate plugin.
struct GeneratePluginError: Error, ExpressibleByStringInterpolation, CustomStringConvertible {
    /// Textual description of the error.
    let message: String
    var description: String { message }
    init(stringLiteral value: String) {
        self.message = value
    }
}

@main
struct VulkanGenerate: CommandPlugin {
    /// The main entry point for the plugin.
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        try await perform(path: context.package.directoryURL, getTool: context.tool)
    }
}

#if canImport(XcodeProjectPlugin)
    import XcodeProjectPlugin

    extension VulkanGenerate: XcodeCommandPlugin {
        /// This entry point is called when operating on an Xcode project.
        func performCommand(context: XcodePluginContext, arguments: [String]) async throws {
            try await perform(path: context.xcodeProject.directoryURL, getTool: context.tool)
        }
    }
#endif

/// The swift-format tool that is used to format the generated code.
nonisolated(unsafe) var swiftFormat: PluginContext.Tool! = nil

extension VulkanGenerate {
    /// The generic perform function that is called when the plugin is run from either SwiftPM or Xcode.
    /// - Parameters:
    ///   - path: The path to the package or project.
    ///   - getTool: A closure that can be used to get a command line tool from the context.
    func perform(path: URL, getTool: (String) throws -> PluginContext.Tool) async throws {
        // Ensure the package directory exists
        do {
            let values = try path.resourceValues(forKeys: [.isDirectoryKey])
            guard values.isDirectory! else {
                throw "Provided package directory is not a directory" as GeneratePluginError
            }
        } catch {
            print("Provided package directory does not exist: \(error)")
            throw error
        }

        // Clone the Vulkan-Headers repository to get the latest specification xml and headers
        let git = try getTool("git")
        let headersRepoPath = path.appending(component: ".vulkan-headers-tmp")
        if !FileManager.default.fileExists(atPath: headersRepoPath.path(percentEncoded: false)) {
            print("Cloning the Vulkan-Headers repository...")
            _ = try git.run(
                arguments: ["clone", "https://github.com/KhronosGroup/Vulkan-Headers.git", ".vulkan-headers-tmp"],
                cwd: path
            )
        } else {
            print("Pulling the Vulkan-Headers repository...")
            _ = try git.run(
                arguments: ["-C", ".vulkan-headers-tmp", "pull"],
                cwd: path
            )
        }

        // Copy both the vulkan and vk_video headers to the include folder
        let headersPath = headersRepoPath.appending(component: "include")
        let dstPath = path.appending(component: "Sources/CVulkan/include")
        for folder in ["vulkan", "vk_video"] {
            if FileManager.default.fileExists(atPath: dstPath.appending(component: folder).path(percentEncoded: false)) {
                try FileManager.default.removeItem(atPath: dstPath.appending(component: folder).path(percentEncoded: false))
            }
            try FileManager.default.copyItem(
                atPath: headersPath.appending(component: folder).path(percentEncoded: false),
                toPath: dstPath.appending(component: folder).path(percentEncoded: false)
            )
        }

        let headerFolders: [String] = [
            "vulkan",
            "vk_video",
        ]
        let subpaths: [URL] = headerFolders.flatMap { folder in
            let folderPath: URL = dstPath.appending(component: folder)
            let folderSubpaths: [URL] = try! FileManager.default.subpathsOfDirectory(
                atPath: folderPath.path(percentEncoded: false)
            ).compactMap { fileName in
                if fileName.hasSuffix(".h") {
                    return nil
                } else {
                    return folderPath.appending(path: fileName)
                }
            }
            return folderSubpaths
        }
        for subpath in subpaths {
            #if canImport(Darwin)
                var isDirObjc: ObjCBool = false
                let exists = FileManager.default.fileExists(atPath: subpath.path(percentEncoded: false), isDirectory: &isDirObjc)
                let isDir: Bool = isDirObjc.boolValue
            #else
                var isDir: Bool = false
                let exists = FileManager.default.fileExists(atPath: subpath.path(percentEncoded: false), isDirectory: &isDir)
            #endif
            if exists && !isDir {
                try FileManager.default.removeItem(atPath: subpath.path(percentEncoded: false))
            }
        }

        // Make the parser
        let specUrl = headersRepoPath.appending(component: "registry/vk.xml")
        let parser: Parser
        do {
            parser = try Parser(specification: specUrl)
        } catch {
            print("Error loading the Vulkan specification: \(error). Either the file does not exist or is not a valid XML file.")
            throw error
        }

        print("Parsing the Vulkan specification...")
        let registry = try parser.parse()

        print(registry)
        print("Parsing done!")

        // Get the swift-format tool
        swiftFormat = try getTool("swift-format")

        // Run the generators
        try generateAPIVersions(packagePath: path, registry: registry)
        try generateExtensions(packagePath: path, registry: registry)
        try generatePlatformTraits(packagePath: path, registry: registry)
        try generateFunctionTables(packagePath: path, registry: registry)
        try generateEnumWrappers(packagePath: path, registry: registry)
        try generateStructWrappers(packagePath: path, registry: registry)
        // try generateHandleWrappers(packagePath: path, registry: registry)
        try generateResultWrappers(packagePath: path, registry: registry)

        print("Done!")
    }
}
