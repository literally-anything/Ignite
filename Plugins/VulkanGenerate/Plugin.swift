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

        let specUrl = URL(string: "https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/refs/heads/main/xml/vk.xml")!

        print("Downloading the Vulkan specification XML file...")
        let parser: Parser
        do {
            parser = try Parser(specification: specUrl)
        } catch {
            print("Error loading the Vulkan specification: \(error). Either the file does not exist or is not a valid XML file.")
            throw error
        }

        print("Parsing the Vulkan specification...")
        let parsedSpec = try parser.parse()
    }
}
