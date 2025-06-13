/**
 * CTypeParser.swift
 * Parser
 * 
 * Created by Hunter Baker on 6/08/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation
import RegexBuilder

enum CType {
    case pointer(mutable: Bool, level: Int, type: String)
    case array(type: String, shape: [String])
    case inlineArray(type: String, shape: [Int])
    case value(type: String)
}

func parseCType(type: String, lengths: [String], registry: Registry) -> CType {
    let fullType: String = type.trimmingCharacters(in: .whitespacesAndNewlines)
    var baseType: Substring = fullType[...]

    let isConst: Bool = fullType.hasPrefix("const ")
    baseType.trimPrefix("const ")
    if isConst {
        baseType = baseType
            .replacingOccurrences(of: " const", with: "")
            .trimmingCharacters(in: .whitespacesAndNewlines)[...]
    }

    var pointerLevel: Int = 0
    while baseType.hasSuffix("*") {
        pointerLevel += 1
        baseType.removeLast()
        baseType = baseType.trimmingCharacters(in: .whitespacesAndNewlines)[...]
    }

    baseType = baseType.trimmingCharacters(in: .whitespacesAndNewlines)[...]

    if baseType.starts(with: "struct ") {
        baseType = baseType.dropFirst("struct ".count)
        let baseTypeInfo = registry.baseTypes[String(baseType)]
        guard let baseTypeInfo else {
            fatalError("Unknown platform struct type \"\(baseType)\" for type: \(type)")
        }
        switch baseTypeInfo.definition {
            case .typedef(let name):
                baseType = name[...]
            case .native(let use):
                baseType = use[...]
            case .nativeObjC(let actual, let kind, let use):
                fatalError("\(baseTypeInfo.definition)")
                baseType = use[...]
        }
    }

    let inlineArraySizeRegex: Regex<(Substring, OneOrMore<Substring>.RegexOutput)> = Regex {
        "["
        ZeroOrMore(.whitespace)
        Capture {
            OneOrMore(.any.subtracting(.anyOf("]")))
        }
        ZeroOrMore(.whitespace)
        "]"
    }
    let inlineArrayShape: [Int] = fullType
        .matches(of: inlineArraySizeRegex)
        .map { match in
            var text = match.output.1
            while true {
                if let newValue = registry.constantAliases[String(text)] {
                    text = newValue[...]
                } else if let newValue = registry.constants.first(where: { $0.name == text })?.value {
                    text = newValue[...]
                } else {
                    break
                }
            }
            guard let value = Int(text) else {
                fatalError("Invalid C inline array size: \(text), originally: \(match.output.1)")
            }
            return value
        }
    #if canImport(Darwin)
        guard #available(macOS 15.0, *) else {
            fatalError("Can generate on macOS versions prior to 15.0")
        }
    #endif
    baseType.removeSubranges(
        RangeSet<String.Index>(
            baseType.matches(of: inlineArraySizeRegex).map { match in
                match.range
            }
        )
    )

    // Remove the bitfield width specifier if it exists
    let colonIndex = baseType.lastIndex(of: ":")
    if let colonIndex, baseType[baseType.index(after: colonIndex)...].allSatisfy({ $0.isNumber }) {
        baseType = baseType[..<colonIndex].trimmingCharacters(in: .whitespacesAndNewlines)[...]
    }

    let isArray: Bool = !(
        lengths.count == 0 ||
        (lengths.count == 1 && lengths[0] == "1") ||
        (lengths.count == 1 && lengths[0] == "null-terminated")
    )

    if inlineArrayShape.count > 0 {
        return CType.inlineArray(
            type: String(baseType),
            shape: inlineArrayShape
        )
    } else if isArray {
        return CType.array(
            type: String(baseType),
            shape: lengths
        )
    } else if pointerLevel > 0 {
        return CType.pointer(
            mutable: !isConst,
            level: pointerLevel,
            type: String(baseType)
        )
    } else {
        return CType.value(type: String(baseType))
    }
}
