/**
 * ApiVersion.swift
 * Ignite
 *
 * Created by Hunter Baker on 6/12/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

/// A Vulkan API version.
public struct ApiVersion: Sendable, Hashable, RawRepresentable {
    /// The raw Vulkan API version, represented as a `UInt32`.
    public let rawValue: UInt32

    /// Creates a new `ApiVersion` from the raw Vulkan API version value.
    /// - Parameter rawValue: The raw Vulkan API version value.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

extension ApiVersion {
    /// Creates a new `ApiVersion` from the major and minor version numbers.
    /// - Parameters:
    ///   - major: The major version number.
    ///   - minor: The minor version number.
    ///   - patch: The patch version number (default is 0).
    @inlinable
    public init(major: UInt32, minor: UInt32, patch: UInt32 = 0) {
        self.rawValue = makeVkAPIVersion(0, major, minor, patch)
    }

    /// The variant number. This should always be 0 in Vulkan.
    @inlinable
    public var variant: UInt32 {
        getVkAPIVersionVariant(rawValue)
    }

    /// The major version number.
    @inlinable
    public var major: UInt32 {
        getVkAPIVersionMajor(rawValue)
    }

    /// The minor version number.
    @inlinable
    public var minor: UInt32 {
        getVkAPIVersionMinor(rawValue)
    }

    /// The patch version number.
    @inlinable
    public var patch: UInt32 {
        getVkAPIVersionPatch(rawValue)
    }
}

extension ApiVersion: CustomStringConvertible, CustomDebugStringConvertible {
    /// A string representation of the API version in the format "major.minor.patch".
    public var description: String {
        "\(major).\(minor).\(patch)"
    }

    /// A debug string representation of the API version, including the raw value.
    public var debugDescription: String {
        "ApiVersion(variant: \(variant), major: \(major), minor: \(minor), patch: \(patch), rawValue: \(rawValue))"
    }
}

extension ApiVersion {
    // BEGIN_GENERATE_API_VERSIONS
    // Generated using header version: 318

    /// Equvalent to Vulkan's VK_VERSION_1_0
    @inlinable
    public static var v1_0: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(0, 1, 0, 0))
    }

    /// Equvalent to Vulkan's VK_VERSION_1_1
    @inlinable
    public static var v1_1: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(0, 1, 1, 0))
    }

    /// Equvalent to Vulkan's VK_VERSION_1_2
    @inlinable
    public static var v1_2: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(0, 1, 2, 0))
    }

    /// Equvalent to Vulkan's VK_VERSION_1_3
    @inlinable
    public static var v1_3: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(0, 1, 3, 0))
    }

    /// Equvalent to Vulkan's VK_VERSION_1_4
    @inlinable
    public static var v1_4: ApiVersion {
        ApiVersion(rawValue: makeVkAPIVersion(0, 1, 4, 0))
    }

    // END_GENERATE_API_VERSIONS
}
