/**
 * PlatformTraits.swift
 * Generators
 *
 * Created by Hunter Baker on 4/22/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation
import RegexBuilder

let disabledPlatforms: Set<String> = [
    "ios", "macos" // We don't want to generate traits for these platforms because we have metal instead
]

/// Generates package traits for Vulkan platforms and inserts them into the Package.swift.
func generatePlatformTraits(packagePath: URL, registry: Registry) throws {
    print("Generating package traits for each Vulkan platform...")
    let traits: [(name: String, description: String, macroName: String)] = registry.platforms.values.compactMap { platform in
        // We only look at platforms, but we don't want the MoltenVK ones because we have metal instead
        guard !disabledPlatforms.contains(platform.name) else {
            return nil
        }
        return (
            name: platform.traitName, description: "\(platform.comment) (\(platform.protect))", macroName: platform.protect
        )
    }.sorted { trait1, trait2 in
        trait1.name < trait2.name
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

    try modifyFileAtPlaceholder(file: headerFile, markerName: "PLATFORM_INCLUDES") { contents in
        var includes: [Substring] = []

        // Some platforms have premade includes that are faster than using the Vulkan ones.
        // These are already in CVulkan.h, so we can just skip them.
        let premadeIncludes: Set<String> = [
            "VK_USE_PLATFORM_ANDROID_KHR",
            "VK_USE_PLATFORM_METAL_EXT",
            "VK_USE_PLATFORM_WAYLAND_KHR",
            "VK_USE_PLATFORM_WIN32_KHR",
            "VK_USE_PLATFORM_XLIB_KHR"
        ]
        let vulkanHPath = packagePath.appending(path: "Sources/CVulkan/include/vulkan/vulkan.h")
        let vulkanHContents = try String(contentsOf: vulkanHPath, encoding: .utf8)
        for trait in traits {
            guard !premadeIncludes.contains(trait.macroName) else {
                continue
            }

            let guardRegex = Regex {
                "#ifdef \(trait.macroName)"
                "\n"
                OneOrMore(.any, .reluctant)
                "\n"
                "#endif"
            }
            let guardMatches = vulkanHContents.matches(of: guardRegex).map { $0.output }
            guard guardMatches.count == 1 else {
                fatalError(
                    "Bad count of guards for trait \(trait.name) in \(vulkanHPath.path()): \(guardMatches.count), \(guardMatches)"
                )
            }

            includes.append(guardMatches[0])
        }
        includes.insert("// Generated using header version: \(registry.version)", at: 0)
        contents = includes[...]
    }
}
