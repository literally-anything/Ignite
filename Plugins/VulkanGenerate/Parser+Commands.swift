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
            let api = element.attribute(forName: "api")?.stringValue
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
                let params = try paramElements.map { paramElement in
                    guard let name = paramElement.elements(forName: "name").first?.stringValue else {
                        throw "Command param has no name: \(paramElement)" as GeneratePluginError
                    }
                    let validstructs = paramElement.attribute(
                        forName: "validstructs"
                    )?.stringValue?.split(separator: ",").map {
                        String($0)
                    }
                    return CommandParam(
                        name: name,
                        length: paramElement.attribute(forName: "len")?.stringValue,
                        altlen: paramElement.attribute(forName: "altlen")?.stringValue,
                        stride: paramElement.attribute(forName: "stride")?.stringValue,
                        externalSync: paramElement.attribute(forName: "externsync")?.stringValue == "true",
                        optional: paramElement.attribute(forName: "optional")?.stringValue == "true",
                        objecttype: paramElement.attribute(forName: "objecttype")?.stringValue,
                        validstructs: validstructs,
                        api: paramElement.attribute(forName: "api")?.stringValue
                    )
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

                registry.commands.append(
                    Command(
                        name: name,
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
