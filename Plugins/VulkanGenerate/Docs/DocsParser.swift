/**
 * DocsParser.swift
 * Docs
 * 
 * Created by Hunter Baker on 5/17/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation
import RegexBuilder

/// The base URL for the Vulkan documentation.
let baseDocsUrl: URL = URL(string: "https://registry.khronos.org/vulkan/specs/latest/man/html/")!

private func ensureValidHTML(_ html: String) -> String {
    var contents: [Substring] = html.split(separator: "\n", omittingEmptySubsequences: false)
    contents.removeAll { $0.contains("id=\"loading_msg\"") }
    contents = contents.map { line in
        var line: String = line.replacingOccurrences(of: "<br>", with: "<br/>")
        let metaExpr: Regex<(Substring, Substring)> = Regex {
            "<meta"
            One(.whitespace)
            Capture {
                Regex {
                    ZeroOrMore(CharacterClass.anyOf(">^/").inverted, .reluctant)
                    One(CharacterClass.anyOf("/").inverted)
                }
            }
            ">"
        }
        line.replace(metaExpr) { match in
            "<meta \(match.output.1)/>"
        }
        let colExpr: Regex<(Substring, Substring)> = Regex {
            "<col"
            One(.whitespace)
            Capture {
                Regex {
                    ZeroOrMore(CharacterClass.anyOf(">^/").inverted, .reluctant)
                    One(CharacterClass.anyOf("/").inverted)
                }
            }
            ">"
        }
        line.replace(colExpr) { match in
            "<col \(match.output.1)/>"
        }
        return line[...]
    }
    while true {
        let start: Array<Substring>.Index? = contents.firstIndex(where: { $0.contains("<style>") })
        guard let start else {
            break
        }
        let end: ArraySlice<Substring>.Index? = contents[(start + 1)...].firstIndex(where: { $0.contains("<style>") })
        guard let end else {
            break
        }

        let startLine: Substring = contents[start].split(separator: "<style>").first ?? ""
        let endLine: Substring = contents[end].split(separator: "</style>").last ?? ""

        contents[start...end] = [startLine, endLine]
    }
    return contents.joined(separator: "\n")
}

private func fetchDocs(for symbol: String, registry: borrowing Registry) throws -> (URL, XMLElement) {
    var possibleNames: [Substring] = [symbol[...]]
    let tag: String? = registry.vendorTags.compactMap { symbol.hasSuffix($0.key) ? $0.key : nil }.first
    if let tag {
        possibleNames.append(symbol.dropLast(tag.count))
    }

    var url: URL?
    var htmlContents: String?
    for name in possibleNames {
        url = baseDocsUrl.appending(component: "\(name).html")
        htmlContents = try? String(contentsOf: url!, encoding: .utf8)
        if htmlContents != nil {
            break
        }
    }
    guard let htmlContents, let url else {
        throw "HTML docs not found for symbol: \(symbol)" as GeneratePluginError
    }

    let validContents: String = ensureValidHTML(htmlContents)
    let xml: XMLDocument = try XMLDocument(xmlString: validContents)
    guard let root = xml.rootElement() else {
        throw "Failed to parse XML document for symbol: \(symbol)" as GeneratePluginError
    }

    let body = root.elements(forName: "body").first
    guard let body else {
        throw "Failed to find body element for symbol: \(symbol)" as GeneratePluginError
    }

    return (url, body)
}

class DocsParser: @unchecked Sendable {
    /// Symbol name.
    let symbol: String
    /// The URL to the symbol documentation.
    let url: URL
    /// The HTML root element.
    let root: XMLElement

    init(for symbol: String, registry: borrowing Registry) throws {
        self.symbol = symbol
        (url, root) = try fetchDocs(for: symbol, registry: registry)
    }

    var shortDescription: [String]? {
        // The docs have a section called "C Specification" that contains the short description.
        // It is usually followed by a code block, but we just ignore that.
        let cSpecHeader = try? root
            .nodes(forXPath: "div[@id='content']/div/h2[@id='_c_specification']").first
        guard let cSpecHeader else {
            return nil
        }

        let body = try? cSpecHeader.parent!
            .nodes(forXPath: "div[@class='sectionbody']/div[@class='paragraph']/p").first
        guard let body else {
            return nil
        }

        // Format the body text as markdown
        let formattedBody: String? = body
            .getFormattedStringValue(docsUrl: url)?
            .trimmingCharacters(in: .whitespacesAndNewlines)
        guard let formattedBody else {
            return nil
        }

        return formattedBody
            .split(separator: "\n", omittingEmptySubsequences: false)
            .map { line in
                line.trimmingCharacters(in: .whitespacesAndNewlines)
            }
    }

    private lazy var extraInfoBlocks: [XMLNode] = {
        let descriptionHeader = try? root
            .nodes(forXPath: "div[@id='content']/div[@class='sect1']/h2[@id='_description']").first
        guard let descriptionHeader else {
            return []
        }

        let body = try? descriptionHeader.parent!
            .nodes(forXPath: "div[@class='sectionbody']/div[@class='sidebarblock']/div[@class='content']/div[@class='title']")
        guard let body else {
            return []
        }

        return body
    }()

    var preconditions: (syncronization: [String]?, validUsage: [String]?, validUsageImplicit: [String]?)? {
        // The docs have multiple sections containing different types of preconditions.
        // Some of these are "Host Synchronization", and "Valid Usage".
        var synchronizationPreconditions: [String] = []
        let syncTitle: XMLNode? = extraInfoBlocks.first { title in
            title.stringValue == "Host Synchronization"
        }
        if let syncTitle {
            let list: [XMLNode] = (try? syncTitle.nextSibling?.nodes(forXPath: "ul/li/p")) ?? []
            for precondition in list {
                let text: String? = precondition
                    .getFormattedStringValue(docsUrl: url)?
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                if let text {
                    synchronizationPreconditions.append(text)
                }
            }
        }

        var validUsagePreconditions: [String] = []
        let validUsageTitle: XMLNode? = extraInfoBlocks.first { title in
            title.stringValue == "Valid Usage"
        }
        if let validUsageTitle {
            let list: [XMLNode] = (try? validUsageTitle.nextSibling?.nodes(forXPath: "ul/li/p")) ?? []
            for precondition in list {
                let text: String? = precondition
                    .getFormattedStringValue(docsUrl: url)?
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                if let text {
                    validUsagePreconditions.append(text)
                }
            }
        }

        var validUsageImplicitPreconditions: [String] = []
        let validUsageImplicitTitle: XMLNode? = extraInfoBlocks.first { title in
            title.stringValue == "Valid Usage (Implicit)"
        }
        if let validUsageImplicitTitle {
            let list: [XMLNode] = (try? validUsageImplicitTitle.nextSibling?.nodes(forXPath: "ul/li/p")) ?? []
            for precondition in list {
                let text: String? = precondition
                    .getFormattedStringValue(docsUrl: url)?
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                if let text {
                    validUsageImplicitPreconditions.append(text)
                }
            }
        }

        if synchronizationPreconditions.isEmpty && validUsagePreconditions.isEmpty && validUsageImplicitPreconditions.isEmpty {
            return nil
        }

        return (
            syncronization: synchronizationPreconditions.isEmpty ? nil : synchronizationPreconditions,
            validUsage: validUsagePreconditions.isEmpty ? nil : validUsagePreconditions,
            validUsageImplicit: validUsageImplicitPreconditions.isEmpty ? nil : validUsageImplicitPreconditions
        )
    }

    var parameters: [(name: String, description: String)]? {
        get throws {
            // The docs have a section called "Parameters" that contains the parameters for the function.
            let parametersHeader: XMLNode? = try? root
                .nodes(forXPath: "div[@id='content']/div[@class='sect1']/h2[@id='_parameters']").first
            guard let parametersHeader else {
                return nil
            }
            let list: [XMLNode]? = try? parametersHeader.parent!
                .nodes(forXPath: "div[@class='sectionbody']/div[@class='ulist']/ul/li/p")
            guard let list else {
                return nil
            }

            let params: [(String, String)] = try list.map { paramElement in
                let xmlString = paramElement.xmlString
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                let nameMatch = xmlString
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                    .firstMatch(of: codeBlockRegex)
                guard
                    let nameMatch,
                    nameMatch.range.lowerBound <= xmlString.index(xmlString.startIndex, offsetBy: 4)
                else {
                    throw "Failed to parse parameter name: \(paramElement) for \(symbol)" as GeneratePluginError
                }
                let fixedXmlString: Substring = xmlString[..<nameMatch.range.lowerBound] + xmlString[nameMatch.range.upperBound...]
                let fixedXml: XMLElement = try XMLElement(
                    xmlString: String(fixedXmlString)
                )
                let name = nameMatch.output.1
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                let description = fixedXml
                    .getFormattedStringValue(docsUrl: url)?
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                    .replacingOccurrences(of: "\n", with: " ")
                    ?? ""
                return (name, description)
            }

            return params
        }
    }

    var rawReturnCodes: (success: [String], error: [String])? {
        // The docs have a section called "Return Codes" inside the "Description" section
        // for funcion types that contains the possible return codes.
        let titleElement: XMLNode? = extraInfoBlocks.first { titleElement in
            titleElement.stringValue == "Return Codes"
        }
        guard let titleElement else {
            return nil
        }

        let listTitles: [XMLNode] = (try? titleElement.nextSibling?.nodes(forXPath: "dl/dt")) ?? []
        let successList: [XMLNode]? = try? listTitles.first { title in
            title.stringValue?.contains("On success") == true
        }?.nextSibling?.nodes(forXPath: "div[@class='ulist']/ul/li/p")
        let errorList: [XMLNode]? = try? listTitles.first { title in
            title.stringValue?.contains("On failure") == true
        }?.nextSibling?.nodes(forXPath: "div[@class='ulist']/ul/li/p")

        guard successList != nil || errorList != nil else {
            return nil
        }

        var successCodes: [String] = []
        var errorCodes: [String] = []

        if let successList {
            for code in successList {
                let text: String? = code
                    .getFormattedStringValue(docsUrl: url)?
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                if let text {
                    successCodes.append(text)
                }
            }
        }
        if let errorList {
            for code in errorList {
                let text: String? = code
                    .getFormattedStringValue(docsUrl: url)?
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                if let text {
                    errorCodes.append(text)
                }
            }
        }

        return (success: successCodes, error: errorCodes)
    }

    var otherExtraInfo: [(title: String, lines: [String])] {
        let blocks = extraInfoBlocks.filter { title in
            title.stringValue != "Host Synchronization" &&
            title.stringValue != "Valid Usage" &&
            title.stringValue != "Valid Usage (Implicit)" &&
            title.stringValue != "Return Codes"
        }.map { title in
            (
                title.stringValue,
                title.parent
            )
        }
        var extraInfo: [(String, [String])] = []
        for (title, block) in blocks {
            if let title, let block {
                let lines = (try? Self.parseSection(section: block, docsUrl: url)) ?? []
                extraInfo.append((title, lines))
            }
        }
        return extraInfo
    }

    var seeAlso: [String] {
        return [
            "[\(symbol) Documentation](\(url.absoluteString))"
        ]
    }

    var fullDescription: [String]? {
        get throws {
            let descriptionHeader: XMLNode? = try? root
                .nodes(forXPath: "div[@id='content']/div[@class='sect1']/h2[@id='_description']").first
            guard let descriptionHeader else {
                return nil
            }

            let body: XMLNode? = try? descriptionHeader.parent!
                .nodes(forXPath: "div[@class='sectionbody']").first
            guard let body else {
                return nil
            }

            return try Self.parseSection(section: body, docsUrl: url)
        }
    }

    // Parses a section body into a list of strings ready to be used as documentation.
    /// - Parameter section: The section to parse.
    /// - Returns: A list of strings for the documentation.
    private static func parseSection(section: XMLNode, docsUrl: URL) throws -> [String] {
        guard let children = section.children else {
            throw "Section \"\(section)\" has no children" as GeneratePluginError
        }
        var parts: [[String]] = []
        for child in children {
            if let child = child as? XMLElement {
                let classes: [Substring]? = child.attribute(forName: "class")?.stringValue?.split(separator: .whitespace, omittingEmptySubsequences: false)
                if classes?.contains("paragraph") == true {
                    // If we have a paragraph, we get the text, separate it by sentences, and add it as another part
                    let text: String = child.elements(forName: "p").compactMap {
                        // Sometimes, when downloading, the newlines are added in the middle of sentences
                        $0.getFormattedStringValue(docsUrl: docsUrl)?.replacingOccurrences(of: "\n", with: " ")
                    }.joined(separator: "\n")
                    var lines: [String] = []
                    text.enumerateSubstrings(in: text.startIndex..., options: [.bySentences]) { sentence, _, _, _ in
                        if let sentence {
                            lines.append(String(sentence))
                        }
                    }
                    parts.append(lines)
                } else if classes?.contains("title") == true {
                    let title: String = child
                        .getFormattedStringValue(docsUrl: docsUrl)?
                        .replacingOccurrences(of: "\n", with: " ")
                        ?? ""
                    parts.append(
                        [
                            "### " + title,
                            "---"
                        ]
                    )
                } else if classes?.contains("admonitionblock") == true {
                    let tag: String
                    if classes?.contains("note") == true {
                        tag = "Note:"
                    } else {
                        continue
                    }
                    let content: XMLElement? = try? child.nodes(forXPath: "table/tbody/tr/td[@class='content']").first as? XMLElement
                    if let content, let contentLines = try? parseSection(section: content, docsUrl: docsUrl) {
                        let tagIndent: String = String(repeating: " ", count: tag.count)
                        var first: Bool = true
                        let formattedLines: [String] = contentLines.map {
                            defer { first = false }
                            if first {
                                return "> \(tag) \($0)"
                            } else {
                                return "> \(tagIndent) \($0)"
                            }
                        }
                        parts.append(formattedLines)
                    }
                } else if child.name == "table", classes?.contains("tableblock") == true {
                    let title: String? = child.elements(forName: "caption").first?.getFormattedStringValue(docsUrl: docsUrl)
                    let colNames: [String]? = try? child.nodes(forXPath: "thead/tr/th").compactMap {
                        $0.getFormattedStringValue(docsUrl: docsUrl)?.trimmingCharacters(in: .whitespacesAndNewlines)
                    }
                    guard let colNames else { continue }

                    let rows: [[(text: String, span: Int)]]? = try? child.nodes(forXPath: "tbody/tr").compactMap { row in
                        try? row.nodes(forXPath: "td").compactMap {
                            (
                                text: $0.getFormattedStringValue(docsUrl: docsUrl)!
                                        .trimmingCharacters(in: .whitespacesAndNewlines)
                                        .replacingOccurrences(of: "\n", with: ", "),
                                span: Int(($0 as? XMLElement)?.attribute(forName: "colspan")?.stringValue ?? "1") ?? 1
                            )
                        }
                    }
                    guard let rows else { continue }

                    var lines: [String] = [
                        colNames.joined(separator: " | "),
                        colNames.map { String(repeating: "-", count: $0.count) }.joined(separator: " | ")
                    ]
                    if let title {
                        lines.insert("### " + title, at: 0)
                    }
                    lines.append(
                        contentsOf: rows.map { row in
                            let rowTexts = row.map {
                                $0.text + String(repeating: "»", count: $0.span - 1)
                            }
                            let fixSpanExpr: Regex<(Substring, OneOrMore<Substring>.RegexOutput)> = Regex {
                                Capture {
                                    OneOrMore("»")
                                }
                                OneOrMore(.whitespace.subtracting(.newlineSequence))
                                One("|")
                            }
                            return rowTexts.joined(separator: " | ")
                                .replacing(fixSpanExpr) { match in
                                    let span = match.output.1.count { $0 == "»" } + 1
                                    return String(repeating: "|", count: span)
                                }
                                .replacingOccurrences(of: "»", with: "")
                        }
                    )
                    parts.append(lines)
                } else if classes?.contains("ulist") == true {
                    let listNodes: [XMLNode] = try child.nodes(forXPath: "ul/li")
                    let listItems: [String] = listNodes.compactMap {
                        $0.getFormattedStringValue(docsUrl: docsUrl)?.trimmingCharacters(in: .whitespacesAndNewlines)
                            .replacingOccurrences(of: "\n", with: " ")
                    }
                    parts.append(
                        listItems.map {
                            "- " + $0
                        }
                    )
                }
            }
        }
        return parts.flatMap { $0 }
    }

    func getFunctionDocs() throws -> [String] {
        var lines: [String] = []

        if let shortDescription = shortDescription {
            lines.append(contentsOf: shortDescription)
        }

        let discussionBlock: [String]? = try fullDescription
        if let discussionBlock {
            lines.append("")
            lines.append(contentsOf: discussionBlock)
        }

        let parametersBlock: [(String, String)]? = try parameters
        if let parametersBlock {
            lines.append("")
            lines.append("- Parameters:")
            for (name, description) in parametersBlock {
                let header = "  - \(name): "
                // let headerPlaceholder = String(repeating: " ", count: header.count)
                lines.append("\(header)\(description)")
            }
        } else {
            throw "No parameters found for symbol: \(symbol)" as GeneratePluginError
        }

        let returnCodesBlock: (success: [String], error: [String])? = rawReturnCodes
        if let returnCodesBlock {
            lines.append("")
            lines.append("- Returns:")
            if !returnCodesBlock.success.isEmpty {
                lines.append("  - On success:")
                for code in returnCodesBlock.success {
                    lines.append("    - " + code)
                }
            }
            if !returnCodesBlock.error.isEmpty {
                lines.append("  - On failure:")
                for code in returnCodesBlock.error {
                    lines.append("    - " + code)
                }
            }
        }

        let preconditionsBlock: (syncronization: [String]?, validUsage: [String]?, validUsageImplicit: [String]?)? = preconditions
        if let preconditionsBlock {
            let preconditionsHeader: String = "- Precondition: "
            let preconditionsPlaceholder: String = String(repeating: " ", count: preconditionsHeader.count)
            if let validUsage = preconditionsBlock.validUsage {
                lines.append("")
                lines.append("### Valid Usage")
                lines.append("---")
                for block in validUsage {
                    var isFirst: Bool = true
                    let blockLines: [String] = block
                        .split(separator: "\n")
                        .map { line in
                            defer {
                                isFirst = false
                            }
                            if isFirst {
                                return preconditionsHeader + line.trimmingCharacters(in: .whitespacesAndNewlines)
                            } else {
                                return preconditionsPlaceholder + line.trimmingCharacters(in: .whitespacesAndNewlines)
                            }
                        }
                    lines.append(contentsOf: blockLines)
                }
            }
            if let validUsageImplicit = preconditionsBlock.validUsageImplicit {
                lines.append("")
                lines.append("### Valid Usage (Implicit)")
                lines.append("---")
                for block in validUsageImplicit {
                    var isFirst: Bool = true
                    let blockLines: [String] = block
                        .split(separator: "\n")
                        .map { line in
                            defer {
                                isFirst = false
                            }
                            if isFirst {
                                return preconditionsHeader + line.trimmingCharacters(in: .whitespacesAndNewlines)
                            } else {
                                return preconditionsPlaceholder + line.trimmingCharacters(in: .whitespacesAndNewlines)
                            }
                        }
                    lines.append(contentsOf: blockLines)
                }
            }
            if let synchronization = preconditionsBlock.syncronization {
                lines.append("")
                lines.append("### Host Synchronization")
                lines.append("---")
                for block in synchronization {
                    var isFirst: Bool = true
                    let blockLines: [String] = block
                        .split(separator: "\n")
                        .map { line in
                            defer {
                                isFirst = false
                            }
                            if isFirst {
                                return preconditionsHeader + line.trimmingCharacters(in: .whitespacesAndNewlines)
                            } else {
                                return preconditionsPlaceholder + line.trimmingCharacters(in: .whitespacesAndNewlines)
                            }
                        }
                    lines.append(contentsOf: blockLines)
                }
            }
        }

        let extraInfoBlock: [(title: String, lines: [String])] = otherExtraInfo
        if !extraInfoBlock.isEmpty {
            lines.append("")
            for (_, block) in extraInfoBlock {
                for line in block {
                    lines.append(line)
                }
            }
        }

        let seeAlsoBlock: [String] = seeAlso
        if !seeAlsoBlock.isEmpty {
            lines.append("")
            for item in seeAlsoBlock {
                lines.append("- SeeAlso: \(item)")
            }
        }

        return lines
    }
}
