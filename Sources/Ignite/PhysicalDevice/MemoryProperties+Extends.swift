/**
 * MemoryProperties+Extends.swift
 * PhysicalDevice
 *
 * Created by Hunter Baker on 6/17/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

extension PhysicalDevice.MemoryProperties {
    /// A protocol that defines the known types that can appear in the pNext chain of memory properties.
    public protocol ExtendedMemoryProperties {
        static var sType: VkStructureType { get }
    }

    /// Gets a specific set of extended memory properties from the physical device's pNext chain.
    /// - Parameter type: The type of the extended memory propertes to retrieve.
    /// - Returns: An instance of the extended memory properties if found, otherwise `nil`.
    @inlinable
    public func getExtendedMemoryProperties<T: ExtendedMemoryProperties>(type: T.Type) -> T? {
        return unsafe memoryProperties2.get(
            T.sType,
            type: T.self
        )
    }
}

extension PhysicalDevice.MemoryProperties {
    // BEGIN_GENERATE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_EXTENDS
    // Generated using header version: 318

    /// Wrapper around the Vulkan VkPhysicalDeviceMemoryBudgetPropertiesEXT.
    /// Available with extension VK_EXT_memory_budget
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryBudgetPropertiesEXT.html)
    @safe
    public struct MemoryBudgetProperties_EXT: ExtendedMemoryProperties {
        public static let sType: VkStructureType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT

        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMemoryBudgetPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMemoryBudgetPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `heapBudget` member of the Vulkan `VkPhysicalDeviceMemoryBudgetPropertiesEXT`.
        public var heapBudget:
            (
                VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize,
                VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize,
                VkDeviceSize, VkDeviceSize
            )
        {
            unsafe rawValue.heapBudget
        }

        /// The `heapUsage` member of the Vulkan `VkPhysicalDeviceMemoryBudgetPropertiesEXT`.
        public var heapUsage:
            (
                VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize,
                VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize,
                VkDeviceSize, VkDeviceSize
            )
        {
            unsafe rawValue.heapUsage
        }
    }

    // END_GENERATE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_EXTENDS
}
