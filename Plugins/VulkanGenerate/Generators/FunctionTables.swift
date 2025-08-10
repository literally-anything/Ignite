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
    print("- Generating LoaderTable...")
    try generateFunctionTable(
        file: loaderFile, registry: registry, tableName: "LOADER", tableTypeName: "LoaderTable", scope: .loader
    )

    print("- Generating InstanceTable...")
    let instanceFile = packagePath.appendingPathComponent("Sources/Ignite/InstanceTable.swift")
    try generateFunctionTable(
        file: instanceFile, registry: registry, tableName: "INSTANCE", tableTypeName: "InstanceTable", scope: .instance
    )

    print("- Generating DeviceTable...")
    let deviceFile = packagePath.appendingPathComponent("Sources/Ignite/DeviceTable.swift")
    try generateFunctionTable(
        file: deviceFile, registry: registry, tableName: "DEVICE", tableTypeName: "DeviceTable", scope: .device
    )
}

extension Command {
    /// Gets the names of the extensions that deprecate this command.
    func getDeprecatedByExtension(registry: Registry) -> String? {
        let providingExtensions = providingExtensions ?? []
        let deprecatedByExtensions = providingExtensions.map(\.deprecatedBy)
        guard deprecatedByExtensions.allSatisfy({ $0 != nil }) else {
            return nil
        }
        return "Deprecated by extensions: " + deprecatedByExtensions.map { $0! }.joined(separator: ", ")
    }
}

private func generateFunctionTable(
    file: URL, registry: Registry, tableName: String, tableTypeName: String, scope: Command.Scope
) throws {
    typealias CommandInfo = (command: Command, trait: String?)
    let commands: [CommandInfo] = registry.commands.filter { command in
        // We only want commands that match the scope we are currently filling
        command.scope == scope &&
        // And restrict it to commands that are not in blocked platforms
        !disabledPlatforms.contains(command.platform?.name ?? "")
    }.map { command in
        if let platform = command.platform {
            return (command, platform.traitName)
        }
        return (command, nil)
    }
    typealias CommandAliasInfo = (command: Command, name: String, deprecated: String?, trait: String?)
    let commandAliases: [CommandAliasInfo] = try registry.commandAliases.compactMap { (name, alias) in
        guard let command = registry.commands.first(where: { $0.name == alias.alias }) else {
            throw "Command alias \(name) has no command" as GeneratePluginError
        }
        guard command.scope == scope else {
            return nil
        }
        let aliasName = Command.getFixedName(name: name)
        if let platform = command.platform {
            return (command, aliasName, alias.deprecated, platform.traitName)
        }
        return (command, aliasName, alias.deprecated, nil)
    }

    // A dictionary mapping the name of a trait to the array of variable definitions that only exist with that trait
    var formattedDocumentationLUT: [String: [String]] = [:]
    var functionTableSections: [String?: [[String]]] = [:]
    for commandInfo in commands.sorted(by: { $0.command.name < $1.command.name }) {
        let docs: [String] = (try? commandInfo.command.documentation?.getFunctionDocs()) ?? []

        let formattedDocs = docs.map { "/// \($0)" }
        // If it's not already in the dictionary, add it
        if !functionTableSections.keys.contains(commandInfo.trait) {
            functionTableSections[commandInfo.trait] = []
        }
        var section: [String] = formattedDocs
        // let deprecatedByExtensions = commandInfo.command.getDeprecatedByExtension(registry: registry)
        // if let reason = commandInfo.command.deprecated ?? deprecatedByExtensions {
        //     section.append(
        //         "@available(*, deprecated, message: \"\(reason)\")"
        //     )
        // }
        section.append("@unsafe")
        section.append(
            "public let \(commandInfo.command.fixedName): \(commandInfo.command.typeName)!"
        )
        functionTableSections[commandInfo.trait]!.append(section)

        // Save the docs to the lookup table for use later in aliases
        formattedDocumentationLUT[commandInfo.command.name] = formattedDocs
    }
    for commandAlias in commandAliases.sorted(by: { $0.name < $1.name }) {
        // If it's not already in the dictionary, add it
        if !functionTableSections.keys.contains(commandAlias.trait) {
            functionTableSections[commandAlias.trait] = []
        }
        var section: [String] = formattedDocumentationLUT[commandAlias.command.name] ?? []
        section.append("/// - Remark: Alias for \(commandAlias.command.fixedName)")
        // let deprecatedByExtensions = commandAlias.command.getDeprecatedByExtension(registry: registry)
        // if var reason = commandAlias.command.deprecated ?? commandAlias.command.deprecated ?? deprecatedByExtensions {
        //     if reason == "aliased" {
        //         reason = "This command is aliased to \(commandAlias.name)."
        //     }
        //     section.append(
        //         "@available(*, deprecated, message: \"\(reason)\")"
        //     )
        // }
        section.append("@unsafe")
        section.append(
            "public var \(commandAlias.name): \(commandAlias.command.typeName)! { unsafe \(commandAlias.command.fixedName) }"
        )
        functionTableSections[commandAlias.trait]!.append(section)
    }
    let functionTableSectionsSorted: [String?] = functionTableSections.keys.sorted { key1, key2 in
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
    var functionTable: [String.SubSequence] = functionTableSectionsSorted.map { trait in
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
    for commandInfo in commands {
        let lines =
            """
            traceLog("Loading \(commandInfo.command.name) command in \(tableTypeName)")
            unsafe self.\(commandInfo.command.fixedName) = unsafeBitCast(
                getProcAddr(context, "\(commandInfo.command.name)"),
                to: \(commandInfo.command.typeName).self
            )
            if unsafe self.\(commandInfo.command.fixedName) == nil {
                debugLog("Failed to load \(commandInfo.command.name) command in \(tableTypeName)")
            }
            """.split(separator: "\n", omittingEmptySubsequences: false)
        // If it's not already in the dictionary, add it
        if !initLineSections.keys.contains(commandInfo.trait) {
            initLineSections[commandInfo.trait] = []
        }
        initLineSections[commandInfo.trait]!.append(lines)
    }
    let initLineSectionsSorted: [String?] = initLineSections.keys.sorted { key1, key2 in
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
