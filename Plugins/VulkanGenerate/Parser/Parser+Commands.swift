/**
 * Parser+Commands.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/17/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Foundation

extension Parser {
    /// Extracts the commands in the XML specification.
    func parseCommands(registry: inout Registry) throws {
        let commandElements: [XMLElement] = root.elements(forName: "commands").flatMap { $0.elements(forName: "command") }

        print("Parsing commands...")

        var progress: Int = 0
        for element in commandElements {
            let progressPercent = Int(Double(progress) / Double(commandElements.count) * 100)
            if let alias = element.attribute(forName: "alias")?.stringValue {
                guard let name = element.attribute(forName: "name")?.stringValue else {
                    throw "Command alias has no name: \(element)" as GeneratePluginError
                }

                print("Parsing command alias \(name): \(progressPercent)%")

                var documentation: DocsParser? = nil
                do {
                    documentation = try DocsParser(for: name, registry: registry)
                } catch let error {
                    print("Warning: Command alias has no documentation: \(element), \(error.localizedDescription)")
                }
                registry.commandAliases[name] = (alias, element.attribute(forName: "deprecated")?.stringValue, documentation)
            } else {
                guard let proto = element.elements(forName: "proto").first else {
                    throw "Command has no prototype: \(element)" as GeneratePluginError
                }
                guard let name = proto.elements(forName: "name").first?.stringValue else {
                    throw "Command prototype has no name: \(proto)" as GeneratePluginError
                }
                guard let returnType = proto.elements(forName: "type").first?.stringValue else {
                    throw "Command prototype has no return type: \(proto)" as GeneratePluginError
                }

                print("Parsing command \(name): \(progressPercent)%")

                let paramElements = element.elements(forName: "param")
                let params: [CommandParam] = try paramElements.compactMap { paramElement in
                    guard let name = paramElement.elements(forName: "name").first?.stringValue else {
                        throw "Command param has no name: \(paramElement)" as GeneratePluginError
                    }
                    guard let type = paramElement.elements(forName: "type").first?.stringValue else {
                        throw "Command param has no type: \(paramElement)" as GeneratePluginError
                    }
                    let validstructs: [String]? = paramElement.attribute(
                        forName: "validstructs"
                    )?.stringValue?.split(separator: ",").map {
                        String($0)
                    }

                    let length: String? = paramElement.attribute(forName: "len")?.stringValue
                    let altlen: String? = paramElement.attribute(forName: "altlen")?.stringValue
                    let stride: String? = paramElement.attribute(forName: "stride")?.stringValue
                    let externalSync: Bool = paramElement.attribute(
                        forName: "externsync"
                    )?.stringValue == "true"
                    let isOptional: Bool = paramElement.attribute(
                        forName: "optional"
                    )?.stringValue?.contains("true") == true
                    let objecttype: String? = paramElement.attribute(forName: "objecttype")?.stringValue
                    let comment: String? = paramElement.attribute(forName: "comment")?.stringValue
                    let deprecated: String? = paramElement.attribute(forName: "deprecated")?.stringValue

                    // Cut anything that is in vulkansc
                    return CommandParam(
                        name: name,
                        type: type,
                        length: length,
                        altlen: altlen,
                        stride: stride,
                        externalSync: externalSync,
                        optional: isOptional,
                        objecttype: objecttype,
                        validstructs: validstructs,
                        comment: comment,
                        deprecated: deprecated
                    )
                }
                guard params.count > 0 else {
                    throw "Command has no parameters: \(element)" as GeneratePluginError
                }

                let queues =
                    element.attribute(
                        forName: "queues"
                    )?.stringValue?.split(separator: ",").map {
                        String($0)
                    }
                let successcodes =
                    element.attribute(
                        forName: "successcodes"
                    )?.stringValue?.split(separator: ",").map {
                        String($0)
                    }
                let errorcodes =
                    element.attribute(
                        forName: "errorcodes"
                    )?.stringValue?.split(separator: ",").map {
                        String($0)
                    }
                let cmdbufferlevel =
                    element.attribute(
                        forName: "cmdbufferlevel"
                    )?.stringValue?.split(separator: ",").map {
                        String($0)
                    }
                let syncParams: [String] =
                    element.elements(
                        forName: "implicitexternsyncparams"
                    ).first?.elements(forName: "param").compactMap {
                        $0.stringValue
                    } ?? []

                let scope: Command.Scope =
                    // These look like they should be a different scope, so we fix them
                    if name == "vkGetInstanceProcAddr" {
                        .loader
                    } else if name == "vkGetDeviceProcAddr" {
                        .instance
                    } else {
                        if try registry.isDecendent(params.first!.type, of: "VkDevice") {
                            .device
                        } else if try registry.isDecendent(params.first!.type, of: "VkInstance") {
                            .instance
                        } else {
                            .loader
                        }
                    }
                
                let comment: String? = element.attribute(forName: "comment")?.stringValue
                let deprecated: String? = element.attribute(forName: "deprecated")?.stringValue

                var documentation: DocsParser? = nil
                do {
                    documentation = try DocsParser(for: name, registry: registry)
                } catch let error {
                    print("Warning: Command has no documentation: \(element), \(error.localizedDescription)")
                }

                registry.commands.append(
                    Command(
                        name: name,
                        typeName: "PFN_\(name)",
                        scope: scope,
                        returnType: returnType,
                        params: params,
                        queues: queues,
                        successcodes: successcodes ?? [],
                        errorcodes: errorcodes ?? [],
                        cmdbufferlevel: cmdbufferlevel,
                        implicitExternalSyncParams: syncParams,
                        comment: comment,
                        deprecated: deprecated,
                        documentation: documentation
                    )
                )
            }
            progress += 1
        }
    }
}
