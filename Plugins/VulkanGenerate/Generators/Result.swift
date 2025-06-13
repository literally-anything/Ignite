/**
 * Result.swift
 * Generators
 * 
 * Created by Hunter Baker on 5/31/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

func generateResultWrappers(
    packagePath: URL, registry: Registry
) throws {
    print("Generating VulkanResult wrapper...")

    let resultFile = packagePath.appendingPathComponent("Sources/Ignite/Result.swift")

    let results = registry.enums.first(where: { $0.name == "VkResult" })
    guard let results else {
        throw "VkResult enum not found in registry" as GeneratePluginError
    }
    
    try modifyFileAtPlaceholder(file: resultFile, markerName: "ERROR_CASES") { contents in
        var lines: [Substring] = []
        for errorCase in results.cases.filter({ Int($0.value)! < 0 }) {
            let fixedName = Enum.Case.getFixedName(
                name: errorCase.name, prefix: "Error", enumeration: results, registry: registry
            ).escaped
            lines.append(
                "case \(fixedName) = \(errorCase.value)"
            )
        }
        lines.append("")
        for errorAlias in results.caseAliases.filter({ Int($0.case.value)! < 0 }) {
            let fixedName = Enum.Case.getFixedName(
                name: errorAlias.name, prefix: "Error", enumeration: results, registry: registry
            ).escaped
            let fixedAliasName = Enum.Case.getFixedName(
                name: errorAlias.case.name, prefix: "Error", enumeration: results, registry: registry
            ).escaped
            lines.append(
                "@inlinable\npublic static var \(fixedName): Self { self.\(fixedAliasName) }"
            )
        }
        lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        lines.append("")
        contents = lines[...]
    }

    try modifyFileAtPlaceholder(file: resultFile, markerName: "SUCCESS_CASES") { contents in
        var lines: [Substring] = []
        for successCase in results.cases.filter({ Int($0.value)! >= 0 }) {
            let fixedName = Enum.Case.getFixedName(
                name: successCase.name, enumeration: results, registry: registry
            ).escaped
            lines.append(
                "case \(fixedName) = \(successCase.value)"
            )
        }
        lines.append("")
        for successAlias in results.caseAliases.filter({ Int($0.case.value)! > 0 }) {
            let fixedName = Enum.Case.getFixedName(
                name: successAlias.name, enumeration: results, registry: registry
            ).escaped
            let fixedAliasName = Enum.Case.getFixedName(
                name: successAlias.case.name, enumeration: results, registry: registry
            ).escaped
            lines.append(
                "@inlinable\npublic static var \(fixedName): Success { self.\(fixedAliasName) }"
            )
        }
        lines.insert("// Generated using header version: \(registry.version)\n", at: 0)
        lines.append("")
        contents = lines[...]
    }
}
