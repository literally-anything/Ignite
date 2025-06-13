/**
 * Parser+Type.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

let structParserExcludes: Set<String> = [
    "VkBaseOutStructure",
    "VkBaseInStructure"
]

extension Parser {
    /// Extract the types from the XML specification.
    func parseTypes(registry: inout Registry) throws {
        print("Parsing types...")
        let types: [XMLElement] = (try? root.nodes(forXPath: "types/type"))?.compactMap { $0 as? XMLElement } ?? []
        guard types.count > 0 else {
            throw "specification has no types" as GeneratePluginError
        }

        // This doesn't functionally do anything, but it is a good sanity check to make sure we are not missing any types.
        let knownCategories: Set<String> = ["basetype", "handle", "struct", "union", "include", "define", "funcpointer", "bitmask"]
        let foundCategories: Set<String> = .init(
            types.compactMap { typeElement in
                typeElement.attribute(forName: "category")?.stringValue
            }
        )
        print("Found type categories: \(foundCategories)")
        let unknownCategories = foundCategories.subtracting(knownCategories)
        if unknownCategories.count > 0 {
            print("Warning: Unknown type categories found: \(unknownCategories)")
        }

        let aliasTypes: [XMLElement] = types.filter {
            $0.attribute(forName: "alias") != nil && $0.attribute(forName: "name") != nil
        }
        let aliases = try Self.parseAliases(aliasElements: aliasTypes)
        registry.aliases = .init(uniqueKeysWithValues: aliases.map { ($0.name, $0.alias) })

        let absoluteTypes: [XMLElement] = types.filter {
            $0.attribute(forName: "alias") == nil &&
            !structParserExcludes.contains($0.attribute(forName: "name")?.stringValue ?? "")
        }

        let baseTypeElements: [XMLElement] = absoluteTypes.filter { $0.attribute(forName: "category")?.stringValue == "basetype" }
        var baseTypes = try Self.parseBaseTypes(baseTypeElements: baseTypeElements)
        let platformBaseTypes: [XMLElement] = absoluteTypes.filter {
            $0.attribute(forName: "requires")?.stringValue?.hasSuffix(".h") ?? false
        }
        baseTypes.append(contentsOf: try Self.parsePlatformBaseTypes(baseTypeElements: platformBaseTypes))
        registry.baseTypes = .init(uniqueKeysWithValues: baseTypes.map { ($0.name, $0) })

        let handleElements: [XMLElement] = absoluteTypes.filter { $0.attribute(forName: "category")?.stringValue == "handle" }
        let handles = try Self.parseHandleTypes(handleElements: handleElements)
        registry.handles = .init(uniqueKeysWithValues: handles.map { ($0.name, $0) })

        let structElements: [XMLElement] = absoluteTypes.filter { $0.attribute(forName: "category")?.stringValue == "struct" }
        let structs = try parseStructs(structElements: structElements, registry: registry)
        registry.structs = structs

        let unionElements: [XMLElement] = absoluteTypes.filter { $0.attribute(forName: "category")?.stringValue == "union" }
        let unions = try parseUnions(unionElements: unionElements)
        registry.unions = unions

        let miscElements: [XMLElement] = absoluteTypes.filter {
            $0.attribute(forName: "category")?.stringValue == "include"
                || $0.attribute(forName: "category")?.stringValue == "define"
                || $0.attribute(forName: "category")?.stringValue == "funcpointer"
                || $0.attribute(forName: "category")?.stringValue == "bitmask"
        }
        registry.miscTypes = miscElements.compactMap { element in
            // Use either the name attribute or the name element
            element.attribute(forName: "name")?.stringValue ?? element.elements(forName: "name").first?.stringValue
        }
    }

    /// Extract the aliases from the XML specification.
    private static func parseAliases(aliasElements: [XMLElement]) throws -> [(name: String, alias: String)] {
        try aliasElements.map { element in
            guard let name = element.attribute(forName: "name")!.stringValue else {
                throw "alias has no name: \(element)" as GeneratePluginError
            }
            guard let alias = element.attribute(forName: "alias")!.stringValue else {
                throw "alias has no alias: \(element)" as GeneratePluginError
            }
            return (name, alias)
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
                comment: baseType.attribute(forName: "comment")?.stringValue,
                deprecated: baseType.attribute(forName: "deprecated")?.stringValue
            )
        }
    }

    /// Extract the platform-specific base types from the XML specification.
    private static func parsePlatformBaseTypes(baseTypeElements: [XMLElement]) throws -> [BaseType] {
        try baseTypeElements.map { baseType in
            // The name is always annotated
            let name = baseType.attribute(forName: "name")?.stringValue
            guard let name else {
                throw "base type has no name: \(baseType)" as GeneratePluginError
            }

            return BaseType(
                name: name,
                definition: .native(use: name),
                comment: nil,
                deprecated: nil
            )
        }
    }

    /// Parse handle types from the XML specification.
    private static func parseHandleTypes(
        handleElements: [XMLElement]
    ) throws -> [Handle] {
        var handles: [Handle] = []
        for element in handleElements {
            let comment = element.attribute(forName: "comment")?.stringValue
            let deprecated = element.attribute(forName: "deprecated")?.stringValue
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
                    comment: comment,
                    deprecated: deprecated
                )
            )
        }
        return handles
    }

    /// Parse the structs from the XML specification.
    private func parseStructs(structElements: [XMLElement], registry: Registry) throws -> [Struct] {
        try structElements.map { element in
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "Struct has no name: \(element)" as GeneratePluginError
            }
            let memberElements = element.elements(forName: "member")
            let members = try memberElements.map { memberElement in
                guard let name = memberElement.elements(forName: "name").first?.stringValue else {
                    throw "Struct member has no name: \(memberElement)" as GeneratePluginError
                }

                let strippedMember = try! XMLElement(xmlString: memberElement.xmlString)
                for (index, child) in strippedMember.children!.enumerated().reversed() {
                    if child.name == "comment" || child.name == "name" {
                        strippedMember.removeChild(at: index)
                    }
                }

                let type = strippedMember.stringValue!
                guard let baseType = memberElement.elements(forName: "type").first?.stringValue else {
                    throw "Can't find the base type of the structure: \(memberElement)" as GeneratePluginError
                }
                let valuesArray = memberElement.attribute(forName: "values")?.stringValue?.split(separator: ",").map {
                    String($0)
                }
                let values = valuesArray != nil ? Set(valuesArray!) : nil

                let length: [String]? = memberElement.attribute(forName: "len")?.stringValue?.split(separator: ",").map({
                    String($0)
                })
                let altlen: [String]? = memberElement.attribute(forName: "altlen")?.stringValue?.split(separator: ",").map({
                    String($0)
                })
                let stride: [String]? = memberElement.attribute(forName: "stride")?.stringValue?.split(separator: ",").map({
                    String($0)
                })
                let externalSync: Bool = memberElement.attribute(forName: "externsync")?.stringValue == "true"
                let isOptional: Bool = memberElement.attribute(forName: "optional")?.stringValue?.contains("true") ?? false
                let objecttype: String? = memberElement.attribute(forName: "objecttype")?.stringValue
                let selector: String? = memberElement.attribute(forName: "selector")?.stringValue
                let comment: String? = memberElement.elements(forName: "comment").first?.stringValue
                let deprecated: String? = memberElement.attribute(forName: "deprecated")?.stringValue

                return StructMember(
                    name: name,
                    type: type,
                    baseType: baseType,
                    length: length,
                    altlen: altlen,
                    stride: stride,
                    externalSync: externalSync,
                    optional: isOptional,
                    objecttype: objecttype,
                    selector: selector,
                    validValues: values,
                    comment: comment,
                    deprecated: deprecated,
                    registry: registry
                )
            }

            let requires: String? = element.attribute(forName: "requires")?.stringValue
            let returnedOnly: Bool = element.attribute(forName: "returnedonly")?.stringValue == "true"
            let extends: [String]? = element.attribute(forName: "structextends")?.stringValue?.split(separator: ",").map({
                String($0)
            })
            let allowDuplicate: Bool = element.attribute(forName: "allowduplicate")?.stringValue == "true"
            let comment: String? = element.attribute(forName: "comment")?.stringValue
            let deprecated: String? = element.attribute(forName: "deprecated")?.stringValue

            return Struct(
                name: name,
                requires: requires,
                returnedOnly: returnedOnly,
                extends: extends,
                allowDuplicate: allowDuplicate,
                members: members,
                comment: comment,
                deprecated: deprecated
            )
        }
    }

    /// Parse the unions from the XML specification.
    private func parseUnions(unionElements: [XMLElement]) throws -> [Union] {
        try unionElements.map { element in
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "Union has no name: \(element)" as GeneratePluginError
            }
            let caseElements = element.elements(forName: "member")
            let cases: [(String, (type: String, selection: String?))] = try caseElements.map { caseElement in
                guard let name = caseElement.elements(forName: "name").first?.stringValue else {
                    throw "Union case has no name: \(caseElement)" as GeneratePluginError
                }
                guard let type = caseElement.elements(forName: "type").first?.stringValue else {
                    throw "Union case has no type: \(caseElement)" as GeneratePluginError
                }

                return (
                    name,
                    (
                        type: type,
                        selection: caseElement.attribute(forName: "selection")?.stringValue,
                    )
                )
            }

            let comment: String? = element.attribute(forName: "comment")?.stringValue
            let deprecated: String? = element.attribute(forName: "deprecated")?.stringValue

            return Union(
                name: name,
                cases: Dictionary(uniqueKeysWithValues: cases),
                comment: comment,
                deprecated: deprecated
            )
        }
    }
}
