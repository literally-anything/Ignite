/**
 * Extensions.swift
 * Generators
 * 
 * Created by Hunter Baker on 6/12/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

private let alwaysAvailableExtensions: Set<String> = [
    "VK_KHR_portability_subset"
]

func generateExtensions(
    packagePath: URL, registry: Registry
) throws {
    print("Generating extensions cases...")

    try generateExtensionsCases(
        file: packagePath.appending(path: "Sources/Ignite/Instance/InstanceExtension.swift"),
        registry: registry,
        kind: .instance,
        placeholder: "INSTANCE_EXTENSIONS",
        structName: "InstanceExtension"
    )
    try generateExtensionsCases(
        file: packagePath.appending(path: "Sources/Ignite/Device/DeviceExtension.swift"),
        registry: registry,
        kind: .device,
        placeholder: "DEVICE_EXTENSIONS",
        structName: "DeviceExtension"
    )
}

private func generateExtensionsCases(
    file: URL, registry: Registry, kind: Extension.Kind, placeholder: String, structName: String
) throws {
    try modifyFileAtPlaceholder(file: file, markerName: placeholder) { contents in
        var lines: [Substring] = registry.extensions.filter {
            $0.kind == kind && !disabledPlatforms.contains($0.platform?.name ?? "")
        }.map { ext in
            let fixedName = Extension.getFixedName(name: ext.name, registry: registry).escaped
            let docsUrl = baseDocsUrl.appending(component: "\(ext.name).html")
            var availability = ""
            if let deprecatedBy = ext.deprecatedBy {
                if deprecatedBy == "" {
                    availability +=
                        """
                        @available(*, deprecated, message: "\(ext.name) is deprecated without replacement")\n
                        """
                } else {
                    availability +=
                        """
                        @available(*, deprecated, message: "\(ext.name) is deprecated and replaced by \(deprecatedBy)")\n
                        """
                }
            }
            if let obsoletedBy = ext.obsoletedBy {
                availability +=
                    """
                    @available(*, deprecated, message: "\(ext.name) is obsoleted and replaced by \(obsoletedBy)")\n
                    """
            }
            if let platformTrait = ext.platform?.traitName, !alwaysAvailableExtensions.contains(ext.name) {
                availability +=
                    """
                    #if !\(platformTrait)
                        @available(*, unavailable, message: "\(ext.name) is only available when the \(platformTrait) trait is enabled")
                    #endif\n
                    """
            }
            return
                """
                /// Equivalent to Vulkan's `\(ext.name)`.
                /// - SeeAlso: [Vulkan Specification](\(docsUrl.absoluteString))
                \(availability)@inlinable
                public static var \(fixedName): \(structName) {
                    \(structName)(name: "\(ext.name)")
                }\n
                """
        }
        lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        contents = lines[...]
    }
}
