/**
 * Device.swift
 * Device
 * 
 * Created by Hunter Baker on 6/13/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

/// A Vulkan device.
@safe
public final class Device: @unchecked Sendable {
    /// The Vulkan device handle.
    public let handle: VkDevice
    /// The table of Vulkan functions for this device.
    public let table: DeviceTable

    /// Creates a new instance from an existing Vulkan instance handle.
    /// - Parameter device: The Vulkan instance handle to wrap.
    @unsafe
    public init(instance: borrowing Instance, device: consuming VkDevice) {
        unsafe self.handle = device
        self.table = unsafe DeviceTable(getDeviceProcAddr: instance.table.getDeviceProcAddr, device: device)
    }
}
