/**
 * Loader.swift
 * Ignite
 *
 * Created by Hunter Baker on 4/20/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

#if os(macOS) || os(iOS) || os(tvOS) || os(visionOS)
    import Darwin
#elseif canImport(Musl)
    import Musl
#elseif os(Linux) || os(FreeBSD) || os(OpenBSD) || os(PS4) || os(Cygwin) || os(Haiku)
    import Glibc
#elseif os(Windows)
    import ucrt
#elseif canImport(Android)
    import Android
#else
    // If we don't know the platform, we can't load the Vulkan library.
    // We don't care though if the user already wants to dynamically load vulkan.
    #if MetaLoader
        #error(
            "Unknown platform. Ignite doesn't know know to load libraries on this platform. Either make a pull request or disable the MetaLoader trait."
        )
    #endif
#endif


/// A structure that loads the Vulkan library and provides access to the loader scoped Vulkan function pointers.
/// This is a singleton that is the entry point for all Vulkan commands. It plays a similar role to volk.
public struct Loader: Sendable {
    /// The table of Vulkan function pointers for functions at the loader scope.
    public let loaderTable: LoaderTable
    /// The instance version of the Vulkan install.
    public let version: UInt32

    /// Initializes the VulkanLoader. This is private because this is a singleton.
    /// Use `.shared` to get the singlton.
    private init?() {
        // Try to load the vulkan library using one of the paths in vulkanPaths.
        let getInstanceProcAddr = Self.loadVulkan(paths: Self.vulkanPaths)
        guard let getInstanceProcAddr else {
            debugLog("Failed to load Vulkan library. Make sure you have the Vulkan loader installed.")
            return nil
        }
        // Initialize the loader table with all the functions needed and get the api version.
        loaderTable = .init(getInstanceProcAddr: getInstanceProcAddr)
        if let enumerateInstanceVersion = loaderTable.enumerateInstanceVersion {
            var foundVersion: UInt32 = 0
            let result = enumerateInstanceVersion(&foundVersion)

            assert(result == VK_SUCCESS, "Failed to enumerate instance version: \(result)")
            assert(getVkAPIVersionVariant(foundVersion) == 0, "Vulkan API version variant is not 0")

            version = foundVersion
        } else {
            // If we can't get the version, just 1.0
            version = makeVkAPIVersion(1, 0)
        }
    }

    /// The table of Vulkan function pointers for functions at the loader scope.
    public struct LoaderTable: Sendable {
        // BEGIN_GENERATE_LOADER_TABLE
        // Generated 2025-04-22 15:23:58 +0000

        /// To create an instance object, call:
        /// 
        /// - Parameters:
        ///     - pCreateInfo: is a pointer to a [VkInstanceCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstanceCreateInfo.html) structure controlling creation of the instance.
        ///     - pAllocator: controls host memory allocation as described in the [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) chapter.
        ///     - pInstance: points a [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle in which the resulting instance is returned.
        /// 
        /// `vkCreateInstance` verifies that the requested layers exist. 
        /// If not, `vkCreateInstance` will return `VK_ERROR_LAYER_NOT_PRESENT`. 
        /// Next `vkCreateInstance` verifies that the requested extensions are supported (e.g. in the implementation or in any enabled instance layer) and if any requested extension is not supported, `vkCreateInstance` **must** return `VK_ERROR_EXTENSION_NOT_PRESENT`. 
        /// After verifying and enabling the instance layers and extensions the `VkInstance` object is created and returned to the application. 
        /// If a requested extension is only supported by a layer, both the layer and the extension need to be specified at `vkCreateInstance` time for the creation to succeed.
        /// 
        /// Valid Usage
        /// ---
        /// - Precondition: All [required extensions](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#extendingvulkan-extensions-extensiondependencies) for each extension in the [VkInstanceCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstanceCreateInfo.html)::`ppEnabledExtensionNames` list **must** also be present in that list
        /// 
        /// Valid Usage (Implicit)
        /// ---
        /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkInstanceCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstanceCreateInfo.html) structure
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: `pInstance` **must** be a valid pointer to a [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// 
        /// Return Codes
        /// ---
        /// - Returns:
        ///     - Success Codes:
        ///         - `VK_SUCCESS`
        /// 
        /// ### Documentation
        /// - SeeAlso: [vkCreateInstance Docs](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateInstance.html)
        public let createInstance: PFN_vkCreateInstance!

        /// Function pointers for all Vulkan commands **can** be obtained by calling:
        /// 
        /// - Parameters:
        ///     - instance: is the instance that the function pointer will be compatible with, or `NULL` for commands not dependent on any instance.
        ///     - pName: is the name of the command to obtain.
        /// 
        /// `vkGetInstanceProcAddr` itself is obtained in a platform- and loader- specific manner. 
        /// Typically, the loader library will export this command as a function symbol, so applications **can** link against the loader library, or load it dynamically and look up the symbol using platform-specific APIs.
        /// 
        /// The table below defines the various use cases for `vkGetInstanceProcAddr` and expected return value (“fp” is “function pointer”) for each case. 
        /// A valid returned function pointer (“fp”) **must** not be `NULL`.
        /// 
        /// The returned function pointer is of type [PFN_vkVoidFunction](https://registry.khronos.org/vulkan/specs/latest/man/html/PFN_vkVoidFunction.html), and **must** be cast to the type of the command being queried before use.
        /// 
        /// ### Table 1. `vkGetInstanceProcAddr` behavior
        /// `instance`  | `pName`  | return value
        /// ----------- | -------- | ------------
        /// \*1 | `NULL`  | undefined
        /// invalid non-`NULL` instance | \*1 | undefined
        /// `NULL`  | *global command* 2 | fp
        /// `NULL`  | [vkGetInstanceProcAddr](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetInstanceProcAddr.html)  | fp5
        /// instance | [vkGetInstanceProcAddr](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetInstanceProcAddr.html)  | fp
        /// instance | core *dispatchable command*  | fp3
        /// instance | enabled instance extension dispatchable command for `instance`  | fp3
        /// instance | available device extension4 dispatchable command for `instance`  | fp3
        /// any other case, not covered above|| `NULL` 
        /// 
        /// Valid Usage (Implicit)
        /// ---
        /// - Precondition: If `instance` is not `NULL`, `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `pName` **must** be a null-terminated UTF-8 string
        /// 
        /// ### Documentation
        /// - SeeAlso: [vkGetInstanceProcAddr Docs](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetInstanceProcAddr.html)
        public let getInstanceProcAddr: PFN_vkGetInstanceProcAddr!

        /// To query the version of instance-level functionality supported by the implementation, call:
        /// 
        /// - Parameters:
        ///     - pApiVersion: is a pointer to a `uint32_t`, which is the version of Vulkan supported by instance-level functionality, encoded as described in [https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#extendingvulkan-coreversions-versionnumbers](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#extendingvulkan-coreversions-versionnumbers).
        /// 
        /// Valid Usage (Implicit)
        /// ---
        /// - Precondition: `pApiVersion` **must** be a valid pointer to a `uint32_t` value
        /// 
        /// Return Codes
        /// ---
        /// - Returns:
        ///     - Success Codes:
        ///         - `VK_SUCCESS`
        /// 
        /// ### Documentation
        /// - SeeAlso: [vkEnumerateInstanceVersion Docs](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateInstanceVersion.html)
        public let enumerateInstanceVersion: PFN_vkEnumerateInstanceVersion!

        /// To query the available layers, call:
        /// 
        /// - Parameters:
        ///     - pPropertyCount: is a pointer to an integer related to the number of layer properties available or queried, as described below.
        ///     - pProperties: is either `NULL` or a pointer to an array of [VkLayerProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkLayerProperties.html) structures.
        /// 
        /// If `pProperties` is `NULL`, then the number of layer properties available is returned in `pPropertyCount`. 
        /// Otherwise, `pPropertyCount` **must** point to a variable set by the application to the number of elements in the `pProperties` array, and on return the variable is overwritten with the number of structures actually written to `pProperties`. 
        /// If `pPropertyCount` is less than the number of layer properties available, at most `pPropertyCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available properties were returned.
        /// 
        /// The list of available layers may change at any time due to actions outside of the Vulkan implementation, so two calls to `vkEnumerateInstanceLayerProperties` with the same parameters **may** return different results, or retrieve different `pPropertyCount` values or `pProperties` contents. 
        /// Once an instance has been created, the layers enabled for that instance will continue to be enabled and valid for the lifetime of that instance, even if some of them become unavailable for future instances.
        /// 
        /// Valid Usage (Implicit)
        /// ---
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkLayerProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkLayerProperties.html) structures
        /// 
        /// Return Codes
        /// ---
        /// - Returns:
        ///     - Success Codes:
        ///         - `VK_SUCCESS`
        ///         - `VK_INCOMPLETE`
        /// 
        /// ### Documentation
        /// - SeeAlso: [vkEnumerateInstanceLayerProperties Docs](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateInstanceLayerProperties.html)
        public let enumerateInstanceLayerProperties: PFN_vkEnumerateInstanceLayerProperties!

        /// To query the available instance extensions, call:
        /// 
        /// - Parameters:
        ///     - pLayerName: is either `NULL` or a pointer to a null-terminated UTF-8 string naming the layer to retrieve extensions from.
        ///     - pPropertyCount: is a pointer to an integer related to the number of extension properties available or queried, as described below.
        ///     - pProperties: is either `NULL` or a pointer to an array of [VkExtensionProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExtensionProperties.html) structures.
        /// 
        /// When `pLayerName` parameter is `NULL`, only extensions provided by the Vulkan implementation or by implicitly enabled layers are returned. 
        /// When `pLayerName` is the name of a layer, the instance extensions provided by that layer are returned.
        /// 
        /// If `pProperties` is `NULL`, then the number of extensions properties available is returned in `pPropertyCount`. 
        /// Otherwise, `pPropertyCount` **must** point to a variable set by the application to the number of elements in the `pProperties` array, and on return the variable is overwritten with the number of structures actually written to `pProperties`. 
        /// If `pPropertyCount` is less than the number of extension properties available, at most `pPropertyCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available properties were returned.
        /// 
        /// Because the list of available layers may change externally between calls to [vkEnumerateInstanceExtensionProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateInstanceExtensionProperties.html), two calls may retrieve different results if a `pLayerName` is available in one call but not in another. 
        /// The extensions supported by a layer may also change between two calls, e.g. if the layer implementation is replaced by a different version between those calls.
        /// 
        /// Implementations **must** not advertise any pair of extensions that cannot be enabled together due to behavioral differences, or any extension that cannot be enabled against the advertised version.
        /// 
        /// Valid Usage (Implicit)
        /// ---
        /// - Precondition: If `pLayerName` is not `NULL`, `pLayerName` **must** be a null-terminated UTF-8 string
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkExtensionProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExtensionProperties.html) structures
        /// 
        /// Return Codes
        /// ---
        /// - Returns:
        ///     - Success Codes:
        ///         - `VK_SUCCESS`
        ///         - `VK_INCOMPLETE`
        /// 
        /// ### Documentation
        /// - SeeAlso: [vkEnumerateInstanceExtensionProperties Docs](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateInstanceExtensionProperties.html)
        public let enumerateInstanceExtensionProperties: PFN_vkEnumerateInstanceExtensionProperties!

        // END_GENERATE_LOADER_TABLE

        /// Load the Vulkan function pointers using the getInstanceProcAddr function.
        internal init(getInstanceProcAddr: PFN_vkGetInstanceProcAddr) {
            // BEGIN_GENERATE_LOADER_TABLE_INIT

            traceLog("Loading vkCreateInstance command in InstanceTable")
            self.createInstance = unsafeBitCast(
                getInstanceProcAddr(nil, "vkCreateInstance"),
                to: PFN_vkCreateInstance.self
            )
            if self.createInstance == nil {
                debugLog("Failed to load vkCreateInstance command in InstanceTable")
            }

            traceLog("Loading vkGetInstanceProcAddr command in InstanceTable")
            self.getInstanceProcAddr = unsafeBitCast(
                getInstanceProcAddr(nil, "vkGetInstanceProcAddr"),
                to: PFN_vkGetInstanceProcAddr.self
            )
            if self.getInstanceProcAddr == nil {
                debugLog("Failed to load vkGetInstanceProcAddr command in InstanceTable")
            }

            traceLog("Loading vkEnumerateInstanceVersion command in InstanceTable")
            self.enumerateInstanceVersion = unsafeBitCast(
                getInstanceProcAddr(nil, "vkEnumerateInstanceVersion"),
                to: PFN_vkEnumerateInstanceVersion.self
            )
            if self.enumerateInstanceVersion == nil {
                debugLog("Failed to load vkEnumerateInstanceVersion command in InstanceTable")
            }

            traceLog("Loading vkEnumerateInstanceLayerProperties command in InstanceTable")
            self.enumerateInstanceLayerProperties = unsafeBitCast(
                getInstanceProcAddr(nil, "vkEnumerateInstanceLayerProperties"),
                to: PFN_vkEnumerateInstanceLayerProperties.self
            )
            if self.enumerateInstanceLayerProperties == nil {
                debugLog("Failed to load vkEnumerateInstanceLayerProperties command in InstanceTable")
            }

            traceLog("Loading vkEnumerateInstanceExtensionProperties command in InstanceTable")
            self.enumerateInstanceExtensionProperties = unsafeBitCast(
                getInstanceProcAddr(nil, "vkEnumerateInstanceExtensionProperties"),
                to: PFN_vkEnumerateInstanceExtensionProperties.self
            )
            if self.enumerateInstanceExtensionProperties == nil {
                debugLog("Failed to load vkEnumerateInstanceExtensionProperties command in InstanceTable")
            }
            // END_GENERATE_LOADER_TABLE_INIT
        }
    }
}
extension Loader {
    /// The paths to the Vulkan library. This is a list of paths that are searched in order.
    /// This varies by OS.
    private static var vulkanPaths: [String] {
        #if os(Windows)
            return ["vulkan-1.dll"]
        #elseif os(Linux)
            return ["libvulkan.so.1"]
        #elseif os(macOS) || os(iOS) || os(tvOS)
            return [
                "libvulkan.dylib",
                "libvulkan.1.dylib",
                "libMoltenVK.dylib",
                "vulkan.framework/vulkan",
                "MoltenVK.framework/MoltenVK",
                // Stock macOS no longer has `/usr/local/lib` in `LD_LIBRARY_PATH` like it used to,
                // but libraries (including MoltenVK installed through the Vulkan SDK) are still
                // installed here. Try the absolute path as a last resort.
                "/usr/local/lib/libvulkan.dylib"
            ]
        #elseif os(Android)
            return ["libvulkan.so.1", "libvulkan.so"]
        #else
            #warning("Unsupported platform. Vulkan may not be available.")
            return ["libvulkan.so", "libvulkan.so.1"]
        #endif
    }

    /// Trys to load the Vulkan library from each of the provded paths.
    /// Returns `vkGetInstanceProcAddr` for the first path that works.
    /// - Parameter paths: The paths to the Vulkan library.
    /// - Returns: The function pointer to `vkGetInstanceProcAddr` if it was found, otherwise nil.
    private static func loadVulkan(paths: [String]) -> PFN_vkGetInstanceProcAddr? {
        #if !MetaLoader
            // If we are not using the MetaLoader trait, then we just use the linked symbol.
            return vkGetInstanceProcAddr
        #elseif os(Windows)
            // If we are on Windows, we need to use LoadLibraryA to load the library.
            for path in paths {
                let handle = LoadLibraryA(path)
                guard handle != nil else {
                    debugLog("Failed to load Vulkan library: \(GetLastError())")
                    continue
                }
                // Grab the vkGetInstanceProcAddr function pointer as our entry point.
                let getInstanceProcAddr = GetProcAddress(handle, "vkGetInstanceProcAddr")
                guard getInstanceProcAddr != nil else {
                    debugLog("Failed to load vkGetInstanceProcAddr: \(GetLastError())")
                    continue
                }
                return unsafeBitCast(getInstanceProcAddr, to: PFN_vkGetInstanceProcAddr.self)
            }
            return nil
        #else
            // If we are on linux, unix, or other posix system, we need to use dlopen to load the library.
            for path in paths {
                let handle = dlopen(path, RTLD_NOW | RTLD_GLOBAL)
                guard handle != nil else {
                    debugLog("Failed to load Vulkan library: \(String(cString: dlerror()))")
                    continue
                }
                // Grab the vkGetInstanceProcAddr function pointer as our entry point.
                let getInstanceProcAddr = dlsym(handle, "vkGetInstanceProcAddr")
                guard getInstanceProcAddr != nil else {
                    debugLog("Failed to load vkGetInstanceProcAddr: \(String(cString: dlerror()))")
                    continue
                }
                return unsafeBitCast(getInstanceProcAddr, to: PFN_vkGetInstanceProcAddr.self)
            }
            return nil
        #endif
    }
}

extension Loader {
    /// The shared instance of the Loader.
    /// If this is nil, then the Vulkan library was not loaded successfully.
    public static let shared: Loader! = .init()

    /// A function that checks if the Vulkan library was loaded successfully.
    /// - Returns: `true` if the Vulkan library was loaded successfully, otherwise `false`.
    public static func checkSetup() -> Bool {
        shared != nil
    }
}
