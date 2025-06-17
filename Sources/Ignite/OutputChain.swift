/**
 * OutputChain.swift
 * Ignite
 * 
 * Created by Hunter Baker on 6/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

/// A wrapper around a Vulkan output chain.
/// This allows searching for the structure that you want in a type-safe-ish way.
@safe
public struct OutputChain {
    /// The Vulkan output chain start pointer.
    public let start: UnsafePointer<VkBaseOutStructure>?

    /// Initializes an output chain with the given start pointer.
    /// - Parameter start: The pointer to the first structure in the output chain.
    @unsafe
    public init(start: UnsafePointer<VkBaseOutStructure>?) {
        unsafe self.start = start
    }

    /// Gets the first structure in the output chain of the specified type.
    /// - Parameter sType: The `VkStructureType` to search for.
    /// - Parameter type: The swift type of the structure to return.
    /// - Returns: The structure of the specified type if found, otherwise `nil`.
    @unsafe
    @inlinable
    public func get<T>(_ sType: VkStructureType, type: T.Type = T.self) -> T? {
        var current: UnsafePointer<VkBaseOutStructure>? = unsafe start
        while let structure = unsafe current {
            if unsafe structure.pointee.sType == sType {
                // We found the structure we are looking for, so we can cast it to the correct type
                return unsafe UnsafeRawPointer(structure).assumingMemoryBound(to: T.self).pointee
            } else {
                unsafe current = UnsafePointer(structure.pointee.pNext)
            }
        }
        return nil
    }
}
