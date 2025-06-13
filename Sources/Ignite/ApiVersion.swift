/**
 * ApiVersion.swift
 * Ignite
 *
 * Created by Hunter Baker on 6/12/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

/// A Vulkan API version.
public struct ApiVersion: RawRepresentable {
    /// The raw Vulkan API version, represented as a `UInt32`.
    public let rawValue: UInt32

    /// Creates a new `ApiVersion` from the raw Vulkan API version value.
    /// - Parameter rawValue: The raw Vulkan API version value.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    /// Creates a new `ApiVersion` from the major and minor version numbers.
    /// - Parameters:
    ///   - major: The major version number.
    ///   - minor: The minor version number.
    @inlinable
    public init(major: UInt32, minor: UInt32) {
        self.rawValue = makeVkAPIVersion(major, minor)
    }

    // BEGIN_GENERATE_API_VERSIONS
    // Generated using header version: 317

    /// Equvalent to Vulkan's VK_VERSION_1_0
    @inlinable
    public static var v1_0: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(1, 0))
    }

    /// Equvalent to Vulkan's VK_VERSION_1_1
    @inlinable
    public static var v1_1: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(1, 1))
    }

    /// Equvalent to Vulkan's VK_VERSION_1_2
    @inlinable
    public static var v1_2: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(1, 2))
    }

    /// Equvalent to Vulkan's VK_VERSION_1_3
    @inlinable
    public static var v1_3: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(1, 3))
    }

    /// Equvalent to Vulkan's VK_VERSION_1_4
    @inlinable
    public static var v1_4: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(1, 4))
    }

    // END_GENERATE_API_VERSIONS
}
