/**
 * FunctionTables.swift
 * Generators
 *
 * Created by Hunter Baker on 4/20/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

/// Generates the function tables for Vulkan commands and inserts them into the sources of the Ignite module.
func generateFunctionTables(packagePath: URL, registry: Registry) throws {
    print("Generating function tables...")
    try generateLoaderFunctionTable(packagePath: packagePath, registry: registry)
}

private func generateLoaderFunctionTable(packagePath: URL, registry: Registry) throws {
    // Read the Loader.swift source file
    let loaderFile = packagePath.appendingPathComponent("Sources/Ignite/Loader/Loader.swift").path()
    guard FileManager.default.isReadableFile(atPath: loaderFile) else {
        throw "Loader.swift not found at path: \(loaderFile)" as GeneratePluginError
    }
    var loaderFileContents = try String(
        contentsOfFile: loaderFile, encoding: .utf8
    ).split(separator: "\n", omittingEmptySubsequences: false)  // We want to keep blank lines

    // Find the delimeters for the function table
    let beginLine = loaderFileContents.firstIndex { $0.contains("BEGIN_GENERATE_LOADER_TABLE") }
    guard let beginLine = beginLine else {
        throw "BEGIN_GENERATE_LOADER_TABLE not found in \(loaderFile)" as GeneratePluginError
    }
    let endLine = loaderFileContents.firstIndex { $0.contains("END_GENERATE_LOADER_TABLE") }
    guard let endLine = endLine else {
        throw "END_GENERATE_LOADER_TABLE not found in \(loaderFile)" as GeneratePluginError
    }
    let indentation = loaderFileContents[beginLine][..<loaderFileContents[beginLine].firstIndex(of: "/")!]

    // Generate the function table
    let functions = registry.commands.filter { $0.scope == .loader }
    var functionTable = functions.map { command in
        var docs: [String] = []
        do {
            let symbolDocs = try DocsParser.lookupDocsFor(command: command.name)

            try docs.append(contentsOf: symbolDocs.description)
        } catch let e {
            print("Warning: Couldn't load docs for \(command.name): \(e)")
        }

        let formattedDocs = docs.map { "\(indentation)/// \($0)" }.joined(separator: "\n")
        return "\n\(formattedDocs)\n\(indentation)public let \(command.fixedName): \(command.typeName)!"[...]
    }
    functionTable.insert("\(indentation)// Generated \(Date.now)", at: 0)
    functionTable.append("")

    // Insert it into the split file array
    loaderFileContents[beginLine + 1..<endLine] = functionTable[...]

    // Find the delimeters for the initializer
    let beginInitLine = loaderFileContents.firstIndex { $0.contains("BEGIN_GENERATE_LOADER_TABLE_INIT") }
    guard let beginInitLine = beginInitLine else {
        throw "BEGIN_GENERATE_LOADER_TABLE_INIT not found in \(loaderFile)" as GeneratePluginError
    }
    let endInitLine = loaderFileContents.firstIndex { $0.contains("END_GENERATE_LOADER_TABLE_INIT") }
    guard let endInitLine = endInitLine else {
        throw "END_GENERATE_LOADER_TABLE_INIT not found in \(loaderFile)" as GeneratePluginError
    }
    let initIndentation = loaderFileContents[beginInitLine][..<loaderFileContents[beginInitLine].firstIndex(of: "/")!]

    // Generate the initializer
    let initLines = functions.map { command in
        return 
            """
            \n\
            \(initIndentation)traceLog("Loading \(command.name) command in InstanceTable")
            \(initIndentation)self.\(command.fixedName) = unsafeBitCast(
            \(initIndentation)    getInstanceProcAddr(nil, "\(command.name)"),
            \(initIndentation)    to: \(command.typeName).self
            \(initIndentation))
            \(initIndentation)if self.\(command.fixedName) == nil {
            \(initIndentation)    debugLog("Failed to load \(command.name) command in InstanceTable")
            \(initIndentation)}
            """[...]
    }
    loaderFileContents[beginInitLine + 1..<endInitLine] = initLines[...].trimmingPrefix(["\n"])

    // Write the modified file back to disk
    try loaderFileContents.joined(separator: "\n").write(
        toFile: loaderFile,
        atomically: true,
        encoding: .utf8
    )
}
