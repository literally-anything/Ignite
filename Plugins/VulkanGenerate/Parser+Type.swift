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
        let knownCategories: Set<String?> = ["alias"]
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
}
