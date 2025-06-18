/**
 * QueueFamily+Extends.swift
 * PhysicalDevice
 *
 * Created by Hunter Baker on 6/15/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

extension PhysicalDevice.QueueFamily {
    /// A protocol that defines the known types that can appear in the pNext chain of properties for a queue family.
    public protocol ExtendedFamilyProperties {
        static var sType: VkStructureType { get }
    }

    /// Gets a specific set of extended properties from the queue family's pNext chain.
    /// - Parameter type: The type of the extended properties to retrieve.
    /// - Returns: An instance of the extended properties if found, otherwise `nil`.
    @inlinable
    public func getExtendedFeatures<T: ExtendedFamilyProperties>(type: T.Type) -> T? {
        return unsafe properties2.get(
            T.sType,
            type: T.self
        )
    }
}

extension PhysicalDevice.QueueFamily {
    // BEGIN_GENERATE_QUEUE_FAMILY_PROPERTIES_EXTENDS
    // Generated using header version: 318

    /// Wrapper around the Vulkan VkQueueFamilyOwnershipTransferPropertiesKHR.
    /// Available with extension VK_KHR_maintenance9
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyOwnershipTransferPropertiesKHR.html)
    @safe
    public struct OwnershipTransferProperties_KHR: ExtendedFamilyProperties {
        public static let sType: VkStructureType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_OWNERSHIP_TRANSFER_PROPERTIES_KHR

        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkQueueFamilyOwnershipTransferPropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkQueueFamilyOwnershipTransferPropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `optimalImageTransferToQueueFamilies` member of the Vulkan `VkQueueFamilyOwnershipTransferPropertiesKHR`.
        public var optimalImageTransferToQueueFamilies: UInt32 {
            unsafe rawValue.optimalImageTransferToQueueFamilies
        }
    }

    /// Wrapper around the Vulkan VkQueueFamilyGlobalPriorityProperties.
    /// Available with version VulkanGenerate.Version, extension VK_KHR_global_priority, or extension VK_EXT_global_priority_query
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyGlobalPriorityProperties.html)
    @safe
    public struct GlobalPriorityProperties: ExtendedFamilyProperties {
        public static let sType: VkStructureType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES

        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkQueueFamilyGlobalPriorityProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkQueueFamilyGlobalPriorityProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `priorities` member of the Vulkan `VkQueueFamilyGlobalPriorityProperties`.
        public var priorities:
            (
                VkQueueGlobalPriority, VkQueueGlobalPriority, VkQueueGlobalPriority, VkQueueGlobalPriority,
                VkQueueGlobalPriority, VkQueueGlobalPriority, VkQueueGlobalPriority, VkQueueGlobalPriority,
                VkQueueGlobalPriority, VkQueueGlobalPriority, VkQueueGlobalPriority, VkQueueGlobalPriority,
                VkQueueGlobalPriority, VkQueueGlobalPriority, VkQueueGlobalPriority, VkQueueGlobalPriority
            )
        {
            unsafe rawValue.priorities
        }
    }

    /// Wrapper around the Vulkan VkQueueFamilyCheckpointPropertiesNV.
    /// Available with extension VK_NV_device_diagnostic_checkpoints
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyCheckpointPropertiesNV.html)
    @safe
    public struct CheckpointProperties_NV: ExtendedFamilyProperties {
        public static let sType: VkStructureType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV

        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkQueueFamilyCheckpointPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkQueueFamilyCheckpointPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `checkpointExecutionStageMask` member of the Vulkan `VkQueueFamilyCheckpointPropertiesNV`.
        public var checkpointExecutionStageMask: PipelineStageFlags {
            unsafe PipelineStageFlags(rawValue: rawValue.checkpointExecutionStageMask)
        }
    }

    /// Wrapper around the Vulkan VkQueueFamilyCheckpointProperties2NV.
    /// Available with extension VK_NV_device_diagnostic_checkpoints
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyCheckpointProperties2NV.html)
    @safe
    public struct CheckpointProperties2_NV: ExtendedFamilyProperties {
        public static let sType: VkStructureType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_2_NV

        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkQueueFamilyCheckpointProperties2NV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkQueueFamilyCheckpointProperties2NV) {
            unsafe self.rawValue = rawValue
        }

        /// The `checkpointExecutionStageMask` member of the Vulkan `VkQueueFamilyCheckpointProperties2NV`.
        public var checkpointExecutionStageMask: PipelineStageFlags2 {
            unsafe PipelineStageFlags2(rawValue: rawValue.checkpointExecutionStageMask)
        }
    }

    /// Wrapper around the Vulkan VkQueueFamilyVideoPropertiesKHR.
    /// Available with extension VK_KHR_video_queue
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyVideoPropertiesKHR.html)
    @safe
    public struct VideoProperties_KHR: ExtendedFamilyProperties {
        public static let sType: VkStructureType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_VIDEO_PROPERTIES_KHR

        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkQueueFamilyVideoPropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkQueueFamilyVideoPropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `videoCodecOperations` member of the Vulkan `VkQueueFamilyVideoPropertiesKHR`.
        public var videoCodecOperations: VideoCodecOperationFlagsKHR {
            unsafe VideoCodecOperationFlagsKHR(rawValue: rawValue.videoCodecOperations)
        }
    }

    /// Wrapper around the Vulkan VkQueueFamilyQueryResultStatusPropertiesKHR.
    /// Available with extension VK_KHR_video_queue
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyQueryResultStatusPropertiesKHR.html)
    @safe
    public struct QueryResultStatusProperties_KHR: ExtendedFamilyProperties {
        public static let sType: VkStructureType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_QUERY_RESULT_STATUS_PROPERTIES_KHR

        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkQueueFamilyQueryResultStatusPropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkQueueFamilyQueryResultStatusPropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `queryResultStatusSupport` member of the Vulkan `VkQueueFamilyQueryResultStatusPropertiesKHR`.
        public var queryResultStatusSupport: Bool {
            unsafe rawValue.queryResultStatusSupport != 0
        }
    }

    // END_GENERATE_QUEUE_FAMILY_PROPERTIES_EXTENDS
}
