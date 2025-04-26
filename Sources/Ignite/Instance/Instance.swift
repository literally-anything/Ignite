/**
 * Instance.swift
 * Loader
 *
 * Created by Hunter Baker on 4/22/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

public final class Instance: @unchecked Sendable {
    /// The Vulkan instance handle.
    public let instance: VkInstance
    /// The Vulkan instance table.
    public let table: InstanceTable

    init() {
        fatalError()
    }
}
