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
        let knownTypes: Set<String> = ["constants", "bitmask", "enum"]
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

        let constantsElement = enums.filter { $0.attribute(forName: "type")?.stringValue == "constants" }
        guard constantsElement.count == 1 else {
            throw "specification should have exactly one enum with type='constants'" as GeneratePluginError
        }
        let (constants, constantAliases) = try Self.parseConstants(constantsElement: constantsElement.first!)
        registry.constants = constants
        registry.constantAliases = constantAliases

        let bitmaskEnums = enums.filter { $0.attribute(forName: "type")?.stringValue == "bitmask" }
        let bitmasks = try Self.parseBitmasks(bitmaskEnums: bitmaskEnums)
        registry.bitmasks = bitmasks

        let realEnumElements = enums.filter { $0.attribute(forName: "type")?.stringValue == "enum" }
        let realEnums = try Self.parseEnums(enumElements: realEnumElements)
        registry.enums = realEnums
    }

    /// Extract the constants from the XML specification.
    private static func parseConstants(constantsElement: XMLElement) throws -> ([Constant], [String: String]) {
        let constantElements = constantsElement.elements(forName: "enum")
        guard constantElements.count > 0 else {
            throw "specification has no constants" as GeneratePluginError
        }

        var constants: [Constant] = []
        var aliases: [String: String] = [:]
        for element in constantElements {
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "constant has no name: \(element)" as GeneratePluginError
            }
            if let alias = element.attribute(forName: "alias")?.stringValue {
                // If we have an alias, then we need to add it to the aliases dictionary
                guard let name = element.attribute(forName: "name")?.stringValue else {
                    throw "constant alias has no name: \(element)" as GeneratePluginError
                }
                aliases[name] = alias
            } else {
                // Otherwise, we need to add it to the constants array
                guard let type = element.attribute(forName: "type")?.stringValue else {
                    throw "constant has no type: \(element)" as GeneratePluginError
                }
                guard let value = element.attribute(forName: "value")?.stringValue else {
                    throw "constant has no value: \(element)" as GeneratePluginError
                }
                constants.append(
                    Constant(
                        name: name,
                        type: type,
                        value: value,
                        comment: element.attribute(forName: "comment")?.stringValue,
                        deprecated: element.attribute(forName: "deprecated")?.stringValue
                    )
                )
            }
        }
        return (constants, aliases)
    }

    /// Extract the bitmasks from the XML specification.
    private static func parseBitmasks(bitmaskEnums: [XMLElement]) throws -> [Bitmask] {
        try bitmaskEnums.map { element in
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
                    let valueString = try getEnumValue(element: flag)
                    flags.append(
                        Bitmask.Bitflag(
                            name: name,
                            value: valueString,
                            comment: flag.attribute(forName: "comment")?.stringValue,
                            deprecated: flag.attribute(forName: "deprecated")?.stringValue
                        )
                    )
                }
            }
            let bitWidth = element.attribute(forName: "bitwidth")?.stringValue ?? "32"
            return Bitmask(
                name: name,
                bitWidth: UInt(bitWidth) ?? 32,
                flags: flags,
                aliases: aliases,
                comment: element.attribute(forName: "comment")?.stringValue,
                deprecated: element.attribute(forName: "deprecated")?.stringValue
            )
        }
    }

    /// Extract the value from the bitmask flag or enum case.
    static func getEnumValue(element: XMLElement) throws -> String {
        let valueString: String
        if let bitposString = element.attribute(forName: "bitpos")?.stringValue, let bitpos = UInt(bitposString) {
            // If we have a bitpos, then be need to shift a 1 left that many bits
            var value: UInt = 1
            value <<= bitpos
            valueString = String(value)
        } else {
            // If we don't have a bitpos, then we need to get the value from the value attribute
            guard let value = element.attribute(forName: "value")?.stringValue else {
                throw "bitmask flag has no value: \(element)" as GeneratePluginError
            }
            valueString = value
        }
        return valueString
    }

    /// Extract the enums from the XML specification.
    private static func parseEnums(enumElements: [XMLElement]) throws -> [Enum] {
        return try enumElements.map { element in
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "Enum has no name: \(element)" as GeneratePluginError
            }
            let bitwidthString = element.attribute(forName: "bitwidth")?.stringValue

            var cases: [Enum.Case] = []
            var caseAliases: [Enum.CaseAlias] = []
            let caseElements = element.elements(forName: "enum")
            for caseElement in caseElements {
                guard let name = caseElement.attribute(forName: "name")?.stringValue else {
                    throw "Enum case has no name: \(caseElement)" as GeneratePluginError
                }
                if let alias = caseElement.attribute(forName: "alias")?.stringValue {
                    // If we have an alias, then we need to add it to the aliases array
                    guard let name = caseElement.attribute(forName: "name")?.stringValue else {
                        throw "Enum case alias has no name: \(caseElement)" as GeneratePluginError
                    }
                    caseAliases.append(
                        Enum.CaseAlias(
                            name: name,
                            extends: caseElement.attribute(forName: "extends")?.stringValue,
                            alias: alias,
                            comment: caseElement.attribute(forName: "comment")?.stringValue,
                            deprecated: caseElement.attribute(forName: "deprecated")?.stringValue
                        )
                    )
                } else {
                    // Otherwise, we need to add it to the cases array
                    guard let value = caseElement.attribute(forName: "value")?.stringValue else {
                        throw "Enum case has no value: \(caseElement)" as GeneratePluginError
                    }
                    cases.append(
                        Enum.Case(
                            name: name,
                            extends: caseElement.attribute(forName: "extends")?.stringValue,
                            value: value,
                            comment: caseElement.attribute(forName: "comment")?.stringValue,
                            deprecated: caseElement.attribute(forName: "deprecated")?.stringValue
                        )
                    )
                }
            }

            return Enum(
                name: name,
                bitwidth: bitwidthString != nil ? UInt(bitwidthString!) : nil,
                cases: cases,
                caseAliases: caseAliases,
                comment: String?(element.attribute(forName: "comment")?.stringValue ?? ""),
                deprecated: String?(element.attribute(forName: "deprecated")?.stringValue ?? "")
            )
        }
    }
}
