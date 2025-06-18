/**
 * PhysicalDevice.swift
 * PhysicalDevice
 *
 * Created by Hunter Baker on 6/13/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

extension Instance {
    /// A collection of physical devices available for the Vulkan instance.
    public var physicalDevices: [PhysicalDevice] {
        get throws(VulkanError) {
            // Get the count of physical devices available in the instance
            var count: UInt32 = 0
            let result = unsafe table.enumeratePhysicalDevices(handle, &count, nil)
            try VulkanResult.check(result)

            var result2: VkResult = VkResult(0)
            // Allocate an array to hold the physical devices and enumerate them
            let devices: [VkPhysicalDevice?] = unsafe Array(unsafeUninitializedCapacity: Int(count)) {
                buffer, initializedCount in
                result2 = unsafe table.enumeratePhysicalDevices(handle, &count, buffer.baseAddress)
                initializedCount = Int(count)
            }
            try VulkanResult.check(result2)

            return unsafe devices.map { unsafe PhysicalDevice(instance: self, handle: $0!) }
        }
    }
}

/// A Vulkan physical device.
/// This is used to query the capabilities of a device before creating a logical device.
@safe
public struct PhysicalDevice {
    /// The instance that owns this physical device.
    public let instance: Instance
    /// The underlying Vulkan physical device.
    @safe
    public let handle: VkPhysicalDevice

    /// The Vulkan `VkPhysicalDeviceProperties` structure containing properties of the physical device.
    internal let properties: VkPhysicalDeviceProperties
    /// The pNext chain in the properties2 if available.
    @usableFromInline
    internal let properties2: OutputChain

    /// The supported queue families of the physical device.
    public let queueFamilies: [QueueFamily]
    /// The features supported by the physical device.
    public let features: Features
    /// The memory properties of the physical device.
    public let memoryProperties: MemoryProperties
    /// The extensions supported by this physical device.
    public let availableExtensions: Set<DeviceExtension>

    /// A set of enabled extensions for the physical device.
    /// This is set with the required extensions when the physical device is selected by a `PhysicalDeviceSelector`.
    @usableFromInline
    internal var enabledExtensions: Set<DeviceExtension> = []

    /// Creates a new `PhysicalDevice` instance by wrapping a Vulkan physical device handle.
    /// - Parameters:
    ///   - instance: The instance that owns this physical device.
    ///   - handle: The Vulkan physical device handle to wrap.
    @unsafe
    internal init(instance: Instance, handle: VkPhysicalDevice) {
        self.instance = instance
        unsafe self.handle = handle

        // Retrieve the properties of the physical device
        if instance.has_getPhysicalDeviceProperties2 {
            // If the instance has the VK_KHR_get_physical_device_properties2 extension, use it to get properties
            var properties2 = unsafe VkPhysicalDeviceProperties2()
            unsafe instance.table.getPhysicalDeviceProperties2(handle, &properties2)
            self.properties = unsafe properties2.properties
            unsafe self.properties2 = OutputChain(pNext: properties2.pNext)

            // Extract the queue family properties from the properties2 structure
            var queueFamilyCount: UInt32 = 0
            unsafe instance.table.getPhysicalDeviceQueueFamilyProperties2(handle, &queueFamilyCount, nil)
            let rawQueueFamilies: [VkQueueFamilyProperties2?] =
                unsafe Array(unsafeUninitializedCapacity: Int(queueFamilyCount)) { buffer, initializedCount in
                    unsafe instance.table.getPhysicalDeviceQueueFamilyProperties2(
                        handle, &queueFamilyCount, buffer.baseAddress)
                    initializedCount = Int(queueFamilyCount)
                }
            self.queueFamilies = unsafe rawQueueFamilies.enumerated().map { (index, properties2) in
                unsafe QueueFamily(
                    index: UInt32(index),
                    properties2: properties2!
                )
            }

        } else {
            // Otherwise, use the standard method to get properties
            var properties = VkPhysicalDeviceProperties()
            unsafe instance.table.getPhysicalDeviceProperties(handle, &properties)
            self.properties = properties
            self.properties2 = nil

            // Extract the queue family properties from the standard method
            var queueFamilyCount: UInt32 = 0
            unsafe instance.table.getPhysicalDeviceQueueFamilyProperties(handle, &queueFamilyCount, nil)
            let rawQueueFamilies: [VkQueueFamilyProperties?] =
                unsafe Array(unsafeUninitializedCapacity: Int(queueFamilyCount)) { buffer, initializedCount in
                    unsafe instance.table.getPhysicalDeviceQueueFamilyProperties(
                        handle, &queueFamilyCount, buffer.baseAddress)
                    initializedCount = Int(queueFamilyCount)
                }
            self.queueFamilies = rawQueueFamilies.enumerated().map { (index, properties) in
                QueueFamily(
                    index: UInt32(index),
                    properties: properties!
                )
            }
        }

        features = Features(instance: instance, handle: handle)
        memoryProperties = MemoryProperties(instance: instance, handle: handle)

        // Get the number of available extensions for the physical device
        var extensionCount: UInt32 = 0
        let result = unsafe instance.table.enumerateDeviceExtensionProperties(
            handle, nil,
            &extensionCount, nil
        )
        guard case .success = VulkanResult(result) else {
            preconditionFailure("Failed to get count of device extensions. This should never happen. VkResult: \(result).")
        }
        // Allocate an array to hold the extension properties and enumerate them
        let extensionProperties: [VkExtensionProperties] =
            unsafe Array(unsafeUninitializedCapacity: Int(extensionCount)) { buffer, initializedCount in
                let result = unsafe instance.table.enumerateDeviceExtensionProperties(
                    handle, nil,
                    &extensionCount,
                    buffer.baseAddress
                )
                guard case .success = VulkanResult(result) else {
                    preconditionFailure("Failed to enumerate device extensions. This should never happen. VkResult: \(result).")
                }
                initializedCount = Int(extensionCount)
            }
        // Convert the extension properties to a set of extension names
        availableExtensions = Set(
            extensionProperties.map { properties in
                let name: String = unsafe withUnsafePointer(to: properties.extensionName) { nameTuplePtr in
                    // Convert the C string to a Swift String
                    let namePtr = unsafe UnsafeRawPointer(nameTuplePtr)
                        .assumingMemoryBound(to: CChar.self)
                    return unsafe String(cString: namePtr)
                }
                return DeviceExtension(name: name)
            }
        )
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
        return lhs.handle == rhs.handle
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
