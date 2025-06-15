/**
 * Instance.swift
 * Loader
 *
 * Created by Hunter Baker on 4/22/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

public enum InstanceCreateError: Error {
    /// This error means that the loader was not found.
    case loaderFailed
    /// This error means that the instance failed to initialize.
    case intializationFailed
    /// A specified layer was not present in the loader.
    /// You should check the list of available layers before requesting them.
    case layerNotPresent
    /// A specified extension was not present in the loader.
    /// You should check the list of available extensions before requesting them.
    case extensionNotPresent
    /// No driver could be found that is compatible with the requested API version.
    /// This can happen if the version is wrong or if the driver requires protability to be enabled (like on MacOS).
    /// This can also be thrown if the loader is a 1.0 loader and the requested API is newere than 1.0. This only happens for 1.0 loaders.
    case incompatibleDriver
    /// Some other unexpected Vulkan error occurred.
    /// This really should not happen, but if it does, you can use the `VulkanError` to get more information.
    case other(VulkanError)
}

/// A Vulkan instance.
@safe
public final class Instance: @unchecked Sendable {
    /// The Vulkan instance handle.
    public let handle: VkInstance
    /// The table of Vulkan functions for this instance.
    public let table: InstanceTable

    /// Whether the instance has the `VK_KHR_get_physical_device_properties2` extension enabled.
    /// This is used when querying physical device properties.
    internal let hasVK_KHR_get_physical_device_properties2: Bool

    /// Creates a new instance from an existing Vulkan instance handle.
    /// This is unsafe because it does not check if the instance is valid or if the loader is set up correctly.
    /// This should only be used when trying to integrate with existing Vulkan code that already has an instance.
    /// - Parameter instance: The Vulkan instance handle to wrap.
    @unsafe
    public init(instance: consuming VkInstance) {
        unsafe self.handle = instance
        self.table = unsafe InstanceTable(getInstanceProcAddr: Loader.shared.table.getInstanceProcAddr, instance: instance)
        self.hasVK_KHR_get_physical_device_properties2 = false
    }

    /// Creates a new Vulkan instance.
    /// - Parameters:
    ///   - version: The maximum Vulkan API version that your application will use.
    ///   - layers: A set of layer names to enable for the instance. These must be available.
    ///   - extensions: A set of instance extensions to enable. These must be available.
    ///   - flags: Extra flags to pass to the instance creation.
    ///   - applicationInfo: Optional extra application information to pass to the instance.
    ///   - chain: A chain of additional structures to pass to the instance creation.
    /// - Throws: An `InstanceCreateError` if the instance could not be created.
    /// - Note: If the loader only supports Vulkan 1.0, this will throw an `.incompatibleDriver` error if `version` > 1.0.
    @safe
    public init(
        version: ApiVersion,
        layers: Set<String> = [], 
        extensions: Set<InstanceExtension> = [],
        flags: InstanceCreateFlags = [],
        applicationInfo: Applicationinfo? = nil,
        chain: borrowing InstanceCreateInfoChain = InstanceCreateInfoChain()
    ) throws(InstanceCreateError) {
        // First we need to ensure that the loader could setup correctly.
        guard Loader.checkSetup() else {
            throw .loaderFailed
        }

        #if DEBUG
            // In debug builds, we always try to enable the validation layer.
            var layers = layers
            if Loader.shared.availableLayers.contains(where: { $0.name == "VK_LAYER_KHRONOS_validation" }) {
                layers.insert("VK_LAYER_KHRONOS_validation")
                debugLog("Enabling VK_LAYER_KHRONOS_validation layer automatically (because of debug build).")
            }
        #endif

        self.hasVK_KHR_get_physical_device_properties2 = extensions.contains(.getPhysicalDeviceProperties2_KHR)

        // Convet layer names to a C-compatible format.
        let cLayerNames: [UnsafePointer<CChar>?] = unsafe layers.map { layerName in
            unsafe layerName.withCString { cString in
                let alloc = UnsafeMutablePointer<CChar>.allocate(capacity: layerName.utf8.count + 1)
                unsafe alloc.initialize(
                    from: cString,
                    count: layerName.utf8.count + 1
                )
                return unsafe UnsafePointer(alloc)
            }
        }
        defer {
            // Free the allocated layer names.
            for unsafe layerName in unsafe cLayerNames {
                unsafe layerName!.deallocate()
            }
        }

        // Convert extension names to a C-compatible format.
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

        // Set up the VkApplicationInfo structure
        let applicationNameC = unsafe applicationInfo?.name?.withCString { cString in
            let alloc = UnsafeMutablePointer<CChar>.allocate(capacity: applicationInfo!.name!.utf8.count + 1)
            unsafe alloc.initialize(from: cString, count: applicationInfo!.name!.utf8.count + 1)
            return unsafe UnsafePointer(alloc)
        }
        defer {
            // Free the allocated application name.
            unsafe UnsafeMutablePointer(mutating: applicationNameC)?.deallocate()
        }
        let engineNameC = unsafe applicationInfo?.engineName?.withCString { cString in
            let alloc = UnsafeMutablePointer<CChar>.allocate(capacity: applicationInfo!.engineName!.utf8.count + 1)
            unsafe alloc.initialize(from: cString, count: applicationInfo!.engineName!.utf8.count + 1)
            return unsafe UnsafePointer(alloc)
        }
        defer {
            // Free the allocated engine name.
            unsafe UnsafeMutablePointer(mutating: engineNameC)?.deallocate()
        }

        let applicationInfo = unsafe VkApplicationInfo(
            sType: VK_STRUCTURE_TYPE_APPLICATION_INFO,
            pNext: nil,
            pApplicationName: applicationNameC,
            applicationVersion: applicationInfo?.version ?? 0,
            pEngineName: engineNameC,
            engineVersion: applicationInfo?.engineVersion ?? 0,
            apiVersion: version.rawValue
        )

        // Actually create the instance
        var instance: VkInstance?
        let result: VulkanResult = unsafe cLayerNames.withUnsafeBufferPointer { cLayerNamesPtr in
            unsafe cExtNames.withUnsafeBufferPointer { cExtNamesPtr in
                unsafe withUnsafePointer(to: applicationInfo) { applicationInfoPtr in
                    // Now we can create the instance.
                    var createInfo = unsafe VkInstanceCreateInfo(
                        sType: VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
                        pNext: chain.start,
                        flags: flags.rawValue,
                        pApplicationInfo: applicationInfoPtr,
                        enabledLayerCount: UInt32(cLayerNames.count),
                        ppEnabledLayerNames: cLayerNamesPtr.baseAddress,
                        enabledExtensionCount: UInt32(cExtNames.count),
                        ppEnabledExtensionNames: cExtNamesPtr.baseAddress
                    )
                    let ret = unsafe Loader.shared.table.createInstance(&createInfo, nil, &instance)
                    return VulkanResult(ret)
                }
            }
        }
        if case .error(let error) = result {
            switch error {
                case .initializationFailed:
                    throw InstanceCreateError.intializationFailed
                case .layerNotPresent:
                    throw InstanceCreateError.layerNotPresent
                case .extensionNotPresent:
                    throw InstanceCreateError.extensionNotPresent
                case .incompatibleDriver:
                    throw InstanceCreateError.incompatibleDriver
                default:
                    throw InstanceCreateError.other(error)
            }
        }
        
        unsafe self.handle = instance!
        self.table = unsafe InstanceTable(getInstanceProcAddr: Loader.shared.table.getInstanceProcAddr, instance: instance!)
    }
}
