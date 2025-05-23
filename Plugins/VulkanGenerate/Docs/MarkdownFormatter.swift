/**
 * MarkdownFormatter.swift
 * Docs
 * 
 * Created by Hunter Baker on 5/17/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation
import RegexBuilder

var codeBlockRegex: Regex<(Substring, OneOrMore<Substring>.RegexOutput)> {
    Regex {
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
}

extension XMLNode {
    /// Parse the xmlString and convert it to markdown.
    static func getFormattedStringValue(xmlString: String, docsUrl: URL?) -> String? {
        let codeExpr: Regex<(Substring, OneOrMore<Substring>.RegexOutput)> = codeBlockRegex
        let strongExpr: Regex<(Substring, OneOrMore<Substring>.RegexOutput)> = Regex {
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
        let emExpr: Regex<(Substring, OneOrMore<Substring>.RegexOutput)> = Regex {
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
        let aExpr: Regex<(Substring, OneOrMore<Substring>.RegexOutput??, ZeroOrMore<Substring>.RegexOutput)> = Regex {
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
        let vuidSpanExpr: Regex<Substring> = Regex {
            "<span"
            OneOrMore(.whitespace)
            ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
            "class=\"vuid\""
            ZeroOrMore(.any.subtracting(.anyOf(">")), .reluctant)
            ">"
            OneOrMore(.any, .reluctant)
            "</span>"
        }
        let tabExpr: Regex<(Substring, One<CharacterClass.RegexOutput>.RegexOutput)> = Regex {
            OneOrMore("\t", .possessive)
            Capture {
                One(.any.subtracting(.whitespace).subtracting(.anyOf(".,:;?!")))
            }
        }
        return try! XMLElement(
            xmlString: xmlString
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
                            } else if let docsUrl, href.starts(with: "#") {
                                docsUrl.absoluteString + href
                            } else {
                                baseDocsUrl.appending(component: href).absoluteString
                            }
                        return "[\(match.output.2)](\(hrefAbsolute))\t"
                    } else {
                        let content: ZeroOrMore<Substring>.RegexOutput = match.output.2
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

    /// Get the stringValue formatted as markdown.
    func getFormattedStringValue(docsUrl: URL?) -> String? {
        Self.getFormattedStringValue(xmlString: xmlString, docsUrl: docsUrl)
    }
}
