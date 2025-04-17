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
    /// An array of API versions in the Vulkan specification.
    var apiVersions: [Version] = []
    /// An array of extensions in the Vulkan specification.
    var extensions: [Extension] = []

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
            ],
            apiVersions: (\(apiVersions.count))[
                \(apiVersions.map { "\($0.name): \($0.api)" }.joined(separator: ",\n        "))
            ],
            extensions: (\(extensions.count))[
                \
        \(extensions.filter {
            $0.deprecatedby == nil && $0.supported != "disabled" && !$0.provisional
        }.map {
            "\($0.name)(\($0.kind)): \(String(describing: $0.platform)), \(String(describing: $0.protect))"
        }.joined(separator: ",\n        "))
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
    /// A comment about the type.
    var comment: String? { get }
    /// The name of the type.
    var name: String { get }
    /// The guard that goes around the type.
    var protect: String? { get }
}

/// A depencency of an API version or an extension in the Vulkan specification.
indirect enum Dependencies {
    /// A single dependency.
    case identifier(name: String)
    /// Any of the listed dependencies. (logical OR)
    case any([Dependencies])
    /// All of the dependencies. (logical AND)
    case all([Dependencies])
}

/// A requirement of an API version or an extension in the Vulkan specification.
struct Requirements {
    /// An array of commands that are part of the API version or extension.
    var commands: Set<String>
    /// An array of types that are part of the API version or extension.
    var types: Set<String>
    /// An array of enumeration values that are part of the API version or extension.
    var values: [RequirementValue]
}

/// A single requirement enumeration value.
struct RequirementValue {
    /// The name of the requirement.
    var name: String
    /// The api version that the requirement is associated with.
    var api: String?
    /// The enum that the requirement extends.
    var extends: String?

    /// The value of the requirement.
    var value: Value

    /// The kind of requirement value.
    enum Value {
        /// Directly specified value.
        case value(String)
        /// A value that is an ineger offset in that block. An extension number is optional.
        case offset(UInt, extNumber: UInt?, negative: Bool)
        /// A value that is an alias of another value.
        case alias(String)
        /// States that a specific constant is required.
        case constant
    }
}

/// An API version in the Vulkan specification.
struct Version {
    /// The name of the version as the preprocessor guard.
    var name: String
    /// The api version name.
    var api: String
    /// Dependencies of the version.
    var dependencies: Dependencies?
    /// The requirements of the version.
    var requirements: Requirements
}

struct Extension {
    /// The name of the extension as the preprocessor guard.
    var name: String
    /// The apis that this extension is known to work with.
    var api: String?
    /// The number of the extension.
    var number: UInt?
    /// The sort order of the extension.
    var sortorder: UInt?
    /// The header guard used to protect the declarations in this extension.
    var protect: String?
    /// The platform name.
    var platform: String?
    /// The kind of extension.
    var kind: Kind
    /// List of extensions and API versions that support this extension.
    var supported: String?
    /// List of extensions and API versions for which this extension has been ratified.
    var ratified: String?
    /// Name of the extension or API version that this extension is promoted to.
    var promotedto: String?
    /// Name of the extension or API version that this extension is deprecated by.
    var deprecatedby: String?
    /// Name of the extension or API version that this extension is obsoleted by.
    var obsoletedby: String?
    /// Whether the extension is provisional.
    var provisional: Bool

    /// The requirements of the extension.
    var requirements: Requirements
    /// The dependencies of the extension.
    var dependencies: Dependencies?

    enum Kind: Equatable {
        case instance
        case device
    }
}

/// A base type in the Vulkan specification.
struct BaseType: APIComponent {
    /// The name of the type.
    var name: String
    /// The definition of the type.
    var definition: Definition

    var api: String?
    var deprecated: String?
    var comment: String?
    var protect: String?

    /// The kind of base type.
    enum Definition {
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
struct Constant: APIComponent {
    /// The name of the constant.
    var name: String
    /// The type of the constant.
    var type: String
    /// The value of the constant.
    var value: String

    var api: String?
    var deprecated: String?
    var comment: String?
    var protect: String? = nil
}

/// A bitmask in the Vulkan specification.
struct Bitmask: APIComponent {
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
    var protect: String? = nil

    /// A single flag in a bitmask.
    struct Bitflag: APIComponent {
        /// The name of the bitflag.
        var name: String
        /// The value of the bitflag.
        var value: String

        var api: String?
        var deprecated: String?
        var comment: String?
        var protect: String?
    }
}
