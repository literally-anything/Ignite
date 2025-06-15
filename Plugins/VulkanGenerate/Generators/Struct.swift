/**
 * Struct.swift
 * Generators
 *
 * Created by Hunter Baker on 4/26/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation
import RegexBuilder

/// These structs should never be generated.
private let disabledStructs: [String] = [
    "VkBaseInStructure", "VkBaseOutStructure",  // These don't make any sense to generate.
    "VkInstanceCreateInfo", "VkApplicationInfo",  // These are handled by the Instance class.
    "VkLayerProperties"
]

typealias SpecificStructSet = (
    extends: String,
    filePath: String, markerName: String,
    chainProtocol: String?,
    recursive: Bool, heapAllowed: Bool
)
/// These are just a way to group structs together so we can put them in the same file.
private let specificStructSets: [SpecificStructSet] = [
    (
        "VkInstanceCreateInfo",
        "Sources/Ignite/Instance/InstanceCreateInfo.swift", "INSTANCE_CREATE_INFO_CHAIN_WRAPPERS",
        "@unsafe InstanceCreateInfoChainable",
        true, true
    )
]

func generateStructWrappers(packagePath: URL, registry: Registry) throws {
    print("Generating wrappers for Vulkan structs...")
    var structs = registry.structs.filter {
        !disabledPlatforms.contains($0.platform?.name ?? "") &&
        !disabledStructs.contains($0.name)
    }

    // This is just here because the compiler likes to complain about the availability of `removeSubranges`.
    #if canImport(Darwin)
        guard #available(macOS 15.0, *) else {
            fatalError("If this generator is run on MacOS, it needs to be 15.0 or higher.")
        }
    #endif

    var specificGeneations: [(set: SpecificStructSet, structs: [Struct])] = []

    // Resolve all the structs that we want to generate.
    for specificStructSet in specificStructSets {
        // Find the structs that extend the specific struct, generate them, and remove them so they don't get generated again.
        let indices = structs.indices {
            $0.extends?.contains(specificStructSet.extends) == true
        }
        specificGeneations.append((specificStructSet, structs[indices].map(\.self)))
        structs.removeSubranges(indices)
    }

    // for structure in structs + specificGeneations.flatMap({ $0.structs }) {
    for structure in specificGeneations.flatMap({ $0.structs }) {
        structure.isGenerated = true
    }

    for generation in specificGeneations {
        let filePath = packagePath.appending(path: generation.set.filePath)
        try modifyFileAtPlaceholder(file: filePath, markerName: generation.set.markerName) { contents in
            var lines: [Substring] = try generation.structs.map { structure in
                try buildStructWrapper(for: structure, chainProtocol: generation.set.chainProtocol, registry: registry)
            }.joined(separator: ["\n"]).map(\.self)
            lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
            lines.append("")
            contents = lines[...]
        }
    }

    // let filePath = packagePath.appending(path: "Sources/Ignite/Structs.swift")
    // try modifyFileAtPlaceholder(file: filePath, markerName: "STRUCT_WRAPPERS") { contents in
    //     var lines: [Substring] = try structs.map { structure in
    //         try buildStructWrapper(for: structure, registry: registry)
    //     }.joined(separator: ["\n"]).map(\.self)
    //     lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
    //     lines.append("")
    //     contents = lines[...]
    // }
}

#if canImport(Darwin)
    @available(macOS 15.0, *)
#endif
func buildStructWrapper(for structure: Struct, chainProtocol: String?, registry: Registry) throws -> [Substring] {
    struct MemberInfo {
        let initParam: (name: String, type: String, default: String?)?
        let vkInitParam: (name: String, value: String)
        let member: StructMember
    }
    let baseConformances: String = ": BitwiseCopyable, ~Escapable"
    var conformances: String = baseConformances
    if let chainProtocol {
        conformances.append(", \(chainProtocol)")
    }
    let trait = structure.platform?.traitName
    let members: [MemberInfo] = structure.members.map { member in
        if member.validValues?.count == 1 {
            // If the member has only one valid value, we can just use that value directly.
            return MemberInfo(
                initParam: nil,
                vkInitParam: (member.name, member.validValues!.first!),
                member: member
            )
        }
        switch member.parsedType {
            case .value(type: let type):
                let maybeAliasName = registry.aliases[type] ?? type
                if let bitmask = registry.bitmasks.first(where: { $0.matchedRawType == maybeAliasName }) {
                    return MemberInfo(
                        initParam: (member.fixedName, bitmask.fixedName, "[]"),
                        vkInitParam: (member.name, "\(member.fixedName).rawValue"),
                        member: member
                    )
                } else if let bitmask = registry.bitmasks.first(where: { $0.name == maybeAliasName }) {
                    return MemberInfo(
                        initParam: (member.fixedName, bitmask.fixedName, "[]"),
                        vkInitParam: (member.name, "\(bitmask.name)(rawValue: \(member.fixedName).rawValue)"),
                        member: member
                    )
                } else if let enumeration = registry.enums.first(where: { $0.name == maybeAliasName }) {
                    return MemberInfo(
                        initParam: (member.fixedName, enumeration.fixedName, nil),
                        vkInitParam: (member.name, "\(type)(rawValue: \(member.fixedName).rawValue)"),
                        member: member
                    )
                // } else if maybeAliasName.contains("Flags") {
                //     return MemberInfo(
                //         initParam: (member.fixedName, type, "0"),
                //         vkInitParam: (member.name, member.fixedName),
                //         member: member
                //     )
                } else {
                    let fixedType = swiftTypeMappings[type] ?? type
                    return MemberInfo(
                        initParam: (member.fixedName, fixedType, nil),
                        vkInitParam: (member.name, member.fixedName),
                        member: member
                    )
                }
            case .pointer(mutable: let mutable, level: let level, type: let type):
                let fixedType = swiftTypeMappings[type] ?? type
                let pointerType = mutable ? "UnsafeMutablePointer" : "UnsafePointer"
                var builtType = fixedType

                var baseType: Bool = true
                for _ in 0..<level {
                    if baseType && fixedType == "void" {
                        builtType = mutable ? "UnsafeMutableRawPointer" : "UnsafeRawPointer"
                    } else {
                        builtType = "\(pointerType)<\(builtType)>"
                    }
                    baseType = false
                }

                if member.optional {
                    builtType.append("?")
                }

                return MemberInfo(
                    initParam: (member.fixedName, builtType, member.optional ? "nil" : nil),
                    vkInitParam: (member.name, member.fixedName),
                    member: member
                )
            case .inlineArray(type: let type, shape: let shape):
                let size = shape.reduce(into: 1) { $0 *= $1 }
                let fixedType = swiftTypeMappings[type] ?? type
                let tupleType = "(" + Array(repeating: fixedType, count: size).joined(separator: ", ") + ")"
                return MemberInfo(
                    initParam: (member.fixedName, tupleType, nil),
                    vkInitParam: (member.name, member.fixedName),
                    member: member
                )
            case .array(type: let type, shape: let shape):
                let pointerLevel = shape.count
                let pointerType = "UnsafePointer"
                var builtType = swiftTypeMappings[type] ?? type

                var baseType: Bool = true
                for _ in 0..<pointerLevel {
                    if baseType && type == "void" {
                        builtType = "UnsafeRawPointer"
                    } else {
                        builtType = "\(pointerType)<\(builtType)>"
                    }
                    baseType = false
                }

                if member.optional {
                    builtType.append("?")
                }

                return MemberInfo(
                    initParam: (member.fixedName, builtType, member.optional ? "nil" : nil),
                    vkInitParam: (member.name, member.fixedName),
                    member: member
                )
        }
    }
    let decl =
        """
        @safe
        public struct \(structure.swiftTypeName)\(conformances) {
            public typealias Wrapped = CVulkan.\(structure.name)

            public var wrapped: CVulkan.\(structure.name)

            @inlinable
            @lifetime(immortal)
            public init(wrapping wrapped: consuming CVulkan.\(structure.name)) {
                unsafe self.wrapped = wrapped
            }

            @inlinable
            @lifetime(immortal)
            public init(
                \(members.compactMap {
                    guard let initParam = $0.initParam else {
                        return nil
                    }
                    if let defaultValue = initParam.default {
                        return "\(initParam.name): \(initParam.type) = \(defaultValue)"
                    } else {
                        return "\(initParam.name): \(initParam.type)"
                    }
                }.joined(separator: ",\n"))
            ) {
                unsafe self.wrapped = CVulkan.\(structure.name)(
                    \(members.map { "\($0.vkInitParam.name): \($0.vkInitParam.value)" }.joined(separator: ",\n"))
                )
            }
        }
        """.split(separator: "\n", omittingEmptySubsequences: false)
    if let trait {
        return [
            "#if \(trait)"
        ] + decl + [
            "#else",
            "    @available(*, unavailable, message: \"This struct requires the following trait: \(trait).\")",
            "    public struct \(structure.swiftTypeName)\(baseConformances) {}",
            "#endif"
        ]
    } else {
        return decl
    }
}

// private func getFixedBaseType(
//     base: String,
//     generatedStructs: [String: (name: String, alloc: AllocationKind)],
//     registry: Registry
// ) -> String {
//     var baseType =
//         if generatedStructs.contains(where: { $0.key == base }) {
//             Struct.getFixedName(name: base)
//         } else {
//             base
//         }
//     while registry.baseTypes.keys.contains(baseType) {
//         baseType = registry.baseTypes[baseType]!.name
//     }
//     return swiftTypeMappings[baseType] ?? baseType
// }

// private func buildHeapStructWrapper(
//     for structure: Struct, members: [FinalStructMember],
//     generatedStructs: [String: (name: String, alloc: AllocationKind)],
//     registry: Registry
// ) throws -> [String] {
//     /// Properties in the generated struct.
//     var properties: [(name: String, type: String)] = []
//     /// The lines that are used to setup (i.e. allocate memory etc.) when calling withVk before the user closure is called.
//     var setupLines: [String] = []
//     /// The lines that are put inside the arguments of the call to the Vulkan struture initializer.
//     var initArgs: [(vk: String, swift: String)] = []
//     /// The lines that are used to cleanup (i.e. free memory or just close bracket) when calling withVk after the user closure is called.
//     var cleanupLines: [String] = []

//     for member in members {
//         switch member {
//             case .constant(let member):
//                 // Constants don't need to be passed in, so we just set them to the only valid value.
//                 initArgs.append((member.name, member.validValues!.first!))
//             case .independent(let member):
//                 if member.length?.first == "null-terminated", member.baseType == "char" {
//                     // If the member is a null-terminated string, we just use withCString to pass it in.
//                     properties.append((member.fixedName, "String"))
//                     setupLines.append("\(member.fixedName).withCString { \(member.fixedName)Ptr in")
//                     initArgs.append((member.name, "\(member.fixedName)Ptr"))
//                     cleanupLines.append("}")
//                 } else if member.length?.first == "1" {
//                     // If the member is just a pointer, we can just pass it in as is
//                     let baseType: String = getFixedBaseType(base: member.baseType, generatedStructs: generatedStructs, registry: registry)
//                     let isMutable: Bool = !member.type.hasPrefix("const")
//                     let ptrType: String = isMutable ? "UnsafeMutablePointer<\(baseType)>" : "UnsafePointer<\(baseType)>"
//                     properties.append((member.fixedName, ptrType))
//                     initArgs.append((member.name, member.fixedName))
//                 } else if member.name == "pNext" && member.baseType == "void" {
//                     initArgs.append((member.name, "nil"))
//                 } else {
//                     // If the member is a simple type, we can just pass it in as is
//                     properties.append((
//                         member.fixedName,
//                         getFixedBaseType(base: member.baseType, generatedStructs: generatedStructs, registry: registry)
//                     ))
//                     initArgs.append((member.name, member.fixedName))
//                 }
//             case .multiArray(_): break
//             case .array(_, _, _): break
//         }
//     }

//     return """
//     public struct \(structure.swiftTypeName) {
//         \(properties.map { "public var \($0.name): \($0.type)" }.joined(separator: "\n\n"))

//         public init(
//             \(properties.map { "\($0.name): \($0.type)" }.joined(separator: ", "))
//         ) {
//             \(properties.map { "self.\($0.name) = \($0.name)" }.joined(separator: "\n"))
//         }

//         internal func withVk<R: ~Copyable, E: Error>(
//             body: (inout \(structure.name)) throws(E) -> R
//         ) throws(E) -> R {
//             var ret: R?
//             var error: E?

//             \(setupLines.joined(separator: "\n"))

//             var vkStruct = \(structure.name)(
//                 \(initArgs.map { "\($0.vk): \($0.swift)" }.joined(separator: ", "))
//             )
//             do throws(E) {
//                 ret = try body(&vkStruct)
//             } catch let e {
//                 error = e
//             }

//             \(cleanupLines.joined(separator: "\n"))

//             if let error = error {
//                 throw error
//             }
//             return ret!
//         }
//     }
//     """.split(separator: "\n").map { String($0) }
// }

// @available(macOS 15.0, *)
// private func simplifyMemebers(for structure: Struct) throws -> [FinalStructMember] {
//     var constantMembers: [StructMember] = []
//     var independentMembers: [StructMember] = []
//     var sizeMemberNames: [String] = []
//     var arrayMembers: [StructMember] = []
//     // Sort members
//     for member in structure.members {
//         // If there is only one valid value, we don't need to allow the user to set it. (Mainly for sType)
//         if member.validValues?.count == 1 {
//             constantMembers.append(member)
//             continue
//         }
//         // If the member has no dependencies on other members, we can just add it to the struct as is.
//         if member.length == nil, member.altlen == nil, member.stride == nil {  // , member.selector == nil {
//             independentMembers.append(member)
//             continue
//         }
//         // If the member is just a single pointer or array, we can just add it to the struct as is.
//         if member.length?.count == 1, ["1", "null-terminated"].contains(member.length!.first!) {
//             independentMembers.append(member)
//             continue
//         }
//         member.length?.forEach { len in
//             if len.starts(with: "latex") {
//                 fatalError("I havent handled latex stuff yet")
//             }
//         }
//         arrayMembers.append(member)
//         sizeMemberNames.append(
//             contentsOf: member.length!.filter { memberName in
//                 !memberName.starts(with: "latex")
//             }
//         )
//     }
//     // Group things that have the same size member for the first length.
//     var arrayForSizeMembers: [String: [String]] = [:]
//     for sizeMemberName in sizeMemberNames {
//         guard independentMembers.first(where: { $0.name == sizeMemberName }) != nil else {
//             throw "Member \(sizeMemberName) not found in members" as GeneratePluginError
//         }
//         let dependentArrayIndices = arrayMembers.indices { $0.length?.first == sizeMemberName }
//         let dependentArrays = arrayMembers[dependentArrayIndices]
//         guard dependentArrays.count > 0 else {
//             throw "No arrays found for size member \(sizeMemberName)" as GeneratePluginError
//         }
//         arrayForSizeMembers[sizeMemberName] = dependentArrays.map { $0.name }
//     }

//     var finalMembers: [FinalStructMember] = []

//     for member in constantMembers {
//         finalMembers.append(.constant(member))
//     }
//     for member in independentMembers {
//         finalMembers.append(.independent(member))
//     }
//     func simplifyInnerArrayMember(member: StructMember, depth: Int = 1) throws -> FinalArrayMember {
//         if member.length!.count == depth {
//             let suffix = String(repeating: "*", count: depth)
//             guard member.type.hasSuffix(suffix) else {
//                 let message =
//                     "Member \(member.name) has a length of \(member.length!.count) "
//                     + "but the type \"\(member.type)\" does not have the correct ammount of indirection"
//                 throw GeneratePluginError(stringLiteral: message)
//             }
//             var trimmedType = member.type
//             trimmedType.removeLast(depth)
//             if trimmedType.hasSuffix("*") {
//                 trimmedType.trimPrefix("const")
//                 trimmedType = trimmedType.trimmingCharacters(in: .whitespacesAndNewlines)
//             }
//             return .independent(type: trimmedType)
//         } else {
//             let sizeMemberName = member.length![depth]
//             guard let sizeMember = independentMembers.first(where: { $0.name == sizeMemberName }) else {
//                 throw "Size member \(sizeMemberName) not found in members" as GeneratePluginError
//             }
//             return .array(
//                 sizeMember: sizeMember,
//                 arrayOf: try simplifyInnerArrayMember(member: member, depth: depth + 1)
//             )
//         }
//     }
//     for (sizeMemberName, arrayNames) in arrayForSizeMembers {
//         let sizeMember: StructMember = independentMembers.first { $0.name == sizeMemberName }!
//         independentMembers.removeAll { $0.name == sizeMemberName }
//         if arrayNames.count == 1 {
//             let arrayMember: StructMember = arrayMembers.first { $0.name == arrayNames.first! }!
//             finalMembers.append(
//                 .array(arrayMember, sizeMember: sizeMember, arrayOf: try simplifyInnerArrayMember(member: arrayMember))
//             )
//         } else {
//             let arrayMembers: [StructMember] = arrayNames.map { name in
//                 independentMembers.first(where: { $0.name == name })!
//             }
//             finalMembers.append(
//                 .multiArray(
//                     try arrayMembers.map { member in
//                         (member, sizeMember: sizeMember, arrayOf: try simplifyInnerArrayMember(member: member))
//                     }
//                 )
//             )
//         }
//     }
//     print(finalMembers.map { $0.name })
//     print(structure.members.map { $0.name })
//     let sortedMembers = finalMembers.sorted { member1, member2 in
//         let member1Index = structure.members.firstIndex { $0.name == member1.name }
//         let member2Index = structure.members.firstIndex { $0.name == member2.name }
//         return member1Index! < member2Index!
//     }
//     print(sortedMembers.map { $0.name })
//     return sortedMembers
// }

// indirect enum FinalStructMember {
//     case constant(StructMember)
//     case independent(StructMember)
//     case multiArray([(member: StructMember, sizeMember: StructMember, arrayOf: FinalArrayMember)])
//     case array(StructMember, sizeMember: StructMember, arrayOf: FinalArrayMember)

//     var name: String {
//         switch self {
//             case .constant(let member):
//                 return member.name
//             case .independent(let member):
//                 return member.name
//             case .multiArray(let members):
//                 return members[0].sizeMember.name
//             case .array(_, let sizeMember, _):
//                 return sizeMember.name
//         }
//     }

//     var fixedName: String {
//         switch self {
//             case .constant(let member):
//                 return member.name
//             case .independent(let member):
//                 return member.name
//             case .multiArray(let members):
//                 return members[0].sizeMember.fixedName.commonPrefix(with: members[1].sizeMember.fixedName)
//             case .array(let member, let sizeMember, _):
//                 print(member.fixedName, sizeMember.fixedName, "emp")
//                 return member.fixedName.commonPrefix(with: sizeMember.fixedName)
//         }
//     }
// }
// indirect enum FinalArrayMember {
//     case array(sizeMember: StructMember, arrayOf: FinalArrayMember)
//     case independent(type: String)
// }
