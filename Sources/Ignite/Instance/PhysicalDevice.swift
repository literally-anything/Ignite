/**
 * PhysicalDevice.swift
 * Instance
 * 
 * Created by Hunter Baker on 6/13/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

extension Instance {
    public var physicalDevices: [PhysicalDevice]? {
        // Get the count of physical devices available in the instance
        var count: UInt32 = 0
        let result = unsafe table.enumeratePhysicalDevices(handle, &count, nil)
        guard result == VK_SUCCESS else {
            debugLog("Failed to get physical device count: \(result)")
            return nil
        }

        var result2: VkResult = .init(0)
        // Allocate an array to hold the physical devices and enumerate them
        let devices: [VkPhysicalDevice?] = unsafe Array(unsafeUninitializedCapacity: Int(count)) { buffer, initializedCount in
            result2 = unsafe table.enumeratePhysicalDevices(handle, &count, buffer.baseAddress)
            initializedCount = Int(count)
        }
        guard result2 == VK_SUCCESS else {
            debugLog("Failed to enumerate physical devices: \(result2)")
            return nil
        }

        return unsafe devices.map { unsafe PhysicalDevice(instance: self, handle: $0!) }
    }
}

/// A Vulkan physical device.
/// This is used to query the capabilities of a device before creating a logical device.
@safe
public struct PhysicalDevice {
    /// The underlying Vulkan physical device.
    public let handle: VkPhysicalDevice
    /// The Vulkan `VkPhysicalDeviceProperties` structure containing properties of the physical device.
    internal let properties: VkPhysicalDeviceProperties
    /// The pNext chain in the properties2 if available.
    internal let properties2: UnsafePointer<VkBaseOutStructure>?

    /// Creates a new `PhysicalDevice` instance by wrapping a Vulkan physical device handle.
    /// - Parameters:
    ///   - instance: The instance that owns this physical device.
    ///   - handle: The Vulkan physical device handle to wrap.
    @unsafe
    internal init(instance: borrowing Instance, handle: VkPhysicalDevice) {
        unsafe self.handle = handle

        // Retrieve the properties of the physical device
        if instance.hasVK_KHR_get_physical_device_properties2 {
            // If the instance has the VK_KHR_get_physical_device_properties2 extension, use it to get properties
            var properties2 = unsafe VkPhysicalDeviceProperties2()
            unsafe instance.table.getPhysicalDeviceProperties2(handle, &properties2)
            self.properties = unsafe properties2.properties

            unsafe self.properties2 = UnsafePointer(properties2.pNext.assumingMemoryBound(to: VkBaseOutStructure.self))
        } else {
            // Otherwise, use the standard method to get properties
            var properties = VkPhysicalDeviceProperties()
            unsafe instance.table.getPhysicalDeviceProperties(handle, &properties)
            self.properties = properties
            unsafe self.properties2 = nil
        }
    }

    /// An `OutputChain` that allows traversing the pNext chain of the physical device properties.
    /// This only has any content if the `VK_KHR_get_physical_device_properties2` extension is enabled.
    public var nextChain: OutputChain? {
        unsafe OutputChain(start: properties2)
    }

    /// The maximum Vulkan API version supported by this physical device.
    public var apiVersion: ApiVersion {
        ApiVersion(rawValue: properties.apiVersion)
    }

    /// The driver version of the physical device.
    /// This is an arbitrary version number provided by the driver vendor.
    public var driverVersion: UInt32 {
        properties.driverVersion
    }

    /// The vendor ID of the physical device.
    public var vendorId: UInt32 {
        properties.vendorID
    }

    /// The device ID of the physical device.
    public var deviceId: UInt32 {
        properties.deviceID
    }

    /// The name of the physical device.
    public var deviceName: String {
        unsafe withUnsafePointer(to: properties.deviceName) { properties in
            // Convert the C string to a Swift String
            unsafe String(
                cString: UnsafeRawPointer(properties).assumingMemoryBound(to: CChar.self)
            )
        }
    }

    /// The type of the physical device.
    public var deviceType: PhysicalDeviceType {
        PhysicalDeviceType(rawValue: properties.deviceType.rawValue) ?? .other
    }

    /// The UUID of the pipeline cache for this physical device.
    public var pipelineCacheUUID: UUID {
        properties.pipelineCacheUUID
    }

    /// The sparse properties of the physical device.
    public var sparseProperties: VkPhysicalDeviceSparseProperties {
        properties.sparseProperties
    }

    /// The limits of the physical device.
    public var limits: VkPhysicalDeviceLimits {
        properties.limits
    }
}

extension PhysicalDevice: Equatable, Hashable {
    public static func == (lhs: PhysicalDevice, rhs: PhysicalDevice) -> Bool {
        return unsafe lhs.handle == rhs.handle
    }

    public func hash(into hasher: inout Hasher) {
        unsafe hasher.combine(handle)
    }
}

extension PhysicalDevice: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "\(deviceName), type: \(deviceType), Vulkan \(apiVersion)"
    }
    
    public var debugDescription: String {
        "PhysicalDevice(name: \(deviceName), type: \(deviceType), apiVersion: \(apiVersion), vendorID: \(vendorId), deviceID: \(deviceId))"
    }
}
