/**
 * Registry.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

struct Registry: CustomStringConvertible {
    /// The version of the registry.
    var version: String

    /// A mapping of vendor tags to their corresponding vendor names.
    var vendorTags: [String: String] = [:]
    /// A mapping of platform names to their corresponding platform info.
    var platforms: [String: Platform] = [:]

    /// A mapping of aliases to their corresponding types (structs, unions, enums, and handles).
    var aliases: [String: String] = [:]
    /// A mapping of the name of a base type to its definition.
    /// This isn't actually exported anywhere, but it is used to find the swift type that corresponds to some vulkan types.
    var baseTypes: [String: BaseType] = [:]
    /// A mappinf of handle names to their corresponding info.
    var handles: [String: Handle] = [:]
    /// An array of structs in the Vulkan specification.
    var structs: [Struct] = []
    /// An array of unions in the Vulkan specification.
    var unions: [Union] = []
    /// A list of type names that are not structs, unions, or handles, but still exist and shouldn't print errors.
    var miscTypes: [String] = []

    /// An array of constants in the Vulkan specification.
    var constants: [Constant] = []
    /// A mapping of constant aliases to their corresponding constants.
    var constantAliases: [String: String] = [:]
    /// An array of bitmasks and their associated fields in the Vulkan specification.
    var bitmasks: [Bitmask] = []
    /// An array of enums in the Vulkan specification.
    var enums: [Enum] = []

    /// An array of commands in the Vulkan specification.
    var commands: [Command] = []
    /// A mapping of command aliases to their corresponding commands.
    var commandAliases: [String: (alias: String, deprecated: String?, documentation: DocsParser?)] = [:]

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
            platforms: (\(platforms.count))[
                \(platforms.map { "\($0.key): \($0.value.protect)" }.joined(separator: ",\n        "))
            ],
            baseTypes: (\(baseTypes.count))[
                \(baseTypes.map { "\($0.key): \($0.value.definition)" }.joined(separator: ",\n        "))
            ],
            handles: (\(handles.count)),
            structs: (\(structs.count)),
            unions: (\(unions.count)),
            constants: (\(constants.count)),
            bitmasks: (\(bitmasks.count)),
            enums: (\(enums.count)),
            commands: (\(commands.count)),
            apiVersions: (\(apiVersions.count))[
                \(apiVersions.map { "\($0.name): \($0.api)" }.joined(separator: ",\n        "))
            ],
            extensions: (\(extensions.count))
        )
        """
    }
}

extension Registry {
    /// Check if the given handle type is a child of the parent handle.
    /// - Parameters:
    ///   - name: The name of the handle to check.
    ///   - parent: The name of the parent handle.
    /// - Returns: True if the handle is a child of the parent handle.
    func isDecendent(_ name: String, of parent: String, counter: UInt = 0) throws -> Bool {
        if name == parent {
            return true
        }

        guard let handle = handles[name] else {
            return false
        }
        if handle.parent == nil {
            return false
        } else if handle.parent == parent {
            return true
        } else if counter > 100 {
            throw "Handle \(name) has a recursive loop of parents" as GeneratePluginError
        }
        return try isDecendent(handle.parent!, of: parent, counter: counter + 1)
    }
}

/// Some common members for any component in the Vulkan specification.
protocol APIComponent {
    /// The name of the type.
    var name: String { get }
    /// A comment about the type.
    var comment: String? { get }
    /// Whether the type is deprecated.
    /// This is a message about why the type is deprecated.
    var deprecated: String? { get }
    /// The names of the extensions that provide this type.
    var providingExtensions: [String]? { get set }
    /// The name of the API version that provides this type.
    var providingVersion: String? { get set }
}

/// A platform in the Vulkan specification.
struct Platform {
    /// The name of the platform.
    var name: String
    /// The include guard surrounding every type that requires this platform.
    var protect: String
    /// A textual comment about the platform.
    var comment: String

    /// The name of the swiftpm trait that should guard anything using this platform.
    var traitName: String {
        let fixedName = name
            .replacingOccurrences(of: "_", with: " ") // Use spaces instead of underscores
            .capitalized // Capitalize the first letter of each word
            .replacingOccurrences(of: " ", with: "") // Remove spaces to make it title case without spaces
        if protect.starts(with: "VK_USE_PLATFORM_") {
            return "Platform\(fixedName)"
        } else if protect.starts(with: "VK_ENABLE_") {
            return "Enable\(fixedName)"
        } else {
            return protect
        }
    }
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
    /// The apis that support this version.
    var api: [String]
    /// The version number.
    var number: String
    /// The sort order of the version.
    var sortorder: UInt?
    /// The api verisions and extensions that this version depends on.
    var dependencies: Dependencies?
}

/// An extension in the Vulkan specification.
struct Extension {
    /// The name of the extension as the preprocessor guard.
    var name: String
    /// The number of the extension.
    var number: UInt
    /// The sort order of the extension.
    var sortorder: UInt?
    /// The platform name.
    var platform: String?
    /// The kind of extension.
    var kind: Kind
    /// List of APIs that support this extension. (vulkan, vulkansc)
    var supported: [String]
    /// Name of the extension or API version that this extension is promoted into.
    var promotedTo: String?
    /// Name of the extension or API version that deprecates this extension.
    var deprecatedBy: String?
    /// Name of the extension or API version that obliterates this extension.
    var obsoletedBy: String?
    /// The extensions and api versions that this extension depends on.
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

    var comment: String?
    var deprecated: String?
    var providingExtensions: [String]? = nil
    var providingVersion: String? = nil

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

    var comment: String?
    var deprecated: String?
    var providingExtensions: [String]? = nil
    var providingVersion: String? = nil
}

/// A bitmask in the Vulkan specification.
struct Bitmask: APIComponent {
    /// The name of the bitmask.
    var name: String
    /// The bit width of the bitmask.
    var bitWidth: UInt
    /// The list of bitflags in the bitmask.
    var flags: [Bitflag]
    /// Aliases for bitflags in the bitmask.
    /// For example, some extensions that have been promoted to the core API alias the old name to the new name.
    var aliases: [String: String]

    var comment: String?
    var deprecated: String?
    var providingExtensions: [String]? = nil
    var providingVersion: String? = nil

    /// A single flag in a bitmask.
    struct Bitflag: APIComponent {
        /// The name of the bitflag.
        var name: String
        /// The value of the bitflag.
        var value: String

        var comment: String?
        var deprecated: String?
        var providingExtensions: [String]? = nil
        var providingVersion: String? = nil
    }
}

/// An enum in the Vulkan specification.
struct Enum: APIComponent {
    /// The name of the enum.
    var name: String
    /// The bit width of the enum's raw value.
    var bitwidth: UInt?
    /// An array of the cases in the enum.
    var cases: [Case]
    /// An array of the case aliases for the enum.
    var caseAliases: [CaseAlias]

    var comment: String?
    var deprecated: String?
    var providingExtensions: [String]? = nil
    var providingVersion: String? = nil

    /// A single case in an enum.
    struct Case: APIComponent {
        /// The name of the case.
        var name: String
        /// The name of the case that this case extends.
        var extends: String?
        /// The value of the case.
        var value: String
        
        var comment: String?
        var deprecated: String?
        var providingExtensions: [String]? = nil
        var providingVersion: String? = nil
    }

    /// An alias for a case in an enum.
    struct CaseAlias: APIComponent {
        /// The name of the case.
        var name: String
        /// The name of the case that this case extends.
        var extends: String?
        /// The name of the case that this alias refers to.
        var alias: String
        
        var comment: String?
        var deprecated: String?
        var providingExtensions: [String]? = nil
        var providingVersion: String? = nil
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

    var comment: String?
    var deprecated: String?
    var providingExtensions: [String]? = nil
    var providingVersion: String? = nil
}

/// A command in the Vulkan specification.
struct Command: APIComponent {
    /// The name of the command.
    var name: String
    /// The name of the typedef of the function type.
    var typeName: String
    /// The scope of the command. (Loader, Instance, or Device)
    var scope: Scope
    /// The return type of the function.
    var returnType: String
    /// The parameters of the function.
    var params: [CommandParam]
    /// The kinds of queues that this command can be submitted to.
    var queues: [String]?
    /// The possible success codes that could be returned.
    var successcodes: [String]
    /// The possible error codes that could be returned.
    var errorcodes: [String]
    /// The levels of command buffers that this command is allowed in.
    var cmdbufferlevel: [String]?
    /// A list of other things that must be externally syncronized for this command.
    var implicitExternalSyncParams: [String]
    
    var comment: String?
    var deprecated: String?
    var providingExtensions: [String]? = nil
    var providingVersion: String? = nil

    var documentation: DocsParser? = nil

    /// The scope of a command.
    enum Scope {
        /// The command is used on the loader.
        case loader
        /// The command is used on the instance.
        case instance
        /// The command is used on the device.
        case device
    }

    /// Removes the vk prefix from the name.
    static func getFixedName(name: String) -> String {
        let name = name.trimmingPrefix("vk")
        return "\(name.first!.lowercased())\(name.dropFirst())"
    }

    /// The name of the command without the vk prefix.
    var fixedName: String {
        Self.getFixedName(name: name)
    }
}

/// A parameter for a command.
struct CommandParam {
    /// The name of the parameter.
    var name: String
    /// The type of the parameter.
    var type: String
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
    var externalSync: Bool
    /// Whether the parameter is optional. (When it is a handle, pass VK_NULL_HANDLE, but when)
    var optional: Bool
    /// If the type is a handle represented by an integer, this is the actual handle type.
    var objecttype: String?
    /// For a generic structure pointer, this is a list of all the valid structures to pass.
    var validstructs: [String]?

    var comment: String?
    var deprecated: String?
}

/// A structure in the Vulkan specification.
struct Struct: APIComponent {
    /// The name of the structure.
    var name: String
    /// The name of a struct that this struct requires.
    var requires: String?
    /// The api version that provides this struct.
    /// Whether this struct is only ever created by the runtime and doesn't need to be created by the application.
    var returnedOnly: Bool
    /// A list of all of the structures that this struct can extend through the pNext chain.
    var extends: [String]?
    /// Whether the pNext chain can contain multiple of this struct.
    var allowDuplicate: Bool
    /// An array of the members in the struct.
    var members: [StructMember]

    var comment: String?
    var deprecated: String?
    var providingExtensions: [String]? = nil
    var providingVersion: String? = nil

    /// The name of the struct without the Vk prefix.
    static func getFixedName(name: String) -> String {
        guard name.starts(with: "Vk") else {
            print("Error: Struct \(name) does not start with Vk. It's name will overlap with the C name.")
            fatalError()
        }
        let fixed = name.trimmingPrefix("Vk")
        return "\(fixed.first!.uppercased())\(fixed.dropFirst())"
    }

    /// The name of the swift type that corresponds to this struct.
    var swiftTypeName: String {
        Self.getFixedName(name: name)
    }
}

/// A member of a structure in the Vulkan specification.
struct StructMember: APIComponent {
    /// The name of the member.
    var name: String
    /// The type of the member.
    var type: String
    /// The base type of the member. (removes const and *s from the name).
    var baseType: String
    /// If the param is an array, this specifies the length:
    ///     len may be one or more of the following things, separated by commas (one for each array indirection):
    ///     another member of that struct, 'null-terminated' for a string, '1' to indicate it is just a pointer (used for nested pointers),
    ///     or a latex equation (prefixed with 'latexmath:')
    var length: [String]?
    /// if len has latexmath equations, this contains equivalent C99 expressions separated by commas.
    var altlen: [String]?
    /// if the member is an array, stride specifies the name of another parameter containing the byte stride between consecutive
    /// elements in the array. The array is assumed to be tightly packed if omitted.
    var stride: [String]?
    /// Whether this parameter must be externally syncronized.
    var externalSync: Bool
    /// Whether the parameter is optional. (When it is a handle, pass VK_NULL_HANDLE, but when)
    var optional: Bool
    /// If the type is a handle represented by an integer, this is the actual handle type.
    var objecttype: String?
    /// For a union member, this specifys which member hints at which union case to use.
    var selector: String?
    /// If specified, only the provided values are allowed. This is mainly used for sType members.
    var validValues: Set<String>?

    var comment: String?
    var deprecated: String?
    var providingExtensions: [String]? = nil
    var providingVersion: String? = nil

    /// Checks whether this member is a simple type that doesn't need an allocation elsewhere (little to no indirection).
    var isSimple: Bool {
        // If it has a length it can't be simple unless the length is just a 1 (which means it's a pointer).
        (length == nil || (length!.count == 1 && length!.allSatisfy { $0 == "1" })) &&
        // If it has a stride or an altlen, it can't be simple.
        stride == nil && altlen == nil
    }

    /// The name of the swift property that corresponds to this struct member.
    var fixedName: String {
        // If the name starts with a series of p, remove them.
        var fixed = name[...]
        for _ in 0..<fixed.count {
            fixed = fixed.trimmingPrefix("p")
        }
        // Fix caps
        return "\(fixed.first!.lowercased())\(fixed.dropFirst())"
    }
}

/// A union in the Vulkan specification.
struct Union: APIComponent {
    /// The name of the union.
    var name: String
    /// A mapping of the names of the union cases to their info.
    var cases: [String: (type: String, selection: String?)]

    var comment: String?
    var deprecated: String?
    var providingExtensions: [String]? = nil
    var providingVersion: String? = nil
}
