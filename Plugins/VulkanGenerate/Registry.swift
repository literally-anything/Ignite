/**
 * Registry.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

struct Registry: CustomStringConvertible {
    /// A mapping of vendor tags to their corresponding vendor names.
    var vendorTags: [String: String] = [:]
    /// A mapping of aliases to their corresponding types.
    var aliases: [String: String] = [:]
    /// An array of base types in the Vulkan specification.
    /// This isn't actually exported anywhere, but it is used to find the swift type that corresponds to some vulkan types.
    var baseTypes: [BaseType] = []
    /// An array of constants in the Vulkan specification.
    var constants: [Constant] = []
    /// A mapping of constant aliases to their corresponding constants.
    var constantAliases: [String: String] = [:]
    /// An array of bitmasks and their associated fields in the Vulkan specification.
    var bitmasks: [Bitmask] = []

    /// A textual description of the registry.
    var description: String {
        """
        Registry(
            vendorTags: (\(vendorTags.count))[
                \(vendorTags.map { "\($0.key): \($0.value)" }.joined(separator: ",\n        "))
            ],
            baseTypes: (\(baseTypes.count))[
                \(baseTypes.map { "\($0.name): \($0.definition)" }.joined(separator: ",\n        "))
            ],
            constants: (\(constants.count))[
                \(constants.map { "\($0.name): \($0.type) = \($0.value)" }.joined(separator: ",\n        "))
            ],
            bitmasks: (\(bitmasks.count))[
                \(bitmasks.map { "\($0.name): \($0.flags.count) flags" }.joined(separator: ",\n        "))
            ]
        )
        """
    }
}

/// Some common members for any component in the Vulkan specification.
protocol APIComponent {
    /// The API that the type is associated with.
    /// Example: "vulkan", "vulkansc". Nil means any API.
    var api: String? { get }
    /// Whether the type is deprecated.
    /// This is a message about why the type is deprecated.
    var deprecated: String? { get }
    var comment: String? { get }
    /// The name of the type.
    var name: String { get }
}

/// A base type in the Vulkan specification.
struct BaseType: APIComponent, Equatable {
    /// The name of the type.
    var name: String
    /// The definition of the type.
    var definition: Definition

    var api: String?
    var deprecated: String?
    var comment: String?

    /// The kind of base type.
    enum Definition: Equatable {
        /// A typedef of a C type.
        case typedef(type: String)
        /// A forward declaration of a native platform type.
        /// - Parameter use: The type with extra attributes applied to it.
        case native(use: String)
        /// A forward declaration of a native platform type on MacOS in ObjC.
        /// - Parameters:
        ///   - actual: The actual ObjC base type name.
        ///   - kind: The kind of native type. (@protocol, @class, etc.)
        ///   - use: The type with extra attributes applied to it.
        case nativeObjC(actual: String, kind: String, use: String)
    }
}

/// A constant in the Vulkan specification.
struct Constant: APIComponent, Equatable {
    /// The name of the constant.
    var name: String
    /// The type of the constant.
    var type: String
    /// The value of the constant.
    var value: String

    var api: String?
    var deprecated: String?
    var comment: String?
}

/// A bitmask in the Vulkan specification.
struct Bitmask: APIComponent, Equatable {
    /// The name of the bitmask.
    var name: String
    /// The bit width of the bitmask.
    var bitWidth: String
    /// The list of bitflags in the bitmask.
    var flags: [Bitflag]
    /// Aliases for bitflags in the bitmask.
    /// For example, some extensions that have been promoted to the core API alias the old name to the new name.
    var aliases: [String: String]

    var api: String?
    var deprecated: String?
    var comment: String?

    /// A single flag in a bitmask.
    struct Bitflag: APIComponent, Equatable {
        /// The name of the bitflag.
        var name: String
        /// The value of the bitflag.
        var value: String

        var api: String?
        var deprecated: String?
        var comment: String?
    }
}
