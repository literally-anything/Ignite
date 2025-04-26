/**
 * DocumentationParser.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/21/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation
import RegexBuilder

struct DocsParser {
    /// Lookup the documentation for a symbol.
    /// - Parameter symbol: The symbol to look up.
    /// - Returns: The documentation for the symbol.
    static func lookupDocsFor(command: String, registry: Registry) throws -> CommandDocs {
        let baseUrl: URL = .init(string: "https://registry.khronos.org/vulkan/specs/latest/man/html/")!
        var url: URL? = nil
        var fileContents: [String]? = nil

        var possibleNames = [command]
        let tag = registry.vendorTags.compactMap { command.hasSuffix($0.key) ? $0.key : nil }.first
        if let tag {
            possibleNames.append(String(command.dropLast(tag.count)))
        }

        for name in possibleNames {
            print(name)
            url = baseUrl.appendingPathComponent("\(name).html")
            fileContents = try? String(contentsOf: url!, encoding: .utf8).split(separator: "\n").map { String($0) }
            if fileContents != nil {
                break
            }
        }
        guard var fileContents, let url else {
            throw "HTML docs not found for symbol: \(command)" as GeneratePluginError
        }

        fileContents.removeAll { $0.contains("id=\"loading_msg\"") }
        fileContents = fileContents.map { line in
            var line = line.replacingOccurrences(of: "<br>", with: "<br/>")
            let metaExpr = Regex {
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
            let colExpr = Regex {
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
            return line
        }
        while true {
            guard let start = fileContents.firstIndex(where: { $0.contains("<style>") }) else {
                break
            }
            guard let end = fileContents[(start + 1)...].firstIndex(where: { $0.contains("<style>") }) else {
                break
            }

            let startLine = fileContents[start].split(separator: "<style>").first ?? ""
            let endLine = fileContents[end].split(separator: "</style>").last ?? ""

            fileContents[start...end] = [String(startLine), String(endLine)]
        }

        let joinedContents = fileContents.joined(separator: "\n")

        guard let root = try XMLDocument(xmlString: joinedContents).rootElement() else {
            throw "HTML docs have no content: \(url)" as GeneratePluginError
        }

        return try CommandDocs(url: url, name: command, root: root)
    }
}

/// A structure representing the documentation for a Vulkan api command.
struct CommandDocs {
    /// The URL to the symbol documentation.
    let url: URL
    /// The symbol name.
    let symbol: String
    /// The HTML content root element.
    let body: XMLElement

    /// Initialize a SymbolDocs object.
    init(url: URL, name: String, root: XMLElement) throws {
        self.url = url
        self.symbol = name
        guard let body = root.elements(forName: "body").first else {
            throw "Symbol \(name) has no body" as GeneratePluginError
        }
        self.body = body
    }

    /// The description of the symbol.
    var description: [String] {
        get throws {
            var lines: [String] = []

            // Find the C Specification header
            let cSpecHeader = try? body.nodes(forXPath: "div[@id='content']/div/h2[@id='_c_specification']").first
            guard let cSpecHeader else {
                throw "Symbol \(symbol) has no C specification header" as GeneratePluginError
            }
            // It's parent is the div holding the paragraph bodies
            let section = try? cSpecHeader.parent!.nodes(forXPath: "div[@class='sectionbody']").first
            guard let section else {
                throw "Symbol \(symbol) has no C specification section" as GeneratePluginError
            }
            lines.append(contentsOf: try Self.parseSection(section: section))
            lines.append("")

            // Find the parameters header
            let paramsHeader = try? body.nodes(forXPath: "div[@id='content']/div/h2[@id='_parameters']").first
            guard let paramsHeader else {
                throw "Symbol \(symbol) has no parameters header" as GeneratePluginError
            }
            // It's parent is the div holding the paragraph bodies
            let paramsSection = try? paramsHeader.parent!.nodes(forXPath: "div[@class='sectionbody']").first
            guard let paramsSection else {
                throw "Symbol \(symbol) has no parameters section" as GeneratePluginError
            }
            lines.append(contentsOf: try Self.parseSection(section: paramsSection, blockName: "Parameters"))

            lines.append("")
            // Get the description section
            let descriptionHeader = try? body.nodes(forXPath: "div[@id='content']/div/h2[@id='_description']").first
            guard let descriptionHeader else {
                throw "Symbol \(symbol) has no description header" as GeneratePluginError
            }
            // It's parent is the div holding the paragraph bodies
            let descriptionSection = try? descriptionHeader.parent!.nodes(forXPath: "div[@class='sectionbody']").first
            guard let descriptionSection else {
                throw "Symbol \(symbol) has no description section" as GeneratePluginError
            }
            lines.append(contentsOf: try Self.parseSection(section: descriptionSection))

            lines.append("")
            lines.append("### Documentation")
            lines.append("- SeeAlso: [\(symbol) Docs](\(url))")

            return lines
        }
    }

    /// Parses a section body into a list of strings ready to be used as documentation.
    /// - Parameter section: The section to parse.
    /// - Parameter blockName: The name of the type of block currently being parsed.
    ///                        This isn't used by a consumer, but it is used internally for recursion.
    /// - Returns: A list of strings for the documentation.
    private static func parseSection(section: XMLNode, blockName: String? = nil) throws -> [String] {
        guard let children = section.children else {
            throw "Section \"\(section)\" has no children" as GeneratePluginError
        }
        var parts: [[String]] = []
        for child in children {
            if let child = child as? XMLElement {
                let classes = child.attribute(forName: "class")?.stringValue?.split(separator: .whitespace)
                if classes?.contains("paragraph") == true {
                    // If we have a paragraph, we get the text, separate it by sentences, and add it as another part
                    let text = child.elements(forName: "p").compactMap {
                        // Sometimes, when downloading, the newlines are added in the middle of sentences
                        $0.formattedStringValue?.replacingOccurrences(of: "\n", with: " ")
                    }.joined(separator: "\n")
                    var lines: [String] = []
                    text.enumerateSubstrings(in: text.startIndex..., options: [.bySentences]) { sentence, _, _, _ in
                        if let sentence {
                            lines.append(String(sentence))
                        }
                    }
                    parts.append(lines)
                } else if classes?.contains("title") == true {
                    parts.append(
                        [
                            child.formattedStringValue?.replacingOccurrences(of: "\n", with: " ") ?? "",
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
                    let content = try? child.nodes(forXPath: "table/tbody/tr/td[@class='content']").first as? XMLElement
                    if let content, let contentLines = try? parseSection(section: content) {
                        let tagIndent = String(repeating: " ", count: tag.count)
                        var first = true
                        let formattedLines = contentLines.map {
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
                    let title = child.elements(forName: "caption").first?.formattedStringValue
                    let colNames = try? child.nodes(forXPath: "thead/tr/th").compactMap {
                        $0.formattedStringValue
                    }
                    guard let colNames else { continue }

                    let rows = try? child.nodes(forXPath: "tbody/tr").compactMap { row in
                        try? row.nodes(forXPath: "td").compactMap {
                            (
                                text: $0.formattedStringValue!,
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
                            let fixSpanExpr = Regex {
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
                    let listNodes = try child.nodes(forXPath: "ul/li")
                    let listItems: [String] = listNodes.compactMap {
                        $0.formattedStringValue?.trimmingCharacters(in: .whitespacesAndNewlines)
                            .replacingOccurrences(of: "\n", with: " ")
                    }
                    // Specialize for sidebarblock elements
                    if let blockName, blockName.contains("Valid Usage") {
                        parts.append(
                            listItems.map {
                                "- Precondition: " + $0
                            }
                        )
                    } else if let blockName, blockName == "Parameters" {
                        var part: [String] = ["- Parameters:"]
                        let parameters = try listNodes.compactMap { item in
                            let isParamExpr = Regex {
                                "<code"
                                Optionally {
                                    One(.whitespace)
                                    ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
                                }
                                ">"
                                Capture {
                                    OneOrMore(.any, .reluctant)
                                }
                                "</code>"
                            }
                            let match = (try? item.nodes(forXPath: "p").first?.children?.first?.xmlString)?
                                .trimmingCharacters(in: .whitespacesAndNewlines)
                                .prefixMatch(of: isParamExpr)
                            if let match {
                                let param = match.output.1.trimmingCharacters(in: .whitespacesAndNewlines)
                                let fixedXml = try XMLElement(
                                    xmlString: item.xmlString
                                        .trimmingCharacters(in: .whitespacesAndNewlines)
                                        .replacing(isParamExpr, with: "", maxReplacements: 1)
                                )
                                let formattedText = fixedXml.formattedStringValue?
                                    .trimmingCharacters(in: .whitespacesAndNewlines)
                                    .replacingOccurrences(of: "\n", with: " ")
                                if let formattedText {
                                    return (name: param, text: formattedText)
                                } else {
                                    return nil
                                }
                            } else {
                                print("Warning: Failed to parse list item as parameter: \(item)")
                                return nil
                            }
                        }
                        part.append(contentsOf: parameters.map { "    - \($0.name): " + $0.text })
                        parts.append(part)
                    } else {
                        parts.append(
                            listItems.map {
                                "- " + $0
                            }
                        )
                    }
                } else if classes?.contains("dlist") == true && blockName == "Return Codes" {
                    let listTitles = child.elements(forName: "dl").flatMap { $0.elements(forName: "dt") }

                    var returnLines: [String] = []
                    if let successTable = listTitles.first(
                        where: { $0.stringValue?.contains("success") == true }
                    )?.nextSibling {
                        let listItems: [String] = try successTable.nodes(forXPath: "div[@class='ulist']/ul/li").compactMap {
                            $0.formattedStringValue?.trimmingCharacters(in: .whitespacesAndNewlines)
                                .replacingOccurrences(of: "\n", with: " ")
                        }
                        if !listItems.isEmpty {
                            returnLines.append("- Success Codes:")
                            returnLines.append(
                                contentsOf: listItems.map {
                                    "    - " + $0
                                }
                            )
                        }
                    }
                    if let errorTable = listTitles.first(where: { $0.stringValue?.contains("failure") == true })?.next {
                        let listItems: [String] = try errorTable.nodes(forXPath: "div[@class='ulist']/ul/li").compactMap {
                            $0.formattedStringValue?.trimmingCharacters(in: .whitespacesAndNewlines)
                                .replacingOccurrences(of: "\n", with: " ")
                        }
                        if !listItems.isEmpty {
                            returnLines.append("- Error Codes:")
                            returnLines.append(
                                contentsOf: listItems.map {
                                    "    - " + $0
                                }
                            )
                        }
                    }
                    let tag = "- Returns:"
                    var part: [String] = [tag]
                    part.append(contentsOf: returnLines.map { "    " + $0 })
                    parts.append(part)
                } else if classes?.contains("sidebarblock") == true {
                    let content = try? child.nodes(forXPath: "div[@class='content']").first
                    if let content {
                        // We can use the title to specialize the format, but otherwise we just parse the section
                        let titleRaw = try? content.nodes(forXPath: "div[@class='title']").first?.stringValue
                        parts.append(try parseSection(section: content, blockName: titleRaw))
                    }
                }
            }
        }
        // If we have a block name, we don't want spacing between the lines
        if blockName == nil {
            return parts.flatMap { $0 + [""] }.dropLast()
        } else {
            return parts.flatMap { $0 }
        }
    }
}

extension XMLNode {
    /// Get the stringValue formatted as markdown.
    var formattedStringValue: String? {
        let codeExpr = Regex {
            "<code"
            Optionally {
                OneOrMore(.whitespace)
                ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
            }
            ">"
            Capture {
                OneOrMore(.any, .reluctant)
            }
            "</code>"
        }
        let strongExpr = Regex {
            "<strong"
            Optionally {
                OneOrMore(.whitespace)
                ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
            }
            ">"
            Capture {
                OneOrMore(.any, .reluctant)
            }
            "</strong>"
        }
        let emExpr = Regex {
            "<em"
            Optionally {
                OneOrMore(.whitespace)
                ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
            }
            ">"
            Capture {
                OneOrMore(.any, .reluctant)
            }
            "</em>"
        }
        let aExpr = Regex {
            "<a"
            Optionally {
                OneOrMore(.whitespace)
                ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
                Optionally {
                    "href=\""
                    Capture {
                        OneOrMore(.any.subtracting(.anyOf("\">")))
                    }
                    "\""
                }
                ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
            }
            ">"
            Capture {
                ZeroOrMore(.any, .reluctant)
            }
            "</a>"
        }
        let vuidSpanExpr = Regex {
            "<span"
            OneOrMore(.whitespace)
            ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
            "class=\"vuid\""
            ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
            ">"
            OneOrMore(.any, .reluctant)
            "</span>"
        }
        let tabExpr = Regex {
            OneOrMore("\t", .possessive)
            Capture {
                One(.any.subtracting(.whitespace).subtracting(.anyOf(".,:;?!")))
            }
        }
        return try! XMLElement(
            xmlString:
                xmlString
                .replacingOccurrences(of: "*", with: "\\*")
                .replacingOccurrences(of: "`", with: "\\`")
                .replacing(codeExpr) { match in "`\(match.output.1)`\t" }
                .replacing(strongExpr) { match in "**\(match.output.1)**\t" }
                .replacing(emExpr) { match in "*\(match.output.1)*\t" }
                .replacing(aExpr) { match in
                    // If we have a link, we need to format it as a markdown link
                    if let attrs = match.output.1, let href = attrs {
                        // We throw these links out because they just link to the same spot in the page
                        guard !href.starts(with: "#VUID-") else {
                            return ""
                        }

                        let hrefAbsolute =
                            if href.starts(with: "https://") {
                                href.description
                            } else {
                                "https://registry.khronos.org/vulkan/specs/latest/man/html/\(href)"
                            }
                        return "[\(match.output.2)](\(hrefAbsolute))\t"
                    } else {
                        let content = match.output.2
                        if !content.isEmpty && !content.contains("href=\"#VUID-") {
                            return "*\(content)*\t"
                        } else {
                            return ""
                        }
                    }
                }
                .replacing(vuidSpanExpr, with: "")
                .replacing(tabExpr) { match in
                    // Tabs are a standin for optional spaces.
                    // This regex searches for a tab followed by a non-whitespace character which means we need a space.
                    // If it is followed by a whitespace character, we don't want to add another.
                    return " \(match.output.1)"
                }
                .replacingOccurrences(of: "\t", with: "")
        ).stringValue

    }
}
