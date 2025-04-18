/**
 * Parser+Type.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

extension Parser {
    /// Extract the types from the XML specification.
    func parseTypes(registry: inout Registry) throws {
        print("Parsing types...")
        let types = (try? root.nodes(forXPath: "types/type"))?.compactMap { $0 as? XMLElement } ?? []
        guard types.count > 0 else {
            throw "specification has no types" as GeneratePluginError
        }

        // This doesn't functionally do anything, but it is a good sanity check to make sure we are not missing any types.
        let knownCategories: Set<String?> = ["basetype"]
        let foundCategories: Set<String?> = .init(
            types.compactMap { typeElement in
                typeElement.attribute(forName: "category")?.stringValue
            }
        )
        print("Found type categories: \(foundCategories.map { $0 ?? "nil" })")
        let unknownCategories = foundCategories.subtracting(knownCategories)
        if unknownCategories.count > 0 {
            print("Warning: Unknown type categories found: \(unknownCategories.map { $0 ?? "nil" })")
        }

        let aliasTypes = types.filter {
            $0.attribute(forName: "alias") != nil && $0.attribute(forName: "name") != nil
        }
        let aliases = try Self.parseAliases(aliasElements: aliasTypes)
        registry.aliases = aliases

        let baseTypeElements = types.filter { $0.attribute(forName: "category")?.stringValue == "basetype" }
        let baseTypes = try Self.parseBaseTypes(baseTypeElements: baseTypeElements)
        registry.baseTypes = baseTypes

        let handleElements = types.filter { $0.attribute(forName: "category")?.stringValue == "handle" }
        let (handles, handleAliases) = try Self.parseHandleTypes(handleElements: handleElements)
        registry.handles = handles
        registry.handleAliases = handleAliases
    }

    /// Extract the aliases from the XML specification.
    private static func parseAliases(aliasElements: [XMLElement]) throws -> [String: String] {
        try aliasElements.map {
            guard let name = $0.attribute(forName: "name")!.stringValue else {
                throw "alias has no name: \($0)" as GeneratePluginError
            }
            guard let alias = $0.attribute(forName: "alias")!.stringValue else {
                throw "alias has no alias: \($0)" as GeneratePluginError
            }
            return (name, alias)
        }.reduce(into: [:]) { result, pair in
            // Turn the array of tuples into a dictionary.
            result[pair.0] = pair.1
        }
    }

    /// Extract the base types from the XML specification.
    private static func parseBaseTypes(baseTypeElements: [XMLElement]) throws -> [BaseType] {
        try baseTypeElements.map { baseType in
            // The name is always annotated
            let name = baseType.elements(forName: "name").first?.stringValue
            guard let name else {
                throw "base type has no name: \(baseType)" as GeneratePluginError
            }

            // Separate the contents of the baseType into tokens for easier parsing
            guard let children = baseType.children, children.count > 0 else {
                throw "base type has no children: \(baseType)" as GeneratePluginError
            }
            let tokens = children.flatMap { node in
                node.stringValue?.components(separatedBy: .whitespacesAndNewlines).filter { token in
                    token.count > 0
                } ?? []
            }

            let pickedName: String
            let pickedDefinition: BaseType.Definition
            if tokens[0] == "struct" {
                // If the first token is a struct, then it is a forward declaration of a struct for a native type
                var use = tokens[1]
                if use.hasSuffix(";") {
                    use.removeLast()
                }
                pickedName = name
                pickedDefinition = .native(use: use)
            } else if tokens[0] == "typedef" {
                // If the first token is a typedef, then we need to figure out whether it is a typedef of a native type or a primitive
                if tokens[1] == "struct" {
                    // If the second token is a struct, then it is a forward declaration of a struct for a native type
                    guard var index = tokens.firstIndex(where: { $0.contains(";") }) else {
                        throw "base struct declaration has no type: \(baseType)" as GeneratePluginError
                    }
                    if tokens[index] == ";" {
                        index -= 1
                    }

                    pickedName = name
                    pickedDefinition = .native(
                        use: tokens[2..<index].joined(separator: " ").trimmingCharacters(in: .whitespacesAndNewlines)
                    )
                } else {
                    // If the second token is not a struct, then it is a typedef of a primitive type
                    guard var index = tokens.firstIndex(where: { $0.contains(";") }) else {
                        throw "base typedef has no type: \(baseType)" as GeneratePluginError
                    }
                    if tokens[index] == ";" {
                        index -= 1
                    }

                    let type = tokens[1..<index].joined(separator: " ").trimmingCharacters(in: .whitespacesAndNewlines)
                    pickedName = name
                    pickedDefinition = .typedef(type: type)
                }
            } else {
                // If the first token is not a typedef, then it is a forward declaration of a native type with some extra junk surrounding it
                // Find the index of the first typedef keyword and start after that
                guard var startIndex = tokens.firstIndex(of: "typedef") else {
                    throw "base typedef has no type: \(baseType)" as GeneratePluginError
                }
                startIndex += 1
                // Find the index of the first semicolon after the typedef keyword and end before that
                guard var endIndex = tokens[startIndex...].firstIndex(where: { $0.contains(";") }) else {
                    throw "base typedef has no type: \(baseType)" as GeneratePluginError
                }
                if tokens[endIndex] == ";" {
                    endIndex -= 1
                }

                // If the definition contains an ObjC identifier like @class or @protocol, then we need to handle it differently
                if let objcKindIndex = tokens.firstIndex(where: { $0.starts(with: "@") }) {
                    // We need to figure out the kind of ObjC identifier it is
                    let objcKind = String(tokens[objcKindIndex].trimmingPrefix("@"))
                    var actualName = tokens[objcKindIndex + 1]
                    if actualName.hasSuffix(";") {
                        actualName.removeLast()
                    }
                    let use = tokens[startIndex..<endIndex].joined(separator: " ")
                    pickedName = name
                    pickedDefinition = .nativeObjC(
                        actual: actualName,
                        kind: objcKind,
                        use: objcKind == "class" ? actualName : use  // If it's a class, what it is typedefed to is irrelevant
                    )
                } else {
                    // If there is no ObjC identifier, then we can just use the type as a normal native type
                    pickedName = name
                    pickedDefinition = .native(
                        use: tokens[startIndex..<endIndex].joined(separator: " ")
                    )
                }
            }

            return BaseType(
                name: pickedName,
                definition: pickedDefinition,
                api: baseType.attribute(forName: "api")?.stringValue,
                deprecated: baseType.attribute(forName: "deprecated")?.stringValue,
                comment: baseType.attribute(forName: "comment")?.stringValue
            )
        }
    }

    /// Parse handle types from the XML specification.
    private static func parseHandleTypes(handleElements: [XMLElement]) throws -> ([Handle], [HandleAlias]) {
        var handles: [Handle] = []
        var handleAliases: [HandleAlias] = []
        for element in handleElements {
            let api = element.attribute(forName: "api")?.stringValue
            let comment = element.attribute(forName: "comment")?.stringValue
            let protect = element.attribute(forName: "protect")?.stringValue
            let deprecated = element.attribute(forName: "deprecated")?.stringValue
            if let alias = element.attribute(forName: "alias")?.stringValue {
                guard let name = element.attribute(forName: "name")?.stringValue else {
                    throw "Handle has no name: \(element)" as GeneratePluginError
                }
                handleAliases.append(
                    HandleAlias(
                        name: name,
                        alias: alias,
                        api: api,
                        comment: comment,
                        protect: protect,
                        deprecated: deprecated
                    )
                )
            } else {
                guard let name = element.elements(forName: "name").first?.stringValue else {
                    throw "Handle has no name: \(element)" as GeneratePluginError
                }
                guard let type = element.elements(forName: "type").first?.stringValue else {
                    throw "Handle has no type: \(element)" as GeneratePluginError
                }
                let dispatchable = type.trimmingCharacters(in: .whitespacesAndNewlines) == "VK_DEFINE_HANDLE"

                guard let objectType = element.attribute(forName: "objtypeenum")?.stringValue else {
                    throw "Handle has no object type: \(element)" as GeneratePluginError
                }

                handles.append(
                    Handle(
                        name: name,
                        objectType: objectType,
                        parent: element.attribute(forName: "parent")?.stringValue,
                        dispatchable: dispatchable,
                        api: api,
                        comment: comment,
                        protect: protect,
                        deprecated: deprecated
                    )
                )
            }
        }
        return (handles, handleAliases)
    }
}
