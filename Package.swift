/**
 * Package.swift
 * Ignite
 *
 * Created by Hunter Baker on 4/11/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */
// swift-tools-version: 6.1

import Foundation
import PackageDescription

let cSettings: [CSetting] = [
    .unsafeFlags(["-I", "/usr/local/include"])
]
let linkerSettings: [LinkerSetting] = [
    .linkedLibrary("vulkan", .when(traits: ["LinkedVulkan"])),
]

var package = Package(
    name: "Ignite",
    products: [
        .library(
            name: "Ignite",
            targets: ["Ignite"]
        )
    ],
    traits: [
        .trait(
            name: "LinkedVulkan",
            description:
                "Makes this package direcly link vulkan at compile time."
        ),
        .trait(
            name: "MetaLoader",
            description:
                "Enables the meta loader, which loads Vulkan dynamically at runtime. If this isn't enabled, the loader must be linked manually."
        ),
        .default(enabledTraits: ["MetaLoader"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Ignite",
            dependencies: [
                "CVulkan",
                .product(name: "Logging", package: "swift-log")
            ],
            // These need to be here because SwiftPM only seems to respect these settings in the first target that depends on the c target
            cSettings: cSettings,
            linkerSettings: linkerSettings
        ),
        .target(
            name: "CVulkan",
            cSettings: cSettings,
            linkerSettings: linkerSettings
        )
    ]
)

if ProcessInfo.processInfo.environment["ENABLE_GENERATOR"] == "1" {
    package.targets.append(
        .plugin(
            name: "VulkanGenerate",
            capability: .command(
                intent: .custom(
                    verb: "vulkan-generate",
                    description: """
                            Generates the swift mappings for Vulkan types from the \
                            main Vulkan repository
                        """
                ),
                permissions: [
                    .allowNetworkConnections(scope: .all(), reason: "To download the Vulkan repository"),
                    .writeToPackageDirectory(reason: "To write the generated sources")
                ]
            )
        )
    )
}
