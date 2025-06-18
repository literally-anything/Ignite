/**
 * DeviceBuilder.swift
 * Device
 * 
 * Created by Hunter Baker on 6/18/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

extension Device {
    /// A helper class for configuring and building a Vulkan device.
    @safe
    public final class Builder {
        /// The Vulkan physical device to create the logical device for.
        public let physicalDevice: PhysicalDevice

        /// The extensions that will be enabled for the logical device.
        internal var enabledExtensions: Set<DeviceExtension> = []
        /// The features that will be enabled for the logical device.
        @usableFromInline
        internal var enabledFeatures: VkPhysicalDeviceFeatures = VkPhysicalDeviceFeatures()

        /// The start pointer for the pNext chain in the device creation info.
        internal var pNextStart: UnsafePointer<VkBaseInStructure>? = nil
        // internal var pNextEnd: UnsafeMutablePointer<VkBaseInStructure>? = nil
        /// A list of queue create infos for the logical device.
        internal var queueCreateInfos: [QueueCreateInfo] = []
        /// The current index in the queue create infos.
        internal var currentQueueIndex: Int = -1
        /// Whether to enable the Vulkan Portability subset extension automatically if it is supported by the physical device.
        internal var autoPortability: Bool = true

        /// Initializes a new device builder for the specified physical device.
        /// - Parameter physicalDevice: The physical device to create the logical device for.
        @usableFromInline
        internal init(physicalDevice: PhysicalDevice, pNext: UnsafeRawPointer? = nil) {
            self.physicalDevice = physicalDevice
            unsafe self.pNextStart = pNext?.assumingMemoryBound(to: VkBaseInStructure.self)
        }

        /// Gets the final build information for the device.
        /// This is used internally when creating the device.
        @usableFromInline
        internal func getBuildInfo() -> (
            extensions: Set<DeviceExtension>,
            features: VkPhysicalDeviceFeatures,
            queues: [QueueCreateInfo],
            pNext: UnsafePointer<VkBaseInStructure>?,
            autoPortability: Bool
        ) {
            return unsafe (enabledExtensions, enabledFeatures, queueCreateInfos, pNextStart, autoPortability)
        }
    }
}

extension Device.Builder {
    /// Enables the specified extension if it is supported by the physical device.
    /// - Parameter ext: The device extension to enable.
    /// - Returns: `true` if the extension was enabled, `false` if it is not supported.
    public func tryEnable(extension ext: DeviceExtension) -> Bool {
        if physicalDevice.availableExtensions.contains(ext) {
            enabledExtensions.insert(ext)
            return true
        }
        return false
    }
    /// Enables the specified extension.
    /// - Note: This does not check if the extension is supported by the physical device.
    /// - Parameter ext: A device extension to enable.
    @discardableResult
    public func enable(extension ext: DeviceExtension) -> Self {
        enabledExtensions.insert(ext)
        return self
    }

    /// Enables the specified feature.
    /// - Note: This does not check if the feature is supported by the physical device.
    /// - Parameter feature: A feature to enable.
    /// - Returns: `self` for method chaining.
    @inlinable
    @discardableResult
    public func enable(feature: WritableKeyPath<VkPhysicalDeviceFeatures, VkBool32>) -> Self {
        enabledFeatures[keyPath: feature] = 1
        return self
    }
    /// Enables the specified features.
    /// - Note: This does not check if the features are supported by the physical device.
    /// - Parameter features: A lsit features to enable.
    /// - Returns: `self` for method chaining.
    @inlinable
    @discardableResult
    public func enable(features: [WritableKeyPath<VkPhysicalDeviceFeatures, VkBool32>]) -> Self {
        for feature in features {
            enabledFeatures[keyPath: feature] = 1
        }
        return self
    }
    /// Enables the specified features.
    /// - Note: This does not check if the features are supported by the physical device.
    /// - Parameter features: A variadic collection of features to enable.
    /// - Returns: `self` for method chaining.
    @inlinable
    @discardableResult
    public func enable(features: WritableKeyPath<VkPhysicalDeviceFeatures, VkBool32>...) -> Self {
        enable(features: features)
    }

    /// The information required to create a set of queues.
    @safe
    @usableFromInline
    internal struct QueueCreateInfo {
        /// The queue family index to create the queue for.
        internal var familyIndex: UInt32
        /// The flags that describe the capabilities of the queue.
        internal var flags: VkQueueFlags
        /// The number of queues to create in this family.
        internal var count: UInt32
        /// The priority of the queues, ranging from 0.0 to 1.0.
        internal var priority: Float
        /// The pNext chain for the queue create info.
        internal var pNext: UnsafeRawPointer?
    }
    /// Adds a queue with the specified family and info.
    /// - Parameters:
    ///   - family: The queue family to create the queue for.
    ///   - flags: The flags that describe the capabilities of the queue.
    ///   - priority: The priority of the queue, ranging from 0.0 to 1.0.
    ///   - pNext: An optional pNext chain for the queue create info.
    /// - Returns: The index of the created queue.
    @safe
    public func addQueue(
        family: PhysicalDevice.QueueFamily,
        flags: QueueFlags = [],
        priority: Float = 0.5,
        pNext: UnsafeRawPointer? = nil
    ) -> Int {
        queueCreateInfos.append(
            unsafe QueueCreateInfo(
                familyIndex: family.index,
                flags: flags.rawValue,
                count: 1,
                priority: priority,
                pNext: pNext
            )
        )
        currentQueueIndex += 1
        return currentQueueIndex
    }
    /// Adds a range of queues with the specified family and info.
    /// - Parameters:
    ///   - family: The queue family to create the queues for.
    ///   - count: The number of queues to create in this family. Must be greater than 0.
    ///   - flags: The flags that describe the capabilities of the queues.
    ///   - priority: The priority of the queues, ranging from 0.0 to 1.0.
    ///   - pNext: An optional pNext chain for the queue create info.
    /// - Returns: A range containing the start and end indices of the created queues.
    @safe
    public func addQueues(
        family: PhysicalDevice.QueueFamily,
        count: Int,
        flags: QueueFlags = [],
        priority: Float = 0.5,
        pNext: UnsafeRawPointer? = nil
    ) -> Range<Int> {
        precondition(count > 0, "Queue count must be greater than 0")
        queueCreateInfos.append(
            unsafe QueueCreateInfo(
                familyIndex: family.index,
                flags: flags.rawValue,
                count: UInt32(count),
                priority: priority,
                pNext: pNext
            )
        )
        let startIndex = currentQueueIndex + 1
        let endIndex = currentQueueIndex + count
        currentQueueIndex += count
        return unsafe Range(uncheckedBounds: (lower: startIndex, upper: endIndex))
    }

    /// Selects a specific basic type of queue.
    public enum QueueType {
        /// A graphics queue, which supports graphics operations.
        /// This can also do compute and transfer operations.
        case graphics
        /// A compute queue, which supports compute operations.
        /// This can also do transfer operations.
        case compute
        /// A transfer queue, which supports transfer operations.
        case transfer
        /// A custom queue type, which allows manually specifying queue flags.
        case custom(QueueFlags)
    }
    /// Adds a queue of the specified type.
    /// - Parameters:
    ///   - type: The type of queue to add.
    ///   - forceDedicated: If `true`, forces the use of a dedicated queue family for the specified type (Exact match).
    ///   - flags: The flags that describe the capabilities of the queue.
    ///   - priority: The priority of the queue, ranging from 0.0 to 1.0.
    ///   - pNext: An optional pNext chain for the queue create info.
    /// - Returns: The index of the created queue, or `nil` if no suitable family was found.
    @safe
    public func addQueue(
        _ type: QueueType,
        forceDedicated: Bool = false,
        flags: QueueFlags = [],
        priority: Float = 0.5,
        pNext: UnsafeRawPointer? = nil
    ) -> Int? {
        var family =
            switch type {
                case .graphics:
                    physicalDevice.queueFamilies.first {
                        $0.supportsGraphics && !$0.supportsCompute && !$0.supportsTransfer
                    }
                case .compute:
                    physicalDevice.queueFamilies.first {
                        $0.supportsCompute && !$0.supportsGraphics && !$0.supportsTransfer
                    }
                case .transfer:
                    physicalDevice.queueFamilies.first {
                        $0.supportsTransfer && !$0.supportsGraphics && !$0.supportsCompute
                    }
                case .custom(let flags):
                    physicalDevice.queueFamilies.first {
                        $0.queueFlags == flags
                    }
            }
        // If there is not dedicated family for the type, we default to any family that supports the type.
        if family == nil && !forceDedicated {
            family = switch type {
                case .graphics:
                    physicalDevice.queueFamilies.first(where: \.supportsGraphics)
                case .compute:
                    physicalDevice.queueFamilies.first(where: \.supportsCompute)
                case .transfer:
                    physicalDevice.queueFamilies.first(where: \.supportsTransfer)
                case .custom(let flags):
                    physicalDevice.queueFamilies.first {
                        $0.queueFlags.isSuperset(of: flags)
                    }
            }
        }

        if let family {
            return addQueue(
                family: family,
                flags: flags,
                priority: priority,
                pNext: pNext
            )
        } else {
            return nil
        }
    }

    /// Forces the `VK_KHR_portability_subset` extension to be disabled even if it is supported by the physical device.
    /// - Returns: `self` for method chaining.
    @discardableResult
    public func disablePortability() -> Self {
        autoPortability = false
        return self
    }
}
