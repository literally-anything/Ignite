/**
 * Tool+Process.swift
 * GeneratePlugin
 *
 * Created by Hunter Baker on 4/11/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

#if canImport(PackagePlugin)
    import PackagePlugin
#endif

extension PluginContext.Tool {
    /// Run the tool with the given arguments, environment variables, and working directory.
    /// This waits for the tool to finish and returns the exit code.
    /// - Parameters:
    ///   - arguments: The arguments to pass to the tool.
    ///   - env: The environment variables to set for the tool.
    ///   - cwd: The working directory to run the tool in.
    func run(
        arguments: [String]? = nil,
        env: [String: String]? = nil,
        cwd: URL? = nil
    ) throws -> Int32 {
        let process = Process()

        process.executableURL = url

        process.arguments = arguments
        process.environment = env
        process.currentDirectoryURL = cwd

        try process.run()
        process.waitUntilExit()

        return process.terminationStatus
    }
}
