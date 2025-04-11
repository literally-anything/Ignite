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
struct GeneratePluginError: Error {
    /// Textual description of the error.
    let message: String
}

@main
struct VulkanGenerate: CommandPlugin {
    /// The main entry point for the plugin.
    func performCommand(context: PluginContext, arguments: [String]) throws {
        try perform(path: context.package.directoryURL, getTool: context.tool)
    }
}

#if canImport(XcodeProjectPlugin)
    import XcodeProjectPlugin

    extension VulkanGenerate: XcodeCommandPlugin {
        /// This entry point is called when operating on an Xcode project.
        func performCommand(context: XcodePluginContext, arguments: [String]) throws {
            try perform(path: context.xcodeProject.directoryURL, getTool: context.tool)
        }
    }
#endif

extension VulkanGenerate {
    /// The generic perform function that is called when the plugin is run from either SwiftPM or Xcode.
    /// - Parameters:
    ///   - path: The path to the package or project.
    ///   - getTool: A closure that can be used to get a command line tool from the context.
    func perform(path: URL, getTool: (String) throws -> PluginContext.Tool) throws {
        // Ensure the package directory exists
        do {
            let values = try path.resourceValues(forKeys: [.isDirectoryKey])
            guard values.isDirectory! else {
                throw GeneratePluginError(message: "Provided package directory is not a directory")
            }
        } catch {
            print("Provided package directory does not exist: \(error)")
            throw error
        }

        let vulkanPath = path.appending(components: ".vulkan-spec-tmp")
        try cloneVulkan(
            to: vulkanPath,
            getTool: getTool
        )

        let specification = vulkanPath.appending(components: "xml", "vk.xml")

        let parser: Parser
        do {
            parser = try Parser(specification: specification)
        } catch {
            print("Error loading the Vulkan specification: \(error). Either the file does not exist or is not a valid XML file.")
            throw error
        }

        print("Parsing the Vulkan specification...")
        try parser.parse()
    }

    /// Clones the Vulkan docs repository into the specified package directory.
    /// - Parameters:
    ///   - destination: The destination directory to clone the Vulkan docs into.
    ///   - getTool: A closure that can be used to get a command line tool from the context.
    func cloneVulkan(
        to destination: URL,
        getTool: (String) throws -> PluginContext.Tool
    ) throws {
        let git: PluginContext.Tool
        do {
            git = try getTool("git")
        } catch {
            print("Error finding git: \(error)")
            throw error
        }

        // Check if the destination directory already exists
        // If it does, we just go into it and pull, otherwise we clone
        if FileManager.default.fileExists(atPath: destination.path()) {
            print("Pulling the Vulkan specification...")
            let ret = try git.run(
                arguments: [
                    "-C", destination.path(),
                    "pull",
                    "--progress"
                ],
                cwd: destination
            )
            guard ret == 0 else {
                print("Error pulling the Vulkan specification: \(ret)")
                throw GeneratePluginError(message: "Error pulling the Vulkan specification: \(ret)")
            }
        } else {
            let packageDir = destination.deletingLastPathComponent()
            print("Cloning the Vulkan specification...")
            let ret = try git.run(
                arguments: [
                    "-C", packageDir.path(),
                    "clone", "https://github.com/KhronosGroup/Vulkan-Docs.git",
                    destination.path(),
                    "--progress"
                ],
                cwd: packageDir
            )
            guard ret == 0 else {
                print("Error cloning the Vulkan specification: \(ret)")
                throw GeneratePluginError(message: "Error cloning the Vulkan specification: \(ret)")
            }
        }
        print("Vulkan specification ready!")
    }
}
