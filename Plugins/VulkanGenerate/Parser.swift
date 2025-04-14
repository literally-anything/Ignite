/**
 * Parser.swift
 * GeneratePlugin
 *
 * Created by Hunter Baker on 4/11/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

/// A parser for a Vulkan specification XML file.
struct Parser {
    /// The root element of the XML document.
    let root: XMLElement

    /// Initialize a Parser using the path to a valid Vulkan specification XML file.
    /// - Parameters:
    ///   - specification: The path to the specification XML file.
    init(specification: URL) throws {
        guard let root = try? XMLDocument(contentsOf: specification).rootElement() else {
            throw "XML specification has no content" as GeneratePluginError
        }
        self.root = root
    }
}

extension Parser {
    /// Parse the specification into
    func parse() throws -> Registry {
        guard let children = root.children, children.count > 0 else {
            throw "XML root has no children" as GeneratePluginError
        }

        // Print the licensing information
        if children.first!.name == "comment" {
            print(children.first!.stringValue!)
        }

        var registry = Registry()

        // guard let platforms = children.first(where: { $0.name == "platforms" }) else {
        //     throw "specification has no platforms node" as GeneratePluginError
        // }

        try parseTags(registry: &registry)
        try parseBaseTypes(registry: &registry)
        try parseBitmasks(registry: &registry)

        print(registry)
        print("Parsing done!")

        return registry
    }

    /// Extract the vendor tags from the XML document.
    private func parseTags(registry: inout Registry) throws {
        registry.vendorTags = [:]

        // Parse the tags from the XML document
        let tags = (try? root.nodes(forXPath: "tags/tag"))?.compactMap { $0 as? XMLElement } ?? []
        guard tags.count > 0 else {
            throw "specification has no vendor tags" as GeneratePluginError
        }

        for tag in tags {
            guard let name = tag.attribute(forName: "name")?.stringValue else {
                throw "tag has no name" as GeneratePluginError
            }
            guard let author = tag.attribute(forName: "author")?.stringValue else {
                throw "tag has no vendor" as GeneratePluginError
            }
            registry.vendorTags[name] = author
        }
    }

    /// Extract the base types from the XML document.
    private func parseBaseTypes(registry: inout Registry) throws {
        registry.baseTypes = []

        // Parse the base types from the XML document
        let baseTypes = (try? root.nodes(forXPath: "types/type[@category='basetype']"))?.compactMap { $0 as? XMLElement } ?? []

        for baseType in baseTypes {
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

            if tokens[0] == "struct" {
                // If the first token is a struct, then it is a forward declaration of a struct for a native type
                var use = tokens[1]
                if use.hasSuffix(";") {
                    use.removeLast()
                }
                registry.baseTypes.append(BaseType(name: name, definition: .native(use: use), api: nil))
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

                    registry.baseTypes.append(
                        BaseType(
                            name: name,
                            definition: .native(
                                use: tokens[2..<index].joined(separator: " ").trimmingCharacters(in: .whitespacesAndNewlines)
                            ),
                            api: nil
                        )
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
                    registry.baseTypes.append(
                        BaseType(
                            name: name,
                            definition: .typedef(type: type),
                            api: nil
                        )
                    )
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
                    registry.baseTypes.append(
                        BaseType(
                            name: name,
                            definition: .nativeObjC(
                                actual: actualName,
                                kind: objcKind,
                                use: objcKind == "class" ? actualName : use  // If it's a class, what it is typedefed to is irrelevant
                            ),
                            api: nil
                        )
                    )
                } else {
                    // If there is no ObjC identifier, then we can just use the type as a normal native type
                    registry.baseTypes.append(
                        BaseType(
                            name: name,
                            definition: .native(
                                use: tokens[startIndex..<endIndex].joined(separator: " ")
                            ),
                            api: nil
                        )
                    )
                }
            }
        }
    }

    /// Extract the bitmasks from the XML document.
    private func parseBitmasks(registry: inout Registry) throws {
        // Parse the bitmasks from the XML document
        let bitmasks = (try? root.nodes(forXPath: "enums[@type='bitmask']"))?.compactMap { $0 as? XMLElement } ?? []
        // guard bitmaskDefs.count > 0 else {
        //     throw "specification has no bitmasks" as GeneratePluginError
        // }

        // for bitmaskDef in bitmaskDefs {
        //     let baseType = try Self.readTypeDef(typeDef: bitmaskDef)
        //     registry.baseTypes[baseType.name] = baseType.type
        // }
    }
}
