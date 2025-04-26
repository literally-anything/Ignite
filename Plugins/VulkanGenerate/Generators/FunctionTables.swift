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
    let functions: [(command: Command, trait: String?)] = registry.commands.filter { command in
        command.scope == scope
    }.map { command in
        var platformName: String? = nil
        for extName in command.providingExtensions ?? [] {
            let ext = registry.extensions.first { $0.name == extName }
            if let ext {
                platformName = ext.platform
                break
            }
        }
        if let platformName, let platform = registry.platforms[platformName] {
            return (command: command, trait: platform.traitName)
        }
        return (command: command, trait: nil)
    }

    try modifyFileAtPlaceholder(file: file, markerName: "\(tableName)_TABLE") { contents in
        // Generate the function table
        // We only want commands that match the scope we are currently filling
        var progress: Int = 0
        // A dictionary mapping the name of a trait to the array of variable definitions that only exist with that trait
        var functionTableSections: [String?: [[String]]] = [:]
        for commandInfo in functions {
            let command = commandInfo.command
            print("Looking up docs for \(tableTypeName): \(Int(Double(progress) / Double(functions.count) * 100))%")
            var docs: [String] = []
            do {
                let symbolDocs = try DocsParser.lookupDocsFor(command: command.name, registry: registry)

                try docs.append(contentsOf: symbolDocs.description)
            } catch let e {
                print("Warning: Couldn't load docs for \(command.name): \(e)")
            }

            let formattedDocs = docs.map { "/// \($0)" }
            progress += 1
            // If it's not already in the dictionary, add it
            if !functionTableSections.keys.contains(commandInfo.trait) {
                functionTableSections[commandInfo.trait] = []
            }
            var section: [String] = formattedDocs
            section.append(
                "public let \(command.fixedName): \(command.typeName)!"
            )
            functionTableSections[commandInfo.trait]!.append(section)
        }
        var functionTable = functionTableSections.map { (trait, defs) in
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

        // Insert it into the split file array
        contents[...] = functionTable[...]
    }

    try modifyFileAtPlaceholder(file: file, markerName: "\(tableName)_TABLE_INIT") { contents in
        // Generate the initializer
        // A dictionary mapping the name of a trait to the array of variable assignments that only exist with that trait
        var initLineSections: [String?: [[Substring]]] = [:]
        for commandInfo in functions {
            let command = commandInfo.command
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
            if !initLineSections.keys.contains(commandInfo.trait) {
                initLineSections[commandInfo.trait] = []
            }
            initLineSections[commandInfo.trait]!.append(lines)
        }
        let initLines = initLineSections.map { (trait, assignments) in
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
        contents[...] = initLines[...].trimmingPrefix(["\n"])
    }
}
