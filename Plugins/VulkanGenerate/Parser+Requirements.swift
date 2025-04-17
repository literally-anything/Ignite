/**
 * Parser+Requirements.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/16/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

extension Parser {
    /// Extract API version information from the XML specification.
    func parseAPIVersions(registry: inout Registry) throws {
        print("Parsing API versions...")
        let featureElements = root.elements(forName: "feature")
        let apiVersions = try featureElements.map { element in
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "feature has no name: \(element)" as GeneratePluginError
            }
            guard let api = element.attribute(forName: "api")?.stringValue else {
                throw "feature has no api version: \(element)" as GeneratePluginError
            }
            let requirements = try Self.parseRequirements(element: element)
            let dependencies = try Self.parseDependencies(string: element.attribute(forName: "depends")?.stringValue)
            return Version(
                name: name,
                api: api,
                dependencies: dependencies,
                requirements: requirements
            )
        }
        registry.apiVersions = apiVersions
    }

    /// Extract the extensions from the XML specification.
    func parseExtensions(registry: inout Registry) throws {
        print("Parsing extensions...")
        let extensionElements = root.elements(forName: "extensions").flatMap { $0.elements(forName: "extension") }
        let extensions = try extensionElements.map { element in
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "extension has no name: \(element)" as GeneratePluginError
            }
            var number: UInt? = nil
            if let numberString = element.attribute(forName: "number")?.stringValue, let extNumber = UInt(numberString) {
                number = extNumber
            }
            var sortorder: UInt? = nil
            if let sortorderString = element.attribute(forName: "sortorder")?.stringValue, let extSortorder = UInt(sortorderString) {
                sortorder = extSortorder
            }
            let type = element.attribute(forName: "type")?.stringValue ?? "device"

            return Extension(
                name: name,
                api: element.attribute(forName: "api")?.stringValue,
                number: number,
                sortorder: sortorder,
                protect: element.attribute(forName: "protect")?.stringValue,
                platform: element.attribute(forName: "platform")?.stringValue,
                kind: type == "instance" ? .instance : .device,
                supported: element.attribute(forName: "supported")?.stringValue,
                ratified: element.attribute(forName: "ratified")?.stringValue,
                promotedto: element.attribute(forName: "promotedto")?.stringValue,
                deprecatedby: element.attribute(forName: "deprecatedby")?.stringValue,
                obsoletedby: element.attribute(forName: "obsoletedby")?.stringValue,
                provisional: element.attribute(forName: "provisional")?.stringValue == "true",
                requirements: try Self.parseRequirements(element: element),
                dependencies: try Self.parseDependencies(string: element.attribute(forName: "depends")?.stringValue)
            )
        }
        registry.extensions = extensions
    }

    /// Extract the requirements of an API version or an extension from the XML specification.
    private static func parseRequirements(element: XMLElement) throws -> Requirements {
        let requirementElements = element.elements(forName: "require")
        guard requirementElements.count > 0 else {
            throw "specification has no requirements" as GeneratePluginError
        }

        var requirements: Requirements = .init(commands: [], types: [], values: [])

        for element in requirementElements {
            for commandElement in element.elements(forName: "command") {
                guard let name = commandElement.attribute(forName: "name")?.stringValue else {
                    throw "command requirement has no name: \(commandElement)" as GeneratePluginError
                }
                requirements.commands.insert(name)
            }
            for typeElement in element.elements(forName: "type") {
                guard let name = typeElement.attribute(forName: "name")?.stringValue else {
                    throw "type requirement has no name: \(typeElement)" as GeneratePluginError
                }
                requirements.types.insert(name)
            }
            for enumElement in element.elements(forName: "enum") {
                guard let name = enumElement.attribute(forName: "name")?.stringValue else {
                    throw "enum requirement has no name: \(enumElement)" as GeneratePluginError
                }

                let requirementValue: RequirementValue.Value
                if let alias = enumElement.attribute(forName: "alias")?.stringValue {
                    requirementValue = .alias(alias)
                } else if let value = enumElement.attribute(forName: "value")?.stringValue {
                    requirementValue = .value(value)
                } else if let bitposString = enumElement.attribute(forName: "bitpos")?.stringValue, let bitpos = UInt(bitposString) {
                    var value: UInt = 1
                    value <<= bitpos
                    requirementValue = .value(String(value))
                } else if let offsetString = enumElement.attribute(forName: "offset")?.stringValue, let offset = UInt(offsetString) {
                    let extNumber = enumElement.attribute(forName: "extnumber")?.stringValue
                    requirementValue = .offset(
                        offset,
                        extNumber: extNumber != nil ? UInt(extNumber!) : nil,
                        negative: enumElement.attribute(forName: "dir")?.stringValue == "-"
                    )
                } else {
                    requirementValue = .constant
                }

                requirements.values.append(
                    RequirementValue(
                        name: name,
                        api: enumElement.attribute(forName: "api")?.stringValue,
                        extends: enumElement.attribute(forName: "extends")?.stringValue,
                        value: requirementValue
                    )
                )
            }
        }
        return requirements
    }

    /// Parse the dependencies of an API version or extension.
    private static func parseDependencies(string: String?) throws -> Dependencies? {
        guard let string else {
            return nil
        }

        enum Token: Equatable {
            case identifier(String)
            case plus
            case comma
            case lparen
            case rparen
        }
        var tokens: [Token] = []
        var i = string.startIndex

        // Tokenize the input string
        func isIdentifierChar(_ char: Character) -> Bool {
            return char.isLetter || char.isNumber || char == "_"
        }
        while i < string.endIndex {
            let ch = string[i]
            switch ch {
                case "+":
                    tokens.append(.plus)
                    i = string.index(after: i)
                case ",":
                    tokens.append(.comma)
                    i = string.index(after: i)
                case "(":
                    tokens.append(.lparen)
                    i = string.index(after: i)
                case ")":
                    tokens.append(.rparen)
                    i = string.index(after: i)
                case " ", "\t", "\n":
                    i = string.index(after: i)
                default:
                    if isIdentifierChar(ch) {
                        var j = i
                        while j < string.endIndex && isIdentifierChar(string[j]) {
                            j = string.index(after: j)
                        }
                        let identifier = String(string[i..<j])
                        tokens.append(.identifier(identifier))
                        i = j
                    } else {
                        throw "Invalid character in dependency string: \(ch)" as GeneratePluginError
                    }
            }
        }

        var pos = 0
        func parsePrimary() throws -> Dependencies {
            guard pos < tokens.count else {
                throw "Unexpected end of input in dependency string: \"\(string)\"" as GeneratePluginError
            }

            switch tokens[pos] {
                case .identifier(let name):
                    pos += 1
                    return .identifier(name: name)
                case .lparen:
                    pos += 1
                    let expr = try parseExpr()
                    guard pos < tokens.count && tokens[pos] == .rparen else {
                        throw "Expected ')' in dependency string: \"\(string)\"" as GeneratePluginError
                    }
                    pos += 1
                    return expr
                default:
                    throw "Unexpected token in dependency string: \"\(tokens[pos])\" in \"\(string)\"" as GeneratePluginError
            }
        }
        func parseExpr() throws -> Dependencies {
            var left = try parsePrimary()

            while pos < tokens.count {
                let op = tokens[pos]
                if op == .plus || op == .comma {
                    pos += 1
                    let right = try parsePrimary()
                    left = (op == .plus) ? .all([left, right]) : .any([left, right])
                } else {
                    break
                }
            }

            return left
        }
        var dependencies = try parseExpr()

        // Simplify the tree
        func simplifyLevel(dependencies: Dependencies) -> Dependencies {
            switch dependencies {
                case .identifier(_):
                    return dependencies
                case .any(let deps):
                    if deps.count == 1 {
                        return deps[0]
                    }
                    let simplifiedDeps = deps.flatMap {
                        if case .any(let innerDeps) = $0 {
                            return innerDeps
                        } else {
                            return [$0]
                        }
                    }.map {
                        simplifyLevel(dependencies: $0)
                    }
                    return .any(simplifiedDeps)
                case .all(let deps):
                    let simplifiedDeps = deps.flatMap {
                        if case .all(let innerDeps) = $0 {
                            return innerDeps
                        } else {
                            return [$0]
                        }
                    }.map {
                        simplifyLevel(dependencies: $0)
                    }
                    return .all(simplifiedDeps)
            }
        }
        dependencies = simplifyLevel(dependencies: dependencies)
        return dependencies
    }
}
