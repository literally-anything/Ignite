/**
 * Parser+Requirements.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/16/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

/// The name of the vulkan api when in an api attribute.
private let vulkanApiName = "vulkan"

extension Parser {
    /// Extract API version information from the XML specification.
    func parseAPIVersions(registry: inout Registry) throws {
        print("Parsing API versions...")
        let featureElements = root.elements(forName: "feature")
        let apiVersions = try featureElements.compactMap { element in
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "feature has no name: \(element)" as GeneratePluginError
            }
            guard let api = element.attribute(forName: "api")?.stringValue?.split(separator: ",") else {
                throw "feature has no api version: \(element)" as GeneratePluginError
            }
            guard let number = element.attribute(forName: "number")?.stringValue else {
                throw "feature has no number: \(element)" as GeneratePluginError
            }
            let sortOrderString = element.attribute(forName: "sortorder")?.stringValue
            let sortorder = sortOrderString != nil ? UInt(sortOrderString!) : nil

            // We don't want to include the vulkan sc versions
            guard name.hasPrefix("VK_VERSION_"), api.contains(vulkanApiName[...]) else {
                return nil as Version?
            }

            try Self.fillRequirements(version: name, element: element, registry: &registry)

            return Version(
                name: name,
                api: api.map { String($0) },
                number: number,
                sortorder: sortorder,
                dependencies: try Self.parseDependencies(string: element.attribute(forName: "requires")?.stringValue)
            )
        }
        registry.apiVersions = apiVersions
    }

    /// Extract the extensions from the XML specification.
    func parseExtensions(registry: inout Registry) throws {
        print("Parsing extensions...")
        let extensionElements = root.elements(forName: "extensions").flatMap { $0.elements(forName: "extension") }
        let extensions = try extensionElements.compactMap { element in
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "extension has no name: \(element)" as GeneratePluginError
            }
            guard let numberString = element.attribute(forName: "number")?.stringValue, let number = UInt(numberString)
            else {
                throw "extension has no number: \(element)" as GeneratePluginError
            }
            var sortorder: UInt? = nil
            if let sortorderString = element.attribute(forName: "sortorder")?.stringValue,
                let extSortorder = UInt(sortorderString)
            {
                sortorder = extSortorder
            }
            guard let supported = element.attribute(forName: "supported")?.stringValue?.split(separator: ",") else {
                throw "extension has no supported attribute: \(element)" as GeneratePluginError
            }
            let type = element.attribute(forName: "type")?.stringValue ?? "device"

            // We don't want to include the vulkan sc extensions
            guard supported.contains(vulkanApiName[...]) else {
                return nil as Extension?
            }

            try Self.fillRequirements(ext: name, element: element, registry: &registry)

            return Extension(
                name: name,
                number: number,
                sortorder: sortorder,
                platform: element.attribute(forName: "platform")?.stringValue,
                kind: type == "instance" ? .instance : .device,
                supported: supported.map { String($0) },
                promotedTo: element.attribute(forName: "promotedto")?.stringValue,
                deprecatedBy: element.attribute(forName: "deprecatedby")?.stringValue,
                obsoletedBy: element.attribute(forName: "obsoletedby")?.stringValue,
                dependencies: try Self.parseDependencies(string: element.attribute(forName: "requires")?.stringValue)
            )
        }
        registry.extensions = extensions
    }

    /// Fill in the requirements for a version or extension in the registry.
    private static func fillRequirements(
        version: String? = nil, ext: String? = nil, element: XMLElement, registry: inout Registry
    ) throws {
        let requirementElements = element.elements(forName: "require")
        guard requirementElements.count > 0 else {
            throw "specification has no requirements" as GeneratePluginError
        }

        /// Update the providers of a command or type with a version or extension.
        func updateProviders(
            component: inout some APIComponent, version: String? = nil, ext: String? = nil
        ) throws {
            if let version {
                let providingVersion = component.providingVersion
                guard providingVersion == nil else {
                    return
                }
                component.providingVersion = version
            } else if let ext {
                if component.providingExtensions == nil {
                    component.providingExtensions = []
                }
                component.providingExtensions!.append(ext)
            } else { fatalError() }
        }

        for element in requirementElements {
            // Deal with commands
            for commandElement in element.elements(forName: "command") {
                guard var name = commandElement.attribute(forName: "name")?.stringValue else {
                    throw "Command requirement has no name: \(commandElement)" as GeneratePluginError
                }
                // Resolve command aliases
                if registry.commandAliases.keys.contains(name) {
                    name = registry.commandAliases[name]!
                }
                // Find the command in the registry
                let commandIndex = registry.commands.firstIndex { $0.name == name }
                guard let commandIndex else {
                    throw "Command requirement isn't found: \(commandElement)" as GeneratePluginError
                }
                // Add the provider to the command
                try updateProviders(component: &registry.commands[commandIndex], version: version, ext: ext)
            }
            // Deal with types
            for typeElement in element.elements(forName: "type") {
                guard var name = typeElement.attribute(forName: "name")?.stringValue else {
                    throw "Type requirement has no name: \(typeElement)" as GeneratePluginError
                }
                // Resolve type aliases
                if registry.aliases.keys.contains(name) {
                    name = registry.aliases[name]!
                }
                // Find the specific kind of type in the registry and add the provider
                if let baseTypeName = registry.baseTypes.keys.first(where: { $0 == name }) {
                    try updateProviders(component: &registry.baseTypes[baseTypeName]!, version: version, ext: ext)
                } else if let enumIndex = registry.enums.firstIndex(where: { $0.name == name }) {
                    try updateProviders(component: &registry.enums[enumIndex], version: version, ext: ext)
                } else if let bitmaskIndex = registry.bitmasks.firstIndex(where: { $0.name == name }) {
                    try updateProviders(component: &registry.bitmasks[bitmaskIndex], version: version, ext: ext)
                } else if registry.handles.keys.contains(name) {
                    try updateProviders(component: &registry.handles[name]!, version: version, ext: ext)
                } else if let structIndex = registry.structs.firstIndex(where: { $0.name == name }) {
                    try updateProviders(component: &registry.structs[structIndex], version: version, ext: ext)
                } else if let unionIndex = registry.unions.firstIndex(where: { $0.name == name }) {
                    try updateProviders(component: &registry.unions[unionIndex], version: version, ext: ext)
                } else if !registry.miscTypes.contains(name), !registry.commands.contains(where: { $0.typeName == name }) {
                    print(registry.commands.map(\.typeName))
                    print(registry.bitmasks.map(\.name))
                    // We don't do anything with misc types or commands, but if it isn't, we want an error
                    throw "Type requirement isn't found: \(typeElement)" as GeneratePluginError
                }
            }
            // Deal with enum cases
            for enumCaseElement in element.elements(forName: "enum") {
                guard let name = enumCaseElement.attribute(forName: "name")?.stringValue else {
                    throw "Enum requirement has no name: \(enumCaseElement)" as GeneratePluginError
                }
                // let alias = enumCaseElement.attribute(forName: "alias")?.stringValue
                if var enumName = enumCaseElement.attribute(forName: "extends")?.stringValue {
                    // This is an enum case
                    if registry.aliases.keys.contains(enumName) {
                        enumName = registry.aliases[enumName]!
                    }
                    if let enumIndex = registry.enums.firstIndex(where: { $0.name == enumName }) {
                        let caseAliasIndex = registry.enums[enumIndex].caseAliases.firstIndex { $0.name == name }
                        let caseIndex = registry.enums[enumIndex].cases.firstIndex { $0.name == name }
                        if let caseAliasIndex {
                            // This is an alias
                            try updateProviders(
                                component: &registry.enums[enumIndex].caseAliases[caseAliasIndex],
                                version: version,
                                ext: ext
                            )
                        } else if let caseIndex {
                            // This is a case
                            try updateProviders(
                                component: &registry.enums[enumIndex].cases[caseIndex],
                                version: version,
                                ext: ext
                            )
                        } else {
                            // This case doesn't already exist, so we need to add it
                            // if let alias {
                            //     // This is an alias
                            //     registry.enums[enumIndex].caseAliases.append(
                            //         Enum.CaseAlias(
                            //             name: name,
                            //             alias: alias,
                            //             comment: enumCaseElement.attribute(forName: "comment")?.stringValue,
                            //             deprecated: enumCaseElement.attribute(forName: "deprecated")?.stringValue
                            //         )
                            //     )
                            // } else {
                            //     // This is a case
                            //     let valueString = try Self.getEnumValue(element: enumCaseElement)
                            //     registry.enums[enumIndex].cases.append(
                            //         Enum.Case(
                            //             name: name,
                            //             value: valueString,
                            //             comment: enumCaseElement.attribute(forName: "comment")?.stringValue,
                            //             deprecated: enumCaseElement.attribute(forName: "deprecated")?.stringValue
                            //         )
                            //     )
                            // }
                        }
                    }
                } else {
                    // This is a constant
                    // Ensure it doesn't already exist in the registry
                    // guard !registry.constantAliases.keys.contains(name), !registry.constants.contains(where: { $0.name == name }) else {
                    //     throw "Constant requirement already exists: \(enumCaseElement)" as GeneratePluginError
                    // }
                    // if let alias {
                    //     registry.constantAliases[name] = alias
                    // } else {
                    //     registry.constants.append(
                    //         Constant(
                    //             name: name,
                    //             type: String,
                    //             value: String,
                    //             comment: enumCaseElement.attribute(forName: "comment")?.stringValue,
                    //             deprecated: enumCaseElement.attribute(forName: "deprecated")?.stringValue
                    //         )
                    //     )
                    // }
                }
            }
        }
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
                } else if let bitposString = enumElement.attribute(forName: "bitpos")?.stringValue,
                    let bitpos = UInt(bitposString)
                {
                    var value: UInt = 1
                    value <<= bitpos
                    requirementValue = .value(String(value))
                } else if let offsetString = enumElement.attribute(forName: "offset")?.stringValue,
                    let offset = UInt(offsetString)
                {
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
