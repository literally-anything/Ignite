/**
 * Parser+Tag.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

extension Parser {
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
