/**
 * Parser+Enum.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

extension Parser {
    /// Extract the enums from the XML specification.
    func parseEnums(registry: inout Registry) throws {
        print("Parsing enums...")
        let enums = root.elements(forName: "enums")

        // This doesn't functionally do anything, but it is a good sanity check to make sure we are not missing any enums.
        let knownTypes: Set<String> = ["bitmask"]
        let foundTypes: Set<String> = .init(
            enums.compactMap { enumElement in
                if let type = enumElement.attribute(forName: "type")?.stringValue {
                    return type
                }
                print("Warning: Enum has no type, skipping: \(enumElement)")
                return nil
            }
        )
        print("Found enum types: \(foundTypes)")
        let unknownTypes = foundTypes.subtracting(knownTypes)
        if unknownTypes.count > 0 {
            print("Warning: Unknown enum types found: \(unknownTypes)")
        }

        let bitmaskEnums = enums.filter { $0.attribute(forName: "type")?.stringValue == "bitmask" }
        let bitmasks = try Self.parseBitmasks(bitmaskEnums: bitmaskEnums)
        registry.bitmasks = bitmasks
    }

    /// Extract the bitmasks from the XML specification.
    private static func parseBitmasks(bitmaskEnums: [XMLElement]) throws -> [Bitmask] {
        let bitmasks = try bitmaskEnums.map { element in
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "bitmask has no name: \(element)" as GeneratePluginError
            }

            // Get all the flags and split them into actual flags and
            let foundFlags = element.elements(forName: "enum")
            var flags: [Bitmask.Bitflag] = []
            var aliases: [String: String] = [:]
            for flag in foundFlags {
                guard let name = flag.attribute(forName: "name")?.stringValue else {
                    throw "bitmask flag has no name: \(flag)" as GeneratePluginError
                }
                // Check if we have an alias
                if let alias = flag.attribute(forName: "alias")?.stringValue {
                    aliases[name] = alias
                } else {
                    let valueString: String
                    if let bitposString = flag.attribute(forName: "bitpos")?.stringValue, let bitpos = UInt(bitposString) {
                        // If we have a bitpos, then be need to shift a 1 left that many bits
                        var value: UInt = 1
                        value <<= bitpos
                        valueString = String(value)
                    } else {
                        // If we don't have a bitpos, then we need to get the value from the value attribute
                        guard let value = flag.attribute(forName: "value")?.stringValue else {
                            throw "bitmask flag has no value: \(flag)" as GeneratePluginError
                        }
                        valueString = value
                    }
                    flags.append(
                        Bitmask.Bitflag(
                            name: name,
                            value: valueString,
                            api: flag.attribute(forName: "api")?.stringValue,
                            deprecated: flag.attribute(forName: "deprecated")?.stringValue,
                            comment: flag.attribute(forName: "comment")?.stringValue,
                        )
                    )
                }
            }
            return Bitmask(
                name: name,
                bitWidth: element.attribute(forName: "bitwidth")?.stringValue ?? "32",
                flags: flags,
                aliases: aliases,
                api: element.attribute(forName: "api")?.stringValue
            )
        }
        return bitmasks
    }
}
