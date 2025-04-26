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

    let loaderFile = packagePath.appendingPathComponent("Sources/Ignite/Loader.swift")
    print("Generating LoaderTable...")
    try generateFunctionTable(
        file: loaderFile, registry: registry, tableName: "LOADER", tableTypeName: "LoaderTable", scope: .loader
    )

    print("Generating InstanceTable...")
    let instanceFile = packagePath.appendingPathComponent("Sources/Ignite/Instance/InstanceTable.swift")
    try generateFunctionTable(
        file: instanceFile, registry: registry, tableName: "INSTANCE", tableTypeName: "InstanceTable", scope: .instance
    )
}

private func generateFunctionTable(
    file: URL, registry: Registry, tableName: String, tableTypeName: String, scope: Command.Scope
) throws {
    /// Gets the platform for the command if it exists.
    func getPlatform(command: Command) -> Platform? {
        var platformName: String? = nil
        for extName in command.providingExtensions ?? [] {
            let ext = registry.extensions.first { $0.name == extName }
            if let ext {
                platformName = ext.platform
                break
            }
        }
        if let platformName, let platform = registry.platforms[platformName] {
            return platform
        }
        return nil
    }

    typealias CommandInfo = (name: String, typeName: String, fixedName: String, trait: String?)
    let commands: [CommandInfo] = registry.commands.filter { command in
        // We only want commands that match the scope we are currently filling
        command.scope == scope
    }.map { command in
        if let platform = getPlatform(command: command) {
            return (command.name, command.typeName, command.fixedName, platform.traitName)
        }
        return (command.name, command.typeName, command.fixedName, nil)
    }
    typealias CommandAliasInfo = (name: String, typeName: String, alias: String, aliasFixed: String, trait: String?)
    let commandAliases: [CommandAliasInfo] = try registry.commandAliases.compactMap { (name, alias) in
        guard let command = registry.commands.first(where: { $0.name == alias }) else {
            throw "Command alias \(name) has no command" as GeneratePluginError
        }
        guard command.scope == scope else {
            return nil
        }
        let aliasName = Command.getFixedName(name: name)
        if let platform = getPlatform(command: command) {
            return (aliasName, command.typeName, command.name, command.fixedName, platform.traitName)
        }
        return (aliasName, command.typeName, command.name, command.fixedName, nil)
    }

    var progress: Int = 0
    // A dictionary mapping the name of a trait to the array of variable definitions that only exist with that trait
    var formattedDocumentationLUT: [String: [String]] = [:]
    var functionTableSections: [String?: [[String]]] = [:]
    for command in commands.sorted(by: { $0.name < $1.name }) {
        let progressPercent = Int(Double(progress) / Double(commands.count) * 100)
        print("Looking up docs for \(tableTypeName): \(progressPercent)%")
        var docs: [String] = []
        do {
            let symbolDocs = try DocsParser.lookupDocsFor(
                command: command.name, registry: registry
            )

            try docs.append(contentsOf: symbolDocs.description)
        } catch let e {
            print("Warning: Couldn't load docs for \(command.name): \(e)")
        }

        let formattedDocs = docs.map { "/// \($0)" }
        progress += 1
        // If it's not already in the dictionary, add it
        if !functionTableSections.keys.contains(command.trait) {
            functionTableSections[command.trait] = []
        }
        var section: [String] = formattedDocs
        section.append(
            "public let \(command.fixedName): \(command.typeName)!"
        )
        functionTableSections[command.trait]!.append(section)

        // Save the docs to the lookup table for use later in aliases
        formattedDocumentationLUT[command.name] = formattedDocs
    }
    for commandAlias in commandAliases.sorted(by: { $0.name < $1.name }) {
        // If it's not already in the dictionary, add it
        if !functionTableSections.keys.contains(commandAlias.trait) {
            functionTableSections[commandAlias.trait] = []
        }
        var section: [String] = formattedDocumentationLUT[commandAlias.alias] ?? []
        section.append("/// - Remark: Alias for \(commandAlias.aliasFixed)")
        section.append(
            "public var \(commandAlias.name): \(commandAlias.typeName)! { \(commandAlias.aliasFixed) }"
        )
        functionTableSections[commandAlias.trait]!.append(section)
    }
    let functionTableSectionsSorted = functionTableSections.keys.sorted { key1, key2 in
        // Nil is always first, but others are sorted by name
        if key1 == nil {
            return true
        } else if key2 == nil {
            return false
        } else {
            return key1! < key2!
        }
    }
    // Generate the function table
    var functionTable = functionTableSectionsSorted.map { trait in
        let defs = functionTableSections[trait]!
        // Compact all the lines into a single array
        var lines: [String] = defs.joined(separator: [""]).map { $0 }
        if let trait {
            // Add some extra indentation to the lines because we are putting them in a #if block
            // Only indent if it is not already a blank line
            lines = lines.map { $0.isEmpty ? "" : ("    \($0)") }
            // Add the #if and #endif lines
            lines.insert("#if \(trait)", at: 0)
            lines.append("#endif\n")
        }
        return lines
    }.joined(separator: [""]).map { $0[...] } // Concatenate each section into one single array of lines
    functionTable.insert("// Generated using header version: \(registry.version)\n", at: 0)
    functionTable.append("")

    try modifyFileAtPlaceholder(file: file, markerName: "\(tableName)_TABLE") { contents in
        // Insert it into the split file array
        contents[...] = functionTable[...]
    }

    // Generate the initializer
    // A dictionary mapping the name of a trait to the array of variable assignments that only exist with that trait
    var initLineSections: [String?: [[Substring]]] = [:]
    for command in commands {
        let lines =
            """
            traceLog("Loading \(command.name) command in \(tableTypeName)")
            self.\(command.fixedName) = unsafeBitCast(
                getInstanceProcAddr(nil, "\(command.name)"),
                to: \(command.typeName).self
            )
            if self.\(command.fixedName) == nil {
                debugLog("Failed to load \(command.name) command in \(tableTypeName)")
            }
            """.split(separator: "\n", omittingEmptySubsequences: false)
        // If it's not already in the dictionary, add it
        if !initLineSections.keys.contains(command.trait) {
            initLineSections[command.trait] = []
        }
        initLineSections[command.trait]!.append(lines)
    }
    let initLineSectionsSorted = initLineSections.keys.sorted { key1, key2 in
        // Nil is always first, but others are sorted by name
        if key1 == nil {
            return true
        } else if key2 == nil {
            return false
        } else {
            return key1! < key2!
        }
    }
    let initLines = initLineSectionsSorted.map { trait in
        let assignments = initLineSections[trait]!
        // Compact all the assignments into a single array of lines
        var lines = assignments.joined(separator: [""]).map { $0 }
        if let trait {
            // Add some extra indentation to the lines because we are putting them in a #if block
            // Only indent if it is not already a blank line
            lines = lines.map { $0.isEmpty ? "" : ("    \($0)") }
            // Add the #if and #endif lines
            lines.insert("#if \(trait)", at: 0)
            lines.append("#endif\n")
        }
        return lines
    }.joined(separator: [""[...]]).map { $0 }

    try modifyFileAtPlaceholder(file: file, markerName: "\(tableName)_TABLE_INIT") { contents in
        contents[...] = initLines[...].trimmingPrefix(["\n"])
    }

    print("Finished generating function table for \(tableTypeName)")
}
