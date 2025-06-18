/**
 * PhysicalDevice+QueueFamily.swift
 * PhysicalDevice
 *
 * Created by Hunter Baker on 6/15/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

extension PhysicalDevice {
    /// A Vulkan queue family.
    /// This is used to request queues from a physical device when creating a logical device.
    @safe
    public struct QueueFamily {
        /// The index of the queue family.
        public let index: UInt32

        /// The Vulkan queue family properties.
        @safe
        public let properties: VkQueueFamilyProperties
        /// The pNext chain in the queue properties2 if available.
        @usableFromInline
        internal let properties2: OutputChain

        /// Creates a new `PhysicalDeviceQueueFamily` instance from the given properties.
        internal init(index: UInt32, properties: VkQueueFamilyProperties) {
            self.index = index

            self.properties = properties
            self.properties2 = nil
        }

        /// Creates a new `PhysicalDeviceQueueFamily` instance from the given properties2.
        internal init(index: UInt32, properties2: VkQueueFamilyProperties2) {
            self.index = index

            self.properties = unsafe properties2.queueFamilyProperties
            unsafe self.properties2 = OutputChain(pNext: properties2.pNext)
        }

        /// The number of queues that can be created in this queue family.
        public var queueCount: UInt32 {
            properties.queueCount
        }

        /// The flags that describe the capabilities of this queue family.
        public var queueFlags: QueueFlags {
            QueueFlags(rawValue: properties.queueFlags)
        }

        /// The count of meaningful bits in the timestamps written by vkCmdWriteTimestamp.
        /// Can be 36 to 64 bits, or it can be 0 if timestamps are not supported.
        public var timestampValidBits: UInt32 {
            properties.timestampValidBits
        }

        /// The minimum granularity supported for image transfer operations on queues in this family.
        public var minImageTransferGranularity: VkExtent3D {
            properties.minImageTransferGranularity
        }

        /// Indicates whether this queue family supports graphics operations.
        public var supportsGraphics: Bool {
            queueFlags.contains(.graphics)
        }
        /// Indicates whether this queue family supports compute operations.
        public var supportsCompute: Bool {
            queueFlags.contains(.compute)
        }
        /// Indicates whether this queue family supports transfer operations.
        public var supportsTransfer: Bool {
            queueFlags.contains(.transfer)
        }
    }
}

extension PhysicalDevice.QueueFamily: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        """
        QueueFamily(\
        index: \(index), \
        maxQueues: \(queueCount), \
        compute: \(queueFlags.contains(.compute)), \
        graphics: \(queueFlags.contains(.graphics)), \
        transfer: \(queueFlags.contains(.transfer))\
        )
        """
    }

    public var debugDescription: String {
        """
        PhysicalDevice.QueueFamily(index: \(index), queueCount: \(queueCount), queueFlags: \(queueFlags), \
        timestampValidBits: \(timestampValidBits), minImageTransferGranularity: \(minImageTransferGranularity))
        """
    }
}
