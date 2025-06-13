/**
 * APIVersions.swift
 * Generators
 * 
 * Created by Hunter Baker on 6/12/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

func generateAPIVersions(
    packagePath: URL, registry: Registry
) throws {
    print("Generating API version cases...")
    let file = packagePath.appending(path: "Sources/Ignite/ApiVersion.swift")
    try modifyFileAtPlaceholder(file: file, markerName: "API_VERSIONS") { contents in
        var lines: [Substring] = registry.apiVersions.map { version in
            let name = version.name.trimmingPrefix("VK_VERSION_")
            return 
                """
                /// Equvalent to Vulkan's \(version.name)
                @inlinable
                public static var v\(name): ApiVersion {
                    ApiVersion(rawValue: makeVkAPIVersion(\(version.number.replacingOccurrences(of: ".", with: ", "))))
                }\n
                """
        }
        lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        contents = lines[...]
    }
}
