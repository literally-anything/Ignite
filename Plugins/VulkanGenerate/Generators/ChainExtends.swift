/**
 * ChainExtends.swift
 * Generators
 * 
 * Created by Hunter Baker on 6/15/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

func generateChainExtends(
    packagePath: URL, registry: Registry
) throws {
    print("Generating chain extends...")

    print("- Generating chain extends for physical device properties...")
    try generateChainExtends(
        file: packagePath.appending(path: "Sources/Ignite/Instance/PhysicalDevice/PhysicalDevice+Extends.swift"),
        registry: registry,
        placeholder: "PHYSICAL_DEVICE_PROPERTIES_EXTENDS",
        baseName: "VkPhysicalDeviceProperties2",
        prefix: "VkPhysicalDevice",
        nextChainName: "nextChain"
    )
    print("- Generating chain extends for physical device queue family properties...")
    try generateChainExtends(
        file: packagePath.appending(path: "Sources/Ignite/Instance/PhysicalDevice/QueueFamily+Extends.swift"),
        registry: registry,
        placeholder: "QUEUE_FAMILY_PROPERTIES_EXTENDS",
        baseName: "VkQueueFamilyProperties2",
        prefix: "VkQueueFamily",
        nextChainName: "nextChain"
    )
    print("- Generating chain extends for physical device features...")
    try generateChainExtends(
        file: packagePath.appending(path: "Sources/Ignite/Instance/PhysicalDevice/Features+Extends.swift"),
        registry: registry,
        placeholder: "PHYSICAL_DEVICE_FEATURES_EXTENDS",
        baseName: "VkPhysicalDeviceFeatures2",
        prefix: "VkPhysicalDevice",
        nextChainName: "nextChain"
    )
}

private func generateChainExtends(
    file: URL, registry: Registry, placeholder: String, baseName: String, prefix: String, nextChainName: String
) throws {
    var propertiesLines: [Substring] = []
    var structsLines: [Substring] = []

    let matchingStructures: [Struct] = registry.structs.filter { structure in
        // We only want structures that extend the base name and are not part of a disabled platform
        structure.extends?.contains(baseName) == true &&
        !disabledPlatforms.contains(structure.platform?.name ?? "")
    }
    for structure in matchingStructures {
        var availabilityMessage: String = ""
        if structure.providingVersion != nil || structure.providingExtensions != nil {
            var reasons: [String] = []
            if let version = structure.providingVersion {
                reasons.append("version \(version)")
            }
            if let extensions = structure.providingExtensions {
                reasons.append(contentsOf: extensions.map { "extension \($0.name)" })
            }
            availabilityMessage = "Available with \(reasons.joined(separator: ", "))"
            let lastCommaRange = availabilityMessage.ranges(of: ", ").last
            if let lastCommaRange {
                availabilityMessage.replaceSubrange(lastCommaRange, with: ", or ")
            }
        }

        var fixedName: Substring = structure.name.trimmingPrefix(prefix)
        if let tag = registry.vendorTags.keys.first(where: { fixedName.hasSuffix($0) }) {
            fixedName = fixedName.dropLast(tag.count) + "_" + tag
        }
        var propertyName = fixedName.first!.lowercased() + fixedName.dropFirst()
        let sType = structure.members.first { $0.name == "sType" }?.validValues?.first
        guard let sType else {
            fatalError(
                "Structure \(structure.name) does not have a valid sType member, which is required for chain extends"
            )
        }

        if nameNeedsEscaping(name: String(fixedName)) || fixedName.starts(with: .digit) {
            fixedName = "`\(fixedName)`"
        }

        if propertyName.starts(with: .digit) {
            propertyName = "device" + propertyName
        }
        if nameNeedsEscaping(name: propertyName) {
            propertyName = "`\(propertyName)`"
        }

        let trait: String? = structure.platform?.traitName
        let unavailableTag: String =
            """
            @available(*, unavailable, message: "This set of properties requires the '\(trait ?? "")' trait to be enabled")
            """

        propertiesLines.append(
            contentsOf:
                """
                \(trait != nil ? "#if \(trait!)\n" : "")/// Wrapper for the Vulkan \(structure.name).\
                \(availabilityMessage.isEmpty ? "" : "\n/// \(availabilityMessage)")
                /// - SeeAlso: [Vulkan Specification](\(baseDocsUrl.appending(component: "\(structure.name).html").absoluteString))
                public var \(propertyName): \(fixedName)? {
                    let raw = unsafe nextChain.get(\(sType), type: \(structure.name).self)
                    return unsafe raw != nil ? \(fixedName)(rawValue: raw!) : nil
                }\
                \(trait != nil ? "\n#else\n\(unavailableTag)\npublic var \(propertyName): Any { fatalError() } \n#endif" : "")\n
                """.split(separator: "\n", omittingEmptySubsequences: false)
        )

        enum Member {
            case span(StructMember, count: StructMember)
            case plain(StructMember)
        }
        var countMembers: [StructMember] = []
        for member in structure.members {
            if let lengths = member.length, lengths.count == 1 {
                let length = lengths.first!
                guard length != "1" && length != "null-terminated" else {
                    continue
                }
                let countMember = structure.members.first { countMember in
                    if length.contains(countMember.name) {
                        return true
                    }
                    return false
                }
                if let countMember {
                    countMembers.append(countMember)
                }
            }
        }

        let members: [Member] = structure.members.compactMap { member in
            guard !member.name.contains("sType"), !member.name.contains("pNext") else {
                return nil
            }
            guard !countMembers.contains(where: { member === $0 }) else {
                return nil
            }

            if case .array(_, _) = member.parsedType {
                if member.length?.count == 1, let countName = member.length?.first, countMembers.contains(where: { $0.name == countName }) {
                    // This member is a span, so we need to find the count member
                    guard let countMember = countMembers.first(where: { $0.name == countName }) else {
                        fatalError("Count member \(countName) not found for span member \(member.name) in \(structure.name)")
                    }
                    return .span(member, count: countMember)
                }
            }
            return .plain(member)
        }

        let unsafeKeyword: String = "unsafe "

        let membersLines: [String] = members.map { member in
            switch member {
                case .span(let member, count: let countMember):
                    if case .array(type: let type, shape: _) = member.parsedType {
                        // return
                        //     """
                        //     /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                        //     /// - Note: This is a span of \(countMember.name) elements.
                        //     @safe
                        //     @lifetime(borrow self)
                        //     public var \(member.name): Span<\(type)> {
                        //         unsafe UnsafeBufferPointer(start: rawValue.\(member.name), count: Int(rawValue.\(countMember.name))).span
                        //     }
                        //     """
                        return
                            """
                            /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                            public var \(member.name): UnsafeBufferPointer<\(type)> {
                                unsafe UnsafeBufferPointer(start: rawValue.\(member.name), count: Int(rawValue.\(countMember.name)))
                            }
                            """
                    } else {
                        fatalError("Span member \(member.name) in \(structure.name) must be an array type")
                    }
                case .plain(let member):
                    switch member.parsedType {
                        case .inlineArray(type: let type, shape: let shape):
                            let size = shape.reduce(into: 1) { $0 *= $1 }
                            let fixedType = swiftTypeMappings[type] ?? type
                            let tupleType = "(" + Array(repeating: fixedType, count: size).joined(separator: ", ") + ")"
                            return
                                """
                                /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                                public var \(member.name): \(tupleType) {
                                    \(unsafeKeyword)rawValue.\(member.name)
                                }
                                """
                        case .array(type: let type, shape: let shape):
                            let pointerLevel = shape.count
                            let pointerType = "UnsafePointer"
                            var builtType = swiftTypeMappings[type] ?? type

                            var baseType: Bool = true
                            for _ in 0..<pointerLevel {
                                if baseType && type == "void" {
                                    builtType = "UnsafeRawPointer"
                                } else {
                                    builtType = "\(pointerType)<\(builtType)>"
                                }
                                baseType = false
                            }

                            if member.optional {
                                builtType.append("?")
                            }

                            return
                                """
                                /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                                public var \(member.name): \(builtType) {
                                    \(unsafeKeyword)rawValue.\(member.name)
                                }
                                """
                        case .pointer(mutable: let mutable, level: let level, type: let type):
                            let fixedType = swiftTypeMappings[type] ?? type
                            let pointerType = mutable ? "UnsafeMutablePointer" : "UnsafePointer"
                            var builtType = fixedType

                            var baseType: Bool = true
                            for _ in 0..<level {
                                if baseType && fixedType == "void" {
                                    builtType = mutable ? "UnsafeMutableRawPointer" : "UnsafeRawPointer"
                                } else {
                                    builtType = "\(pointerType)<\(builtType)>"
                                }
                                baseType = false
                            }

                            if member.optional {
                                builtType.append("?")
                            }

                            return
                                """
                                /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                                public var \(member.name): \(builtType) {
                                    \(unsafeKeyword)rawValue.\(member.name)
                                }
                                """
                        case .value(type: let type):
                            let maybeAliasName = registry.aliases[type] ?? type
                            if let bitmask = registry.bitmasks.first(where: { $0.matchedRawType == maybeAliasName }) {
                                return
                                    """
                                    /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                                    public var \(member.name): \(bitmask.fixedName) {
                                        \(unsafeKeyword)\(bitmask.fixedName)(rawValue: rawValue.\(member.name))
                                    }
                                    """
                            } else if let bitmask = registry.bitmasks.first(where: { $0.name == maybeAliasName }) {
                                return
                                    """
                                    /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                                    public var \(member.name): \(bitmask.fixedName) {
                                        \(unsafeKeyword)\(bitmask.fixedName)(rawValue: rawValue.\(member.name).rawValue)
                                    }
                                    """
                            } else if let enumeration = registry.enums.first(where: { $0.name == maybeAliasName }) {
                                return
                                    """
                                    /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                                    public var \(member.name): \(enumeration.fixedName)? {
                                        \(unsafeKeyword)\(enumeration.fixedName)(rawValue: rawValue.\(member.name).rawValue)
                                    }
                                    """
                            } else {
                                let fixedType = swiftTypeMappings[type] ?? type
                                if fixedType == "VkBool32" {
                                    return
                                        """
                                        /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                                        public var \(member.name): Bool {
                                            \(unsafeKeyword)rawValue.\(member.name) != 0
                                        }
                                        """
                                }
                                return
                                    """
                                    /// The `\(member.name)` member of the Vulkan `\(structure.name)`.
                                    public var \(member.name): \(fixedType) {
                                        \(unsafeKeyword)rawValue.\(member.name)
                                    }
                                    """
                            }
                    }
            }
        }

        structsLines.append(
            contentsOf:
                """
                \(trait != nil ? "#if \(trait!)\n" : "")/// Wrapper around the Vulkan \(structure.name).
                /// - SeeAlso: [Vulkan Specification](\(baseDocsUrl.appending(component: "\(structure.name).html").absoluteString))
                @safe
                public struct \(fixedName) {
                    /// The raw Vulkan structure.
                    @unsafe
                    private var rawValue: \(structure.name)

                    /// Creates a new instance with the given raw value.
                    /// - Parameter rawValue: The raw Vulkan structure.
                    @unsafe
                    internal init(rawValue: \(structure.name)) {
                        unsafe self.rawValue = rawValue
                    }

                    \(membersLines.joined(separator: "\n\n"))
                }\
                \(trait != nil ? "\n#else\n\(unavailableTag)\npublic struct \(fixedName) {} \n#endif" : "")\n
                """.split(separator: "\n", omittingEmptySubsequences: false)
        )
    }

    try modifyFileAtPlaceholder(file: file, markerName: placeholder) { contents in
        var lines: [Substring] = []
        lines.append("// Generated using header version: \(registry.version)\n")

        lines.append(contentsOf: propertiesLines)
        lines.append("\n")
        lines.append(contentsOf: structsLines)

        contents = lines[...]
    }
}
