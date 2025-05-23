/**
 * Instance.swift
 * Loader
 *
 * Created by Hunter Baker on 4/22/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

public enum InstanceCreateError: Error {
    case loaderFailed
}

@safe
public final class Instance: @unchecked Sendable {
    /// The Vulkan instance handle.
    public let instance: VkInstance
    /// The Vulkan instance table.
    public let table: InstanceTable

    @unsafe
    public init(instance: consuming VkInstance) {
        unsafe self.instance = instance
        unsafe self.table = InstanceTable(getInstanceProcAddr: Loader.shared.table.getInstanceProcAddr, instance: instance)
    }

    @safe
    public init() throws(InstanceCreateError) {
        // First we need to ensure that the loader could setup correctly.
        guard Loader.checkSetup() else {
            throw .loaderFailed
        }
        // Now we can create the instance.
        var instance: VkInstance?
        var createInfo = unsafe VkInstanceCreateInfo(
            sType: VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
            pNext: nil,
            flags: 0,
            pApplicationInfo: nil,
            enabledLayerCount: 0,
            ppEnabledLayerNames: nil,
            enabledExtensionCount: 0,
            ppEnabledExtensionNames: nil
        )
        let ret = unsafe Loader.shared.table.createInstance(&createInfo, nil, &instance)
        unsafe self.instance = instance!
        unsafe self.table = InstanceTable(getInstanceProcAddr: Loader.shared.table.getInstanceProcAddr, instance: instance!)
    }
}
