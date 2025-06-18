/**
 * PhysicalDevice+MemoryProperties.swift
 * PhysicalDevice
 * 
 * Created by Hunter Baker on 6/17/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

extension PhysicalDevice {
    /// The memory properties of a physical device.
    @safe
    public struct MemoryProperties {
        /// The pNext chain in the memory properties2 if available.
        @usableFromInline
        internal let memoryProperties2: OutputChain

        /// A list of memory heaps available on the physical device.
        public let heaps: [MemoryHeap]
        /// A list of memory types available on the physical device.
        public let types: [MemoryType]

        /// Creates a new `PhysicalDeviceMemoryProperties` instance from the given physical device.
        /// - Parameters:
        ///   - instance: The Vulkan instance that the physical device belongs to.
        ///   - handle: The Vulkan physical device handle.
        @safe
        public init(instance: borrowing Instance, handle: VkPhysicalDevice) {
            var memoryProperties: VkPhysicalDeviceMemoryProperties
            if instance.has_getPhysicalDeviceProperties2 {
                var memoryProperties2 = unsafe VkPhysicalDeviceMemoryProperties2()
                unsafe instance.table.getPhysicalDeviceMemoryProperties2(handle, &memoryProperties2)

                memoryProperties = unsafe memoryProperties2.memoryProperties
                unsafe self.memoryProperties2 = OutputChain(pNext: memoryProperties2.pNext)
            } else {
                memoryProperties = VkPhysicalDeviceMemoryProperties()
                unsafe instance.table.getPhysicalDeviceMemoryProperties(handle, &memoryProperties)

                self.memoryProperties2 = nil
            }

            self.heaps = unsafe Array(unsafeUninitializedCapacity: Int(memoryProperties.memoryHeapCount)) { buffer, initializedCount in 
                unsafe withUnsafePointer(to: memoryProperties.memoryHeaps) { heapsPtr in
                    let fixedHeapsPtr = unsafe UnsafeRawPointer(heapsPtr).assumingMemoryBound(to: VkMemoryHeap.self)
                    for i in 0..<Int(memoryProperties.memoryHeapCount) {
                        unsafe buffer[i] = unsafe MemoryHeap(index: UInt32(i), properties: fixedHeapsPtr[i])
                    }
                }
                initializedCount = Int(memoryProperties.memoryHeapCount)
            }

            let heaps = self.heaps
            types = unsafe Array(unsafeUninitializedCapacity: Int(memoryProperties.memoryTypeCount)) { buffer, initializedCount in
                unsafe withUnsafePointer(to: memoryProperties.memoryTypes) { typesPtr in
                    let fixedTypesPtr = unsafe UnsafeRawPointer(typesPtr).assumingMemoryBound(to: VkMemoryType.self)
                    for i in 0..<Int(memoryProperties.memoryTypeCount) {
                        unsafe buffer[i] = unsafe MemoryType(index: UInt32(i), properties: fixedTypesPtr[i], heaps: heaps)
                    }
                }
                initializedCount = Int(memoryProperties.memoryTypeCount)
            }
        }

        /// A Vulkan memory type.
        @safe
        public struct MemoryType {
            /// The index of the memory type.
            public let index: UInt32
            /// The flags that describe the properties of the memory type.
            public let propertyFlags: MemoryPropertyFlags
            /// The index of the memory type in the heap.
            public let heap: MemoryHeap

            /// Creates a new `MemoryType` instance.
            internal init(index: UInt32, properties: VkMemoryType, heaps: borrowing [MemoryHeap]) {
                self.index = index
                self.propertyFlags = MemoryPropertyFlags(rawValue: properties.propertyFlags)
                self.heap = heaps[Int(properties.heapIndex)]
            }
        }

        /// A Vulkan memory heap.
        @safe
        public struct MemoryHeap {
            /// The index of the memory heap.
            public let index: UInt32
            /// The size of the memory heap in bytes.
            public let size: UInt64
            /// The flags that describe the properties of the memory heap.
            public let flags: MemoryHeapFlags

            /// Creates a new `MemoryHeap` instance.
            internal init(index: UInt32, properties: VkMemoryHeap) {
                self.index = index
                self.size = properties.size
                self.flags = MemoryHeapFlags(rawValue: properties.flags)
            }
        }
    }
}
