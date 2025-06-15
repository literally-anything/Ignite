/**
 * Extensions.swift
 * Generators
 * 
 * Created by Hunter Baker on 6/12/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

func generateExtensions(
    packagePath: URL, registry: Registry
) throws {
    print("Generating extension cases...")

    let instanceFile = packagePath.appending(path: "Sources/Ignite/Instance/InstanceExtension.swift")
    try modifyFileAtPlaceholder(file: instanceFile, markerName: "INSTANCE_EXTENSIONS") { contents in
        var lines: [Substring] = registry.extensions.filter {
            $0.kind == .instance && !disabledPlatforms.contains($0.platform?.name ?? "")
        }.map { ext in
            let fixedName = Extension.getFixedName(name: ext.name, registry: registry).escaped
            let docsUrl = baseDocsUrl.appending(component: "\(ext.name).html")
            var availability = ""
            if let deprecatedBy = ext.deprecatedBy {
                availability +=
                    """
                    @available(*, deprecated, message: "\(ext.name) is deprecated and replaced by \(deprecatedBy)")\n
                    """
            }
            if let deprecatedBy = ext.obsoletedBy {
                availability +=
                    """
                    @available(*, deprecated, message: "\(ext.name) is obsoleted and replaced by \(deprecatedBy)")\n
                    """
            }
            if let platformTrait = ext.platform?.traitName {
                availability +=
                    """
                    #if !\(platformTrait)
                        @available(*, unavailable, message: "\(ext.name) is only available when the \(platformTrait) trait is enabled")
                    #endif\n
                    """
            }
            return
                """
                /// Equivalent to Vulkan's \(ext.name).
                /// - SeeAlso: [Vulkan Specification](\(docsUrl.absoluteString))
                \(availability)@inlinable
                public static var \(fixedName): InstanceExtension {
                    InstanceExtension(name: "\(ext.name)")
                }\n
                """
        }
        lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        contents = lines[...]
    }
}
