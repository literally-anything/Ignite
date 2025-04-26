/**
 * PlatformTraits.swift
 * Generators
 *
 * Created by Hunter Baker on 4/22/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

/// Generates package traits for Vulkan platforms and inserts them into the Package.swift.
func generatePlatformTraits(packagePath: URL, registry: Registry) throws {
    print("Generating package traits for each Vulkan platform...")
    let traits: [(name: String, description: String, macroName: String)] = registry.platforms.values.compactMap { platform in
        // We only look at platforms, but we don't want the MoltenVK ones because we have metal instead
        guard !platform.protect.hasSuffix("_MVK") else {
            return nil
        }
        return (
            name: platform.traitName, description: "\(platform.comment) (\(platform.protect))", macroName: platform.protect
        )
    }

    // Generate the traits
    let packageFile = packagePath.appendingPathComponent("Package.swift")
    try modifyFileAtPlaceholder(file: packageFile, markerName: "PLATFORM_TRAITS") { contents in
        var lines = traits.flatMap { trait in
            """
            .trait(
                name: "\(trait.name)",
                description: "\(trait.description)"
            ),
            """.split(separator: "\n")
        }
        lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        contents[...] = lines[...]
    }

    // Next we have to generate the bit in c that will translate the traits into the macros for Vulkan

    // Generate the defines
    let headerFile = packagePath.appendingPathComponent("Sources/CVulkan/include/CVulkan.h")
    try modifyFileAtPlaceholder(file: headerFile, markerName: "PLATFORM_DEFINES") { contents in
        var defines = traits.flatMap { trait in
            """
            #if \(trait.name)
            #  define \(trait.macroName)
            #endif
            """.split(separator: "\n")
        }
        defines.insert("// Generated using header version: \(registry.version)", at: 0)
        contents[...] = defines[...]
    }
}
