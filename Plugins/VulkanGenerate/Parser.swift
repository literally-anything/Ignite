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

        try parseTags(registry: &registry)
        try parseEnums(registry: &registry)
        try parseTypes(registry: &registry)
        try parseCommands(registry: &registry)
        try parseAPIVersions(registry: &registry)
        try parseExtensions(registry: &registry)

        return registry
    }

    /// Extract the vendor tags from the XML specification.
    func parseTags(registry: inout Registry) throws {
        print("Parsing vendor tags...")
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
}
