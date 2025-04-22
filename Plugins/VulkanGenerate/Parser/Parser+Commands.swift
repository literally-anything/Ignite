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
        let commandElements = root.elements(forName: "commands").flatMap { $0.elements(forName: "command") }

        for element in commandElements {
            if let alias = element.attribute(forName: "alias")?.stringValue {
                guard let name = element.attribute(forName: "name")?.stringValue else {
                    throw "Command alias has no name: \(element)" as GeneratePluginError
                }
                registry.commandAliases[name] = alias
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

                let paramElements = element.elements(forName: "param")
                let params: [CommandParam] = try paramElements.compactMap { paramElement in
                    guard let name = paramElement.elements(forName: "name").first?.stringValue else {
                        throw "Command param has no name: \(paramElement)" as GeneratePluginError
                    }
                    guard let type = paramElement.elements(forName: "type").first?.stringValue else {
                        throw "Command param has no type: \(paramElement)" as GeneratePluginError
                    }
                    let validstructs = paramElement.attribute(
                        forName: "validstructs"
                    )?.stringValue?.split(separator: ",").map {
                        String($0)
                    }
                    // Cut anything that is in vulkansc
                    let api = paramElement.attribute(forName: "api")?.stringValue
                    if let api, api != "vulkan" {
                        return nil
                    }
                    return CommandParam(
                        name: name,
                        type: type,
                        length: paramElement.attribute(forName: "len")?.stringValue,
                        altlen: paramElement.attribute(forName: "altlen")?.stringValue,
                        stride: paramElement.attribute(forName: "stride")?.stringValue,
                        externalSync: paramElement.attribute(forName: "externsync")?.stringValue == "true",
                        optional: paramElement.attribute(forName: "optional")?.stringValue?.contains("true") == true,
                        objecttype: paramElement.attribute(forName: "objecttype")?.stringValue,
                        validstructs: validstructs,
                        api: api
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
                        .device
                    } else {
                        if try registry.isDecendent(params.first!.type, of: "VkDevice") {
                            .device
                        } else if try registry.isDecendent(params.first!.type, of: "VkInstance") {
                            .instance
                        } else {
                            .loader
                        }
                    }

                // Cut anything that is in vulkansc
                let api = element.attribute(forName: "api")?.stringValue
                if let api, api != "vulkan" {
                    continue
                }

                registry.commands.append(
                    Command(
                        name: name,
                        typeName: "PFN_\(name)",
                        scope: scope,
                        returnType: returnType,
                        params: params,
                        queues: queues,
                        successcodes: successcodes,
                        errorcodes: errorcodes,
                        cmdbufferlevel: cmdbufferlevel,
                        comment: element.attribute(forName: "comment")?.stringValue,
                        implicitExternalSyncParams: syncParams,
                        api: api
                    )
                )
            }
        }
    }
}
