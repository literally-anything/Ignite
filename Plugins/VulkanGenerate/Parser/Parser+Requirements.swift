/**
 * Parser+Requirements.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/16/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

/// The name of the vulkan api when in an api attribute.
private let vulkanApiName: String = "vulkan"

extension Parser {
    /// Extract API version information from the XML specification.
    func parseAPIVersions(registry: inout Registry) throws {
        print("Parsing API versions...")
        let featureElements: [XMLElement] = root.elements(forName: "feature")
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
            let sortOrderString: String? = element.attribute(forName: "sortorder")?.stringValue
            let sortorder: UInt? = sortOrderString != nil ? UInt(sortOrderString!) : nil

            // We don't want to include the vulkan sc versions
            guard name.hasPrefix("VK_VERSION_"), api.contains(vulkanApiName[...]) else {
                return nil as Version?
            }

            let version = Version(
                name: name,
                api: api.map { String($0) },
                number: number,
                sortorder: sortorder,
                element: element,
                dependencies: try Self.parseDependencies(string: element.attribute(forName: "requires")?.stringValue)
            )
            return version
        }
        registry.apiVersions = apiVersions
    }

    /// Extract the extensions from the XML specification.
    func parseExtensions(registry: inout Registry) throws {
        print("Parsing extensions...")
        let extensionElements: [XMLElement] = root.elements(forName: "extensions").flatMap { $0.elements(forName: "extension") }
        let extensions: [Extension] = try extensionElements.compactMap { element in
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

            let kind: Extension.Kind = type == "instance" ? .instance : .device

            let platformName: String? = element.attribute(forName: "platform")?.stringValue
            let platform: Platform? = try platformName.map {
                guard let platform = registry.platforms[$0] else {
                    throw "Extension \(name) has unknown platform: \($0)" as GeneratePluginError
                }
                return platform
            }

            let promotedTo: String? = element.attribute(forName: "promotedto")?.stringValue
            let deprecatedBy: String? = element.attribute(forName: "deprecatedby")?.stringValue
            let obsoletedBy: String? = element.attribute(forName: "obsoletedby")?.stringValue
            let dependencies: Dependencies? = try Self.parseDependencies(string: element.attribute(forName: "requires")?.stringValue)

            let ext = Extension(
                name: name,
                number: number,
                sortorder: sortorder,
                platform: platform,
                kind: kind,
                supported: supported.map { String($0) },
                element: element,
                promotedTo: promotedTo,
                deprecatedBy: deprecatedBy,
                obsoletedBy: obsoletedBy,
                dependencies: dependencies
            )
            return ext
        }
        registry.extensions = extensions
    }

    func fillVersionAndExtensionRequirements(registry: inout Registry) throws {
        print("Filling in version and extension requirements...")

        for version in registry.apiVersions {
            try Self.fillRequirements(version: version, element: version.element, registry: &registry, doAliases: false)
        }
        for ext in registry.extensions {
            try Self.fillRequirements(ext: ext, element: ext.element, registry: &registry, doAliases: false)
        }

        for version in registry.apiVersions {
            try Self.fillRequirements(version: version, element: version.element, registry: &registry, doAliases: true)
        }
        for ext in registry.extensions {
            try Self.fillRequirements(ext: ext, element: ext.element, registry: &registry, doAliases: true)
        }
    }

    /// Fill in the requirements for a version or extension in the registry.
    private static func fillRequirements(
        version: Version? = nil, ext: Extension? = nil, element: XMLElement, registry: inout Registry, doAliases: Bool
    ) throws {
        let requirementElements = element.elements(forName: "require")
        guard requirementElements.count > 0 else {
            throw "specification has no requirements" as GeneratePluginError
        }

        /// Update the providers of a command or type with a version or extension.
        func updateProviders(
            component: inout some APIComponent, version: Version? = nil, ext: Extension? = nil
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
            if let requirementApis = element.attribute(forName: "api")?.stringValue?.split(separator: ",") {
                guard requirementApis.map({ String($0) }).contains(vulkanApiName) else {
                    continue
                }
            }
            if !doAliases {
                // Deal with commands
                for commandElement in element.elements(forName: "command") {
                    if let api = commandElement.attribute(forName: "api")?.stringValue {
                        guard api == vulkanApiName else {
                            continue
                        }
                    }
                    guard var name = commandElement.attribute(forName: "name")?.stringValue else {
                        throw "Command requirement has no name: \(commandElement)" as GeneratePluginError
                    }
                    // Resolve command aliases
                    while registry.commandAliases.keys.contains(name) {
                        name = registry.commandAliases[name]!.alias
                    }
                    // Find the command in the registry
                    let commandIndex = registry.commands.firstIndex { $0.name == name }
                    guard let commandIndex else {
                        throw "Command requirement isn't found: \(commandElement)" as GeneratePluginError
                    }
                    // Add the provider to the command
                    try updateProviders(component: &registry.commands[commandIndex], version: version, ext: ext)

                    // We need to ensure that the scope of the command is correct
                    if let ext {
                        // Extension don't provide lodaer commands, so we don't need to check for that
                        registry.commands[commandIndex].scope = .instance == ext.kind ? .instance : .device
                    }
                }
                // Deal with types
                for typeElement in element.elements(forName: "type") {
                    if let api = typeElement.attribute(forName: "api")?.stringValue {
                        guard api == vulkanApiName else {
                            continue
                        }
                    }
                    guard var name = typeElement.attribute(forName: "name")?.stringValue else {
                        throw "Type requirement has no name: \(typeElement)" as GeneratePluginError
                    }
                    // Resolve tyoe aliases
                    while registry.aliases.keys.contains(name) {
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
                        if !structParserExcludes.contains(name) {
                            // We don't do anything with misc types or commands, but if it isn't, we want an error
                            throw "Type requirement isn't found: \(typeElement)" as GeneratePluginError
                        }
                    }
                }
            }
            // Deal with enum cases
            let possibleEnumCaseElements = element.elements(forName: "enum")
            if !doAliases {
                let enumCasesElements: [XMLElement] = possibleEnumCaseElements.filter { $0.attribute(forName: "alias") == nil }
                for enumCaseElement in enumCasesElements {
                    if let api = enumCaseElement.attribute(forName: "api")?.stringValue {
                        guard api == vulkanApiName else {
                            continue
                        }
                    }
                    guard var name = enumCaseElement.attribute(forName: "name")?.stringValue else {
                        throw "Enum requirement has no name: \(enumCaseElement)" as GeneratePluginError
                    }
                    if let enumName = enumCaseElement.attribute(forName: "extends")?.stringValue {
                        if let enumIndex = registry.enums.firstIndex(where: { $0.name == enumName }) {
                            // Resolve enum case aliases
                            if let resolvedAlias = registry.enums[enumIndex].caseAliases.first(where: { $0.name == name }) {
                                name = resolvedAlias.case.name
                            }
                            let caseIndex = registry.enums[enumIndex].cases.firstIndex { $0.name == name }
                            if let caseIndex {
                                // This is a case
                                try updateProviders(
                                    component: &registry.enums[enumIndex].cases[caseIndex],
                                    version: version,
                                    ext: ext
                                )
                            } else {
                                let valueString = enumCaseElement.attribute(forName: "value")?.stringValue

                                let offsetString = enumCaseElement.attribute(forName: "offset")?.stringValue
                                let extNumberString =
                                    enumCaseElement.attribute(forName: "extnumber")?.stringValue
                                    ?? (ext?.number).map { String($0) }

                                let value: String
                                if let valueString {
                                    value = valueString
                                } else if
                                    let offset = offsetString.map({ Int($0) }), let offset,
                                    let extNumber = extNumberString.map({ Int($0) }), let extNumber
                                {
                                    var numValue = 1_000_000_000 + (1_000 * (extNumber - 1)) + offset
                                    if enumCaseElement.attribute(forName: "dir")?.stringValue == "-" {
                                        numValue = -numValue
                                    }
                                    value = String(numValue)
                                } else {
                                    throw "Enum case has no value or offset: \(enumCaseElement)" as GeneratePluginError
                                }

                                var enumCase = Enum.Case(
                                    name: name,
                                    value: value,
                                    comment: enumCaseElement.attribute(forName: "comment")?.stringValue,
                                    deprecated: enumCaseElement.attribute(forName: "deprecated")?.stringValue
                                )
                                try updateProviders(component: &enumCase, version: version, ext: ext)
                                registry.enums[enumIndex].cases.append(enumCase)
                            }
                        } else if let bitmaskIndex = registry.bitmasks.firstIndex(where: { $0.name == enumName }) {
                            // Resolve enum case aliases
                            if let resolvedAlias = registry.bitmasks[bitmaskIndex].aliases.first(where: { $0.name == name }) {
                                name = resolvedAlias.flag.name
                            }
                            let flagIndex = registry.bitmasks[bitmaskIndex].flags.firstIndex { $0.name == name }
                            if let flagIndex {
                                try updateProviders(
                                    component: &registry.bitmasks[bitmaskIndex].flags[flagIndex],
                                    version: version,
                                    ext: ext
                                )
                            } else {
                                let value: Bitmask.Bitflag.Value
                                if 
                                    let bitposString = enumCaseElement.attribute(forName: "bitpos")?.stringValue,
                                    let bitpos = UInt(bitposString)
                                {
                                    // If we have a bitpos, then be need to shift a 1 left that many bits
                                    value = .bitpos(bitpos)
                                } else {
                                    // If we don't have a bitpos, then we need to get the value from the value attribute
                                    guard let valueString = enumCaseElement.attribute(forName: "value")?.stringValue else {
                                        throw "bitmask flag has no value: \(enumCaseElement)" as GeneratePluginError
                                    }
                                    value = .value(valueString)
                                }

                                var flag = Bitmask.Bitflag(
                                    name: name,
                                    value: value,
                                    comment: enumCaseElement.attribute(forName: "comment")?.stringValue,
                                    deprecated: enumCaseElement.attribute(forName: "deprecated")?.stringValue,
                                )
                                try updateProviders(
                                    component: &flag, version: version, ext: ext
                                )
                                registry.bitmasks[bitmaskIndex].flags.append(flag)
                            }
                        } else {
                            throw "Enum requirement isn't found in enums or bitmasks: \(enumCaseElement)" as GeneratePluginError
                        }
                    }
                }
            } else {
                let enumCaseAliasesElements: [XMLElement] = possibleEnumCaseElements.filter { $0.attribute(forName: "alias") != nil }
                for enumCaseAliasElement in enumCaseAliasesElements {
                    if let api = enumCaseAliasElement.attribute(forName: "api")?.stringValue {
                        guard api == vulkanApiName else {
                            continue
                        }
                    }
                    guard let name = enumCaseAliasElement.attribute(forName: "name")?.stringValue else {
                        throw "Enum alias requirement has no name: \(enumCaseAliasElement)" as GeneratePluginError
                    }
                    guard var alias = enumCaseAliasElement.attribute(forName: "alias")?.stringValue else {
                        throw "Enum alias requirement has no alias: \(enumCaseAliasElement)" as GeneratePluginError
                    }
                    if let enumName = enumCaseAliasElement.attribute(forName: "extends")?.stringValue {
                        if let enumIndex = registry.enums.firstIndex(where: { $0.name == enumName }) {
                            // Resolve enum case aliases
                            if let resolvedAlias = registry.enums[enumIndex].caseAliases.first(where: { $0.name == alias }) {
                                alias = resolvedAlias.case.name
                            }
                            let aliasRef = registry.enums[enumIndex].cases.first { $0.name == alias }
                            guard let aliasRef else {
                                throw "Enum case alias ref not found: \(alias) in \(registry.enums[enumIndex].cases.map(\.name))" as GeneratePluginError
                            }

                            if
                                !registry.enums[enumIndex].caseAliases.contains(where: {
                                    $0.name.replacingOccurrences(of: "_", with: "") == name.replacingOccurrences(of: "_", with: "")
                                }),
                                !registry.enums[enumIndex].cases.contains(where: {
                                    $0.name.replacingOccurrences(of: "_", with: "") == name.replacingOccurrences(of: "_", with: "")
                                })
                            {
                                registry.enums[enumIndex].caseAliases.append(
                                    Enum.CaseAlias(
                                        name: name,
                                        case: aliasRef
                                    )
                                )
                            }
                        } else if let bitmaskIndex = registry.bitmasks.firstIndex(where: { $0.name == enumName }) {
                            // Resolve enum case aliases
                            if let resolvedAlias = registry.bitmasks[bitmaskIndex].aliases.first(where: { $0.name == alias }) {
                                alias = resolvedAlias.flag.name
                            }
                            let aliasRef = registry.bitmasks[bitmaskIndex].flags.first { $0.name == alias }
                            guard let aliasRef else {
                                throw "Bitmask flag alias ref not found: \(alias) in \(registry.bitmasks[bitmaskIndex].flags.map(\.name))" as GeneratePluginError
                            }

                            if
                                !registry.bitmasks[bitmaskIndex].aliases.contains(where: {
                                    $0.name.replacingOccurrences(of: "_", with: "") == name.replacingOccurrences(of: "_", with: "")
                                }),
                                !registry.bitmasks[bitmaskIndex].flags.contains(where: {
                                    $0.name.replacingOccurrences(of: "_", with: "") == name.replacingOccurrences(of: "_", with: "")
                                })
                            {
                                registry.bitmasks[bitmaskIndex].aliases.append(
                                    Bitmask.BitflagAlias(
                                        name: name,
                                        flag: aliasRef
                                    )
                                )
                            }
                        } else {
                            throw "Enum alias requirement isn't found in enums or bitmasks: \(enumCaseAliasElement)" as GeneratePluginError
                        }
                    } else {
                        // handle constants
                    }
                }
            }
        }
    }

    /// Extract the requirements of an API version or an extension from the XML specification.
    private static func parseRequirements(element: XMLElement) throws -> Requirements {
        let requirementElements: [XMLElement] = element.elements(forName: "require")
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
