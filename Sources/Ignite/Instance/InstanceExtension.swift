/**
 * InstanceExtension.swift
 * Instance
 *
 * Created by Hunter Baker on 6/12/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

/// A Vulkan instance extension.
public struct InstanceExtension: Hashable {
    /// The name of the extension for use when creating an instance.
    public let name: String

    /// Initializes a new instance extension with the given name.
    /// - Parameter name: The name of the extension.
    @inlinable
    public init(name: String) {
        self.name = name
    }

    /// Hashes the instance extension based on its name.
    @inlinable
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }

    // BEGIN_GENERATE_INSTANCE_EXTENSIONS
    // Generated using header version: 317

    /// Equivalent to Vulkan's VK_KHR_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_surface.html)
    @inlinable
    public static var surface_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_surface")
    }

    /// Equivalent to Vulkan's VK_KHR_display.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_display.html)
    @inlinable
    public static var display_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_display")
    }

    /// Equivalent to Vulkan's VK_KHR_xlib_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_xlib_surface.html)
    #if !PlatformXlib
        @available(*, unavailable, message: "VK_KHR_xlib_surface is only available when the PlatformXlib trait is enabled")
    #endif
    @inlinable
    public static var xlibSurface_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_xlib_surface")
    }

    /// Equivalent to Vulkan's VK_KHR_xcb_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_xcb_surface.html)
    #if !PlatformXcb
        @available(*, unavailable, message: "VK_KHR_xcb_surface is only available when the PlatformXcb trait is enabled")
    #endif
    @inlinable
    public static var xcbSurface_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_xcb_surface")
    }

    /// Equivalent to Vulkan's VK_KHR_wayland_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_wayland_surface.html)
    #if !PlatformWayland
        @available(
            *, unavailable, message: "VK_KHR_wayland_surface is only available when the PlatformWayland trait is enabled"
        )
    #endif
    @inlinable
    public static var waylandSurface_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_wayland_surface")
    }

    /// Equivalent to Vulkan's VK_KHR_android_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_android_surface.html)
    #if !PlatformAndroid
        @available(
            *, unavailable, message: "VK_KHR_android_surface is only available when the PlatformAndroid trait is enabled"
        )
    #endif
    @inlinable
    public static var androidSurface_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_android_surface")
    }

    /// Equivalent to Vulkan's VK_KHR_win32_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_win32_surface.html)
    #if !PlatformWin32
        @available(*, unavailable, message: "VK_KHR_win32_surface is only available when the PlatformWin32 trait is enabled")
    #endif
    @inlinable
    public static var win32Surface_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_win32_surface")
    }

    /// Equivalent to Vulkan's VK_EXT_debug_report.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_debug_report.html)
    @available(*, deprecated, message: "VK_EXT_debug_report is deprecated and replaced by VK_EXT_debug_utils")
    @inlinable
    public static var debugReport_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_debug_report")
    }

    /// Equivalent to Vulkan's VK_GGP_stream_descriptor_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GGP_stream_descriptor_surface.html)
    #if !PlatformGgp
        @available(
            *, unavailable,
            message: "VK_GGP_stream_descriptor_surface is only available when the PlatformGgp trait is enabled"
        )
    #endif
    @inlinable
    public static var streamDescriptorSurface_GGP: InstanceExtension {
        InstanceExtension(name: "VK_GGP_stream_descriptor_surface")
    }

    /// Equivalent to Vulkan's VK_NV_external_memory_capabilities.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_external_memory_capabilities.html)
    @available(
        *, deprecated,
        message: "VK_NV_external_memory_capabilities is deprecated and replaced by VK_KHR_external_memory_capabilities"
    )
    @inlinable
    public static var externalMemoryCapabilities_NV: InstanceExtension {
        InstanceExtension(name: "VK_NV_external_memory_capabilities")
    }

    /// Equivalent to Vulkan's VK_KHR_get_physical_device_properties2.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_get_physical_device_properties2.html)
    @inlinable
    public static var getPhysicalDeviceProperties2_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_get_physical_device_properties2")
    }

    /// Equivalent to Vulkan's VK_EXT_validation_flags.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_validation_flags.html)
    @available(*, deprecated, message: "VK_EXT_validation_flags is deprecated and replaced by VK_EXT_layer_settings")
    @inlinable
    public static var validationFlags_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_validation_flags")
    }

    /// Equivalent to Vulkan's VK_NN_vi_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NN_vi_surface.html)
    #if !PlatformVi
        @available(*, unavailable, message: "VK_NN_vi_surface is only available when the PlatformVi trait is enabled")
    #endif
    @inlinable
    public static var viSurface_NN: InstanceExtension {
        InstanceExtension(name: "VK_NN_vi_surface")
    }

    /// Equivalent to Vulkan's VK_KHR_device_group_creation.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_device_group_creation.html)
    @inlinable
    public static var deviceGroupCreation_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_device_group_creation")
    }

    /// Equivalent to Vulkan's VK_KHR_external_memory_capabilities.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_memory_capabilities.html)
    @inlinable
    public static var externalMemoryCapabilities_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_external_memory_capabilities")
    }

    /// Equivalent to Vulkan's VK_KHR_external_semaphore_capabilities.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_semaphore_capabilities.html)
    @inlinable
    public static var externalSemaphoreCapabilities_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_external_semaphore_capabilities")
    }

    /// Equivalent to Vulkan's VK_EXT_direct_mode_display.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_direct_mode_display.html)
    @inlinable
    public static var directModeDisplay_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_direct_mode_display")
    }

    /// Equivalent to Vulkan's VK_EXT_acquire_xlib_display.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_acquire_xlib_display.html)
    #if !PlatformXlibXrandr
        @available(
            *, unavailable,
            message: "VK_EXT_acquire_xlib_display is only available when the PlatformXlibXrandr trait is enabled"
        )
    #endif
    @inlinable
    public static var acquireXlibDisplay_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_acquire_xlib_display")
    }

    /// Equivalent to Vulkan's VK_EXT_display_surface_counter.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_display_surface_counter.html)
    @inlinable
    public static var displaySurfaceCounter_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_display_surface_counter")
    }

    /// Equivalent to Vulkan's VK_EXT_swapchain_colorspace.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_swapchain_colorspace.html)
    @inlinable
    public static var swapchainColorspace_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_swapchain_colorspace")
    }

    /// Equivalent to Vulkan's VK_KHR_external_fence_capabilities.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_fence_capabilities.html)
    @inlinable
    public static var externalFenceCapabilities_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_external_fence_capabilities")
    }

    /// Equivalent to Vulkan's VK_KHR_get_surface_capabilities2.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_get_surface_capabilities2.html)
    @inlinable
    public static var getSurfaceCapabilities2_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_get_surface_capabilities2")
    }

    /// Equivalent to Vulkan's VK_KHR_get_display_properties2.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_get_display_properties2.html)
    @inlinable
    public static var getDisplayProperties2_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_get_display_properties2")
    }

    /// Equivalent to Vulkan's VK_MVK_ios_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_MVK_ios_surface.html)
    @available(*, deprecated, message: "VK_MVK_ios_surface is deprecated and replaced by VK_EXT_metal_surface")
    #if !PlatformIos
        @available(*, unavailable, message: "VK_MVK_ios_surface is only available when the PlatformIos trait is enabled")
    #endif
    @inlinable
    public static var iosSurface_MVK: InstanceExtension {
        InstanceExtension(name: "VK_MVK_ios_surface")
    }

    /// Equivalent to Vulkan's VK_MVK_macos_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_MVK_macos_surface.html)
    @available(*, deprecated, message: "VK_MVK_macos_surface is deprecated and replaced by VK_EXT_metal_surface")
    #if !PlatformMacos
        @available(*, unavailable, message: "VK_MVK_macos_surface is only available when the PlatformMacos trait is enabled")
    #endif
    @inlinable
    public static var macosSurface_MVK: InstanceExtension {
        InstanceExtension(name: "VK_MVK_macos_surface")
    }

    /// Equivalent to Vulkan's VK_EXT_debug_utils.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_debug_utils.html)
    @inlinable
    public static var debugUtils_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_debug_utils")
    }

    /// Equivalent to Vulkan's VK_FUCHSIA_imagepipe_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_FUCHSIA_imagepipe_surface.html)
    #if !PlatformFuchsia
        @available(
            *, unavailable,
            message: "VK_FUCHSIA_imagepipe_surface is only available when the PlatformFuchsia trait is enabled"
        )
    #endif
    @inlinable
    public static var imagepipeSurface_FUCHSIA: InstanceExtension {
        InstanceExtension(name: "VK_FUCHSIA_imagepipe_surface")
    }

    /// Equivalent to Vulkan's VK_EXT_metal_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_metal_surface.html)
    #if !PlatformMetal
        @available(*, unavailable, message: "VK_EXT_metal_surface is only available when the PlatformMetal trait is enabled")
    #endif
    @inlinable
    public static var metalSurface_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_metal_surface")
    }

    /// Equivalent to Vulkan's VK_KHR_surface_protected_capabilities.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_surface_protected_capabilities.html)
    @inlinable
    public static var surfaceProtectedCapabilities_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_surface_protected_capabilities")
    }

    /// Equivalent to Vulkan's VK_EXT_validation_features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_validation_features.html)
    @available(*, deprecated, message: "VK_EXT_validation_features is deprecated and replaced by VK_EXT_layer_settings")
    @inlinable
    public static var validationFeatures_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_validation_features")
    }

    /// Equivalent to Vulkan's VK_EXT_headless_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_headless_surface.html)
    @inlinable
    public static var headlessSurface_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_headless_surface")
    }

    /// Equivalent to Vulkan's VK_EXT_surface_maintenance1.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_surface_maintenance1.html)
    @inlinable
    public static var surfaceMaintenance1_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_surface_maintenance1")
    }

    /// Equivalent to Vulkan's VK_EXT_acquire_drm_display.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_acquire_drm_display.html)
    @inlinable
    public static var acquireDrmDisplay_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_acquire_drm_display")
    }

    /// Equivalent to Vulkan's VK_EXT_directfb_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_directfb_surface.html)
    #if !PlatformDirectfb
        @available(
            *, unavailable, message: "VK_EXT_directfb_surface is only available when the PlatformDirectfb trait is enabled"
        )
    #endif
    @inlinable
    public static var directfbSurface_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_directfb_surface")
    }

    /// Equivalent to Vulkan's VK_QNX_screen_surface.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QNX_screen_surface.html)
    #if !PlatformScreen
        @available(
            *, unavailable, message: "VK_QNX_screen_surface is only available when the PlatformScreen trait is enabled"
        )
    #endif
    @inlinable
    public static var screenSurface_QNX: InstanceExtension {
        InstanceExtension(name: "VK_QNX_screen_surface")
    }

    /// Equivalent to Vulkan's VK_KHR_portability_enumeration.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_portability_enumeration.html)
    @inlinable
    public static var portabilityEnumeration_KHR: InstanceExtension {
        InstanceExtension(name: "VK_KHR_portability_enumeration")
    }

    /// Equivalent to Vulkan's VK_GOOGLE_surfaceless_query.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_surfaceless_query.html)
    @inlinable
    public static var surfacelessQuery_GOOGLE: InstanceExtension {
        InstanceExtension(name: "VK_GOOGLE_surfaceless_query")
    }

    /// Equivalent to Vulkan's VK_LUNARG_direct_driver_loading.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_LUNARG_direct_driver_loading.html)
    @inlinable
    public static var directDriverLoading_LUNARG: InstanceExtension {
        InstanceExtension(name: "VK_LUNARG_direct_driver_loading")
    }

    /// Equivalent to Vulkan's VK_EXT_layer_settings.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_layer_settings.html)
    @inlinable
    public static var layerSettings_EXT: InstanceExtension {
        InstanceExtension(name: "VK_EXT_layer_settings")
    }

    /// Equivalent to Vulkan's VK_NV_display_stereo.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_display_stereo.html)
    @inlinable
    public static var displayStereo_NV: InstanceExtension {
        InstanceExtension(name: "VK_NV_display_stereo")
    }

    // END_GENERATE_INSTANCE_EXTENSIONS
}
