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
    /// The parsed Vulkan specification XML file.
    let document: XMLDocument

    /// Initialize a Parser using the path to a valid Vulkan specification XML file.
    /// - Parameters:
    ///   - specification: The path to the specification XML file.
    init(specification: URL) throws {
        document = try .init(contentsOf: specification)
    }
}

extension Parser {
    /// Parse the specification into
    public func parse() throws {

    }
}
