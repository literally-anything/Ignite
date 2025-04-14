/**
 * Registry.swift
 * VulkanGenerate
 * 
 * Created by Hunter Baker on 4/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

struct Registry: CustomStringConvertible {
    /// A mapping of vendor tags to their corresponding vendor names.
    var vendorTags: [String: String]! = nil
    /// A mapping of base types to their corresponding C types.
    /// This isn't actually exported anywhere, but it is used to find the swift type that corresponds to some vulkan types.
    var baseTypes: [BaseType]! = nil

    /// A textual description of the registry.
    var description: String {
        """
        Registry(
            vendorTags: (\(vendorTags.count))[
                \(vendorTags.map { "\($0.key): \($0.value)" }.joined(separator: ",\n        "))
            ],
            baseTypes: (\(baseTypes.count))[
                \(baseTypes.map { "\($0.name): \($0.definition)" }.joined(separator: ",\n        "))
            ]
        )
        """
    }
}

/// A base type in the Vulkan specification.
struct BaseType: Hashable {
    /// The name of the type.
    let name: String
    /// The definition of the type.
    let definition: Definition
    /// The API that the alias is associated with.
    /// Example: "vulkan", "vulkansc". Nil means any API.
    let api: String?

    /// The kind of base type.
    enum Definition: Hashable {
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
