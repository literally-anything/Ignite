/**
 * Parser+Platform.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

extension Parser {
    /// Extract the platforms from the XML specification.
    func parsePlatforms(registry: inout Registry) throws {
        print("Parsing platforms...")
        let platforms = (try? root.nodes(forXPath: "platforms/platform"))?.compactMap { $0 as? XMLElement } ?? []
        guard platforms.count > 0 else {
            throw "specification has no platforms" as GeneratePluginError
        }

        // guard let platforms = children.first(where: { $0.name == "platforms" }) else {
        //     throw "specification has no platforms node" as GeneratePluginError
        // }
    }
}
