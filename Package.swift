/**
 * Package.swift
 * Ignite
 *
 * Created by Hunter Baker on 4/11/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */
// swift-tools-version: 6.0

import Foundation
import PackageDescription

var package = Package(
    name: "Ignite",
    products: [
        .library(
            name: "Ignite",
            targets: ["Ignite"]
        )
    ],
    targets: [
        .target(
            name: "Ignite"
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
