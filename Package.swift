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
    .headerSearchPath("../CVulkan/include")
]
let linkerSettings: [LinkerSetting] = [
    .linkedLibrary("vulkan", .when(traits: ["LinkedVulkan"]))
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
        // BEGIN_GENERATE_PLATFORM_TRAITS
        // Generated using header version: 315

        .trait(
            name: "EnableProvisional",
            description: "Enable declarations for beta/provisional extensions (VK_ENABLE_BETA_EXTENSIONS)"
        ),
        .trait(
            name: "PlatformAndroid",
            description: "Android OS (VK_USE_PLATFORM_ANDROID_KHR)"
        ),
        .trait(
            name: "PlatformDirectfb",
            description: "DirectFB library (VK_USE_PLATFORM_DIRECTFB_EXT)"
        ),
        .trait(
            name: "PlatformFuchsia",
            description: "Fuchsia (VK_USE_PLATFORM_FUCHSIA)"
        ),
        .trait(
            name: "PlatformGgp",
            description: "Google Games Platform (VK_USE_PLATFORM_GGP)"
        ),
        .trait(
            name: "PlatformMetal",
            description: "Metal on CoreAnimation on Apple platforms (VK_USE_PLATFORM_METAL_EXT)"
        ),
        .trait(
            name: "PlatformSci",
            description: "NVIDIA SCI (VK_USE_PLATFORM_SCI)"
        ),
        .trait(
            name: "PlatformScreen",
            description: "QNX Screen Graphics Subsystem (VK_USE_PLATFORM_SCREEN_QNX)"
        ),
        .trait(
            name: "PlatformVi",
            description: "Nintendo Vi (VK_USE_PLATFORM_VI_NN)"
        ),
        .trait(
            name: "PlatformWayland",
            description: "Wayland display server protocol (VK_USE_PLATFORM_WAYLAND_KHR)"
        ),
        .trait(
            name: "PlatformWin32",
            description: "Microsoft Win32 API (also refers to Win64 apps) (VK_USE_PLATFORM_WIN32_KHR)"
        ),
        .trait(
            name: "PlatformXcb",
            description: "X Window System, Xcb client library (VK_USE_PLATFORM_XCB_KHR)"
        ),
        .trait(
            name: "PlatformXlib",
            description: "X Window System, Xlib client library (VK_USE_PLATFORM_XLIB_KHR)"
        ),
        .trait(
            name: "PlatformXlibXrandr",
            description: "X Window System, Xlib client library, XRandR extension (VK_USE_PLATFORM_XLIB_XRANDR_EXT)"
        ),
        // END_GENERATE_PLATFORM_TRAITS
        .trait(
            name: "LinkedVulkan",
            description:
                "Makes this package direcly link vulkan at compile time. Otherwise, it will be loaded at runtime using dlopen."
        ),
        .default(enabledTraits: [])
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
    package.platforms = [.macOS(.v15)]
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
