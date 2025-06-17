/**
 * Loader.swift
 * Ignite
 *
 * Created by Hunter Baker on 4/20/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

#if os(macOS) || os(iOS) || os(tvOS) || os(visionOS)
    import Darwin
#elseif canImport(Musl)
    import Musl
#elseif os(Linux) || os(FreeBSD) || os(OpenBSD) || os(PS4) || os(Cygwin) || os(Haiku)
    import Glibc
#elseif os(Windows)
    import ucrt
#elseif canImport(Android)
    import Bionic
#else
    // If we don't know the platform, we can't load the Vulkan library.
    // We don't care though if the user already wants to link Vulkan directly.
    #if !LinkedVulkan
        #error(
            "Unknown platform. Ignite doesn't know know to load libraries on this platform. Either make a pull request or disable the MetaLoader trait."
        )
    #endif
#endif


/// A structure that loads the Vulkan library and provides access to the loader scoped Vulkan function pointers.
/// This is a singleton that is the entry point for all Vulkan commands. It plays a similar role to volk.
@safe
public struct Loader: Sendable {
    /// The table of Vulkan function pointers for functions at the loader scope.
    public let table: LoaderTable
    /// The instance version of the Vulkan install.
    public let version: ApiVersion

    /// Initializes the VulkanLoader. This is private because this is a singleton.
    /// Use `.shared` to get the singleton.
    private init?() {
        // Try to load the vulkan library using one of the paths in vulkanPaths.
        let getInstanceProcAddr: PFN_vkGetInstanceProcAddr? = Self.loadVulkan(paths: Self.vulkanPaths)
        guard let getInstanceProcAddr = unsafe getInstanceProcAddr else {
            debugLog("Failed to load Vulkan library. Make sure you have the Vulkan loader installed.")
            return nil
        }
        // Initialize the loader table with all the functions needed and get the api version.
        unsafe table = LoaderTable(getInstanceProcAddr: getInstanceProcAddr)

        // Initialize the version.
        // In version 1.0, the vkEnumerateInstanceVersion function did not exist, so we need to check if it exists.
        if let enumerateInstanceVersion = unsafe table.enumerateInstanceVersion {
            var foundVersion: UInt32 = 0
            let result = unsafe enumerateInstanceVersion(&foundVersion)

            assert(result == VK_SUCCESS, "Failed to enumerate instance version: \(result)")
            assert(getVkAPIVersionVariant(foundVersion) == 0, "Vulkan API version variant is not 0")

            version = ApiVersion(rawValue: foundVersion)
        } else {
            // If we can't get the version, just use 1.0
            version = .v1_0
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
        #if LinkedVulkan
            // If we are not using the MetaLoader trait, then we just use the linked symbol.
            return unsafe vkGetInstanceProcAddr
        #elseif os(Windows)
            // If we are on Windows, we need to use LoadLibraryA to load the library.
            for path in paths {
                let handle = unsafe LoadLibraryA(path)
                guard handle != nil else {
                    debugLog("Failed to load Vulkan library: \(GetLastError())")
                    continue
                }
                // Grab the vkGetInstanceProcAddr function pointer as our entry point.
                let getInstanceProcAddr = unsafe GetProcAddress(handle, "vkGetInstanceProcAddr")
                guard getInstanceProcAddr != nil else {
                    debugLog("Failed to load vkGetInstanceProcAddr: \(GetLastError())")
                    continue
                }
                return unsafe unsafeBitCast(getInstanceProcAddr, to: PFN_vkGetInstanceProcAddr.self)
            }
            return nil
        #else
            // If we are on linux, unix, or other posix system, we need to use dlopen to load the library.
            for path in paths {
                let handle = unsafe dlopen(path, RTLD_NOW | RTLD_GLOBAL)
                guard unsafe handle != nil else {
                    unsafe debugLog("Failed to load Vulkan library: \(String(cString: dlerror()))")
                    continue
                }
                // Grab the vkGetInstanceProcAddr function pointer as our entry point.
                let getInstanceProcAddr = unsafe dlsym(handle, "vkGetInstanceProcAddr")
                guard unsafe getInstanceProcAddr != nil else {
                    unsafe debugLog("Failed to load vkGetInstanceProcAddr: \(String(cString: dlerror()))")
                    continue
                }
                return unsafe unsafeBitCast(getInstanceProcAddr, to: PFN_vkGetInstanceProcAddr.self)
            }
            return nil
        #endif
    }
}

extension Loader {
    /// The shared instance of the Loader.
    /// If this is nil, then the Vulkan library was not loaded successfully.
    public static let shared: Loader! = Loader()

    /// A function that checks if the Vulkan library was loaded successfully.
    /// - Returns: `true` if the Vulkan library was loaded successfully, otherwise `false`.
    @inlinable
    public static func checkSetup() -> Bool {
        shared != nil
    }
}

extension Loader {
    /// The properties of a Vulkan layer.
    public struct LayerProperties {
        /// The underlying Vulkan layer properties structure.
        internal var wrapped: VkLayerProperties

        /// The name of the layer.
        public var name: String {
            unsafe withUnsafePointer(to: wrapped.layerName) { layerNamePtr in
                unsafe String(cString: UnsafeRawPointer(layerNamePtr).assumingMemoryBound(to: CChar.self))
            }
        }

        /// The version of Vulkan that the layer supports.
        public var specVersion: ApiVersion {
            ApiVersion(rawValue: wrapped.specVersion)
        }

        /// The version of the layer implementation. Incremented when the layer is modified.
        public var implementationVersion: UInt32 {
            wrapped.implementationVersion
        }

        /// A human-readable description of the layer.
        public var description: String {
            unsafe withUnsafePointer(to: wrapped.description) { descriptionPtr in
                unsafe String(cString: UnsafeRawPointer(descriptionPtr).assumingMemoryBound(to: CChar.self))
            }
        }

        /// Initializes a new `LayerProperties` with the given Vulkan layer properties.
        internal init(wrapping wrapped: VkLayerProperties) {
            self.wrapped = wrapped
        }
    }

    /// The list of available Vulkan layers.
    public var availableLayers: [LayerProperties] {
        var count: UInt32 = 0
        let result = unsafe table.enumerateInstanceLayerProperties(&count, nil)

        // This only happens if the Vulkan loader runs out of memory
        assert(result == VK_SUCCESS, "Failed to enumerate instance layer properties: \(result)")

        guard count > 0 else { return [] }

        var layers = [VkLayerProperties](repeating: VkLayerProperties(), count: Int(count))
        let result2 = unsafe table.enumerateInstanceLayerProperties(&count, &layers)

        // This only happens if the Vulkan loader runs out of memory
        assert(result2 == VK_SUCCESS, "Failed to enumerate instance layer properties: \(result2)")

        return layers.map { LayerProperties(wrapping: $0) }
    }

    /// The properties of a Vulkan extension.
    public struct AvailableExtensions {
        /// The set of Vulkan extension names.
        public let extensions: Set<String>

        /// Checks if the given extension is available.
        /// - Parameters:
        ///   - ext: The extension to check.
        /// - Returns: `true` if the extension is available, otherwise `false`.
        public func contains(_ ext: InstanceExtension, useVersions: Bool = false) -> Bool {
            contains(ext.name, useVersions: useVersions)
        }

        /// Checks if the given extension name is available.
        /// - Parameters:
        ///   - extensionName: The name of the extension to check.
        /// - Returns: `true` if the extension is available, otherwise `false`.
        public func contains(_ extensionName: String, useVersions: Bool = false) -> Bool {
            let doesContain = extensions.contains(extensionName)
            if useVersions && !doesContain {
                // ToDo: check if the extension is already available with a version suffix.
            }
            return doesContain
        }

        /// Try to enable the given extension if it is available.
        /// - Parameters:
        ///   - ext: The extension to enable.
        ///   - enabledExtensions: The set of enabled extensions to add the extension to if it is available.
        /// - Returns: `true` if the extension was enabled, otherwise `false`.
        public func require(_ ext: InstanceExtension, enabledExtensions: inout Set<InstanceExtension>) -> Bool {
            if extensions.contains(ext.name) {
                enabledExtensions.insert(ext)
                return true
            } else {
                return false
            }
        }

        /// Initializes a new `AvailableExtensions` with the given Vulkan extension properties.
        internal init(extensions: [VkExtensionProperties]) {
            self.extensions = Set(
                extensions.map { ext in
                    unsafe withUnsafePointer(to: ext.extensionName) { extNamePtr in
                        unsafe String(cString: UnsafeRawPointer(extNamePtr).assumingMemoryBound(to: CChar.self))
                    }
                })
        }
    }

    /// Get a collection of available Vulkan instance extensions for the given layer name.
    /// - Parameter layerName: The name of the layer to get the extensions for. If `nil`, all available extensions are returned.
    public func getAvailableExtensions(
        layerName: String? = nil
    ) -> AvailableExtensions {
        var count: UInt32 = 0
        let result = unsafe table.enumerateInstanceExtensionProperties(layerName, &count, nil)

        // This only happens if the Vulkan loader runs out of memory
        assert(result == VK_SUCCESS, "Failed to enumerate instance extension properties: \(result)")

        guard count > 0 else { return AvailableExtensions(extensions: []) }

        var extensions = [VkExtensionProperties](repeating: VkExtensionProperties(), count: Int(count))
        let result2 = unsafe table.enumerateInstanceExtensionProperties(layerName, &count, &extensions)

        // This only happens if the Vulkan loader runs out of memory
        assert(result2 == VK_SUCCESS, "Failed to enumerate instance extension properties: \(result2)")

        return AvailableExtensions(extensions: extensions)
    }

    /// The collection of available Vulkan instance extensions.a
    /// This is equivalent to calling `getAvailableExtensions()` with no layer name.
    public var availableExtensions: AvailableExtensions {
        getAvailableExtensions()
    }
}

extension Loader {

    /// The table of Vulkan function pointers for functions at the loader scope.
    @unsafe
    public struct LoaderTable: Sendable {
        // BEGIN_GENERATE_LOADER_TABLE
        // Generated using header version: 318

        /// To create an instance object, call:
        ///
        /// `vkCreateInstance` verifies that the requested layers exist.
        /// If not, `vkCreateInstance` will return `VK_ERROR_LAYER_NOT_PRESENT`.
        /// Next `vkCreateInstance` verifies that the requested extensions are supported (e.g. in the implementation or in any enabled instance layer) and if any requested extension is not supported, `vkCreateInstance` **must** return `VK_ERROR_EXTENSION_NOT_PRESENT`.
        /// After verifying and enabling the instance layers and extensions the `VkInstance` object is created and returned to the application.
        /// If a requested extension is only supported by a layer, both the layer and the extension need to be specified at `vkCreateInstance` time for the creation to succeed.
        ///
        /// - Parameters:
        ///   - pCreateInfo: is a pointer to a [VkInstanceCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstanceCreateInfo.html) structure controlling creation of the instance.
        ///   - pAllocator: controls host memory allocation as described in the [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) chapter.
        ///   - pInstance: points a [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle in which the resulting instance is returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_INITIALIZATION_FAILED`
        ///     - `VK_ERROR_LAYER_NOT_PRESENT`
        ///     - `VK_ERROR_EXTENSION_NOT_PRESENT`
        ///     - `VK_ERROR_INCOMPATIBLE_DRIVER`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: All [required
        ///                 extensions](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#extendingvulkan-extensions-extensiondependencies) for each extension in the
        ///                 [VkInstanceCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstanceCreateInfo.html)::`ppEnabledExtensionNames` list **must**
        ///                 also be present in that list
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkInstanceCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstanceCreateInfo.html) structure
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: `pInstance` **must** be a valid pointer to a [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        ///
        /// - SeeAlso: [vkCreateInstance Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateInstance.html)
        @unsafe
        public let createInstance: PFN_vkCreateInstance!

        /// To query the available instance extensions, call:
        ///
        /// When `pLayerName` parameter is `NULL`, only extensions provided by the Vulkan implementation or by implicitly enabled layers are returned.
        /// When `pLayerName` is the name of a layer, the instance extensions provided by that layer are returned.
        /// If `pProperties` is `NULL`, then the number of extensions properties available is returned in `pPropertyCount`.
        /// Otherwise, `pPropertyCount` **must** point to a variable set by the application to the number of elements in the `pProperties` array, and on return the variable is overwritten with the number of structures actually written to `pProperties`.
        /// If `pPropertyCount` is less than the number of extension properties available, at most `pPropertyCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available properties were returned.
        /// Because the list of available layers may change externally between calls to [vkEnumerateInstanceExtensionProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateInstanceExtensionProperties.html), two calls may retrieve different results if a `pLayerName` is available in one call but not in another.
        /// The extensions supported by a layer may also change between two calls, e.g. if the layer implementation is replaced by a different version between those calls.
        /// Implementations **must** not advertise any pair of extensions that cannot be enabled together due to behavioral differences, or any extension that cannot be enabled against the advertised version.
        ///
        /// - Parameters:
        ///   - pLayerName: is either `NULL` or a pointer to a null-terminated UTF-8 string naming the layer to retrieve extensions from.
        ///   - pPropertyCount: is a pointer to an integer related to the number of extension properties available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of [VkExtensionProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExtensionProperties.html) structures.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///     - `VK_INCOMPLETE`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_LAYER_NOT_PRESENT`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: If `pLayerName` is not `NULL`, `pLayerName` **must** be a null-terminated UTF-8 string
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkExtensionProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExtensionProperties.html) structures
        ///
        /// - SeeAlso: [vkEnumerateInstanceExtensionProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateInstanceExtensionProperties.html)
        @unsafe
        public let enumerateInstanceExtensionProperties: PFN_vkEnumerateInstanceExtensionProperties!

        /// To query the available layers, call:
        ///
        /// If `pProperties` is `NULL`, then the number of layer properties available is returned in `pPropertyCount`.
        /// Otherwise, `pPropertyCount` **must** point to a variable set by the application to the number of elements in the `pProperties` array, and on return the variable is overwritten with the number of structures actually written to `pProperties`.
        /// If `pPropertyCount` is less than the number of layer properties available, at most `pPropertyCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available properties were returned.
        /// The list of available layers may change at any time due to actions outside of the Vulkan implementation, so two calls to `vkEnumerateInstanceLayerProperties` with the same parameters **may** return different results, or retrieve different `pPropertyCount` values or `pProperties` contents.
        /// Once an instance has been created, the layers enabled for that instance will continue to be enabled and valid for the lifetime of that instance, even if some of them become unavailable for future instances.
        ///
        /// - Parameters:
        ///   - pPropertyCount: is a pointer to an integer related to the number of layer properties available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of [VkLayerProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkLayerProperties.html) structures.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///     - `VK_INCOMPLETE`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkLayerProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkLayerProperties.html) structures
        ///
        /// - SeeAlso: [vkEnumerateInstanceLayerProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateInstanceLayerProperties.html)
        @unsafe
        public let enumerateInstanceLayerProperties: PFN_vkEnumerateInstanceLayerProperties!

        /// To query the version of instance-level functionality supported by the
        /// implementation, call:
        ///
        ///
        /// - Parameters:
        ///   - pApiVersion: is a pointer to a `uint32_t`, which is the version of Vulkan supported by instance-level functionality, encoded as described in [https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#extendingvulkan-coreversions-versionnumbers](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#extendingvulkan-coreversions-versionnumbers).
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `pApiVersion` **must** be a valid pointer to a `uint32_t` value
        ///
        /// - SeeAlso: [vkEnumerateInstanceVersion Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateInstanceVersion.html)
        @unsafe
        public let enumerateInstanceVersion: PFN_vkEnumerateInstanceVersion!

        /// Function pointers for all Vulkan commands **can** be obtained by calling:
        ///
        /// `vkGetInstanceProcAddr` itself is obtained in a platform- and loader- specific manner.
        /// Typically, the loader library will export this command as a function symbol, so applications **can** link against the loader library, or load it dynamically and look up the symbol using platform-specific APIs.
        /// The table below defines the various use cases for `vkGetInstanceProcAddr` and expected return value (“fp” is “function pointer”) for each case.
        /// A valid returned function pointer (“fp”) **must** not be `NULL`.
        /// The returned function pointer is of type [PFN_vkVoidFunction](https://registry.khronos.org/vulkan/specs/latest/man/html/PFN_vkVoidFunction.html), and **must** be cast to the type of the command being queried before use.
        /// ### Table 1. `vkGetInstanceProcAddr` behavior
        /// `instance` | `pName` | return value
        /// ---------- | ------- | ------------
        /// \*1 | `NULL` | undefined
        /// invalid non-`NULL` instance | \*1 | undefined
        /// `NULL` | *global command* 2 | fp
        /// `NULL` | [vkGetInstanceProcAddr](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetInstanceProcAddr.html) | fp5
        /// instance | [vkGetInstanceProcAddr](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetInstanceProcAddr.html) | fp
        /// instance | core *dispatchable command* | fp3
        /// instance | enabled instance extension dispatchable command for `instance` | fp3
        /// instance | available device extension4 dispatchable command for `instance` | fp3
        /// any other case, not covered above|| `NULL`
        ///
        /// - Parameters:
        ///   - instance: is the instance that the function pointer will be compatible with, or `NULL` for commands not dependent on any instance.
        ///   - pName: is the name of the command to obtain.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: If `instance` is not `NULL`, `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `pName` **must** be a null-terminated UTF-8 string
        ///
        /// - SeeAlso: [vkGetInstanceProcAddr Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetInstanceProcAddr.html)
        @unsafe
        public let getInstanceProcAddr: PFN_vkGetInstanceProcAddr!

        // END_GENERATE_LOADER_TABLE

        /// Load the Vulkan function pointers using the getInstanceProcAddr function.
        internal init(getInstanceProcAddr: PFN_vkGetInstanceProcAddr) {
            let getProcAddr = unsafe getInstanceProcAddr
            let context: VkInstance? = nil

            // BEGIN_GENERATE_LOADER_TABLE_INIT
            traceLog("Loading vkCreateInstance command in LoaderTable")
            unsafe self.createInstance = unsafeBitCast(
                getProcAddr(context, "vkCreateInstance"),
                to: PFN_vkCreateInstance.self
            )
            if unsafe self.createInstance == nil {
                debugLog("Failed to load vkCreateInstance command in LoaderTable")
            }

            traceLog("Loading vkGetInstanceProcAddr command in LoaderTable")
            unsafe self.getInstanceProcAddr = unsafeBitCast(
                getProcAddr(context, "vkGetInstanceProcAddr"),
                to: PFN_vkGetInstanceProcAddr.self
            )
            if unsafe self.getInstanceProcAddr == nil {
                debugLog("Failed to load vkGetInstanceProcAddr command in LoaderTable")
            }

            traceLog("Loading vkEnumerateInstanceVersion command in LoaderTable")
            unsafe self.enumerateInstanceVersion = unsafeBitCast(
                getProcAddr(context, "vkEnumerateInstanceVersion"),
                to: PFN_vkEnumerateInstanceVersion.self
            )
            if unsafe self.enumerateInstanceVersion == nil {
                debugLog("Failed to load vkEnumerateInstanceVersion command in LoaderTable")
            }

            traceLog("Loading vkEnumerateInstanceLayerProperties command in LoaderTable")
            unsafe self.enumerateInstanceLayerProperties = unsafeBitCast(
                getProcAddr(context, "vkEnumerateInstanceLayerProperties"),
                to: PFN_vkEnumerateInstanceLayerProperties.self
            )
            if unsafe self.enumerateInstanceLayerProperties == nil {
                debugLog("Failed to load vkEnumerateInstanceLayerProperties command in LoaderTable")
            }

            traceLog("Loading vkEnumerateInstanceExtensionProperties command in LoaderTable")
            unsafe self.enumerateInstanceExtensionProperties = unsafeBitCast(
                getProcAddr(context, "vkEnumerateInstanceExtensionProperties"),
                to: PFN_vkEnumerateInstanceExtensionProperties.self
            )
            if unsafe self.enumerateInstanceExtensionProperties == nil {
                debugLog("Failed to load vkEnumerateInstanceExtensionProperties command in LoaderTable")
            }
            // END_GENERATE_LOADER_TABLE_INIT
        }
    }
}
