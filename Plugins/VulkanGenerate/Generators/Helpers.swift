/**
 * Helpers.swift
 * Generators
 * 
 * Created by Hunter Baker on 4/25/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

/// Reads a file and allows a closure to modify the contents between two markers.
func modifyFileAtPlaceholder(file: URL, markerName: String, _ body: (inout ArraySlice<Substring>) throws -> Void) throws {
    let beginMarker = "BEGIN_GENERATE_\(markerName)"
    let endMarker = "END_GENERATE_\(markerName)"

    guard FileManager.default.isReadableFile(atPath: file.path()) else {
        throw "\(file.lastPathComponent) not found at path: \(file)" as GeneratePluginError
    }
    var fileContents = try String(
        contentsOfFile: file.path(), encoding: .utf8
    ).split(separator: "\n", omittingEmptySubsequences: false)  // We want to keep blank lines

    // Find the delimeters for the traits
    let beginLine = fileContents.firstIndex { $0.contains(beginMarker) }
    guard let beginLine else {
        throw "\(beginMarker) not found in \(file)" as GeneratePluginError
    }
    let endLine = fileContents.firstIndex { $0.contains(endMarker) }
    guard let endLine else {
        throw "\(endMarker) not found in \(file)" as GeneratePluginError
    }
    let indentation = fileContents[beginLine][..<fileContents[beginLine].firstIndex(of: "/")!]

    var contents: ArraySlice<Substring> = fileContents[beginLine + 1..<endLine]
    try body(&contents)

    // Fix indentation
    fileContents[beginLine + 1..<endLine] = contents.map { line in
        indentation + line
    }[...]

    // Write the file back to disk
    try fileContents.joined(separator: "\n").write(
        to: file,
        atomically: true,
        encoding: .utf8
    )
}
