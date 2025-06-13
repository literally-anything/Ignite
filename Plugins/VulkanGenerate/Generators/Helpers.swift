/**
 * Helpers.swift
 * Generators
 *
 * Created by Hunter Baker on 4/25/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

let swiftTypeMappings: [String: String] = [
    "int8_t": "Int8",
    "uint8_t": "UInt8",
    "int16_t": "Int16",
    "uint16_t": "UInt16",
    "int32_t": "Int32",
    "uint32_t": "UInt32",
    "int64_t": "Int64",
    "uint64_t": "UInt64",
    "float": "Float",
    "double": "Double",
    "size_t": "Int",
    "char": "CChar"
]

func calculateProgress(
    current: Int, total: Int
) -> Int {
    guard total > 0 else { return 0 }
    let progress = Double(current) / Double(total) * 100.0
    return Int(progress)
}

/// Reads a file and allows a closure to modify the contents between two markers.
func modifyFileAtPlaceholder(
    file: URL, markerName: String, _ body: (inout ArraySlice<Substring>) throws -> Void
) throws {
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
    fileContents[beginLine + 1..<endLine] =
        contents.map { line in
            indentation + line
        }[...]

    // Write the file back to disk
    try fileContents.joined(separator: "\n").write(
        to: file,
        atomically: true,
        encoding: .utf8
    )

    if file.pathExtension == "swift" {
        _ = try swiftFormat.run(arguments: ["format", "-i", file.path()])
    }
}
