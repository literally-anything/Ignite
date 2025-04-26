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
    /// Parse the specification into a Registry object.
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
        try parsePlatforms(registry: &registry)

        try parseTypes(registry: &registry)
        try parseEnums(registry: &registry)
        try parseCommands(registry: &registry)

        try parseAPIVersions(registry: &registry)
        try parseExtensions(registry: &registry)

        try filterUnprovided(registry: &registry)

        return registry
    }

    /// Extract the vendor tags from the XML specification.
    func parseTags(registry: inout Registry) throws {
        print("Parsing vendor tags...")
        let tags = root.elements(forName: "tags").flatMap { $0.elements(forName: "tag") }
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

    /// Extract the enums from the XML specification.
    func parsePlatforms(registry: inout Registry) throws {
        print("Parsing platforms...")
        let platformElements = root.elements(forName: "platforms").flatMap { $0.elements(forName: "platform") }
        guard platformElements.count > 0 else {
            throw "specification has no platforms" as GeneratePluginError
        }
        let platforms = try platformElements.map { element in
            guard let name = element.attribute(forName: "name")?.stringValue else {
                throw "platform has no name" as GeneratePluginError
            }
            guard let protect = element.attribute(forName: "protect")?.stringValue else {
                throw "platform has no protect" as GeneratePluginError
            }
            return Platform(
                name: name,
                protect: protect,
                comment: element.attribute(forName: "comment")?.stringValue ?? ""
            )
        }
        registry.platforms = .init(uniqueKeysWithValues: platforms.map { ($0.name, $0) })
    }

    /// Filters out the components from the registry that are not provided by any extensions or versions.
    func filterUnprovided(registry: inout Registry) throws {
        print("Filtering unprovided components...")

        // First filter base stuff
        var removeBaseTypes: [String] = []
        for (name, type) in registry.baseTypes {
            if type.providingVersion == nil && type.providingExtensions?.isEmpty ?? true {
                removeBaseTypes.append(name)
            }
        }
        removeBaseTypes.forEach { registry.baseTypes.removeValue(forKey: $0) }

        var removeHandles: [String] = []
        for (name, handle) in registry.handles {
            if handle.providingVersion == nil, handle.providingExtensions?.isEmpty ?? true {
                removeHandles.append(name)
            }
        }
        removeHandles.forEach { registry.handles.removeValue(forKey: $0) }

        registry.structs.removeAll { structure in
            structure.providingVersion == nil && structure.providingExtensions?.isEmpty ?? true
        }
        registry.unions.removeAll { union in
            union.providingVersion == nil && union.providingExtensions?.isEmpty ?? true
        }

        registry.bitmasks.removeAll { bitmask in
            bitmask.providingVersion == nil && bitmask.providingExtensions?.isEmpty ?? true
        }
        registry.enums.removeAll { enumeration in
            enumeration.providingVersion == nil && enumeration.providingExtensions?.isEmpty ?? true
        }

        registry.commands.removeAll { command in
            command.providingVersion == nil && command.providingExtensions?.isEmpty ?? true
        }

        // Then filter out aliases that point to unprovided types
        var allTypes: [String] = []
        allTypes.append(contentsOf: registry.baseTypes.keys)
        allTypes.append(contentsOf: registry.handles.keys)
        allTypes.append(contentsOf: registry.structs.map { $0.name })
        allTypes.append(contentsOf: registry.unions.map { $0.name })
        allTypes.append(contentsOf: registry.bitmasks.map { $0.name })
        allTypes.append(contentsOf: registry.enums.map { $0.name })
        allTypes.append(contentsOf: registry.commands.map { $0.typeName })

        var removeAliases: [String] = []
        for (name, alias) in registry.aliases {
            // We remove any that don't point to a type that exists in the registry
            if !allTypes.contains(alias) {
                removeAliases.append(name)
            }
        }
        removeAliases.forEach { registry.aliases.removeValue(forKey: $0) }

        var removeCommandAliases: [String] = []
        for (name, alias) in registry.commandAliases {
            // We remove any that don't point to a command that exists in the registry
            if !registry.commands.contains(where: { $0.name == alias }) {
                removeCommandAliases.append(name)
            }
        }
        removeCommandAliases.forEach { registry.commandAliases.removeValue(forKey: $0) }
    }
}
