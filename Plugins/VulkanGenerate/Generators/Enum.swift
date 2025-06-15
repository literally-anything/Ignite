/**
 * Enum.swift
 * Generators
 *
 * Created by Hunter Baker on 5/23/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

private let disabledEnums: [String] = [
    // This isn't needed because it is automatically populated in the generated wrappers for the structs
    "VkStructureType",
    // We don't need to generate a normal wrapper for results, because there is already a nicer VulkanResult wrapper
    "VkResult"
]

func generateEnumWrappers(
    packagePath: URL, registry: Registry
) throws {
    print("Generating wrappers for Vulkan enums...")

    var optionSetLines: [[Substring]] = []
    var optionSetTestLines: [[Substring]] = []
    for bitmask in registry.bitmasks.sorted(by: { $0.name < $1.name }) {
        guard !disabledPlatforms.contains(bitmask.platform?.name ?? "") else {
            continue
        }
        func makeFlagDecl(
            value: String, isAlias: Bool,
            flagName: (name: String, escaped: String), vulkanName: String,
            docs: DocsParser?, baseFlag: Bitmask.Bitflag
        ) -> (decl: String, test: String) {
            var availability: String = ""
            var availabilityGuard: String? = nil
            if baseFlag.providingVersion == nil {
                let trait: String? = baseFlag.platform?.traitName
                if let trait {
                    availability =
                        """
                        #if !\(trait)
                            @available(*, unavailable, message: "This flag requires the following trait: \(trait).")
                        #endif\n
                        """
                    availabilityGuard = "#if \(trait)\n"
                }
            }
            let docs =
                (try? docs?.enumCases.first(where: { $0.name == baseFlag.name })?.description)
                ?? ""
            let testPlaceholder: String =
                """
                \n#else
                @Test("Validate \(flagName.name)", .disabled(\
                "This flag is only available when the following trait is enabled: \(bitmask.platform?.traitName ?? "unknown")."\
                ))
                public func validate_\(flagName.name)() {}
                #endif
                """
            return (
                """
                \(docs.split(separator: "\n").map { "/// " + $0 }.joined(separator: "\n"))
                \(availability)@inlinable\npublic static var \(flagName.escaped): \(bitmask.fixedName) {
                    \(isAlias ? (availabilityGuard ?? "") : "")\
                    \(value)\
                    \(availabilityGuard != nil && isAlias ? "\n#else\nfatalError(\"This flag is unavailable\")\n#endif" : "")
                }
                """,
                """
                \(availabilityGuard ?? "")@Test("Validate \(flagName.name)")
                public func validate_\(flagName.name)() {
                    #expect(
                        Ignite.\(bitmask.fixedName).\(flagName.escaped).rawValue == \
                CVulkan.\(vulkanName)\(bitmask.bitWidth != 64 ? ".rawValue" : "")
                    )
                }\(availabilityGuard != nil ? testPlaceholder : "")
                """
            )
        }

        var flags: [(decl: String, test: String)] = bitmask.flags.map { flag in
            let flagName = Bitmask.Bitflag.getFixedName(name: flag.name, bitmask: bitmask, registry: registry)
            let value =
                switch flag.value {
                    case .value(let value):
                        "\(bitmask.fixedName)(rawValue: \(value))"
                    case .bitpos(let bitpos):
                        "\(bitmask.fixedName)(rawValue: 1 << \(bitpos))"
                }
            return makeFlagDecl(
                value: value, isAlias: false,
                flagName: flagName, vulkanName: flag.name,
                docs: bitmask.documentation, baseFlag: flag
            )
        }
        flags += bitmask.aliases.map { alias in
            let aliasName = Bitmask.Bitflag.getFixedName(name: alias.name, bitmask: bitmask, registry: registry)
            let flagName = Bitmask.Bitflag.getFixedName(name: alias.flag.name, bitmask: bitmask, registry: registry)
            return makeFlagDecl(
                value: "self." + flagName.escaped, isAlias: true,
                flagName: aliasName, vulkanName: alias.name,
                docs: bitmask.documentation, baseFlag: alias.flag
            )
        }

        let bitmaskType: String = "UInt\(bitmask.bitWidth)"

        var availability: String = ""
        var availabilityGuard: String? = nil
        if bitmask.providingVersion == nil {
            let trait: String? = bitmask.platform?.traitName
            if let trait {
                availability =
                    """
                    #if !\(trait)
                        @available(*, unavailable, message: "This flag requires the following trait: \(trait).")
                    #endif\n
                    """
                availabilityGuard = "#if \(trait)\n"
            }
        }
        let lines: [Substring] =
            """
            \((bitmask.documentation?.enumFullDescription?.map { "/// " + $0 } ?? []).joined(separator: "\n") + "\n")\
            \(availability)public struct \(bitmask.fixedName): OptionSet {
                /// The raw value of the bitmask, represented as a \(bitmaskType).
                public let rawValue: \(bitmaskType)

                /// Initilizes an instance of `\(bitmask.fixedName)` using a raw value.
                /// This shouldn't normally be used directly, but is provided for completeness.
                /// Instead, use the static properties provided by this type which represent the individual flags.
                /// - Parameter rawValue: The raw value to initialize to.
                @inlinable
                public init(rawValue: \(bitmaskType)) {
                    self.rawValue = rawValue
                }

                \(flags.map(\.decl).joined(separator: "\n\n"))
            }
            """.split(separator: "\n", omittingEmptySubsequences: false)
        optionSetLines.append(lines)

        let testPlaceholder: String =
            """
            \n#else
            @Suite("\(bitmask.fixedName)", .disabled(\
            "This bitmask is only available when the following trait is enabled: \(bitmask.platform?.traitName ?? "unknown")."\
            ))
            public struct \(bitmask.fixedName)Tests {}
            #endif
            """
        let testLines: [Substring] =
            """
            \(availabilityGuard ?? "")\
            /// Tests for the \(bitmask.fixedName) bitmask.
            @Suite("\(bitmask.fixedName)")
            public struct \(bitmask.fixedName)Tests {
                \(flags.map(\.test).joined(separator: "\n\n"))
            }\
            \(availabilityGuard != nil ? testPlaceholder : "")
            """.split(separator: "\n", omittingEmptySubsequences: false)
        optionSetTestLines.append(testLines)

        bitmask.isGenerated = true
    }

    let bitmasksFile = packagePath.appending(path: "Sources/Ignite/Bitmasks.swift")
    try modifyFileAtPlaceholder(file: bitmasksFile, markerName: "BITMASKS") { contents in
        var lines: [Substring] = optionSetLines.joined(separator: ["\n"]).map(\.self)
        lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        lines.append("")
        contents = lines[...]
    }
    let bitmasksTestFile = packagePath.appending(path: "Tests/ValidationTests/Bitmasks.swift")
    try modifyFileAtPlaceholder(file: bitmasksTestFile, markerName: "BITMASK_TESTS") { contents in
        var testLines: [Substring] = optionSetTestLines.joined(separator: ["\n"]).map(\.self)
        testLines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        testLines.append("")
        contents = testLines[...]
    }

    // Now do normal enums
    var enumLines: [[Substring]] = []
    var enumTestLines: [[Substring]] = []
    for enumeration in registry.enums.sorted(by: { $0.name < $1.name }).filter({ !disabledEnums.contains($0.name) }) {
        guard !disabledPlatforms.contains(enumeration.platform?.name ?? "") else {
            continue
        }
        func makeCaseDecl(
            value: String, isAlias: Bool,
            caseName: (name: String, escaped: String), vulkanName: String,
            docs: DocsParser?, baseCase: Enum.Case
        ) -> (decl: String, test: String) {
            var availability: String = ""
            var availabilityGuard: String? = nil
            if baseCase.providingVersion == nil {
                let trait: String? = baseCase.platform?.traitName
                if let trait {
                    availability =
                        """
                        #if !\(trait)
                            @available(*, unavailable, message: "This flag requires the following trait: \(trait).")
                        #endif\n
                        """
                    availabilityGuard = "#if \(trait)\n"
                }
            }
            let docs =
                (try? docs?.enumCases
                    .first(where: { $0.name == baseCase.name })?.description)
                ?? ""

            let decl: String = if !isAlias {
                    """
                    \(docs.split(separator: "\n").map { "/// " + $0 }.joined(separator: "\n"))
                    \(availability)case \(caseName.escaped) = \(value)
                    """
                } else {
                    """
                    \(docs.split(separator: "\n").map { "/// " + $0 }.joined(separator: "\n"))
                    \(availability)@inlinable\npublic static var \(caseName.escaped): \(enumeration.fixedName) {\
                        \(isAlias ? (availabilityGuard ?? "") : "")\
                        \(value)\
                        \(availabilityGuard != nil && isAlias ? "\n#else\nfatalError(\"This attribute is \")\n#endif" : "")
                    }
                    """
                }
            let testPlaceholder: String =
                """
                \n#else
                @Test("Validate \(caseName.name)", .disabled(\
                "This case is only available when the following trait is enabled: \(enumeration.platform?.traitName ?? "unknown")."\
                ))
                public func validate_\(caseName.name)() {}
                #endif
                """
            return (
                decl,
                """
                \(availabilityGuard ?? "")@Test("Validate \(caseName.name)")
                public func validate_\(caseName.name)() {
                    #expect(
                        Ignite.\(enumeration.fixedName).\(caseName.escaped).rawValue == CVulkan.\(vulkanName).rawValue
                    )
                }\(availabilityGuard != nil ? testPlaceholder : "")
                """
            )
        }

        var cases: [(decl: String, test: String)] = enumeration.cases.map { enumCase in
            let caseName = Enum.Case.getFixedName(name: enumCase.name, enumeration: enumeration, registry: registry)
            return makeCaseDecl(
                value: enumCase.value, isAlias: false,
                caseName: caseName, vulkanName: enumCase.name,
                docs: enumeration.documentation, baseCase: enumCase
            )
        }
        cases += enumeration.caseAliases.map { alias in
            let aliasName = Enum.Case.getFixedName(name: alias.name, enumeration: enumeration, registry: registry)
            let caseName = Enum.Case.getFixedName(name: alias.case.name, enumeration: enumeration, registry: registry)
            return makeCaseDecl(
                value: "self." + caseName.escaped, isAlias: true,
                caseName: aliasName, vulkanName: alias.name,
                docs: enumeration.documentation, baseCase: alias.case
            )
        }

        var rawAvailability: String = ""
        var availabilityGuard: String? = nil
        if enumeration.providingVersion == nil {
            let trait: String? = enumeration.platform?.traitName
            if let trait {
                rawAvailability = "@available(*, unavailable, message: \"This case requires the following trait: \(trait).\")"
                availabilityGuard = "#if \(trait)\n"
            }
        }
        let placeholder: String = 
            """
            \n#else
            \(rawAvailability)
            public enum \(enumeration.fixedName) {}
            #endif
            """
        let lines: [Substring] =
            """
            \((enumeration.documentation?.enumFullDescription ?? []).map { "/// " + $0 }.joined(separator: "\n") + "\n")\
            \(availabilityGuard ?? "")\
            public enum \(enumeration.fixedName): CVulkan.\(enumeration.name).RawValue {
                \(cases.map(\.decl).joined(separator: "\n\n"))
            }\
            \(availabilityGuard != nil ? placeholder : "")
            """.split(separator: "\n", omittingEmptySubsequences: false)
        enumLines.append(lines)

        let testPlaceholder: String =
            """
            \n#else
            @Suite("\(enumeration.fixedName)", .disabled(\
            "This enum is only available when the following trait is enabled: \(enumeration.platform?.traitName ?? "unknown")."\
            ))
            public struct \(enumeration.fixedName)Tests {}
            #endif
            """
        let testLines: [Substring] =
            """
            \(availabilityGuard ?? "")\
            /// Tests for the \(enumeration.fixedName) enum.
            @Suite("\(enumeration.fixedName)")
            public struct \(enumeration.fixedName)Tests {
                \(cases.map(\.test).joined(separator: "\n\n"))
            }\
            \(availabilityGuard != nil ? testPlaceholder : "")
            """.split(separator: "\n", omittingEmptySubsequences: false)
        enumTestLines.append(testLines)

        enumeration.isGenerated = true
    }

    let enumsFile = packagePath.appending(path: "Sources/Ignite/Enums.swift")
    try modifyFileAtPlaceholder(file: enumsFile, markerName: "ENUMS") { contents in
        var lines: [Substring] = enumLines.joined(separator: ["\n"]).map(\.self)
        lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        lines.append("")
        contents = lines[...]
    }
    let enumsTestFile = packagePath.appending(path: "Tests/ValidationTests/Enums.swift")
    try modifyFileAtPlaceholder(file: enumsTestFile, markerName: "ENUM_TESTS") { contents in
        var testLines: [Substring] = enumTestLines.joined(separator: ["\n"]).map(\.self)
        testLines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        testLines.append("")
        contents = testLines[...]
    }
}
