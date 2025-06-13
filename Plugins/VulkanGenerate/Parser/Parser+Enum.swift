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

        let constantsElement: [XMLElement] = enums.filter { $0.attribute(forName: "type")?.stringValue == "constants" }
        guard constantsElement.count == 1 else {
            throw "specification should have exactly one enum with type='constants'" as GeneratePluginError
        }
        let (constants, constantAliases) = try Self.parseConstants(constantsElement: constantsElement.first!)
        registry.constants = constants
        registry.constantAliases = constantAliases

        let bitmaskEnums: [XMLElement] = enums.filter { $0.attribute(forName: "type")?.stringValue == "bitmask" }
        let bitmaskTypeNodes: [XMLElement] = (try? root.nodes(forXPath: "types/type[@category='bitmask']") as? [XMLElement]) ?? []
        var bitmaskTypes: [(name: String, bitmask: Substring?, type: String)] = []
        for node in bitmaskTypeNodes {
            if let api = node.attribute(forName: "api")?.stringValue, api != "vulkan" {
                // Skip types that are not for Vulkan
                continue
            }
            guard let name = node.elements(forName: "name").first?.stringValue else {
                continue
            }
            let requires =
                node.attribute(forName: "requires")?.stringValue?.split(separator: ",").first ??
                node.attribute(forName: "bitvalues")?.stringValue?.split(separator: ",").first
            guard let type = node.elements(forName: "type").first?.stringValue else {
                continue
            }
            bitmaskTypes.append(
                (name: name, bitmask: requires, type: type)
            )
        }
        var bitmasks: [Bitmask] = try Self.parseBitmasks(bitmaskEnums: bitmaskEnums, registry: registry)
        for bitmaskType in bitmaskTypes {
            if
                let index = bitmasks.firstIndex(where: {
                    bitmaskType.bitmask != nil && $0.name == bitmaskType.bitmask!
                }
            ) {
                bitmasks[index].matchedRawType = bitmaskType.name
            } else {
                let name = bitmaskType.name
                if name.contains("DebugUtilsMessengerCreate") {
                    print("yaaaaa")
                }
                bitmasks.append(
                    Bitmask(
                        name: name,
                        bitWidth: 32,
                        flags: [],
                        aliases: [],
                        matchedRawType: name,
                        comment: nil,
                        deprecated: nil
                    )
                )
            }
        }
        registry.bitmasks = bitmasks

        let realEnumElements: [XMLElement] = enums.filter { $0.attribute(forName: "type")?.stringValue == "enum" }
        let realEnums: [Enum] = try Self.parseEnums(enumElements: realEnumElements, registry: registry)
        registry.enums = realEnums
    }

    /// Extract the constants from the XML specification.
    private static func parseConstants(constantsElement: XMLElement) throws -> ([Constant], [String: String]) {
        let constantElements: [XMLElement] = constantsElement.elements(forName: "enum")
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

                let comment: String? = element.attribute(forName: "comment")?.stringValue
                let deprecated: String? = element.attribute(forName: "deprecated")?.stringValue

                constants.append(
                    Constant(
                        name: name,
                        type: type,
                        value: value,
                        comment: comment,
                        deprecated: deprecated
                    )
                )
            }
        }
        return (constants, aliases)
    }

    /// Extract the bitmasks from the XML specification.
    private static func parseBitmasks(
        bitmaskEnums: [XMLElement],
        registry: Registry
    ) throws -> [Bitmask] {
        print("Parsing bitmasks...")

        var progress: Int = 0
        return try bitmaskEnums.map { element in
            let progressPercent: Int = calculateProgress(current: progress, total: bitmaskEnums.count)
            progress += 1
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "bitmask has no name: \(element)" as GeneratePluginError
            }

            print("Parsing bitmask \(name): \(progressPercent)%")

            // Get all the flags and split them into actual flags and
            let foundFlagElements = element.elements(forName: "enum")
            let foundFlags = foundFlagElements.filter { $0.attribute(forName: "alias") == nil }
            let foundAliases = foundFlagElements.filter { $0.attribute(forName: "alias") != nil }
            var flags: [Bitmask.Bitflag] = []
            var aliases: [Bitmask.BitflagAlias] = []
            for flag in foundFlags {
                guard let name = flag.attribute(forName: "name")?.stringValue else {
                    throw "bitmask flag has no name: \(flag)" as GeneratePluginError
                }
                let value: Bitmask.Bitflag.Value
                if let bitposString = flag.attribute(forName: "bitpos")?.stringValue, let bitpos = UInt(bitposString) {
                    // If we have a bitpos, then be need to shift a 1 left that many bits
                    value = .bitpos(bitpos)
                } else {
                    // If we don't have a bitpos, then we need to get the value from the value attribute
                    guard let valueString = flag.attribute(forName: "value")?.stringValue else {
                        throw "bitmask flag has no value: \(flag)" as GeneratePluginError
                    }
                    value = .value(valueString)
                }

                let comment: String? = flag.attribute(forName: "comment")?.stringValue
                let deprecated: String? = flag.attribute(forName: "deprecated")?.stringValue

                flags.append(
                    Bitmask.Bitflag(
                        name: name,
                        value: value,
                        comment: comment,
                        deprecated: deprecated
                    )
                )
            }
            for alias in foundAliases {
                guard let name = alias.attribute(forName: "name")?.stringValue else {
                    throw "bitmask flag alias has no name: \(alias)" as GeneratePluginError
                }
                guard let aliasName = alias.attribute(forName: "alias")?.stringValue else {
                    throw "bitmask flag alias has no alias: \(alias)" as GeneratePluginError
                }

                let flag: Bitmask.Bitflag? = flags.first { $0.name == aliasName }

                guard let flag else {
                    throw "bitmask flag alias \(name) extends unknown flag \(aliasName): \(alias)" as GeneratePluginError
                }

                aliases.append(
                    Bitmask.BitflagAlias(
                        name: name,
                        flag: flag
                    )
                )
            }
            let bitWidth: String = element.attribute(forName: "bitwidth")?.stringValue ?? "32"

            let mask = Bitmask(
                name: name,
                bitWidth: UInt(bitWidth) ?? 32,
                flags: flags,
                aliases: aliases,
                comment: element.attribute(forName: "comment")?.stringValue,
                deprecated: element.attribute(forName: "deprecated")?.stringValue
            )
            do {
                mask.documentation = try DocsParser(for: name, registry: registry)
            } catch let error {
                print("Warning: Enum has no documentation: \(element), \(error.localizedDescription)")
            }
            return mask
        }
    }

    /// Extract the enums from the XML specification.
    private static func parseEnums(enumElements: [XMLElement], registry: Registry) throws -> [Enum] {
        print("Parsing enums...")

        var progress: Int = 0
        let enums: [Enum] = try enumElements.map { element in
            let progressPercent: Int = calculateProgress(current: progress, total: enumElements.count)
            progress += 1
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "Enum has no name: \(element)" as GeneratePluginError
            }
            let bitwidthString = element.attribute(forName: "bitwidth")?.stringValue

            print("Parsing enum \(name): \(progressPercent)%")

            var cases: [Enum.Case] = []
            var caseAliases: [Enum.CaseAlias] = []
            let possbleCaseElements: [XMLElement] = element.elements(forName: "enum")
            let caseElements = possbleCaseElements.filter { $0.attribute(forName: "alias") == nil }
            let caseAliasElements = possbleCaseElements.filter { $0.attribute(forName: "alias") != nil }
            for caseElement in caseElements {
                guard let name = caseElement.attribute(forName: "name")?.stringValue else {
                    throw "Enum case has no name: \(caseElement)" as GeneratePluginError
                }
                guard let value = caseElement.attribute(forName: "value")?.stringValue else {
                    throw "Enum case has no value: \(caseElement)" as GeneratePluginError
                }

                let extends: String? = caseElement.attribute(forName: "extends")?.stringValue
                let comment: String? = caseElement.attribute(forName: "comment")?.stringValue
                let deprecated: String? = caseElement.attribute(forName: "deprecated")?.stringValue

                cases.append(
                    Enum.Case(
                        name: name,
                        extends: extends,
                        value: value,
                        comment: comment,
                        deprecated: deprecated
                    )
                )
            }
            for caseAliasElement in caseAliasElements {
                guard let name = caseAliasElement.attribute(forName: "name")?.stringValue else {
                    throw "Enum case alias has no name: \(caseAliasElement)" as GeneratePluginError
                }
                guard let aliasName = caseAliasElement.attribute(forName: "alias")?.stringValue else {
                    throw "Enum case alias has no alias: \(caseAliasElement)" as GeneratePluginError
                }

                guard let alias = cases.first(where: { $0.name == aliasName }) else {
                    throw "Enum case alias \(name) points to unknown case \(aliasName): \(caseAliasElement)" as GeneratePluginError
                }

                if !caseAliases.contains(where: { $0.name == name }) {
                    caseAliases.append(
                        Enum.CaseAlias(
                            name: name,
                            case: alias
                        )
                    )
                }
            }

            let comment: String? = element.attribute(forName: "comment")?.stringValue
            let deprecated: String? = element.attribute(forName: "deprecated")?.stringValue

            let enumeration = Enum(
                name: name,
                bitwidth: bitwidthString != nil ? UInt(bitwidthString!) : nil,
                cases: cases,
                caseAliases: caseAliases,
                comment: comment,
                deprecated: deprecated
            )
            do {
                enumeration.documentation = try DocsParser(for: name, registry: registry)
            } catch let error {
                print("Warning: Enum has no documentation: \(element), \(error.localizedDescription)")
            }
            return enumeration
        }
        return enums
    }
}
