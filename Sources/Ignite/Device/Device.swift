/**
 * Device.swift
 * Device
 * 
 * Created by Hunter Baker on 6/13/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

public enum DeviceCreateError<UserError: Error>: Error {
    /// This error means that the device failed to initialize.
    case intializationFailed
    /// A specified extension was not present in the device.
    /// You should check the list of available extensions from the physical device before requesting them.
    case extensionNotPresent
    /// A specified feature was not present in the loader.
    /// You should check the available features from the physical device before requesting them.
    case featureNotPresent
    /// Some other unexpected Vulkan error occurred.
    /// This really should not happen, but if it does, you can use the `VulkanError` to get more information.
    case other(VulkanError)
    /// A user-defined error occurred during the builder callback.
    case userError(UserError)
}

/// A Vulkan device.
@safe
public final class Device: @unchecked Sendable {
    /// The instance that owns this device.
    public let instance: Instance
    /// The Vulkan device handle.
    @safe
    public let handle: VkDevice
    /// The table of Vulkan functions for this device.
    public let table: DeviceTable
    /// The physical device that this logical device is created for.
    public let physicalDevice: PhysicalDevice

    /// The Vulkan API version of the device.
    public var apiVersion: ApiVersion {
        physicalDevice.apiVersion
    }

    /// Initializes a new instance from an existing Vulkan instance handle.
    /// This should only be used to integrate with existing Vulkan code that already has a device handle.
    /// - Warning: This takes full ownership of the device handle and will release it when it is destroyed.
    /// - Parameter device: The Vulkan instance handle to wrap.
    @unsafe
    public init(instance: Instance, device: VkDevice, physicalDevice: VkPhysicalDevice) {
        self.instance = instance
        unsafe self.handle = device
        self.table = unsafe DeviceTable(getDeviceProcAddr: instance.table.getDeviceProcAddr, device: device)
        self.physicalDevice = unsafe PhysicalDevice(instance: instance, handle: physicalDevice)
    }

    /// Creates a new Vulkan device for the specified physical device.
    /// - Parameters:
    ///   - physicalDevice: The physical device to create the logical device for.
    /// - Throws: An `InstanceCreateError` if the device could not be created.
    @safe
    @inlinable
    public convenience init<E: Error>(
        for physicalDevice: consuming PhysicalDevice,
        _ build: (inout Builder) throws(E) -> Void
    ) throws(DeviceCreateError<E>) {
        var builder = Builder(physicalDevice: physicalDevice)
        do throws(E) {
            try build(&builder)
        } catch let error {
            throw .userError(error)
        }
        let (
            extensions,
            features,
            queues,
            pNext,
            autoPortability
        ) = builder.getBuildInfo()

        do throws(VulkanError) {
            unsafe try self.init(
                extensions: extensions.union(builder.physicalDevice.enabledExtensions),
                features: features,
                queues: queues,
                pNext: pNext,
                autoPortability: autoPortability,
                physicalDevice: builder.physicalDevice
            )
        } catch let error {
            switch error {
                case .initializationFailed:
                    throw .intializationFailed
                case .extensionNotPresent:
                    throw .extensionNotPresent
                case .featureNotPresent:
                    throw .featureNotPresent
                default:
                    throw .other(error)
            }
        }
    }

    /// Initializes a new Vulkan device for the specified physical device.
    /// - Parameters:
    ///   - extensions: The set of device extensions to enable for the logical device.
    ///   - features: The features to enable for the logical device.
    ///   - queues: The queue create infos for the logical device.
    ///   - pNext: The pNext chain to pass to the device creation info.
    ///   - physicalDevice: The physical device to create the logical device for.
    /// - Throws: A `VulkanError` if the device could not be created.
    @unsafe
    @usableFromInline
    internal init(
        extensions: Set<DeviceExtension>,
        features: VkPhysicalDeviceFeatures,
        queues: [Builder.QueueCreateInfo],
        pNext: UnsafePointer<VkBaseInStructure>?,
        autoPortability: Bool,
        physicalDevice: consuming PhysicalDevice
    ) throws(VulkanError) {
        if autoPortability {
            // If the physical device supports the VK_KHR_portability_subset extension, enable it automatically.
            // This is required by the specification for devices that support portability.
            if physicalDevice.availableExtensions.contains(.portabilitySubset_KHR) {
                physicalDevice.enabledExtensions.insert(.portabilitySubset_KHR)
            }
        }

        let cExtNames: [UnsafePointer<CChar>?] = unsafe extensions.map { ext in
            let extName = ext.name
            return unsafe extName.withCString { cString in
                let alloc = UnsafeMutablePointer<CChar>.allocate(capacity: extName.utf8.count + 1)
                unsafe alloc.initialize(
                    from: cString,
                    count: extName.utf8.count + 1
                )
                return unsafe UnsafePointer(alloc)
            }
        }
        defer {
            // Free the allocated extension names.
            for unsafe extName in unsafe cExtNames {
                unsafe extName!.deallocate()
            }
        }

        let queuePriorities: [Float] = queues.flatMap { queue in
            Array(repeating: queue.priority, count: Int(queue.count))
        }

        let createDevice: PFN_vkCreateDevice = unsafe physicalDevice.instance.table.createDevice!
        let physicalDeviceHandle = physicalDevice.handle
        var device: VkDevice? = nil
        let ret = unsafe cExtNames.withUnsafeBufferPointer { cExtNamesPtr in
            unsafe withUnsafePointer(to: features) { featuresPtr in
                unsafe queuePriorities.withUnsafeBufferPointer { queuePrioritiesPtr in
                    var currentQueueOffset: Int = 0
                    let queueCreateInfos: [VkDeviceQueueCreateInfo] = unsafe queues.map { queue in
                        let queueCreateInfo = unsafe VkDeviceQueueCreateInfo(
                            sType: VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
                            pNext: queue.pNext,
                            flags: queue.flags,
                            queueFamilyIndex: queue.familyIndex,
                            queueCount: queue.count,
                            pQueuePriorities: queuePrioritiesPtr.baseAddress!.advanced(by: currentQueueOffset)
                        )
                        currentQueueOffset += Int(queue.count)
                        return unsafe queueCreateInfo
                    }
                    return unsafe queueCreateInfos.withUnsafeBufferPointer { queueCreateInfosPtr in
                        var deviceCreateInfo = unsafe VkDeviceCreateInfo(
                            sType: VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
                            pNext: pNext,
                            flags: 0,
                            queueCreateInfoCount: UInt32(queueCreateInfosPtr.count),
                            pQueueCreateInfos: queueCreateInfosPtr.baseAddress,
                            enabledLayerCount: 0,
                            ppEnabledLayerNames: nil,
                            enabledExtensionCount: UInt32(cExtNamesPtr.count),
                            ppEnabledExtensionNames: cExtNamesPtr.baseAddress,
                            pEnabledFeatures: featuresPtr
                        )
                        return unsafe createDevice(
                            physicalDeviceHandle,
                            &deviceCreateInfo,
                            nil,
                            &device
                        )
                    }
                }
            }
        }
        try VulkanResult.check(ret)

        self.instance = physicalDevice.instance
        unsafe self.handle = device!
        self.table = unsafe DeviceTable(getDeviceProcAddr: physicalDevice.instance.table.getDeviceProcAddr, device: device!)
        self.physicalDevice = physicalDevice
    }

    /// Destroys the Vulkan device.
    deinit {
        unsafe table.destroyDevice(handle, nil)
    }
}

extension Device: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        physicalDevice.description
    }

    public var debugDescription: String {
        "Device(physicalDevice: \(physicalDevice), queueCount: )"
    }
}
