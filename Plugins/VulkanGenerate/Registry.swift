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
    /// An array of enums in the Vulkan specification.
    var enums: [Enum] = []
    /// An array of object handles in the Vulkan specification.
    var handles: [Handle] = []
    /// An array of handle aliases in the Vulkan specification.
    var handleAliases: [HandleAlias] = []

    /// An array of the commands in the Vulkan specification.
    var commands: [Command] = []
    /// An array of aliases for commands in the Vulkan specification.
    var commandAliases: [String: String] = [:]

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
            constants: (\(constants.count)),
            bitmasks: (\(bitmasks.count)),
            enums: (\(enums.count)),
            handles: (\(handles.count)),
            commands: (\(commands.count)),
            apiVersions: (\(apiVersions.count))[
                \(apiVersions.map { "\($0.name): \($0.api)" }.joined(separator: ",\n        "))
            ],
            extensions: (\(extensions.count))
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

/// An enum in the Vulkan specification.
struct Enum {
    /// The name of the enum.
    var name: String
    /// The bit width of the enum's raw value.
    var bitwidth: UInt?
    /// A textual description of the enum.
    var comment: String?
    /// An array of the cases in the enum.
    var cases: [Case]
    /// An array of the case aliases for the enum.
    var caseAliases: [CaseAlias]

    /// A single case in an enum.
    struct Case {
        /// The name of the case.
        var name: String
        /// The name of the case that this case extends.
        var extends: String?
        /// The value of the case.
        var value: String
        /// The api version that this case is associated with.
        var api: String?
        /// The name of the c preprocessor guard that protects this case.
        var protect: String?
        /// A textual description of the case.
        var comment: String?
    }

    /// An alias for a case in an enum.
    struct CaseAlias {
        /// The name of the case.
        var name: String
        /// The name of the case that this case extends.
        var extends: String?
        /// The name of the case that this alias refers to.
        var alias: String
        /// The api version that this case is associated with.
        var api: String?
        /// The name of the c preprocessor guard that protects this case.
        var protect: String?
        /// A textual description of the case.
        var comment: String?
    }
}

/// A handle in the Vulkan specification.
struct Handle: APIComponent {
    /// The name of the handle.
    var name: String
    /// The name of the VK_OBJECT_TYPE_* enum value that this handle is associated with.
    var objectType: String
    /// The type of the parent handle.
    var parent: String?
    /// Whether this handle is a dispatchable handle.
    var dispatchable: Bool

    /// The api version that this handle is associated with.
    var api: String?
    /// A textual description of the handle.
    var comment: String?
    /// The name of the c preprocessor guard that protects this handle.
    var protect: String?
    /// Why the type is deprecated if it is.
    var deprecated: String?
}

/// A handle alias in the Vulkan specification.
struct HandleAlias: APIComponent {
    /// The name of the handle alias.
    var name: String
    /// The name of the handle that this alias refers to.
    var alias: String

    /// The api version that this handle is associated with.
    var api: String?
    /// A textual description of the handle alias.
    var comment: String?
    /// The name of the c preprocessor guard that protects this handle alias.
    var protect: String?
    /// Why the type is deprecated if it is.
    var deprecated: String?
}

/// A command in the Vulkan specification.
struct Command {
    /// The name of the command.
    var name: String
    /// The return type of the function.
    var returnType: String
    /// The parameters of the function.
    var params: [CommandParam]
    /// The kinds of queues that this command can be submitted to.
    var queues: [String]?
    /// The possible success codes that could be returned.
    var successcodes: [String]?
    /// The possible error codes that could be returned.
    var errorcodes: [String]?
    /// The levels of command buffers that this command is allowed in.
    var cmdbufferlevel: [String]?
    /// A textual comment.
    var comment: String?
    /// A list of other things that must be externally syncronized for this command.
    var implicitExternalSyncParams: [String]
    /// The api version or extension that provides this command.
    var api: String?
}

/// A parameter for a command.
struct CommandParam {
    /// The name of the parameter.
    var name: String
    /// If the param is an array, this specifies the length:
    ///     len may be one or more of the following things, separated by commas (one for each array indirection):
    ///     another member of that struct, 'null-terminated' for a string, '1' to indicate it is just a pointer (used for nested pointers),
    ///     or a latex equation (prefixed with 'latexmath:')
    var length: String?
    /// if len has latexmath equations, this contains equivalent C99 expressions separated by commas.
    var altlen: String?
    /// if the member is an array, stride specifies the name of another parameter containing the byte stride between consecutive
    /// elements in the array. The array is assumed to be tightly packed if omitted.
    var stride: String?
    /// Whether this parameter must be externally syncronized.
    var externsync: Bool
    /// Whether the parameter is optional. (When it is a handle, pass VK_NULL_HANDLE, but when)
    var optional: Bool
    /// If the type is a handle represented by an integer, this is the actual handle type.
    var objecttype: String?
    /// For a generic structure pointer, this is a list of all the valid structures to pass.
    var validstructs: [String]?
    /// The api version that provides this param.
    var api: String?
}
