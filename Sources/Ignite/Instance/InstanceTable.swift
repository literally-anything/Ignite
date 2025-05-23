/**
 * InstanceTable.swift
 * Loader
 *
 * Created by Hunter Baker on 4/20/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

extension Instance {
    /// The table of Vulkan function pointers for functions at the instance scope.
    @unsafe
    public struct InstanceTable: Sendable {
        // BEGIN_GENERATE_INSTANCE_TABLE
        // Generated using header version: 315

        /// To acquire permission to directly a display in Vulkan from the Direct
        /// Rendering Manager (DRM) interface, call:
        ///
        /// All permissions necessary to control the display are granted to the Vulkan instance associated with the provided `physicalDevice` until the display is either released or the connector is unplugged.
        /// The provided `drmFd` **must** correspond to the one owned by the `physicalDevice`.
        /// If not, the error code `VK_ERROR_UNKNOWN` **must** be returned.
        /// The DRM FD must have DRM master permissions.
        /// If any error is encountered during the acquisition of the display, the call **must** return the error code `VK_ERROR_INITIALIZATION_FAILED`.
        /// The provided DRM fd should not be closed before the display is released, attempting to do it may result in undefined behavior.
        ///
        /// - Parameters:
        ///   - physicalDevice: The physical device the display is on.
        ///   - drmFd: DRM primary file descriptor.
        ///   - display: The display the caller wishes Vulkan to control.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_INITIALIZATION_FAILED`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `display` **must** be a valid [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle
        /// - Precondition: `display` **must** have been created, allocated, or retrieved from `physicalDevice`
        ///
        /// - SeeAlso: [vkAcquireDrmDisplayEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkAcquireDrmDisplayEXT.html)
        @unsafe
        public let acquireDrmDisplayEXT: PFN_vkAcquireDrmDisplayEXT!

        /// A command buffer debug label region can be opened by calling:
        ///
        ///
        /// - Parameters:
        ///   - commandBuffer: is the command buffer into which the command is recorded.
        ///   - pLabelInfo: is a pointer to a [VkDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsLabelEXT.html) structure specifying parameters of the label region to open.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `commandBuffer` **must** be a valid [VkCommandBuffer](https://registry.khronos.org/vulkan/specs/latest/man/html/VkCommandBuffer.html) handle
        /// - Precondition: `pLabelInfo` **must** be a valid pointer to a valid [VkDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsLabelEXT.html) structure
        /// - Precondition: `commandBuffer` **must** be in the [recording state](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdBeginDebugUtilsLabelEXT.html#commandbuffers-lifecycle)
        /// - Precondition: The `VkCommandPool` that `commandBuffer` was allocated from **must** support graphics, or compute operations
        /// - Precondition: This command **must** only be called outside of a video coding scope
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `commandBuffer` **must** be externally synchronized
        /// - Precondition: Host access to the `VkCommandPool` that `commandBuffer` was allocated from **must** be externally synchronized
        ///
        /// ### Command Properties
        /// ---
        /// [Command Buffer Levels](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdBeginDebugUtilsLabelEXT.html#VkCommandBufferLevel) | [Render Pass Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdBeginDebugUtilsLabelEXT.html#vkCmdBeginRenderPass) | [Video Coding Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdBeginDebugUtilsLabelEXT.html#vkCmdBeginVideoCodingKHR) | [Supported Queue Types](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdBeginDebugUtilsLabelEXT.html#VkQueueFlagBits) | [Command Type](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdBeginDebugUtilsLabelEXT.html#fundamentals-queueoperation-command-types)
        /// ----------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | -----------------------------------------------------------------------------------------------------------------------------------------------------
        /// Primary, Secondary | Both | Outside | Graphics, Compute | Action, State
        ///
        /// - SeeAlso: [vkCmdBeginDebugUtilsLabelEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdBeginDebugUtilsLabelEXT.html)
        @unsafe
        public let cmdBeginDebugUtilsLabelEXT: PFN_vkCmdBeginDebugUtilsLabelEXT!

        /// A command buffer label region can be closed by calling:
        ///
        /// An application **may** open a debug label region in one command buffer and close it in another, or otherwise split debug label regions across multiple command buffers or multiple queue submissions.
        /// When viewed from the linear series of submissions to a single queue, the calls to [vkCmdBeginDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdBeginDebugUtilsLabelEXT.html) and [vkCmdEndDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdEndDebugUtilsLabelEXT.html) **must** be matched and balanced.
        /// There **can** be problems reporting command buffer debug labels during the recording process because command buffers **may** be recorded out of sequence with the resulting execution order.
        /// Since the recording order **may** be different, a solitary command buffer **may** have an inconsistent view of the debug label regions by itself.
        /// Therefore, if an issue occurs during the recording of a command buffer, and the environment requires returning debug labels, the implementation **may** return only those labels it is aware of.
        /// This is true even if the implementation is aware of only the debug labels within the command buffer being actively recorded.
        ///
        /// - Parameters:
        ///   - commandBuffer: is the command buffer into which the command is recorded.
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: There **must** be an outstanding `vkCmdBeginDebugUtilsLabelEXT` command
        ///                 prior to the `vkCmdEndDebugUtilsLabelEXT` on the queue that
        ///                 `commandBuffer` is submitted to
        /// - Precondition: If `commandBuffer` is a secondary command buffer, there **must** be an
        ///                 outstanding `vkCmdBeginDebugUtilsLabelEXT` command recorded to
        ///                 `commandBuffer` that has not previously been ended by a call to
        ///                 `vkCmdEndDebugUtilsLabelEXT`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `commandBuffer` **must** be a valid [VkCommandBuffer](https://registry.khronos.org/vulkan/specs/latest/man/html/VkCommandBuffer.html) handle
        /// - Precondition: `commandBuffer` **must** be in the [recording state](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdEndDebugUtilsLabelEXT.html#commandbuffers-lifecycle)
        /// - Precondition: The `VkCommandPool` that `commandBuffer` was allocated from **must** support graphics, or compute operations
        /// - Precondition: This command **must** only be called outside of a video coding scope
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `commandBuffer` **must** be externally synchronized
        /// - Precondition: Host access to the `VkCommandPool` that `commandBuffer` was allocated from **must** be externally synchronized
        ///
        /// ### Command Properties
        /// ---
        /// [Command Buffer Levels](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdEndDebugUtilsLabelEXT.html#VkCommandBufferLevel) | [Render Pass Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdEndDebugUtilsLabelEXT.html#vkCmdBeginRenderPass) | [Video Coding Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdEndDebugUtilsLabelEXT.html#vkCmdBeginVideoCodingKHR) | [Supported Queue Types](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdEndDebugUtilsLabelEXT.html#VkQueueFlagBits) | [Command Type](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdEndDebugUtilsLabelEXT.html#fundamentals-queueoperation-command-types)
        /// --------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------
        /// Primary, Secondary | Both | Outside | Graphics, Compute | Action, State
        ///
        /// - SeeAlso: [vkCmdEndDebugUtilsLabelEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdEndDebugUtilsLabelEXT.html)
        @unsafe
        public let cmdEndDebugUtilsLabelEXT: PFN_vkCmdEndDebugUtilsLabelEXT!

        /// A single debug label can be inserted into a command buffer by calling:
        ///
        ///
        /// - Parameters:
        ///   - commandBuffer: is the command buffer into which the command is recorded.
        ///   - pLabelInfo: is a pointer to a [VkDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsLabelEXT.html) structure specifying parameters of the label to insert.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `commandBuffer` **must** be a valid [VkCommandBuffer](https://registry.khronos.org/vulkan/specs/latest/man/html/VkCommandBuffer.html) handle
        /// - Precondition: `pLabelInfo` **must** be a valid pointer to a valid [VkDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsLabelEXT.html) structure
        /// - Precondition: `commandBuffer` **must** be in the [recording state](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdInsertDebugUtilsLabelEXT.html#commandbuffers-lifecycle)
        /// - Precondition: The `VkCommandPool` that `commandBuffer` was allocated from **must** support graphics, or compute operations
        /// - Precondition: This command **must** only be called outside of a video coding scope
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `commandBuffer` **must** be externally synchronized
        /// - Precondition: Host access to the `VkCommandPool` that `commandBuffer` was allocated from **must** be externally synchronized
        ///
        /// ### Command Properties
        /// ---
        /// [Command Buffer Levels](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdInsertDebugUtilsLabelEXT.html#VkCommandBufferLevel) | [Render Pass Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdInsertDebugUtilsLabelEXT.html#vkCmdBeginRenderPass) | [Video Coding Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdInsertDebugUtilsLabelEXT.html#vkCmdBeginVideoCodingKHR) | [Supported Queue Types](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdInsertDebugUtilsLabelEXT.html#VkQueueFlagBits) | [Command Type](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdInsertDebugUtilsLabelEXT.html#fundamentals-queueoperation-command-types)
        /// ------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------
        /// Primary, Secondary | Both | Outside | Graphics, Compute | Action
        ///
        /// - SeeAlso: [vkCmdInsertDebugUtilsLabelEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCmdInsertDebugUtilsLabelEXT.html)
        @unsafe
        public let cmdInsertDebugUtilsLabelEXT: PFN_vkCmdInsertDebugUtilsLabelEXT!

        /// Debug report callbacks give more detailed feedback on the application’s use
        /// of Vulkan when events of interest occur.
        ///
        ///
        /// - Parameters:
        ///   - instance: is the instance the callback will be logged on.
        ///   - pCreateInfo: is a pointer to a [VkDebugReportCallbackCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportCallbackCreateInfoEXT.html) structure defining the conditions under which this callback will be called.
        ///   - pAllocator: controls host memory allocation as described in the [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) chapter.
        ///   - pCallback: is a pointer to a [VkDebugReportCallbackEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportCallbackEXT.html) handle in which the created object is returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkDebugReportCallbackCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportCallbackCreateInfoEXT.html) structure
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: `pCallback` **must** be a valid pointer to a [VkDebugReportCallbackEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportCallbackEXT.html) handle
        ///
        /// - SeeAlso: [vkCreateDebugReportCallbackEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateDebugReportCallbackEXT.html)
        @unsafe
        public let createDebugReportCallbackEXT: PFN_vkCreateDebugReportCallbackEXT!

        /// A debug messenger triggers a debug callback with a debug message when an
        /// event of interest occurs.
        /// To create a debug messenger which will trigger a debug callback, call:
        ///
        /// The application **must** ensure that [vkCreateDebugUtilsMessengerEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateDebugUtilsMessengerEXT.html) is not executed in parallel with any Vulkan command that is also called with `instance` or child of `instance` as the dispatchable argument.
        ///
        /// - Parameters:
        ///   - instance: is the instance the messenger will be used with.
        ///   - pCreateInfo: is a pointer to a [VkDebugUtilsMessengerCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessengerCreateInfoEXT.html) structure containing the callback pointer, as well as defining conditions under which this messenger will trigger the callback.
        ///   - pAllocator: controls host memory allocation as described in the [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) chapter.
        ///   - pMessenger: is a pointer to a [VkDebugUtilsMessengerEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessengerEXT.html) handle in which the created object is returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkDebugUtilsMessengerCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessengerCreateInfoEXT.html) structure
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: `pMessenger` **must** be a valid pointer to a [VkDebugUtilsMessengerEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessengerEXT.html) handle
        ///
        /// - SeeAlso: [vkCreateDebugUtilsMessengerEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateDebugUtilsMessengerEXT.html)
        @unsafe
        public let createDebugUtilsMessengerEXT: PFN_vkCreateDebugUtilsMessengerEXT!

        /// A logical device is created as a *connection* to a physical device.
        /// To create a logical device, call:
        ///
        /// `vkCreateDevice` verifies that extensions and features requested in the `ppEnabledExtensionNames` and `pEnabledFeatures` members of `pCreateInfo`, respectively, are supported by the implementation.
        /// If any requested extension is not supported, `vkCreateDevice` **must** return `VK_ERROR_EXTENSION_NOT_PRESENT`.
        /// If any requested feature is not supported, `vkCreateDevice` **must** return `VK_ERROR_FEATURE_NOT_PRESENT`.
        /// Support for extensions **can** be checked before creating a device by querying [vkEnumerateDeviceExtensionProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateDeviceExtensionProperties.html).
        /// Support for features **can** similarly be checked by querying [vkGetPhysicalDeviceFeatures](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceFeatures.html).
        /// After verifying and enabling the extensions the `VkDevice` object is created and returned to the application.
        /// Multiple logical devices **can** be created from the same physical device.
        /// Logical device creation **may** fail due to lack of device-specific resources (in addition to other errors).
        /// If that occurs, `vkCreateDevice` will return `VK_ERROR_TOO_MANY_OBJECTS`.
        ///
        /// - Parameters:
        ///   - physicalDevice: **must** be one of the device handles returned from a call to `vkEnumeratePhysicalDevices` (see [Physical Device Enumeration](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#devsandqueues-physical-device-enumeration) ).
        ///   - pCreateInfo: is a pointer to a [VkDeviceCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDeviceCreateInfo.html) structure containing information about how to create the device.
        ///   - pAllocator: controls host memory allocation as described in the [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) chapter.
        ///   - pDevice: is a pointer to a handle in which the created [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html) is returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_INITIALIZATION_FAILED`
        ///     - `VK_ERROR_EXTENSION_NOT_PRESENT`
        ///     - `VK_ERROR_FEATURE_NOT_PRESENT`
        ///     - `VK_ERROR_TOO_MANY_OBJECTS`
        ///     - `VK_ERROR_DEVICE_LOST`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: All [required device
        ///                 extensions](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#extendingvulkan-extensions-extensiondependencies) for each extension in the
        ///                 [VkDeviceCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDeviceCreateInfo.html)::`ppEnabledExtensionNames` list **must** also
        ///                 be present in that list
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkDeviceCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDeviceCreateInfo.html) structure
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: `pDevice` **must** be a valid pointer to a [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html) handle
        ///
        /// - SeeAlso: [vkCreateDevice Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateDevice.html)
        @unsafe
        public let createDevice: PFN_vkCreateDevice!

        /// Additional modes **may** also be created by calling:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device associated with `display`.
        ///   - display: is the display to create an additional mode for.
        ///   - pCreateInfo: is a pointer to a [VkDisplayModeCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayModeCreateInfoKHR.html) structure describing the new mode to create.
        ///   - pAllocator: is the allocator used for host memory allocated for the display mode object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
        ///   - pMode: is a pointer to a [VkDisplayModeKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayModeKHR.html) handle in which the mode created is returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_INITIALIZATION_FAILED`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `display` **must** be a valid [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle
        /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkDisplayModeCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayModeCreateInfoKHR.html) structure
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: `pMode` **must** be a valid pointer to a [VkDisplayModeKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayModeKHR.html) handle
        /// - Precondition: `display` **must** have been created, allocated, or retrieved from `physicalDevice`
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `display` **must** be externally synchronized
        ///
        /// - SeeAlso: [vkCreateDisplayModeKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateDisplayModeKHR.html)
        @unsafe
        public let createDisplayModeKHR: PFN_vkCreateDisplayModeKHR!

        /// A complete display configuration includes a mode, one or more display planes
        /// and any parameters describing their behavior, and parameters describing some
        /// aspects of the images associated with those planes.
        /// Display surfaces describe the configuration of a single plane within a
        /// complete display configuration.
        /// To create a `VkSurfaceKHR` object for a display plane, call:
        ///
        ///
        /// - Parameters:
        ///   - instance: is the instance corresponding to the physical device the targeted display is on.
        ///   - pCreateInfo: is a pointer to a [VkDisplaySurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplaySurfaceCreateInfoKHR.html) structure specifying which mode, plane, and other parameters to use, as described below.
        ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
        ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface is returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkDisplaySurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplaySurfaceCreateInfoKHR.html) structure
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        ///
        /// - SeeAlso: [vkCreateDisplayPlaneSurfaceKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateDisplayPlaneSurfaceKHR.html)
        @unsafe
        public let createDisplayPlaneSurfaceKHR: PFN_vkCreateDisplayPlaneSurfaceKHR!

        /// To create a headless `VkSurfaceKHR` object, call:
        ///
        ///
        /// - Parameters:
        ///   - instance: is the instance to associate the surface with.
        ///   - pCreateInfo: is a pointer to a [VkHeadlessSurfaceCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkHeadlessSurfaceCreateInfoEXT.html) structure containing parameters affecting the creation of the surface object.
        ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
        ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkHeadlessSurfaceCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkHeadlessSurfaceCreateInfoEXT.html) structure
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        ///
        /// - SeeAlso: [vkCreateHeadlessSurfaceEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateHeadlessSurfaceEXT.html)
        @unsafe
        public let createHeadlessSurfaceEXT: PFN_vkCreateHeadlessSurfaceEXT!

        /// To inject its own messages into the debug stream, call:
        ///
        /// The call will propagate through the layers and generate callback(s) as indicated by the message’s flags.
        /// The parameters are passed on to the callback in addition to the `pUserData` value that was defined at the time the callback was registered.
        ///
        /// - Parameters:
        ///   - instance: is the debug stream’s [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html).
        ///   - flags: specifies the [VkDebugReportFlagBitsEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportFlagBitsEXT.html) classification of this event/message.
        ///   - objectType: is a [VkDebugReportObjectTypeEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportObjectTypeEXT.html) specifying the type of object being used or created at the time the event was triggered.
        ///   - object: is the object where the issue was detected. `object` **can** be [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html) if there is no object associated with the event.
        ///   - location: is an application-defined value.
        ///   - messageCode: is an application-defined value.
        ///   - pLayerPrefix: is the abbreviation of the component making this event/message.
        ///   - pMessage: is a null-terminated UTF-8 string detailing the trigger conditions.
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: `object` **must** be a Vulkan object or [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html)
        /// - Precondition: If `objectType` is not `VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT`
        ///                 and `object` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html), `object` **must** be a
        ///                 Vulkan object of the corresponding type associated with `objectType`
        ///                 as defined in [https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#debug-report-object-types](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#debug-report-object-types)
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `flags` **must** be a valid combination of [VkDebugReportFlagBitsEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportFlagBitsEXT.html) values
        /// - Precondition: `flags` **must** not be `0`
        /// - Precondition: `objectType` **must** be a valid [VkDebugReportObjectTypeEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportObjectTypeEXT.html) value
        /// - Precondition: `pLayerPrefix` **must** be a null-terminated UTF-8 string
        /// - Precondition: `pMessage` **must** be a null-terminated UTF-8 string
        ///
        /// - SeeAlso: [vkDebugReportMessageEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkDebugReportMessageEXT.html)
        @unsafe
        public let debugReportMessageEXT: PFN_vkDebugReportMessageEXT!

        /// To destroy a `VkDebugReportCallbackEXT` object, call:
        ///
        ///
        /// - Parameters:
        ///   - instance: is the instance where the callback was created.
        ///   - callback: is the [VkDebugReportCallbackEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportCallbackEXT.html) object to destroy. `callback` is an externally synchronized object and **must** not be used on more than one thread at a time. This means that `vkDestroyDebugReportCallbackEXT` **must** not be called when a callback is active.
        ///   - pAllocator: controls host memory allocation as described in the [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) chapter.
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: If `VkAllocationCallbacks` were provided when `callback` was
        ///                 created, a compatible set of callbacks **must** be provided here
        /// - Precondition: If no `VkAllocationCallbacks` were provided when `callback` was
        ///                 created, `pAllocator` **must** be `NULL`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: If `callback` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html), `callback` **must** be a valid [VkDebugReportCallbackEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugReportCallbackEXT.html) handle
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: If `callback` is a valid handle, it **must** have been created, allocated, or retrieved from `instance`
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `callback` **must** be externally synchronized
        ///
        /// - SeeAlso: [vkDestroyDebugReportCallbackEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkDestroyDebugReportCallbackEXT.html)
        @unsafe
        public let destroyDebugReportCallbackEXT: PFN_vkDestroyDebugReportCallbackEXT!

        /// To destroy a `VkDebugUtilsMessengerEXT` object, call:
        ///
        /// The application **must** ensure that [vkDestroyDebugUtilsMessengerEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkDestroyDebugUtilsMessengerEXT.html) is not executed in parallel with any Vulkan command that is also called with `instance` or child of `instance` as the dispatchable argument.
        ///
        /// - Parameters:
        ///   - instance: is the instance where the callback was created.
        ///   - messenger: is the [VkDebugUtilsMessengerEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessengerEXT.html) object to destroy. `messenger` is an externally synchronized object and **must** not be used on more than one thread at a time. This means that `vkDestroyDebugUtilsMessengerEXT` **must** not be called when a callback is active.
        ///   - pAllocator: controls host memory allocation as described in the [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) chapter.
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: If `VkAllocationCallbacks` were provided when `messenger` was
        ///                 created, a compatible set of callbacks **must** be provided here
        /// - Precondition: If no `VkAllocationCallbacks` were provided when `messenger` was
        ///                 created, `pAllocator` **must** be `NULL`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: If `messenger` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html), `messenger` **must** be a valid [VkDebugUtilsMessengerEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessengerEXT.html) handle
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: If `messenger` is a valid handle, it **must** have been created, allocated, or retrieved from `instance`
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `messenger` **must** be externally synchronized
        ///
        /// - SeeAlso: [vkDestroyDebugUtilsMessengerEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkDestroyDebugUtilsMessengerEXT.html)
        @unsafe
        public let destroyDebugUtilsMessengerEXT: PFN_vkDestroyDebugUtilsMessengerEXT!

        /// To destroy an instance, call:
        ///
        /// Prior to destroying an instance, an application is responsible for destroying/freeing any Vulkan objects with explicit `vkDestroy\*` or `vkFree\*` commands that were created using that instance, or any [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) object retrieved from it, as the first parameter of the corresponding `vkCreate\*` or `vkAllocate\*` command.
        ///
        /// - Parameters:
        ///   - instance: is the handle of the instance to destroy.
        ///   - pAllocator: controls host memory allocation as described in the [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) chapter.
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: All child objects that were created with `instance` or with a
        ///                 [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) retrieved from it, and that **can** be destroyed or
        ///                 freed, **must** have been destroyed or freed prior to destroying
        ///                 `instance`
        /// - Precondition: If `VkAllocationCallbacks` were provided when `instance` was
        ///                 created, a compatible set of callbacks **must** be provided here
        /// - Precondition: If no `VkAllocationCallbacks` were provided when `instance` was
        ///                 created, `pAllocator` **must** be `NULL`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: If `instance` is not `NULL`, `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `instance` **must** be externally synchronized
        /// - Precondition: Host access to all `VkPhysicalDevice` objects enumerated from `instance` **must** be externally synchronized
        ///
        /// - SeeAlso: [vkDestroyInstance Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkDestroyInstance.html)
        @unsafe
        public let destroyInstance: PFN_vkDestroyInstance!

        /// To destroy a `VkSurfaceKHR` object, call:
        ///
        /// Destroying a `VkSurfaceKHR` merely severs the connection between Vulkan and the native surface, and does not imply destroying the native surface, closing a window, or similar behavior.
        ///
        /// - Parameters:
        ///   - instance: is the instance used to create the surface.
        ///   - surface: is the surface to destroy.
        ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: All `VkSwapchainKHR` objects created for `surface` **must** have
        ///                 been destroyed prior to destroying `surface`
        /// - Precondition: If `VkAllocationCallbacks` were provided when `surface` was
        ///                 created, a compatible set of callbacks **must** be provided here
        /// - Precondition: If no `VkAllocationCallbacks` were provided when `surface` was
        ///                 created, `pAllocator` **must** be `NULL`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: If `surface` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html), `surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
        /// - Precondition: If `surface` is a valid handle, it **must** have been created, allocated, or retrieved from `instance`
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `surface` **must** be externally synchronized
        ///
        /// - SeeAlso: [vkDestroySurfaceKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkDestroySurfaceKHR.html)
        @unsafe
        public let destroySurfaceKHR: PFN_vkDestroySurfaceKHR!

        /// To query the extensions available to a given physical device, call:
        ///
        /// When `pLayerName` parameter is `NULL`, only extensions provided by the Vulkan implementation or by implicitly enabled layers are returned.
        /// When `pLayerName` is the name of a layer, the device extensions provided by that layer are returned.
        /// Implementations **must** not advertise any pair of extensions that cannot be enabled together due to behavioral differences, or any extension that cannot be enabled against the advertised version.
        /// If the `[VK_KHR_ray_tracing_pipeline](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_ray_tracing_pipeline.html) ` extension is advertised as supported by this query, the `[VK_KHR_pipeline_library](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_pipeline_library.html) ` extension **must** also be supported.
        /// Implementations claiming support for the [Roadmap 2022](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#roadmap-2022) profile **must** advertise the `[VK_KHR_global_priority](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_global_priority.html) ` extension in `pProperties`.
        /// Implementations claiming support for the [Roadmap 2024](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#roadmap-2024) profile **must** advertise the following extensions in `pProperties`:
        /// - [VK_KHR_dynamic_rendering_local_read](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_dynamic_rendering_local_read.html)
        /// - [VK_KHR_load_store_op_none](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_load_store_op_none.html)
        /// - [VK_KHR_shader_quad_control](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_quad_control.html)
        /// - [VK_KHR_shader_maximal_reconvergence](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_maximal_reconvergence.html)
        /// - [VK_KHR_shader_subgroup_uniform_control_flow](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_subgroup_uniform_control_flow.html)
        /// - [VK_KHR_shader_subgroup_rotate](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_subgroup_rotate.html)
        /// - [VK_KHR_shader_float_controls2](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_float_controls2.html)
        /// - [VK_KHR_shader_expect_assume](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_expect_assume.html)
        /// - [VK_KHR_line_rasterization](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_line_rasterization.html)
        /// - [VK_KHR_vertex_attribute_divisor](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_vertex_attribute_divisor.html)
        /// - [VK_KHR_index_type_uint8](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_index_type_uint8.html)
        /// - [VK_KHR_map_memory2](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_map_memory2.html)
        /// - [VK_KHR_maintenance5](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance5.html)
        /// - [VK_KHR_push_descriptor](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_push_descriptor.html)
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device that will be queried.
        ///   - pLayerName: is either `NULL` or a pointer to a null-terminated UTF-8 string naming the layer to retrieve extensions from.
        ///   - pPropertyCount: is a pointer to an integer related to the number of extension properties available or queried, and is treated in the same fashion as the [vkEnumerateInstanceExtensionProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateInstanceExtensionProperties.html)::`pPropertyCount` parameter.
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
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: If `pLayerName` is not `NULL`, `pLayerName` **must** be a null-terminated UTF-8 string
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkExtensionProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExtensionProperties.html) structures
        ///
        /// - SeeAlso: [vkEnumerateDeviceExtensionProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateDeviceExtensionProperties.html)
        @unsafe
        public let enumerateDeviceExtensionProperties: PFN_vkEnumerateDeviceExtensionProperties!

        /// To enumerate device layers, call:
        ///
        /// If `pProperties` is `NULL`, then the number of layer properties available is returned in `pPropertyCount`.
        /// Otherwise, `pPropertyCount` **must** point to a variable set by the application to the number of elements in the `pProperties` array, and on return the variable is overwritten with the number of structures actually written to `pProperties`.
        /// If `pPropertyCount` is less than the number of layer properties available, at most `pPropertyCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available properties were returned.
        /// The list of layers enumerated by `vkEnumerateDeviceLayerProperties` **must** be exactly the sequence of layers enabled for the instance.
        /// The members of `VkLayerProperties` for each enumerated layer **must** be the same as the properties when the layer was enumerated by `vkEnumerateInstanceLayerProperties`.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device that will be queried.
        ///   - pPropertyCount: is a pointer to an integer related to the number of layer properties available or queried.
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
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkLayerProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkLayerProperties.html) structures
        ///
        /// - SeeAlso: [vkEnumerateDeviceLayerProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumerateDeviceLayerProperties.html)
        @unsafe
        public let enumerateDeviceLayerProperties: PFN_vkEnumerateDeviceLayerProperties!

        /// To retrieve a list of the device groups present in the system, call:
        ///
        /// If `pPhysicalDeviceGroupProperties` is `NULL`, then the number of device groups available is returned in `pPhysicalDeviceGroupCount`.
        /// Otherwise, `pPhysicalDeviceGroupCount` **must** point to a variable set by the application to the number of elements in the `pPhysicalDeviceGroupProperties` array, and on return the variable is overwritten with the number of structures actually written to `pPhysicalDeviceGroupProperties`.
        /// If `pPhysicalDeviceGroupCount` is less than the number of device groups available, at most `pPhysicalDeviceGroupCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available device groups were returned.
        /// Every physical device **must** be in exactly one device group.
        ///
        /// - Parameters:
        ///   - instance: is a handle to a Vulkan instance previously created with [vkCreateInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateInstance.html).
        ///   - pPhysicalDeviceGroupCount: is a pointer to an integer related to the number of device groups available or queried, as described below.
        ///   - pPhysicalDeviceGroupProperties: is either `NULL` or a pointer to an array of [VkPhysicalDeviceGroupProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGroupProperties.html) structures.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///     - `VK_INCOMPLETE`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_INITIALIZATION_FAILED`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `pPhysicalDeviceGroupCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPhysicalDeviceGroupCount` is not `0`, and `pPhysicalDeviceGroupProperties` is not `NULL`, `pPhysicalDeviceGroupProperties` **must** be a valid pointer to an array of `pPhysicalDeviceGroupCount` [VkPhysicalDeviceGroupProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGroupProperties.html) structures
        ///
        /// - SeeAlso: [vkEnumeratePhysicalDeviceGroups Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumeratePhysicalDeviceGroups.html)
        @unsafe
        public let enumeratePhysicalDeviceGroups: PFN_vkEnumeratePhysicalDeviceGroups!

        /// To retrieve a list of physical device objects representing the physical
        /// devices installed in the system, call:
        ///
        /// If `pPhysicalDevices` is `NULL`, then the number of physical devices available is returned in `pPhysicalDeviceCount`.
        /// Otherwise, `pPhysicalDeviceCount` **must** point to a variable set by the application to the number of elements in the `pPhysicalDevices` array, and on return the variable is overwritten with the number of handles actually written to `pPhysicalDevices`.
        /// If `pPhysicalDeviceCount` is less than the number of physical devices available, at most `pPhysicalDeviceCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available physical devices were returned.
        ///
        /// - Parameters:
        ///   - instance: is a handle to a Vulkan instance previously created with [vkCreateInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateInstance.html).
        ///   - pPhysicalDeviceCount: is a pointer to an integer related to the number of physical devices available or queried, as described below.
        ///   - pPhysicalDevices: is either `NULL` or a pointer to an array of `VkPhysicalDevice` handles.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///     - `VK_INCOMPLETE`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_INITIALIZATION_FAILED`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `pPhysicalDeviceCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPhysicalDeviceCount` is not `0`, and `pPhysicalDevices` is not `NULL`, `pPhysicalDevices` **must** be a valid pointer to an array of `pPhysicalDeviceCount` [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handles
        ///
        /// - SeeAlso: [vkEnumeratePhysicalDevices Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumeratePhysicalDevices.html)
        @unsafe
        public let enumeratePhysicalDevices: PFN_vkEnumeratePhysicalDevices!

        /// To query the properties of a device’s built-in display modes, call:
        ///
        /// `vkGetDisplayModeProperties2KHR` behaves similarly to [vkGetDisplayModePropertiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetDisplayModePropertiesKHR.html), with the ability to return extended information via chained output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device associated with `display`.
        ///   - display: is the display to query.
        ///   - pPropertyCount: is a pointer to an integer related to the number of display modes available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of `VkDisplayModeProperties2KHR` structures.
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
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `display` **must** be a valid [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkDisplayModeProperties2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayModeProperties2KHR.html) structures
        /// - Precondition: `display` **must** have been created, allocated, or retrieved from `physicalDevice`
        ///
        /// - SeeAlso: [vkGetDisplayModeProperties2KHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetDisplayModeProperties2KHR.html)
        @unsafe
        public let getDisplayModeProperties2KHR: PFN_vkGetDisplayModeProperties2KHR!

        /// Each display has one or more supported modes associated with it by default.
        /// These built-in modes are queried by calling:
        ///
        /// If `pProperties` is `NULL`, then the number of display modes available on the specified `display` for `physicalDevice` is returned in `pPropertyCount`.
        /// Otherwise, `pPropertyCount` **must** point to a variable set by the application to the number of elements in the `pProperties` array, and on return the variable is overwritten with the number of structures actually written to `pProperties`.
        /// If the value of `pPropertyCount` is less than the number of display modes for `physicalDevice`, at most `pPropertyCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available display modes were returned.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device associated with `display`.
        ///   - display: is the display to query.
        ///   - pPropertyCount: is a pointer to an integer related to the number of display modes available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of `VkDisplayModePropertiesKHR` structures.
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
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `display` **must** be a valid [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkDisplayModePropertiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayModePropertiesKHR.html) structures
        /// - Precondition: `display` **must** have been created, allocated, or retrieved from `physicalDevice`
        ///
        /// - SeeAlso: [vkGetDisplayModePropertiesKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetDisplayModePropertiesKHR.html)
        @unsafe
        public let getDisplayModePropertiesKHR: PFN_vkGetDisplayModePropertiesKHR!

        /// To query the capabilities of a given mode and plane combination, call:
        ///
        /// `vkGetDisplayPlaneCapabilities2KHR` behaves similarly to [vkGetDisplayPlaneCapabilitiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetDisplayPlaneCapabilitiesKHR.html), with the ability to specify extended inputs via chained input structures, and to return extended information via chained output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device associated with `pDisplayPlaneInfo`.
        ///   - pDisplayPlaneInfo: is a pointer to a [VkDisplayPlaneInfo2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPlaneInfo2KHR.html) structure describing the plane and mode.
        ///   - pCapabilities: is a pointer to a [VkDisplayPlaneCapabilities2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPlaneCapabilities2KHR.html) structure in which the capabilities are returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pDisplayPlaneInfo` **must** be a valid pointer to a valid [VkDisplayPlaneInfo2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPlaneInfo2KHR.html) structure
        /// - Precondition: `pCapabilities` **must** be a valid pointer to a [VkDisplayPlaneCapabilities2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPlaneCapabilities2KHR.html) structure
        ///
        /// - SeeAlso: [vkGetDisplayPlaneCapabilities2KHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetDisplayPlaneCapabilities2KHR.html)
        @unsafe
        public let getDisplayPlaneCapabilities2KHR: PFN_vkGetDisplayPlaneCapabilities2KHR!

        /// Applications that wish to present directly to a display **must** select which
        /// layer, or “plane” of the display they wish to target, and a mode to use
        /// with the display.
        /// Each display supports at least one plane.
        /// The capabilities of a given mode and plane combination are determined by
        /// calling:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device associated with the display specified by `mode`
        ///   - mode: is the display mode the application intends to program when using the specified plane. Note this parameter also implicitly specifies a display.
        ///   - planeIndex: is the plane which the application intends to use with the display, and is less than the number of display planes supported by the device.
        ///   - pCapabilities: is a pointer to a [VkDisplayPlaneCapabilitiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPlaneCapabilitiesKHR.html) structure in which the capabilities are returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `mode` **must** be a valid [VkDisplayModeKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayModeKHR.html) handle
        /// - Precondition: `pCapabilities` **must** be a valid pointer to a [VkDisplayPlaneCapabilitiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPlaneCapabilitiesKHR.html) structure
        /// - Precondition: `mode` **must** have been created, allocated, or retrieved from `physicalDevice`
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `mode` **must** be externally synchronized
        ///
        /// - SeeAlso: [vkGetDisplayPlaneCapabilitiesKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetDisplayPlaneCapabilitiesKHR.html)
        @unsafe
        public let getDisplayPlaneCapabilitiesKHR: PFN_vkGetDisplayPlaneCapabilitiesKHR!

        /// To determine which displays a plane is usable with, call
        ///
        /// If `pDisplays` is `NULL`, then the number of displays usable with the specified `planeIndex` for `physicalDevice` is returned in `pDisplayCount`.
        /// Otherwise, `pDisplayCount` **must** point to a variable set by the application to the number of elements in the `pDisplays` array, and on return the variable is overwritten with the number of handles actually written to `pDisplays`.
        /// If the value of `pDisplayCount` is less than the number of usable display-plane pairs for `physicalDevice`, at most `pDisplayCount` handles will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available pairs were returned.
        ///
        /// - Parameters:
        ///   - physicalDevice: is a physical device.
        ///   - planeIndex: is the plane which the application wishes to use, and **must** be in the range [0, physical device plane count - 1].
        ///   - pDisplayCount: is a pointer to an integer related to the number of displays available or queried, as described below.
        ///   - pDisplays: is either `NULL` or a pointer to an array of `VkDisplayKHR` handles.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///     - `VK_INCOMPLETE`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: `planeIndex` **must** be less than the number of display planes
        ///                 supported by the device as determined by calling
        ///                 `vkGetPhysicalDeviceDisplayPlanePropertiesKHR`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pDisplayCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pDisplayCount` is not `0`, and `pDisplays` is not `NULL`, `pDisplays` **must** be a valid pointer to an array of `pDisplayCount` [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handles
        ///
        /// - SeeAlso: [vkGetDisplayPlaneSupportedDisplaysKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetDisplayPlaneSupportedDisplaysKHR.html)
        @unsafe
        public let getDisplayPlaneSupportedDisplaysKHR: PFN_vkGetDisplayPlaneSupportedDisplaysKHR!

        /// Before acquiring a display from the DRM interface, the caller may want to
        /// select a specific `VkDisplayKHR` handle by identifying it using a
        /// `connectorId`.
        /// To do so, call:
        ///
        /// If there is no [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) corresponding to the `connectorId` on the `physicalDevice`, the returning `display` **must** be [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html).
        /// The provided `drmFd` **must** correspond to the one owned by the `physicalDevice`.
        /// If not, the error code `VK_ERROR_UNKNOWN` **must** be returned.
        /// Master permissions are not required, because the file descriptor is just used for information gathering purposes.
        /// The given `connectorId` **must** be a resource owned by the provided `drmFd`.
        /// If not, the error code `VK_ERROR_UNKNOWN` **must** be returned.
        /// If any error is encountered during the identification of the display, the call **must** return the error code `VK_ERROR_INITIALIZATION_FAILED`.
        ///
        /// - Parameters:
        ///   - physicalDevice: The physical device to query the display from.
        ///   - drmFd: DRM primary file descriptor.
        ///   - connectorId: Identifier of the specified DRM connector.
        ///   - display: The corresponding [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle will be returned here.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_INITIALIZATION_FAILED`
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `display` **must** be a valid pointer to a [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle
        ///
        /// - SeeAlso: [vkGetDrmDisplayEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetDrmDisplayEXT.html)
        @unsafe
        public let getDrmDisplayEXT: PFN_vkGetDrmDisplayEXT!

        /// To query the properties of a device’s display planes, call:
        ///
        /// `vkGetPhysicalDeviceDisplayPlaneProperties2KHR` behaves similarly to [vkGetPhysicalDeviceDisplayPlanePropertiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceDisplayPlanePropertiesKHR.html), with the ability to return extended information via chained output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is a physical device.
        ///   - pPropertyCount: is a pointer to an integer related to the number of display planes available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of `VkDisplayPlaneProperties2KHR` structures.
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
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkDisplayPlaneProperties2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPlaneProperties2KHR.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceDisplayPlaneProperties2KHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceDisplayPlaneProperties2KHR.html)
        @unsafe
        public let getPhysicalDeviceDisplayPlaneProperties2KHR: PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR!

        /// Images are presented to individual planes on a display.
        /// Devices **must** support at least one plane on each display.
        /// Planes **can** be stacked and blended to composite multiple images on one
        /// display.
        /// Devices **may** support only a fixed stacking order and fixed mapping between
        /// planes and displays, or they **may** allow arbitrary application-specified
        /// stacking orders and mappings between planes and displays.
        /// To query the properties of device display planes, call:
        ///
        /// If `pProperties` is `NULL`, then the number of display planes available for `physicalDevice` is returned in `pPropertyCount`.
        /// Otherwise, `pPropertyCount` **must** point to a variable set by the application to the number of elements in the `pProperties` array, and on return the variable is overwritten with the number of structures actually written to `pProperties`.
        /// If the value of `pPropertyCount` is less than the number of display planes for `physicalDevice`, at most `pPropertyCount` structures will be written.
        ///
        /// - Parameters:
        ///   - physicalDevice: is a physical device.
        ///   - pPropertyCount: is a pointer to an integer related to the number of display planes available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of `VkDisplayPlanePropertiesKHR` structures.
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
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkDisplayPlanePropertiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPlanePropertiesKHR.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceDisplayPlanePropertiesKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceDisplayPlanePropertiesKHR.html)
        @unsafe
        public let getPhysicalDeviceDisplayPlanePropertiesKHR: PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR!

        /// To query information about the available displays, call:
        ///
        /// `vkGetPhysicalDeviceDisplayProperties2KHR` behaves similarly to [vkGetPhysicalDeviceDisplayPropertiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceDisplayPropertiesKHR.html), with the ability to return extended information via chained output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is a physical device.
        ///   - pPropertyCount: is a pointer to an integer related to the number of display devices available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of `VkDisplayProperties2KHR` structures.
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
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkDisplayProperties2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayProperties2KHR.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceDisplayProperties2KHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceDisplayProperties2KHR.html)
        @unsafe
        public let getPhysicalDeviceDisplayProperties2KHR: PFN_vkGetPhysicalDeviceDisplayProperties2KHR!

        /// Various functions are provided for enumerating the available display devices
        /// present on a Vulkan physical device.
        /// To query information about the available displays, call:
        ///
        /// If `pProperties` is `NULL`, then the number of display devices available for `physicalDevice` is returned in `pPropertyCount`.
        /// Otherwise, `pPropertyCount` **must** point to a variable set by the application to the number of elements in the `pProperties` array, and on return the variable is overwritten with the number of structures actually written to `pProperties`.
        /// If the value of `pPropertyCount` is less than the number of display devices for `physicalDevice`, at most `pPropertyCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available properties were returned.
        ///
        /// - Parameters:
        ///   - physicalDevice: is a physical device.
        ///   - pPropertyCount: is a pointer to an integer related to the number of display devices available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of [VkDisplayPropertiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPropertiesKHR.html) structures.
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
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkDisplayPropertiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayPropertiesKHR.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceDisplayPropertiesKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceDisplayPropertiesKHR.html)
        @unsafe
        public let getPhysicalDeviceDisplayPropertiesKHR: PFN_vkGetPhysicalDeviceDisplayPropertiesKHR!

        /// To query the external handle types supported by buffers, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the buffer capabilities.
        ///   - pExternalBufferInfo: is a pointer to a [VkPhysicalDeviceExternalBufferInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalBufferInfo.html) structure describing the parameters that would be consumed by [vkCreateBuffer](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateBuffer.html).
        ///   - pExternalBufferProperties: is a pointer to a [VkExternalBufferProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalBufferProperties.html) structure in which capabilities are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pExternalBufferInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceExternalBufferInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalBufferInfo.html) structure
        /// - Precondition: `pExternalBufferProperties` **must** be a valid pointer to a [VkExternalBufferProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalBufferProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceExternalBufferProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceExternalBufferProperties.html)
        @unsafe
        public let getPhysicalDeviceExternalBufferProperties: PFN_vkGetPhysicalDeviceExternalBufferProperties!

        /// Fences **may** support import and export of their
        /// [payload](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#synchronization-fences-payloads) to external handles.
        /// To query the external handle types supported by fences, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the fence capabilities.
        ///   - pExternalFenceInfo: is a pointer to a [VkPhysicalDeviceExternalFenceInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalFenceInfo.html) structure describing the parameters that would be consumed by [vkCreateFence](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateFence.html).
        ///   - pExternalFenceProperties: is a pointer to a [VkExternalFenceProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalFenceProperties.html) structure in which capabilities are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pExternalFenceInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceExternalFenceInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalFenceInfo.html) structure
        /// - Precondition: `pExternalFenceProperties` **must** be a valid pointer to a [VkExternalFenceProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalFenceProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceExternalFenceProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceExternalFenceProperties.html)
        @unsafe
        public let getPhysicalDeviceExternalFenceProperties: PFN_vkGetPhysicalDeviceExternalFenceProperties!

        /// To determine the image capabilities compatible with an external memory
        /// handle type, call:
        ///
        /// If `externalHandleType` is 0, `pExternalImageFormatProperties->imageFormatProperties` will return the same values as a call to [vkGetPhysicalDeviceImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceImageFormatProperties.html), and the other members of `pExternalImageFormatProperties` will all be 0.
        /// Otherwise, they are filled in as described for [VkExternalImageFormatPropertiesNV](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalImageFormatPropertiesNV.html).
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the image capabilities
        ///   - format: is the image format, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`format`.
        ///   - type: is the image type, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`imageType`.
        ///   - tiling: is the image tiling, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`tiling`.
        ///   - usage: is the intended usage of the image, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`usage`.
        ///   - flags: is a bitmask describing additional parameters of the image, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`flags`.
        ///   - externalHandleType: is either one of the bits from [VkExternalMemoryHandleTypeFlagBitsNV](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalMemoryHandleTypeFlagBitsNV.html), or 0.
        ///   - pExternalImageFormatProperties: is a pointer to a [VkExternalImageFormatPropertiesNV](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalImageFormatPropertiesNV.html) structure in which capabilities are returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_FORMAT_NOT_SUPPORTED`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: `externalHandleType` **must** not have more than one bit set
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `format` **must** be a valid [VkFormat](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormat.html) value
        /// - Precondition: `type` **must** be a valid [VkImageType](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageType.html) value
        /// - Precondition: `tiling` **must** be a valid [VkImageTiling](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageTiling.html) value
        /// - Precondition: `usage` **must** be a valid combination of [VkImageUsageFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageUsageFlagBits.html) values
        /// - Precondition: `usage` **must** not be `0`
        /// - Precondition: `flags` **must** be a valid combination of [VkImageCreateFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateFlagBits.html) values
        /// - Precondition: `externalHandleType` **must** be a valid combination of [VkExternalMemoryHandleTypeFlagBitsNV](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalMemoryHandleTypeFlagBitsNV.html) values
        /// - Precondition: `pExternalImageFormatProperties` **must** be a valid pointer to a [VkExternalImageFormatPropertiesNV](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalImageFormatPropertiesNV.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceExternalImageFormatPropertiesNV Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceExternalImageFormatPropertiesNV.html)
        @unsafe
        public let getPhysicalDeviceExternalImageFormatPropertiesNV: PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV!

        /// Semaphores **may** support import and export of their
        /// [payload](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#synchronization-semaphores-payloads) to external handles.
        /// To query the external handle types supported by semaphores, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the semaphore capabilities.
        ///   - pExternalSemaphoreInfo: is a pointer to a [VkPhysicalDeviceExternalSemaphoreInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalSemaphoreInfo.html) structure describing the parameters that would be consumed by [vkCreateSemaphore](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSemaphore.html).
        ///   - pExternalSemaphoreProperties: is a pointer to a [VkExternalSemaphoreProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalSemaphoreProperties.html) structure in which capabilities are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pExternalSemaphoreInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceExternalSemaphoreInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalSemaphoreInfo.html) structure
        /// - Precondition: `pExternalSemaphoreProperties` **must** be a valid pointer to a [VkExternalSemaphoreProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalSemaphoreProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceExternalSemaphoreProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceExternalSemaphoreProperties.html)
        @unsafe
        public let getPhysicalDeviceExternalSemaphoreProperties: PFN_vkGetPhysicalDeviceExternalSemaphoreProperties!

        /// To query supported features, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the supported features.
        ///   - pFeatures: is a pointer to a [VkPhysicalDeviceFeatures](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFeatures.html) structure in which the physical device features are returned. For each feature, a value of `VK_TRUE` specifies that the feature is supported on this physical device, and `VK_FALSE` specifies that the feature is not supported.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pFeatures` **must** be a valid pointer to a [VkPhysicalDeviceFeatures](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFeatures.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceFeatures Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceFeatures.html)
        @unsafe
        public let getPhysicalDeviceFeatures: PFN_vkGetPhysicalDeviceFeatures!

        /// To query supported features defined by the core or extensions, call:
        ///
        /// Each structure in `pFeatures` and its `pNext` chain contains members corresponding to fine-grained features.
        /// Each structure in `pFeatures` and its `pNext` chain contains [VkBool32](https://registry.khronos.org/vulkan/specs/latest/man/html/VkBool32.html) members corresponding to fine-grained features.
        /// Each such member is returned with a `VK_TRUE` value indicating that feature is supported on this physical device, or a `VK_FALSE` value indicating it is unsupported.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the supported features.
        ///   - pFeatures: is a pointer to a [VkPhysicalDeviceFeatures2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFeatures2.html) structure in which the physical device features are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pFeatures` **must** be a valid pointer to a [VkPhysicalDeviceFeatures2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFeatures2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceFeatures2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceFeatures2.html)
        @unsafe
        public let getPhysicalDeviceFeatures2: PFN_vkGetPhysicalDeviceFeatures2!

        /// To query supported format features which are properties of the physical
        /// device, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the format properties.
        ///   - format: is the format whose properties are queried.
        ///   - pFormatProperties: is a pointer to a [VkFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormatProperties.html) structure in which physical device properties for `format` are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `format` **must** be a valid [VkFormat](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormat.html) value
        /// - Precondition: `pFormatProperties` **must** be a valid pointer to a [VkFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormatProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceFormatProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceFormatProperties.html)
        @unsafe
        public let getPhysicalDeviceFormatProperties: PFN_vkGetPhysicalDeviceFormatProperties!

        /// To query supported format features which are properties of the physical
        /// device, call:
        ///
        /// `vkGetPhysicalDeviceFormatProperties2` behaves similarly to [vkGetPhysicalDeviceFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceFormatProperties.html), with the ability to return extended information in a `pNext` chain of output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the format properties.
        ///   - format: is the format whose properties are queried.
        ///   - pFormatProperties: is a pointer to a [VkFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormatProperties2.html) structure in which physical device properties for `format` are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `format` **must** be a valid [VkFormat](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormat.html) value
        /// - Precondition: `pFormatProperties` **must** be a valid pointer to a [VkFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormatProperties2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceFormatProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceFormatProperties2.html)
        @unsafe
        public let getPhysicalDeviceFormatProperties2: PFN_vkGetPhysicalDeviceFormatProperties2!

        /// To query additional capabilities specific to image types, call:
        ///
        /// The `format`, `type`, `tiling`, `usage`, and `flags` parameters correspond to parameters that would be consumed by [vkCreateImage](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateImage.html) (as members of [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html) ).
        /// If `format` is not a supported image format, or if the combination of `format`, `type`, `tiling`, `usage`, and `flags` is not supported for images, then `vkGetPhysicalDeviceImageFormatProperties` returns `VK_ERROR_FORMAT_NOT_SUPPORTED`.
        /// The limitations on an image format that are reported by `vkGetPhysicalDeviceImageFormatProperties` have the following property: if `usage1` and `usage2` of type [VkImageUsageFlags](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageUsageFlags.html) are such that the bits set in `usage1` are a subset of the bits set in `usage2`, and `flags1` and `flags2` of type [VkImageCreateFlags](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateFlags.html) are such that the bits set in `flags1` are a subset of the bits set in `flags2`, then the limitations for `usage1` and `flags1` **must** be no more strict than the limitations for `usage2` and `flags2`, for all values of `format`, `type`, and `tiling`.
        /// If the [`hostImageCopy` ](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#features-hostImageCopy) feature is supported, `usage` includes `VK_IMAGE_USAGE_SAMPLED_BIT`, and `flags` does not include either of `VK_IMAGE_CREATE_SPARSE_BINDING_BIT`, `VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT`, or `VK_IMAGE_CREATE_SPARSE_ALIASED_BIT`, then the result of calls to `vkGetPhysicalDeviceImageFormatProperties` with identical parameters except for the inclusion of `VK_IMAGE_USAGE_HOST_TRANSFER_BIT` in `usage` **must** be identical.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the image capabilities.
        ///   - format: is a [VkFormat](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormat.html) value specifying the image format, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`format`.
        ///   - type: is a [VkImageType](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageType.html) value specifying the image type, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`imageType`.
        ///   - tiling: is a [VkImageTiling](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageTiling.html) value specifying the image tiling, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`tiling`.
        ///   - usage: is a bitmask of [VkImageUsageFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageUsageFlagBits.html) specifying the intended usage of the image, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`usage`.
        ///   - flags: is a bitmask of [VkImageCreateFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateFlagBits.html) specifying additional parameters of the image, corresponding to [VkImageCreateInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateInfo.html)::`flags`.
        ///   - pImageFormatProperties: is a pointer to a [VkImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageFormatProperties.html) structure in which capabilities are returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_FORMAT_NOT_SUPPORTED`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: `tiling` **must** not be `VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT`.
        ///                 (Use [vkGetPhysicalDeviceImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceImageFormatProperties2.html) instead)
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `format` **must** be a valid [VkFormat](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormat.html) value
        /// - Precondition: `type` **must** be a valid [VkImageType](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageType.html) value
        /// - Precondition: `tiling` **must** be a valid [VkImageTiling](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageTiling.html) value
        /// - Precondition: `usage` **must** be a valid combination of [VkImageUsageFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageUsageFlagBits.html) values
        /// - Precondition: `usage` **must** not be `0`
        /// - Precondition: `flags` **must** be a valid combination of [VkImageCreateFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageCreateFlagBits.html) values
        /// - Precondition: `pImageFormatProperties` **must** be a valid pointer to a [VkImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageFormatProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceImageFormatProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceImageFormatProperties.html)
        @unsafe
        public let getPhysicalDeviceImageFormatProperties: PFN_vkGetPhysicalDeviceImageFormatProperties!

        /// To query additional capabilities specific to image types, call:
        ///
        /// `vkGetPhysicalDeviceImageFormatProperties2` behaves similarly to [vkGetPhysicalDeviceImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceImageFormatProperties.html), with the ability to return extended information in a `pNext` chain of output structures.
        /// If the `pNext` chain of `pImageFormatInfo` includes a [VkVideoProfileListInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkVideoProfileListInfoKHR.html) structure with a `profileCount` member greater than `0`, then this command returns format capabilities specific to image types used in conjunction with the specified [video profiles](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#video-profiles).
        /// In this case, this command will return one of the [video-profile-specific error codes](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#video-profile-error-codes) if any of the profiles specified via [VkVideoProfileListInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkVideoProfileListInfoKHR.html)::`pProfiles` are not supported.
        /// Furthermore, if [VkPhysicalDeviceImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageFormatInfo2.html)::`usage` includes any image usage flag not supported by the specified video profiles, then this command returns `VK_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR`.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the image capabilities.
        ///   - pImageFormatInfo: is a pointer to a [VkPhysicalDeviceImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageFormatInfo2.html) structure describing the parameters that would be consumed by [vkCreateImage](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateImage.html).
        ///   - pImageFormatProperties: is a pointer to a [VkImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageFormatProperties2.html) structure in which capabilities are returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_FORMAT_NOT_SUPPORTED`
        ///     - `VK_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR`
        ///     - `VK_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR`
        ///     - `VK_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR`
        ///     - `VK_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR`
        ///     - `VK_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: If the `pNext` chain of `pImageFormatProperties` includes a
        ///                 [VkAndroidHardwareBufferUsageANDROID](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAndroidHardwareBufferUsageANDROID.html) structure, the `pNext`
        ///                 chain of `pImageFormatInfo` **must** include a
        ///                 [VkPhysicalDeviceExternalImageFormatInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalImageFormatInfo.html) structure with
        ///                 `handleType` set to
        ///                 `VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID`
        /// - Precondition: If the `pNext` chain of `pImageFormatProperties` includes a
        ///                 [VkHostImageCopyDevicePerformanceQuery](https://registry.khronos.org/vulkan/specs/latest/man/html/VkHostImageCopyDevicePerformanceQuery.html) structure,
        ///                 `pImageFormatInfo->usage` **must** contain
        ///                 `VK_IMAGE_USAGE_HOST_TRANSFER_BIT`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pImageFormatInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageFormatInfo2.html) structure
        /// - Precondition: `pImageFormatProperties` **must** be a valid pointer to a [VkImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageFormatProperties2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceImageFormatProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceImageFormatProperties2.html)
        @unsafe
        public let getPhysicalDeviceImageFormatProperties2: PFN_vkGetPhysicalDeviceImageFormatProperties2!

        /// To query memory properties, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the handle to the device to query.
        ///   - pMemoryProperties: is a pointer to a [VkPhysicalDeviceMemoryProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryProperties.html) structure in which the properties are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pMemoryProperties` **must** be a valid pointer to a [VkPhysicalDeviceMemoryProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceMemoryProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceMemoryProperties.html)
        @unsafe
        public let getPhysicalDeviceMemoryProperties: PFN_vkGetPhysicalDeviceMemoryProperties!

        /// To query memory properties, call:
        ///
        /// `vkGetPhysicalDeviceMemoryProperties2` behaves similarly to [vkGetPhysicalDeviceMemoryProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceMemoryProperties.html), with the ability to return extended information in a `pNext` chain of output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the handle to the device to query.
        ///   - pMemoryProperties: is a pointer to a [VkPhysicalDeviceMemoryProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryProperties2.html) structure in which the properties are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pMemoryProperties` **must** be a valid pointer to a [VkPhysicalDeviceMemoryProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryProperties2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceMemoryProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceMemoryProperties2.html)
        @unsafe
        public let getPhysicalDeviceMemoryProperties2: PFN_vkGetPhysicalDeviceMemoryProperties2!

        /// To query general properties of physical devices once enumerated, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the handle to the physical device whose properties will be queried.
        ///   - pProperties: is a pointer to a [VkPhysicalDeviceProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProperties.html) structure in which properties are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pProperties` **must** be a valid pointer to a [VkPhysicalDeviceProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceProperties.html)
        @unsafe
        public let getPhysicalDeviceProperties: PFN_vkGetPhysicalDeviceProperties!

        /// To query general properties of physical devices once enumerated, call:
        ///
        /// Each structure in `pProperties` and its `pNext` chain contains members corresponding to implementation-dependent properties, behaviors, or limits. `vkGetPhysicalDeviceProperties2` fills in each member to specify the corresponding value for the implementation.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the handle to the physical device whose properties will be queried.
        ///   - pProperties: is a pointer to a [VkPhysicalDeviceProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProperties2.html) structure in which properties are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pProperties` **must** be a valid pointer to a [VkPhysicalDeviceProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProperties2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceProperties2.html)
        @unsafe
        public let getPhysicalDeviceProperties2: PFN_vkGetPhysicalDeviceProperties2!

        /// To query properties of queues available on a physical device, call:
        ///
        /// If `pQueueFamilyProperties` is `NULL`, then the number of queue families available is returned in `pQueueFamilyPropertyCount`.
        /// Implementations **must** support at least one queue family.
        /// Otherwise, `pQueueFamilyPropertyCount` **must** point to a variable set by the application to the number of elements in the `pQueueFamilyProperties` array, and on return the variable is overwritten with the number of structures actually written to `pQueueFamilyProperties`.
        /// If `pQueueFamilyPropertyCount` is less than the number of queue families available, at most `pQueueFamilyPropertyCount` structures will be written.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the handle to the physical device whose properties will be queried.
        ///   - pQueueFamilyPropertyCount: is a pointer to an integer related to the number of queue families available or queried, as described below.
        ///   - pQueueFamilyProperties: is either `NULL` or a pointer to an array of [VkQueueFamilyProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyProperties.html) structures.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pQueueFamilyPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pQueueFamilyPropertyCount` is not `0`, and `pQueueFamilyProperties` is not `NULL`, `pQueueFamilyProperties` **must** be a valid pointer to an array of `pQueueFamilyPropertyCount` [VkQueueFamilyProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyProperties.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceQueueFamilyProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceQueueFamilyProperties.html)
        @unsafe
        public let getPhysicalDeviceQueueFamilyProperties: PFN_vkGetPhysicalDeviceQueueFamilyProperties!

        /// To query properties of queues available on a physical device, call:
        ///
        /// `vkGetPhysicalDeviceQueueFamilyProperties2` behaves similarly to [vkGetPhysicalDeviceQueueFamilyProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceQueueFamilyProperties.html), with the ability to return extended information in a `pNext` chain of output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the handle to the physical device whose properties will be queried.
        ///   - pQueueFamilyPropertyCount: is a pointer to an integer related to the number of queue families available or queried, as described in [vkGetPhysicalDeviceQueueFamilyProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceQueueFamilyProperties.html).
        ///   - pQueueFamilyProperties: is either `NULL` or a pointer to an array of [VkQueueFamilyProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyProperties2.html) structures.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pQueueFamilyPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pQueueFamilyPropertyCount` is not `0`, and `pQueueFamilyProperties` is not `NULL`, `pQueueFamilyProperties` **must** be a valid pointer to an array of `pQueueFamilyPropertyCount` [VkQueueFamilyProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyProperties2.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceQueueFamilyProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceQueueFamilyProperties2.html)
        @unsafe
        public let getPhysicalDeviceQueueFamilyProperties2: PFN_vkGetPhysicalDeviceQueueFamilyProperties2!

        /// `vkGetPhysicalDeviceSparseImageFormatProperties` returns an array of
        /// [VkSparseImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSparseImageFormatProperties.html).
        /// Each element describes properties for one set of image aspects that are
        /// bound simultaneously for a `VkImage` created with the provided image
        /// creation parameters.
        /// This is usually one element for each aspect in the image, but for
        /// interleaved depth/stencil images there is only one element describing the
        /// combined aspects.
        ///
        /// If `pProperties` is `NULL`, then the number of sparse format properties available is returned in `pPropertyCount`.
        /// Otherwise, `pPropertyCount` **must** point to a variable set by the application to the number of elements in the `pProperties` array, and on return the variable is overwritten with the number of structures actually written to `pProperties`.
        /// If `pPropertyCount` is less than the number of sparse format properties available, at most `pPropertyCount` structures will be written.
        /// If `VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT` is not supported for the given arguments, `pPropertyCount` will be zero upon return, and no data will be written to `pProperties`.
        /// Multiple aspects are returned for depth/stencil images that are implemented as separate planes by the implementation.
        /// The depth and stencil data planes each have unique `VkSparseImageFormatProperties` data.
        /// Depth/stencil images with depth and stencil data interleaved into a single plane will return a single `VkSparseImageFormatProperties` structure with the `aspectMask` set to `VK_IMAGE_ASPECT_DEPTH_BIT` | `VK_IMAGE_ASPECT_STENCIL_BIT`.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the sparse image format properties.
        ///   - format: is the image format.
        ///   - type: is the dimensionality of the image.
        ///   - samples: is a [VkSampleCountFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSampleCountFlagBits.html) value specifying the number of samples per texel.
        ///   - usage: is a bitmask describing the intended usage of the image.
        ///   - tiling: is the tiling arrangement of the texel blocks in memory.
        ///   - pPropertyCount: is a pointer to an integer related to the number of sparse format properties available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of [VkSparseImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSparseImageFormatProperties.html) structures.
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: `samples` **must** be a valid [VkSampleCountFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSampleCountFlagBits.html) value that is
        ///                 set in `VkImageFormatProperties`::`sampleCounts` returned by
        ///                 `vkGetPhysicalDeviceImageFormatProperties` with `format`,
        ///                 `type`, `tiling`, and `usage` equal to those in this command
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `format` **must** be a valid [VkFormat](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormat.html) value
        /// - Precondition: `type` **must** be a valid [VkImageType](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageType.html) value
        /// - Precondition: `samples` **must** be a valid [VkSampleCountFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSampleCountFlagBits.html) value
        /// - Precondition: `usage` **must** be a valid combination of [VkImageUsageFlagBits](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageUsageFlagBits.html) values
        /// - Precondition: `usage` **must** not be `0`
        /// - Precondition: `tiling` **must** be a valid [VkImageTiling](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageTiling.html) value
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkSparseImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSparseImageFormatProperties.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSparseImageFormatProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSparseImageFormatProperties.html)
        @unsafe
        public let getPhysicalDeviceSparseImageFormatProperties: PFN_vkGetPhysicalDeviceSparseImageFormatProperties!

        /// `vkGetPhysicalDeviceSparseImageFormatProperties2` returns an array of
        /// [VkSparseImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSparseImageFormatProperties2.html).
        /// Each element describes properties for one set of image aspects that are
        /// bound simultaneously for a `VkImage` created with the provided image
        /// creation parameters.
        /// This is usually one element for each aspect in the image, but for
        /// interleaved depth/stencil images there is only one element describing the
        /// combined aspects.
        ///
        /// `vkGetPhysicalDeviceSparseImageFormatProperties2` behaves identically to [vkGetPhysicalDeviceSparseImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSparseImageFormatProperties.html), with the ability to return extended information by adding extending structures to the `pNext` chain of its `pProperties` parameter.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the sparse image format properties.
        ///   - pFormatInfo: is a pointer to a [VkPhysicalDeviceSparseImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSparseImageFormatInfo2.html) structure containing input parameters to the command.
        ///   - pPropertyCount: is a pointer to an integer related to the number of sparse format properties available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of [VkSparseImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSparseImageFormatProperties2.html) structures.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pFormatInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceSparseImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSparseImageFormatInfo2.html) structure
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkSparseImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSparseImageFormatProperties2.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSparseImageFormatProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSparseImageFormatProperties2.html)
        @unsafe
        public let getPhysicalDeviceSparseImageFormatProperties2: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2!

        /// To query the basic capabilities of a surface, needed in order to create a
        /// swapchain, call:
        ///
        /// `vkGetPhysicalDeviceSurfaceCapabilities2EXT` behaves similarly to [vkGetPhysicalDeviceSurfaceCapabilitiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceCapabilitiesKHR.html), with the ability to return extended information by adding extending structures to the `pNext` chain of its `pSurfaceCapabilities` parameter.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device that will be associated with the swapchain to be created, as described for [vkCreateSwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSwapchainKHR.html).
        ///   - surface: is the surface that will be associated with the swapchain.
        ///   - pSurfaceCapabilities: is a pointer to a [VkSurfaceCapabilities2EXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceCapabilities2EXT.html) structure in which the capabilities are returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_SURFACE_LOST_KHR`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: `surface` **must** be supported by `physicalDevice`, as reported by
        ///                 [vkGetPhysicalDeviceSurfaceSupportKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html) or an equivalent
        ///                 platform-specific mechanism
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: `pSurfaceCapabilities` **must** be a valid pointer to a [VkSurfaceCapabilities2EXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceCapabilities2EXT.html) structure
        /// - Precondition: Both of `physicalDevice`, and `surface` **must** have been created, allocated, or retrieved from the same [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html)
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSurfaceCapabilities2EXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceCapabilities2EXT.html)
        @unsafe
        public let getPhysicalDeviceSurfaceCapabilities2EXT: PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT!

        /// To query the basic capabilities of a surface defined by the core or
        /// extensions, call:
        ///
        /// `vkGetPhysicalDeviceSurfaceCapabilities2KHR` behaves similarly to [vkGetPhysicalDeviceSurfaceCapabilitiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceCapabilitiesKHR.html), with the ability to specify extended inputs via chained input structures, and to return extended information via chained output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device that will be associated with the swapchain to be created, as described for [vkCreateSwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSwapchainKHR.html).
        ///   - pSurfaceInfo: is a pointer to a [VkPhysicalDeviceSurfaceInfo2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSurfaceInfo2KHR.html) structure describing the surface and other fixed parameters that would be consumed by [vkCreateSwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSwapchainKHR.html).
        ///   - pSurfaceCapabilities: is a pointer to a [VkSurfaceCapabilities2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceCapabilities2KHR.html) structure in which the capabilities are returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_SURFACE_LOST_KHR`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: If the `[VK_GOOGLE_surfaceless_query](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_surfaceless_query.html) ` extension is not enabled,
        ///                 `pSurfaceInfo->surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: If `pSurfaceInfo->surface` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html),
        ///                 `pSurfaceInfo->surface` **must** be supported by `physicalDevice`,
        ///                 as reported by [vkGetPhysicalDeviceSurfaceSupportKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html) or an
        ///                 equivalent platform-specific mechanism
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pSurfaceInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceSurfaceInfo2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSurfaceInfo2KHR.html) structure
        /// - Precondition: `pSurfaceCapabilities` **must** be a valid pointer to a [VkSurfaceCapabilities2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceCapabilities2KHR.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSurfaceCapabilities2KHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceCapabilities2KHR.html)
        @unsafe
        public let getPhysicalDeviceSurfaceCapabilities2KHR: PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR!

        /// To query the basic capabilities of a surface, needed in order to create a
        /// swapchain, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device that will be associated with the swapchain to be created, as described for [vkCreateSwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSwapchainKHR.html).
        ///   - surface: is the surface that will be associated with the swapchain.
        ///   - pSurfaceCapabilities: is a pointer to a [VkSurfaceCapabilitiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceCapabilitiesKHR.html) structure in which the capabilities are returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_SURFACE_LOST_KHR`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: `surface` **must** be supported by `physicalDevice`, as reported by
        ///                 [vkGetPhysicalDeviceSurfaceSupportKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html) or an equivalent
        ///                 platform-specific mechanism
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: `pSurfaceCapabilities` **must** be a valid pointer to a [VkSurfaceCapabilitiesKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceCapabilitiesKHR.html) structure
        /// - Precondition: Both of `physicalDevice`, and `surface` **must** have been created, allocated, or retrieved from the same [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html)
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSurfaceCapabilitiesKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceCapabilitiesKHR.html)
        @unsafe
        public let getPhysicalDeviceSurfaceCapabilitiesKHR: PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR!

        /// To query the supported swapchain format tuples for a surface, call:
        ///
        /// [vkGetPhysicalDeviceSurfaceFormats2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceFormats2KHR.html) behaves similarly to [vkGetPhysicalDeviceSurfaceFormatsKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceFormatsKHR.html), with the ability to be extended via `pNext` chains.
        /// If `pSurfaceFormats` is `NULL`, then the number of format tuples supported for the given `surface` is returned in `pSurfaceFormatCount`.
        /// Otherwise, `pSurfaceFormatCount` **must** point to a variable set by the application to the number of elements in the `pSurfaceFormats` array, and on return the variable is overwritten with the number of structures actually written to `pSurfaceFormats`.
        /// If the value of `pSurfaceFormatCount` is less than the number of format tuples supported, at most `pSurfaceFormatCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available values were returned.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device that will be associated with the swapchain to be created, as described for [vkCreateSwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSwapchainKHR.html).
        ///   - pSurfaceInfo: is a pointer to a [VkPhysicalDeviceSurfaceInfo2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSurfaceInfo2KHR.html) structure describing the surface and other fixed parameters that would be consumed by [vkCreateSwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSwapchainKHR.html).
        ///   - pSurfaceFormatCount: is a pointer to an integer related to the number of format tuples available or queried, as described below.
        ///   - pSurfaceFormats: is either `NULL` or a pointer to an array of [VkSurfaceFormat2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceFormat2KHR.html) structures.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///     - `VK_INCOMPLETE`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_SURFACE_LOST_KHR`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: If the `[VK_GOOGLE_surfaceless_query](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_surfaceless_query.html) ` extension is not enabled,
        ///                 `pSurfaceInfo->surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: If `pSurfaceInfo->surface` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html),
        ///                 `pSurfaceInfo->surface` **must** be supported by `physicalDevice`,
        ///                 as reported by [vkGetPhysicalDeviceSurfaceSupportKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html) or an
        ///                 equivalent platform-specific mechanism
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pSurfaceInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceSurfaceInfo2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSurfaceInfo2KHR.html) structure
        /// - Precondition: `pSurfaceFormatCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pSurfaceFormatCount` is not `0`, and `pSurfaceFormats` is not `NULL`, `pSurfaceFormats` **must** be a valid pointer to an array of `pSurfaceFormatCount` [VkSurfaceFormat2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceFormat2KHR.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSurfaceFormats2KHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceFormats2KHR.html)
        @unsafe
        public let getPhysicalDeviceSurfaceFormats2KHR: PFN_vkGetPhysicalDeviceSurfaceFormats2KHR!

        /// To query the supported swapchain format-color space pairs for a surface,
        /// call:
        ///
        /// If `pSurfaceFormats` is `NULL`, then the number of format pairs supported for the given `surface` is returned in `pSurfaceFormatCount`.
        /// Otherwise, `pSurfaceFormatCount` **must** point to a variable set by the application to the number of elements in the `pSurfaceFormats` array, and on return the variable is overwritten with the number of structures actually written to `pSurfaceFormats`.
        /// If the value of `pSurfaceFormatCount` is less than the number of format pairs supported, at most `pSurfaceFormatCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available format pairs were returned.
        /// The number of format pairs supported **must** be greater than or equal to 1. `pSurfaceFormats` **must** not contain an entry whose value for `format` is `VK_FORMAT_UNDEFINED`.
        /// If `pSurfaceFormats` includes an entry whose value for `colorSpace` is `VK_COLOR_SPACE_SRGB_NONLINEAR_KHR` and whose value for `format` is a UNORM (or SRGB) format and the corresponding SRGB (or UNORM) format is a color renderable format for `VK_IMAGE_TILING_OPTIMAL`, then `pSurfaceFormats` **must** also contain an entry with the same value for `colorSpace` and `format` equal to the corresponding SRGB (or UNORM) format.
        /// If the `[VK_GOOGLE_surfaceless_query](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_surfaceless_query.html) ` extension is enabled, the values returned in `pSurfaceFormats` will be identical for every valid surface created on this physical device, and so `surface` **can** be [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html).
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device that will be associated with the swapchain to be created, as described for [vkCreateSwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSwapchainKHR.html).
        ///   - surface: is the surface that will be associated with the swapchain.
        ///   - pSurfaceFormatCount: is a pointer to an integer related to the number of format pairs available or queried, as described below.
        ///   - pSurfaceFormats: is either `NULL` or a pointer to an array of `VkSurfaceFormatKHR` structures.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///     - `VK_INCOMPLETE`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_SURFACE_LOST_KHR`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: If the `[VK_GOOGLE_surfaceless_query](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_surfaceless_query.html) ` extension is not enabled,
        ///                 `surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: If `surface` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html),
        ///                 `surface` **must** be supported by `physicalDevice`, as reported by
        ///                 [vkGetPhysicalDeviceSurfaceSupportKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html) or an equivalent
        ///                 platform-specific mechanism
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: If `surface` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html), `surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: `pSurfaceFormatCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pSurfaceFormatCount` is not `0`, and `pSurfaceFormats` is not `NULL`, `pSurfaceFormats` **must** be a valid pointer to an array of `pSurfaceFormatCount` [VkSurfaceFormatKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceFormatKHR.html) structures
        /// - Precondition: Both of `physicalDevice`, and `surface` that are valid handles of non-ignored parameters **must** have been created, allocated, or retrieved from the same [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html)
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSurfaceFormatsKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceFormatsKHR.html)
        @unsafe
        public let getPhysicalDeviceSurfaceFormatsKHR: PFN_vkGetPhysicalDeviceSurfaceFormatsKHR!

        /// To query the supported presentation modes for a surface, call:
        ///
        /// If `pPresentModes` is `NULL`, then the number of presentation modes supported for the given `surface` is returned in `pPresentModeCount`.
        /// Otherwise, `pPresentModeCount` **must** point to a variable set by the application to the number of elements in the `pPresentModes` array, and on return the variable is overwritten with the number of values actually written to `pPresentModes`.
        /// If the value of `pPresentModeCount` is less than the number of presentation modes supported, at most `pPresentModeCount` values will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available modes were returned.
        /// If the `[VK_GOOGLE_surfaceless_query](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_surfaceless_query.html) ` extension is enabled and `surface` is [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html), the values returned in `pPresentModes` will only indicate support for `VK_PRESENT_MODE_FIFO_KHR`, `VK_PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR`, and `VK_PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR`.
        /// To query support for any other present mode, a valid handle **must** be provided in `surface`.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device that will be associated with the swapchain to be created, as described for [vkCreateSwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSwapchainKHR.html).
        ///   - surface: is the surface that will be associated with the swapchain.
        ///   - pPresentModeCount: is a pointer to an integer related to the number of presentation modes available or queried, as described below.
        ///   - pPresentModes: is either `NULL` or a pointer to an array of [VkPresentModeKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPresentModeKHR.html) values, indicating the supported presentation modes.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///     - `VK_INCOMPLETE`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_SURFACE_LOST_KHR`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: If the `[VK_GOOGLE_surfaceless_query](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_surfaceless_query.html) ` extension is not enabled,
        ///                 `surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: If `surface` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html),
        ///                 `surface` **must** be supported by `physicalDevice`, as reported by
        ///                 [vkGetPhysicalDeviceSurfaceSupportKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html) or an equivalent
        ///                 platform-specific mechanism
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: If `surface` is not [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html), `surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: `pPresentModeCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPresentModeCount` is not `0`, and `pPresentModes` is not `NULL`, `pPresentModes` **must** be a valid pointer to an array of `pPresentModeCount` [VkPresentModeKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPresentModeKHR.html) values
        /// - Precondition: Both of `physicalDevice`, and `surface` that are valid handles of non-ignored parameters **must** have been created, allocated, or retrieved from the same [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html)
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSurfacePresentModesKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfacePresentModesKHR.html)
        @unsafe
        public let getPhysicalDeviceSurfacePresentModesKHR: PFN_vkGetPhysicalDeviceSurfacePresentModesKHR!

        /// To determine whether a queue family of a physical device supports
        /// presentation to a given surface, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device.
        ///   - queueFamilyIndex: is the queue family.
        ///   - surface: is the surface.
        ///   - pSupported: is a pointer to a [VkBool32](https://registry.khronos.org/vulkan/specs/latest/man/html/VkBool32.html). `VK_TRUE` indicates support, and `VK_FALSE` indicates no support.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_SURFACE_LOST_KHR`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: `queueFamilyIndex` **must** be less than
        ///                 `pQueueFamilyPropertyCount` returned by
        ///                 `vkGetPhysicalDeviceQueueFamilyProperties` for the given
        ///                 `physicalDevice`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `surface` **must** be a valid [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
        /// - Precondition: `pSupported` **must** be a valid pointer to a [VkBool32](https://registry.khronos.org/vulkan/specs/latest/man/html/VkBool32.html) value
        /// - Precondition: Both of `physicalDevice`, and `surface` **must** have been created, allocated, or retrieved from the same [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html)
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSurfaceSupportKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html)
        @unsafe
        public let getPhysicalDeviceSurfaceSupportKHR: PFN_vkGetPhysicalDeviceSurfaceSupportKHR!

        /// A queue debug label region is opened by calling:
        ///
        ///
        /// - Parameters:
        ///   - queue: is the queue in which to start a debug label region.
        ///   - pLabelInfo: is a pointer to a [VkDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsLabelEXT.html) structure specifying parameters of the label region to open.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `queue` **must** be a valid [VkQueue](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueue.html) handle
        /// - Precondition: `pLabelInfo` **must** be a valid pointer to a valid [VkDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsLabelEXT.html) structure
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `queue` **must** be externally synchronized
        ///
        /// ### Command Properties
        /// ---
        /// [Command Buffer Levels](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueBeginDebugUtilsLabelEXT.html#VkCommandBufferLevel) | [Render Pass Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueBeginDebugUtilsLabelEXT.html#vkCmdBeginRenderPass) | [Video Coding Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueBeginDebugUtilsLabelEXT.html#vkCmdBeginVideoCodingKHR) | [Supported Queue Types](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueBeginDebugUtilsLabelEXT.html#VkQueueFlagBits) | [Command Type](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueBeginDebugUtilsLabelEXT.html#fundamentals-queueoperation-command-types)
        /// ------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------
        /// - | - | - | Any | -
        ///
        /// - SeeAlso: [vkQueueBeginDebugUtilsLabelEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueBeginDebugUtilsLabelEXT.html)
        @unsafe
        public let queueBeginDebugUtilsLabelEXT: PFN_vkQueueBeginDebugUtilsLabelEXT!

        /// A queue debug label region is closed by calling:
        ///
        /// The calls to [vkQueueBeginDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueBeginDebugUtilsLabelEXT.html) and [vkQueueEndDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueEndDebugUtilsLabelEXT.html) **must** be matched and balanced.
        ///
        /// - Parameters:
        ///   - queue: is the queue in which a debug label region should be closed.
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: There **must** be an outstanding `vkQueueBeginDebugUtilsLabelEXT`
        ///                 command prior to the `vkQueueEndDebugUtilsLabelEXT` on the queue
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `queue` **must** be a valid [VkQueue](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueue.html) handle
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `queue` **must** be externally synchronized
        ///
        /// ### Command Properties
        /// ---
        /// [Command Buffer Levels](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueEndDebugUtilsLabelEXT.html#VkCommandBufferLevel) | [Render Pass Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueEndDebugUtilsLabelEXT.html#vkCmdBeginRenderPass) | [Video Coding Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueEndDebugUtilsLabelEXT.html#vkCmdBeginVideoCodingKHR) | [Supported Queue Types](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueEndDebugUtilsLabelEXT.html#VkQueueFlagBits) | [Command Type](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueEndDebugUtilsLabelEXT.html#fundamentals-queueoperation-command-types)
        /// ----------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | -----------------------------------------------------------------------------------------------------------------------------------------------------
        /// - | - | - | Any | -
        ///
        /// - SeeAlso: [vkQueueEndDebugUtilsLabelEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueEndDebugUtilsLabelEXT.html)
        @unsafe
        public let queueEndDebugUtilsLabelEXT: PFN_vkQueueEndDebugUtilsLabelEXT!

        /// A single label can be inserted into a queue by calling:
        ///
        ///
        /// - Parameters:
        ///   - queue: is the queue into which a debug label will be inserted.
        ///   - pLabelInfo: is a pointer to a [VkDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsLabelEXT.html) structure specifying parameters of the label to insert.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `queue` **must** be a valid [VkQueue](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueue.html) handle
        /// - Precondition: `pLabelInfo` **must** be a valid pointer to a valid [VkDebugUtilsLabelEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsLabelEXT.html) structure
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `queue` **must** be externally synchronized
        ///
        /// ### Command Properties
        /// ---
        /// [Command Buffer Levels](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueInsertDebugUtilsLabelEXT.html#VkCommandBufferLevel) | [Render Pass Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueInsertDebugUtilsLabelEXT.html#vkCmdBeginRenderPass) | [Video Coding Scope](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueInsertDebugUtilsLabelEXT.html#vkCmdBeginVideoCodingKHR) | [Supported Queue Types](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueInsertDebugUtilsLabelEXT.html#VkQueueFlagBits) | [Command Type](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueInsertDebugUtilsLabelEXT.html#fundamentals-queueoperation-command-types)
        /// -------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------
        /// - | - | - | Any | -
        ///
        /// - SeeAlso: [vkQueueInsertDebugUtilsLabelEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueueInsertDebugUtilsLabelEXT.html)
        @unsafe
        public let queueInsertDebugUtilsLabelEXT: PFN_vkQueueInsertDebugUtilsLabelEXT!

        /// To release a previously acquired display, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: The physical device the display is on.
        ///   - display: The display to release control of.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `display` **must** be a valid [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle
        /// - Precondition: `display` **must** have been created, allocated, or retrieved from `physicalDevice`
        ///
        /// - SeeAlso: [vkReleaseDisplayEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkReleaseDisplayEXT.html)
        @unsafe
        public let releaseDisplayEXT: PFN_vkReleaseDisplayEXT!

        /// An object can be given an application-defined name by calling:
        ///
        ///
        /// - Parameters:
        ///   - device: is the device that is associated with the named object passed in via `objectHandle`.
        ///   - pNameInfo: is a pointer to a [VkDebugUtilsObjectNameInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsObjectNameInfoEXT.html) structure specifying parameters of the name to set on the object.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: `pNameInfo->objectType` **must** not be `VK_OBJECT_TYPE_UNKNOWN`
        /// - Precondition: `pNameInfo->objectHandle` **must** not be [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html)
        /// - Precondition: If `pNameInfo->objectHandle` is the valid handle of an
        ///                 instance-level object, the [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html) identified by `device` **must** be a descendent of the same [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) as the object
        ///                 identified by `pNameInfo->objectHandle`
        /// - Precondition: If `pNameInfo->objectHandle` is the valid handle of a
        ///                 physical-device-level object, the [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html) identified by
        ///                 `device` **must** be a descendant of the same [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) as
        ///                 the object identified by `pNameInfo->objectHandle`
        /// - Precondition: If `pNameInfo->objectHandle` is the valid handle of a device-level
        ///                 object, that object **must** be a descendent of the [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html)
        ///                 identified by `device`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `device` **must** be a valid [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html) handle
        /// - Precondition: `pNameInfo` **must** be a valid pointer to a valid [VkDebugUtilsObjectNameInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsObjectNameInfoEXT.html) structure
        ///
        /// ### Host Synchronization
        /// ---
        /// - Precondition: Host access to `pNameInfo->objectHandle` **must** be externally synchronized
        ///
        /// - SeeAlso: [vkSetDebugUtilsObjectNameEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkSetDebugUtilsObjectNameEXT.html)
        @unsafe
        public let setDebugUtilsObjectNameEXT: PFN_vkSetDebugUtilsObjectNameEXT!

        ///
        ///
        /// - Parameters:
        ///   - device: is the device that created the object.
        ///   - pTagInfo: is a pointer to a [VkDebugUtilsObjectTagInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsObjectTagInfoEXT.html) structure specifying parameters of the tag to attach to the object.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: If `pNameInfo->objectHandle` is the valid handle of an
        ///                 instance-level object, the [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html) identified by `device` **must** be a descendent of the same [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) as the object
        ///                 identified by `pNameInfo->objectHandle`
        /// - Precondition: If `pNameInfo->objectHandle` is the valid handle of a
        ///                 physical-device-level object, the [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html) identified by
        ///                 `device` **must** be a descendant of the same [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) as
        ///                 the object identified by `pNameInfo->objectHandle`
        /// - Precondition: If `pNameInfo->objectHandle` is the valid handle of a device-level
        ///                 object, that object **must** be a descendent of the [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html)
        ///                 identified by `device`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `device` **must** be a valid [VkDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDevice.html) handle
        /// - Precondition: `pTagInfo` **must** be a valid pointer to a valid [VkDebugUtilsObjectTagInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsObjectTagInfoEXT.html) structure
        ///
        /// - SeeAlso: [vkSetDebugUtilsObjectTagEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkSetDebugUtilsObjectTagEXT.html)
        @unsafe
        public let setDebugUtilsObjectTagEXT: PFN_vkSetDebugUtilsObjectTagEXT!

        /// To intentionally submit a debug message, call:
        ///
        /// The call will propagate through the layers and generate callback(s) as indicated by the message’s flags.
        /// The parameters are passed on to the callback in addition to the `pUserData` value that was defined at the time the messenger was registered.
        ///
        /// - Parameters:
        ///   - instance: is the debug stream’s [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html).
        ///   - messageSeverity: is a [VkDebugUtilsMessageSeverityFlagBitsEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessageSeverityFlagBitsEXT.html) value specifying the severity of this event/message.
        ///   - messageTypes: is a bitmask of [VkDebugUtilsMessageTypeFlagBitsEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessageTypeFlagBitsEXT.html) specifying which type of event(s) to identify with this message.
        ///   - pCallbackData: contains all the callback related data in the [VkDebugUtilsMessengerCallbackDataEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessengerCallbackDataEXT.html) structure.
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: The `objectType` member of each element of
        ///                 `pCallbackData->pObjects` **must** not be `VK_OBJECT_TYPE_UNKNOWN`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `messageSeverity` **must** be a valid [VkDebugUtilsMessageSeverityFlagBitsEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessageSeverityFlagBitsEXT.html) value
        /// - Precondition: `messageTypes` **must** be a valid combination of [VkDebugUtilsMessageTypeFlagBitsEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessageTypeFlagBitsEXT.html) values
        /// - Precondition: `messageTypes` **must** not be `0`
        /// - Precondition: `pCallbackData` **must** be a valid pointer to a valid [VkDebugUtilsMessengerCallbackDataEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDebugUtilsMessengerCallbackDataEXT.html) structure
        ///
        /// - SeeAlso: [vkSubmitDebugUtilsMessageEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkSubmitDebugUtilsMessageEXT.html)
        @unsafe
        public let submitDebugUtilsMessageEXT: PFN_vkSubmitDebugUtilsMessageEXT!

        /// To retrieve a list of the device groups present in the system, call:
        ///
        /// If `pPhysicalDeviceGroupProperties` is `NULL`, then the number of device groups available is returned in `pPhysicalDeviceGroupCount`.
        /// Otherwise, `pPhysicalDeviceGroupCount` **must** point to a variable set by the application to the number of elements in the `pPhysicalDeviceGroupProperties` array, and on return the variable is overwritten with the number of structures actually written to `pPhysicalDeviceGroupProperties`.
        /// If `pPhysicalDeviceGroupCount` is less than the number of device groups available, at most `pPhysicalDeviceGroupCount` structures will be written, and `VK_INCOMPLETE` will be returned instead of `VK_SUCCESS`, to indicate that not all the available device groups were returned.
        /// Every physical device **must** be in exactly one device group.
        ///
        /// - Parameters:
        ///   - instance: is a handle to a Vulkan instance previously created with [vkCreateInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateInstance.html).
        ///   - pPhysicalDeviceGroupCount: is a pointer to an integer related to the number of device groups available or queried, as described below.
        ///   - pPhysicalDeviceGroupProperties: is either `NULL` or a pointer to an array of [VkPhysicalDeviceGroupProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGroupProperties.html) structures.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///     - `VK_INCOMPLETE`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_INITIALIZATION_FAILED`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
        /// - Precondition: `pPhysicalDeviceGroupCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPhysicalDeviceGroupCount` is not `0`, and `pPhysicalDeviceGroupProperties` is not `NULL`, `pPhysicalDeviceGroupProperties` **must** be a valid pointer to an array of `pPhysicalDeviceGroupCount` [VkPhysicalDeviceGroupProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGroupProperties.html) structures
        ///
        /// - SeeAlso: [vkEnumeratePhysicalDeviceGroups Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkEnumeratePhysicalDeviceGroups.html)
        /// - Remark: Alias for enumeratePhysicalDeviceGroups
        @unsafe
        public var enumeratePhysicalDeviceGroupsKHR: PFN_vkEnumeratePhysicalDeviceGroups! {
            unsafe enumeratePhysicalDeviceGroups
        }

        /// To query the external handle types supported by buffers, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the buffer capabilities.
        ///   - pExternalBufferInfo: is a pointer to a [VkPhysicalDeviceExternalBufferInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalBufferInfo.html) structure describing the parameters that would be consumed by [vkCreateBuffer](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateBuffer.html).
        ///   - pExternalBufferProperties: is a pointer to a [VkExternalBufferProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalBufferProperties.html) structure in which capabilities are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pExternalBufferInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceExternalBufferInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalBufferInfo.html) structure
        /// - Precondition: `pExternalBufferProperties` **must** be a valid pointer to a [VkExternalBufferProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalBufferProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceExternalBufferProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceExternalBufferProperties.html)
        /// - Remark: Alias for getPhysicalDeviceExternalBufferProperties
        @unsafe
        public var getPhysicalDeviceExternalBufferPropertiesKHR: PFN_vkGetPhysicalDeviceExternalBufferProperties! {
            unsafe getPhysicalDeviceExternalBufferProperties
        }

        /// Fences **may** support import and export of their
        /// [payload](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#synchronization-fences-payloads) to external handles.
        /// To query the external handle types supported by fences, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the fence capabilities.
        ///   - pExternalFenceInfo: is a pointer to a [VkPhysicalDeviceExternalFenceInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalFenceInfo.html) structure describing the parameters that would be consumed by [vkCreateFence](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateFence.html).
        ///   - pExternalFenceProperties: is a pointer to a [VkExternalFenceProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalFenceProperties.html) structure in which capabilities are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pExternalFenceInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceExternalFenceInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalFenceInfo.html) structure
        /// - Precondition: `pExternalFenceProperties` **must** be a valid pointer to a [VkExternalFenceProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalFenceProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceExternalFenceProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceExternalFenceProperties.html)
        /// - Remark: Alias for getPhysicalDeviceExternalFenceProperties
        @unsafe
        public var getPhysicalDeviceExternalFencePropertiesKHR: PFN_vkGetPhysicalDeviceExternalFenceProperties! {
            unsafe getPhysicalDeviceExternalFenceProperties
        }

        /// Semaphores **may** support import and export of their
        /// [payload](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#synchronization-semaphores-payloads) to external handles.
        /// To query the external handle types supported by semaphores, call:
        ///
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the semaphore capabilities.
        ///   - pExternalSemaphoreInfo: is a pointer to a [VkPhysicalDeviceExternalSemaphoreInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalSemaphoreInfo.html) structure describing the parameters that would be consumed by [vkCreateSemaphore](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSemaphore.html).
        ///   - pExternalSemaphoreProperties: is a pointer to a [VkExternalSemaphoreProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalSemaphoreProperties.html) structure in which capabilities are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pExternalSemaphoreInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceExternalSemaphoreInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalSemaphoreInfo.html) structure
        /// - Precondition: `pExternalSemaphoreProperties` **must** be a valid pointer to a [VkExternalSemaphoreProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/VkExternalSemaphoreProperties.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceExternalSemaphoreProperties Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceExternalSemaphoreProperties.html)
        /// - Remark: Alias for getPhysicalDeviceExternalSemaphoreProperties
        @unsafe
        public var getPhysicalDeviceExternalSemaphorePropertiesKHR: PFN_vkGetPhysicalDeviceExternalSemaphoreProperties! {
            unsafe getPhysicalDeviceExternalSemaphoreProperties
        }

        /// To query supported features defined by the core or extensions, call:
        ///
        /// Each structure in `pFeatures` and its `pNext` chain contains members corresponding to fine-grained features.
        /// Each structure in `pFeatures` and its `pNext` chain contains [VkBool32](https://registry.khronos.org/vulkan/specs/latest/man/html/VkBool32.html) members corresponding to fine-grained features.
        /// Each such member is returned with a `VK_TRUE` value indicating that feature is supported on this physical device, or a `VK_FALSE` value indicating it is unsupported.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the supported features.
        ///   - pFeatures: is a pointer to a [VkPhysicalDeviceFeatures2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFeatures2.html) structure in which the physical device features are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pFeatures` **must** be a valid pointer to a [VkPhysicalDeviceFeatures2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFeatures2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceFeatures2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceFeatures2.html)
        /// - Remark: Alias for getPhysicalDeviceFeatures2
        @unsafe
        public var getPhysicalDeviceFeatures2KHR: PFN_vkGetPhysicalDeviceFeatures2! { unsafe getPhysicalDeviceFeatures2 }

        /// To query supported format features which are properties of the physical
        /// device, call:
        ///
        /// `vkGetPhysicalDeviceFormatProperties2` behaves similarly to [vkGetPhysicalDeviceFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceFormatProperties.html), with the ability to return extended information in a `pNext` chain of output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the format properties.
        ///   - format: is the format whose properties are queried.
        ///   - pFormatProperties: is a pointer to a [VkFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormatProperties2.html) structure in which physical device properties for `format` are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `format` **must** be a valid [VkFormat](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormat.html) value
        /// - Precondition: `pFormatProperties` **must** be a valid pointer to a [VkFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkFormatProperties2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceFormatProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceFormatProperties2.html)
        /// - Remark: Alias for getPhysicalDeviceFormatProperties2
        @unsafe
        public var getPhysicalDeviceFormatProperties2KHR: PFN_vkGetPhysicalDeviceFormatProperties2! {
            unsafe getPhysicalDeviceFormatProperties2
        }

        /// To query additional capabilities specific to image types, call:
        ///
        /// `vkGetPhysicalDeviceImageFormatProperties2` behaves similarly to [vkGetPhysicalDeviceImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceImageFormatProperties.html), with the ability to return extended information in a `pNext` chain of output structures.
        /// If the `pNext` chain of `pImageFormatInfo` includes a [VkVideoProfileListInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkVideoProfileListInfoKHR.html) structure with a `profileCount` member greater than `0`, then this command returns format capabilities specific to image types used in conjunction with the specified [video profiles](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#video-profiles).
        /// In this case, this command will return one of the [video-profile-specific error codes](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#video-profile-error-codes) if any of the profiles specified via [VkVideoProfileListInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkVideoProfileListInfoKHR.html)::`pProfiles` are not supported.
        /// Furthermore, if [VkPhysicalDeviceImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageFormatInfo2.html)::`usage` includes any image usage flag not supported by the specified video profiles, then this command returns `VK_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR`.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the image capabilities.
        ///   - pImageFormatInfo: is a pointer to a [VkPhysicalDeviceImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageFormatInfo2.html) structure describing the parameters that would be consumed by [vkCreateImage](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateImage.html).
        ///   - pImageFormatProperties: is a pointer to a [VkImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageFormatProperties2.html) structure in which capabilities are returned.
        ///
        /// - Returns:
        ///   - On success:
        ///     - `VK_SUCCESS`
        ///   - On failure:
        ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
        ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
        ///     - `VK_ERROR_FORMAT_NOT_SUPPORTED`
        ///     - `VK_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR`
        ///     - `VK_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR`
        ///     - `VK_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR`
        ///     - `VK_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR`
        ///     - `VK_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR`
        ///
        /// ### Valid Usage
        /// ---
        /// - Precondition: If the `pNext` chain of `pImageFormatProperties` includes a
        ///                 [VkAndroidHardwareBufferUsageANDROID](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAndroidHardwareBufferUsageANDROID.html) structure, the `pNext`
        ///                 chain of `pImageFormatInfo` **must** include a
        ///                 [VkPhysicalDeviceExternalImageFormatInfo](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalImageFormatInfo.html) structure with
        ///                 `handleType` set to
        ///                 `VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID`
        /// - Precondition: If the `pNext` chain of `pImageFormatProperties` includes a
        ///                 [VkHostImageCopyDevicePerformanceQuery](https://registry.khronos.org/vulkan/specs/latest/man/html/VkHostImageCopyDevicePerformanceQuery.html) structure,
        ///                 `pImageFormatInfo->usage` **must** contain
        ///                 `VK_IMAGE_USAGE_HOST_TRANSFER_BIT`
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pImageFormatInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageFormatInfo2.html) structure
        /// - Precondition: `pImageFormatProperties` **must** be a valid pointer to a [VkImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImageFormatProperties2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceImageFormatProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceImageFormatProperties2.html)
        /// - Remark: Alias for getPhysicalDeviceImageFormatProperties2
        @unsafe
        public var getPhysicalDeviceImageFormatProperties2KHR: PFN_vkGetPhysicalDeviceImageFormatProperties2! {
            unsafe getPhysicalDeviceImageFormatProperties2
        }

        /// To query memory properties, call:
        ///
        /// `vkGetPhysicalDeviceMemoryProperties2` behaves similarly to [vkGetPhysicalDeviceMemoryProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceMemoryProperties.html), with the ability to return extended information in a `pNext` chain of output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the handle to the device to query.
        ///   - pMemoryProperties: is a pointer to a [VkPhysicalDeviceMemoryProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryProperties2.html) structure in which the properties are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pMemoryProperties` **must** be a valid pointer to a [VkPhysicalDeviceMemoryProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryProperties2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceMemoryProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceMemoryProperties2.html)
        /// - Remark: Alias for getPhysicalDeviceMemoryProperties2
        @unsafe
        public var getPhysicalDeviceMemoryProperties2KHR: PFN_vkGetPhysicalDeviceMemoryProperties2! {
            unsafe getPhysicalDeviceMemoryProperties2
        }

        /// To query general properties of physical devices once enumerated, call:
        ///
        /// Each structure in `pProperties` and its `pNext` chain contains members corresponding to implementation-dependent properties, behaviors, or limits. `vkGetPhysicalDeviceProperties2` fills in each member to specify the corresponding value for the implementation.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the handle to the physical device whose properties will be queried.
        ///   - pProperties: is a pointer to a [VkPhysicalDeviceProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProperties2.html) structure in which properties are returned.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pProperties` **must** be a valid pointer to a [VkPhysicalDeviceProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProperties2.html) structure
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceProperties2.html)
        /// - Remark: Alias for getPhysicalDeviceProperties2
        @unsafe
        public var getPhysicalDeviceProperties2KHR: PFN_vkGetPhysicalDeviceProperties2! {
            unsafe getPhysicalDeviceProperties2
        }

        /// To query properties of queues available on a physical device, call:
        ///
        /// `vkGetPhysicalDeviceQueueFamilyProperties2` behaves similarly to [vkGetPhysicalDeviceQueueFamilyProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceQueueFamilyProperties.html), with the ability to return extended information in a `pNext` chain of output structures.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the handle to the physical device whose properties will be queried.
        ///   - pQueueFamilyPropertyCount: is a pointer to an integer related to the number of queue families available or queried, as described in [vkGetPhysicalDeviceQueueFamilyProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceQueueFamilyProperties.html).
        ///   - pQueueFamilyProperties: is either `NULL` or a pointer to an array of [VkQueueFamilyProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyProperties2.html) structures.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pQueueFamilyPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pQueueFamilyPropertyCount` is not `0`, and `pQueueFamilyProperties` is not `NULL`, `pQueueFamilyProperties` **must** be a valid pointer to an array of `pQueueFamilyPropertyCount` [VkQueueFamilyProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkQueueFamilyProperties2.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceQueueFamilyProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceQueueFamilyProperties2.html)
        /// - Remark: Alias for getPhysicalDeviceQueueFamilyProperties2
        @unsafe
        public var getPhysicalDeviceQueueFamilyProperties2KHR: PFN_vkGetPhysicalDeviceQueueFamilyProperties2! {
            unsafe getPhysicalDeviceQueueFamilyProperties2
        }

        /// `vkGetPhysicalDeviceSparseImageFormatProperties2` returns an array of
        /// [VkSparseImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSparseImageFormatProperties2.html).
        /// Each element describes properties for one set of image aspects that are
        /// bound simultaneously for a `VkImage` created with the provided image
        /// creation parameters.
        /// This is usually one element for each aspect in the image, but for
        /// interleaved depth/stencil images there is only one element describing the
        /// combined aspects.
        ///
        /// `vkGetPhysicalDeviceSparseImageFormatProperties2` behaves identically to [vkGetPhysicalDeviceSparseImageFormatProperties](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSparseImageFormatProperties.html), with the ability to return extended information by adding extending structures to the `pNext` chain of its `pProperties` parameter.
        ///
        /// - Parameters:
        ///   - physicalDevice: is the physical device from which to query the sparse image format properties.
        ///   - pFormatInfo: is a pointer to a [VkPhysicalDeviceSparseImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSparseImageFormatInfo2.html) structure containing input parameters to the command.
        ///   - pPropertyCount: is a pointer to an integer related to the number of sparse format properties available or queried, as described below.
        ///   - pProperties: is either `NULL` or a pointer to an array of [VkSparseImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSparseImageFormatProperties2.html) structures.
        ///
        /// ### Valid Usage (Implicit)
        /// ---
        /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
        /// - Precondition: `pFormatInfo` **must** be a valid pointer to a valid [VkPhysicalDeviceSparseImageFormatInfo2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSparseImageFormatInfo2.html) structure
        /// - Precondition: `pPropertyCount` **must** be a valid pointer to a `uint32_t` value
        /// - Precondition: If the value referenced by `pPropertyCount` is not `0`, and `pProperties` is not `NULL`, `pProperties` **must** be a valid pointer to an array of `pPropertyCount` [VkSparseImageFormatProperties2](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSparseImageFormatProperties2.html) structures
        ///
        /// - SeeAlso: [vkGetPhysicalDeviceSparseImageFormatProperties2 Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceSparseImageFormatProperties2.html)
        /// - Remark: Alias for getPhysicalDeviceSparseImageFormatProperties2
        @unsafe
        public var getPhysicalDeviceSparseImageFormatProperties2KHR: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2! {
            unsafe getPhysicalDeviceSparseImageFormatProperties2
        }

        #if PlatformAndroid
            /// To create a `VkSurfaceKHR` object for an Android native window, call:
            ///
            /// During the lifetime of a surface created using a particular [ANativeWindow](https://registry.khronos.org/vulkan/specs/latest/man/html/ANativeWindow.html) handle any attempts to create another surface for the same [ANativeWindow](https://registry.khronos.org/vulkan/specs/latest/man/html/ANativeWindow.html) and any attempts to connect to the same [ANativeWindow](https://registry.khronos.org/vulkan/specs/latest/man/html/ANativeWindow.html) through other platform mechanisms will fail.
            /// If successful, `vkCreateAndroidSurfaceKHR` increments the [ANativeWindow](https://registry.khronos.org/vulkan/specs/latest/man/html/ANativeWindow.html) ’s reference count, and `vkDestroySurfaceKHR` will decrement it.
            /// On Android, when a swapchain’s `imageExtent` does not match the surface’s `currentExtent`, the presentable images will be scaled to the surface’s dimensions during presentation. `minImageExtent` is (1,1), and `maxImageExtent` is the maximum image size supported by the consumer.
            /// For the system compositor, `currentExtent` is the window size (i.e. the consumer’s preferred size).
            ///
            /// - Parameters:
            ///   - instance: is the instance to associate the surface with.
            ///   - pCreateInfo: is a pointer to a [VkAndroidSurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAndroidSurfaceCreateInfoKHR.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///     - `VK_ERROR_NATIVE_WINDOW_IN_USE_KHR`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkAndroidSurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAndroidSurfaceCreateInfoKHR.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateAndroidSurfaceKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateAndroidSurfaceKHR.html)
            @unsafe
            public let createAndroidSurfaceKHR: PFN_vkCreateAndroidSurfaceKHR!
        #endif


        #if PlatformDirectfb
            /// To create a `VkSurfaceKHR` object for a DirectFB surface, call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance to associate the surface with.
            ///   - pCreateInfo: is a pointer to a [VkDirectFBSurfaceCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDirectFBSurfaceCreateInfoEXT.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkDirectFBSurfaceCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDirectFBSurfaceCreateInfoEXT.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateDirectFBSurfaceEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateDirectFBSurfaceEXT.html)
            @unsafe
            public let createDirectFBSurfaceEXT: PFN_vkCreateDirectFBSurfaceEXT!

            /// To determine whether a queue family of a physical device supports
            /// presentation with DirectFB library, call:
            ///
            /// This platform-specific function **can** be called prior to creating a surface.
            ///
            /// - Parameters:
            ///   - physicalDevice: is the physical device.
            ///   - queueFamilyIndex: is the queue family index.
            ///   - dfb: is a pointer to the `IDirectFB` main interface of DirectFB.
            ///
            /// ### Valid Usage
            /// ---
            /// - Precondition: `queueFamilyIndex` **must** be less than
            ///                 `pQueueFamilyPropertyCount` returned by
            ///                 `vkGetPhysicalDeviceQueueFamilyProperties` for the given
            ///                 `physicalDevice`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
            /// - Precondition: `dfb` **must** be a valid pointer to an `IDirectFB` value
            ///
            /// - SeeAlso: [vkGetPhysicalDeviceDirectFBPresentationSupportEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceDirectFBPresentationSupportEXT.html)
            @unsafe
            public let getPhysicalDeviceDirectFBPresentationSupportEXT:
                PFN_vkGetPhysicalDeviceDirectFBPresentationSupportEXT!
        #endif


        #if PlatformFuchsia
            /// To create a `VkSurfaceKHR` object for a Fuchsia ImagePipe, call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance to associate with the surface.
            ///   - pCreateInfo: is a pointer to a [VkImagePipeSurfaceCreateInfoFUCHSIA](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImagePipeSurfaceCreateInfoFUCHSIA.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkImagePipeSurfaceCreateInfoFUCHSIA](https://registry.khronos.org/vulkan/specs/latest/man/html/VkImagePipeSurfaceCreateInfoFUCHSIA.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateImagePipeSurfaceFUCHSIA Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateImagePipeSurfaceFUCHSIA.html)
            @unsafe
            public let createImagePipeSurfaceFUCHSIA: PFN_vkCreateImagePipeSurfaceFUCHSIA!
        #endif


        #if PlatformGgp
            /// To create a `VkSurfaceKHR` object for a Google Games Platform stream
            /// descriptor, call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance to associate with the surface.
            ///   - pCreateInfo: is a pointer to a `VkStreamDescriptorSurfaceCreateInfoGGP` structure containing parameters that affect the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///     - `VK_ERROR_NATIVE_WINDOW_IN_USE_KHR`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkStreamDescriptorSurfaceCreateInfoGGP](https://registry.khronos.org/vulkan/specs/latest/man/html/VkStreamDescriptorSurfaceCreateInfoGGP.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateStreamDescriptorSurfaceGGP Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateStreamDescriptorSurfaceGGP.html)
            @unsafe
            public let createStreamDescriptorSurfaceGGP: PFN_vkCreateStreamDescriptorSurfaceGGP!
        #endif


        #if PlatformIos
            /// To create a `VkSurfaceKHR` object for an iOS `UIView` or
            /// [CAMetalLayer](https://registry.khronos.org/vulkan/specs/latest/man/html/CAMetalLayer.html), call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance with which to associate the surface.
            ///   - pCreateInfo: is a pointer to a [VkIOSSurfaceCreateInfoMVK](https://registry.khronos.org/vulkan/specs/latest/man/html/VkIOSSurfaceCreateInfoMVK.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///     - `VK_ERROR_NATIVE_WINDOW_IN_USE_KHR`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkIOSSurfaceCreateInfoMVK](https://registry.khronos.org/vulkan/specs/latest/man/html/VkIOSSurfaceCreateInfoMVK.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateIOSSurfaceMVK Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateIOSSurfaceMVK.html)
            @unsafe
            public let createIOSSurfaceMVK: PFN_vkCreateIOSSurfaceMVK!
        #endif


        #if PlatformMacos
            /// To create a `VkSurfaceKHR` object for a macOS `NSView` or
            /// [CAMetalLayer](https://registry.khronos.org/vulkan/specs/latest/man/html/CAMetalLayer.html), call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance with which to associate the surface.
            ///   - pCreateInfo: is a pointer to a [VkMacOSSurfaceCreateInfoMVK](https://registry.khronos.org/vulkan/specs/latest/man/html/VkMacOSSurfaceCreateInfoMVK.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///     - `VK_ERROR_NATIVE_WINDOW_IN_USE_KHR`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkMacOSSurfaceCreateInfoMVK](https://registry.khronos.org/vulkan/specs/latest/man/html/VkMacOSSurfaceCreateInfoMVK.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateMacOSSurfaceMVK Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateMacOSSurfaceMVK.html)
            @unsafe
            public let createMacOSSurfaceMVK: PFN_vkCreateMacOSSurfaceMVK!
        #endif


        #if PlatformMetal
            /// To create a `VkSurfaceKHR` object for a [CAMetalLayer](https://registry.khronos.org/vulkan/specs/latest/man/html/CAMetalLayer.html), call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance with which to associate the surface.
            ///   - pCreateInfo: is a pointer to a [VkMetalSurfaceCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkMetalSurfaceCreateInfoEXT.html) structure specifying parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///     - `VK_ERROR_NATIVE_WINDOW_IN_USE_KHR`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkMetalSurfaceCreateInfoEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/VkMetalSurfaceCreateInfoEXT.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateMetalSurfaceEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateMetalSurfaceEXT.html)
            @unsafe
            public let createMetalSurfaceEXT: PFN_vkCreateMetalSurfaceEXT!
        #endif


        #if PlatformScreen
            /// To create a `VkSurfaceKHR` object for a QNX Screen surface, call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance to associate the surface with.
            ///   - pCreateInfo: is a pointer to a [VkScreenSurfaceCreateInfoQNX](https://registry.khronos.org/vulkan/specs/latest/man/html/VkScreenSurfaceCreateInfoQNX.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkScreenSurfaceCreateInfoQNX](https://registry.khronos.org/vulkan/specs/latest/man/html/VkScreenSurfaceCreateInfoQNX.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateScreenSurfaceQNX Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateScreenSurfaceQNX.html)
            @unsafe
            public let createScreenSurfaceQNX: PFN_vkCreateScreenSurfaceQNX!

            /// To determine whether a queue family of a physical device supports
            /// presentation to a QNX Screen compositor, call:
            ///
            /// This platform-specific function **can** be called prior to creating a surface.
            ///
            /// - Parameters:
            ///   - physicalDevice: is the physical device.
            ///   - queueFamilyIndex: is the queue family index.
            ///   - window: is the QNX Screen `window` object.
            ///
            /// ### Valid Usage
            /// ---
            /// - Precondition: `queueFamilyIndex` **must** be less than
            ///                 `pQueueFamilyPropertyCount` returned by
            ///                 `vkGetPhysicalDeviceQueueFamilyProperties` for the given
            ///                 `physicalDevice`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
            /// - Precondition: `window` **must** be a valid pointer to a `_screen_window` value
            ///
            /// - SeeAlso: [vkGetPhysicalDeviceScreenPresentationSupportQNX Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceScreenPresentationSupportQNX.html)
            @unsafe
            public let getPhysicalDeviceScreenPresentationSupportQNX: PFN_vkGetPhysicalDeviceScreenPresentationSupportQNX!
        #endif


        #if PlatformVi
            /// To create a `VkSurfaceKHR` object for an `nn`::`vi`::`Layer`,
            /// query the layer’s native handle using
            /// `nn`::`vi`::`GetNativeWindow`, and then call:
            ///
            /// During the lifetime of a surface created using a particular `nn`::`vi`::`NativeWindowHandle`, applications **must** not attempt to create another surface for the same `nn`::`vi`::`Layer` or attempt to connect to the same `nn`::`vi`::`Layer` through other platform mechanisms.
            /// If the native window is created with a specified size, `currentExtent` will reflect that size.
            /// In this case, applications should use the same size for the swapchain’s `imageExtent`.
            /// Otherwise, the `currentExtent` will have the special value (0xFFFFFFFF, 0xFFFFFFFF), indicating that applications are expected to choose an appropriate size for the swapchain’s `imageExtent` (e.g., by matching the result of a call to `nn`::`vi`::`GetDisplayResolution` ).
            ///
            /// - Parameters:
            ///   - instance: is the instance with which to associate the surface.
            ///   - pCreateInfo: is a pointer to a [VkViSurfaceCreateInfoNN](https://registry.khronos.org/vulkan/specs/latest/man/html/VkViSurfaceCreateInfoNN.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///     - `VK_ERROR_NATIVE_WINDOW_IN_USE_KHR`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkViSurfaceCreateInfoNN](https://registry.khronos.org/vulkan/specs/latest/man/html/VkViSurfaceCreateInfoNN.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateViSurfaceNN Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateViSurfaceNN.html)
            @unsafe
            public let createViSurfaceNN: PFN_vkCreateViSurfaceNN!
        #endif


        #if PlatformWayland
            /// To create a `VkSurfaceKHR` object for a Wayland surface, call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance to associate the surface with.
            ///   - pCreateInfo: is a pointer to a [VkWaylandSurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkWaylandSurfaceCreateInfoKHR.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkWaylandSurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkWaylandSurfaceCreateInfoKHR.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateWaylandSurfaceKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateWaylandSurfaceKHR.html)
            @unsafe
            public let createWaylandSurfaceKHR: PFN_vkCreateWaylandSurfaceKHR!

            /// To determine whether a queue family of a physical device supports
            /// presentation to a Wayland compositor, call:
            ///
            /// This platform-specific function **can** be called prior to creating a surface.
            ///
            /// - Parameters:
            ///   - physicalDevice: is the physical device.
            ///   - queueFamilyIndex: is the queue family index.
            ///   - display: is a pointer to the `wl_display` associated with a Wayland compositor.
            ///
            /// ### Valid Usage
            /// ---
            /// - Precondition: `queueFamilyIndex` **must** be less than
            ///                 `pQueueFamilyPropertyCount` returned by
            ///                 `vkGetPhysicalDeviceQueueFamilyProperties` for the given
            ///                 `physicalDevice`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
            /// - Precondition: `display` **must** be a valid pointer to a `wl_display` value
            ///
            /// - SeeAlso: [vkGetPhysicalDeviceWaylandPresentationSupportKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceWaylandPresentationSupportKHR.html)
            @unsafe
            public let getPhysicalDeviceWaylandPresentationSupportKHR: PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR!
        #endif


        #if PlatformWin32
            /// To create a `VkSurfaceKHR` object for a Win32 window, call:
            ///
            /// Some Vulkan functions **may** call the `SendMessage` system API when interacting with a `VkSurfaceKHR` through a `VkSwapchainKHR`.
            /// In a multithreaded environment, calling `SendMessage` from a thread that is not the thread associated with `pCreateInfo->hwnd` will block until the application has processed the window message.
            /// Thus, applications **should** either call these Vulkan functions on the message pump thread, or make sure their message pump is actively running.
            /// Failing to do so **may** result in deadlocks.
            /// The functions subject to this requirement are:
            /// - [vkCreateSwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateSwapchainKHR.html)
            /// - [vkDestroySwapchainKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkDestroySwapchainKHR.html)
            /// - [vkAcquireNextImageKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkAcquireNextImageKHR.html) and [vkAcquireNextImage2KHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkAcquireNextImage2KHR.html)
            /// - [vkQueuePresentKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/vkQueuePresentKHR.html)
            /// - [vkReleaseSwapchainImagesEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkReleaseSwapchainImagesEXT.html)
            /// - [vkAcquireFullScreenExclusiveModeEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkAcquireFullScreenExclusiveModeEXT.html)
            /// - [vkReleaseFullScreenExclusiveModeEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkReleaseFullScreenExclusiveModeEXT.html)
            /// - [vkSetHdrMetadataEXT](https://registry.khronos.org/vulkan/specs/latest/man/html/vkSetHdrMetadataEXT.html)
            ///
            /// - Parameters:
            ///   - instance: is the instance to associate the surface with.
            ///   - pCreateInfo: is a pointer to a [VkWin32SurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkWin32SurfaceCreateInfoKHR.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkWin32SurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkWin32SurfaceCreateInfoKHR.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateWin32SurfaceKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateWin32SurfaceKHR.html)
            @unsafe
            public let createWin32SurfaceKHR: PFN_vkCreateWin32SurfaceKHR!

            /// To determine whether a queue family of a physical device supports
            /// presentation to the Microsoft Windows desktop, call:
            ///
            /// This platform-specific function **can** be called prior to creating a surface.
            ///
            /// - Parameters:
            ///   - physicalDevice: is the physical device.
            ///   - queueFamilyIndex: is the queue family index.
            ///
            /// ### Valid Usage
            /// ---
            /// - Precondition: `queueFamilyIndex` **must** be less than
            ///                 `pQueueFamilyPropertyCount` returned by
            ///                 `vkGetPhysicalDeviceQueueFamilyProperties` for the given
            ///                 `physicalDevice`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
            ///
            /// - SeeAlso: [vkGetPhysicalDeviceWin32PresentationSupportKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceWin32PresentationSupportKHR.html)
            @unsafe
            public let getPhysicalDeviceWin32PresentationSupportKHR: PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR!
        #endif


        #if PlatformXcb
            /// To create a `VkSurfaceKHR` object for an X11 window, using the XCB
            /// client-side library, call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance to associate the surface with.
            ///   - pCreateInfo: is a pointer to a [VkXcbSurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkXcbSurfaceCreateInfoKHR.html) structure containing parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkXcbSurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkXcbSurfaceCreateInfoKHR.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateXcbSurfaceKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateXcbSurfaceKHR.html)
            @unsafe
            public let createXcbSurfaceKHR: PFN_vkCreateXcbSurfaceKHR!

            /// To determine whether a queue family of a physical device supports
            /// presentation to an X11 server, using the XCB client-side library, call:
            ///
            /// This platform-specific function **can** be called prior to creating a surface.
            ///
            /// - Parameters:
            ///   - physicalDevice: is the physical device.
            ///   - queueFamilyIndex: is the queue family index.
            ///   - connection: is a pointer to an `xcb_connection_t` to the X server.
            ///   - visual_id: is an X11 visual (`xcb_visualid_t` ).
            ///
            /// ### Valid Usage
            /// ---
            /// - Precondition: `queueFamilyIndex` **must** be less than
            ///                 `pQueueFamilyPropertyCount` returned by
            ///                 `vkGetPhysicalDeviceQueueFamilyProperties` for the given
            ///                 `physicalDevice`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
            /// - Precondition: `connection` **must** be a valid pointer to an `xcb_connection_t` value
            ///
            /// - SeeAlso: [vkGetPhysicalDeviceXcbPresentationSupportKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceXcbPresentationSupportKHR.html)
            @unsafe
            public let getPhysicalDeviceXcbPresentationSupportKHR: PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR!
        #endif


        #if PlatformXlib
            /// To create a `VkSurfaceKHR` object for an X11 window, using the Xlib
            /// client-side library, call:
            ///
            ///
            /// - Parameters:
            ///   - instance: is the instance to associate the surface with.
            ///   - pCreateInfo: is a pointer to a [VkXlibSurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkXlibSurfaceCreateInfoKHR.html) structure containing the parameters affecting the creation of the surface object.
            ///   - pAllocator: is the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see [Memory Allocation](https://registry.khronos.org/vulkan/specs/latest/html/vkspec.html#memory-allocation) ).
            ///   - pSurface: is a pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle in which the created surface object is returned.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_OUT_OF_DEVICE_MEMORY`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `instance` **must** be a valid [VkInstance](https://registry.khronos.org/vulkan/specs/latest/man/html/VkInstance.html) handle
            /// - Precondition: `pCreateInfo` **must** be a valid pointer to a valid [VkXlibSurfaceCreateInfoKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkXlibSurfaceCreateInfoKHR.html) structure
            /// - Precondition: If `pAllocator` is not `NULL`, `pAllocator` **must** be a valid pointer to a valid [VkAllocationCallbacks](https://registry.khronos.org/vulkan/specs/latest/man/html/VkAllocationCallbacks.html) structure
            /// - Precondition: `pSurface` **must** be a valid pointer to a [VkSurfaceKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSurfaceKHR.html) handle
            ///
            /// - SeeAlso: [vkCreateXlibSurfaceKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkCreateXlibSurfaceKHR.html)
            @unsafe
            public let createXlibSurfaceKHR: PFN_vkCreateXlibSurfaceKHR!

            /// To determine whether a queue family of a physical device supports
            /// presentation to an X11 server, using the Xlib client-side library, call:
            ///
            /// This platform-specific function **can** be called prior to creating a surface.
            ///
            /// - Parameters:
            ///   - physicalDevice: is the physical device.
            ///   - queueFamilyIndex: is the queue family index.
            ///   - dpy: is a pointer to an Xlib `Display` connection to the server.
            ///   - visualID: is an X11 visual (`VisualID` ).
            ///
            /// ### Valid Usage
            /// ---
            /// - Precondition: `queueFamilyIndex` **must** be less than
            ///                 `pQueueFamilyPropertyCount` returned by
            ///                 `vkGetPhysicalDeviceQueueFamilyProperties` for the given
            ///                 `physicalDevice`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
            /// - Precondition: `dpy` **must** be a valid pointer to a `Display` value
            ///
            /// - SeeAlso: [vkGetPhysicalDeviceXlibPresentationSupportKHR Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetPhysicalDeviceXlibPresentationSupportKHR.html)
            @unsafe
            public let getPhysicalDeviceXlibPresentationSupportKHR: PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR!
        #endif


        #if PlatformXlibXrandr
            /// To acquire permission to directly access a display in Vulkan from an X11
            /// server, call:
            ///
            /// All permissions necessary to control the display are granted to the Vulkan instance associated with `physicalDevice` until the display is released or the X11 connection specified by `dpy` is terminated.
            /// Permission to access the display **may** be temporarily revoked during periods when the X11 server from which control was acquired itself loses access to `display`.
            /// During such periods, operations which require access to the display **must** fail with an appropriate error code.
            /// If the X11 server associated with `dpy` does not own `display`, or if permission to access it has already been acquired by another entity, the call **must** return the error code `VK_ERROR_INITIALIZATION_FAILED`.
            ///
            /// - Parameters:
            ///   - physicalDevice: The physical device the display is on.
            ///   - dpy: A connection to the X11 server that currently owns `display`.
            ///   - display: The display the caller wishes to control in Vulkan.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///     - `VK_ERROR_INITIALIZATION_FAILED`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
            /// - Precondition: `dpy` **must** be a valid pointer to a `Display` value
            /// - Precondition: `display` **must** be a valid [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle
            /// - Precondition: `display` **must** have been created, allocated, or retrieved from `physicalDevice`
            ///
            /// - SeeAlso: [vkAcquireXlibDisplayEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkAcquireXlibDisplayEXT.html)
            @unsafe
            public let acquireXlibDisplayEXT: PFN_vkAcquireXlibDisplayEXT!

            /// When acquiring displays from an X11 server, an application may also wish to
            /// enumerate and identify them using a native handle rather than a
            /// `VkDisplayKHR` handle.
            /// To determine the `VkDisplayKHR` handle corresponding to an X11 RandR
            /// Output, call:
            ///
            /// If there is no [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) corresponding to `rrOutput` on `physicalDevice`, [VK_NULL_HANDLE](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NULL_HANDLE.html) **must** be returned in `pDisplay`.
            ///
            /// - Parameters:
            ///   - physicalDevice: The physical device to query the display handle on.
            ///   - dpy: A connection to the X11 server from which `rrOutput` was queried.
            ///   - rrOutput: An X11 RandR output ID.
            ///   - pDisplay: The corresponding [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle will be returned here.
            ///
            /// - Returns:
            ///   - On success:
            ///     - `VK_SUCCESS`
            ///   - On failure:
            ///     - `VK_ERROR_OUT_OF_HOST_MEMORY`
            ///
            /// ### Valid Usage (Implicit)
            /// ---
            /// - Precondition: `physicalDevice` **must** be a valid [VkPhysicalDevice](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice.html) handle
            /// - Precondition: `dpy` **must** be a valid pointer to a `Display` value
            /// - Precondition: `pDisplay` **must** be a valid pointer to a [VkDisplayKHR](https://registry.khronos.org/vulkan/specs/latest/man/html/VkDisplayKHR.html) handle
            ///
            /// - SeeAlso: [vkGetRandROutputDisplayEXT Documentation](https://registry.khronos.org/vulkan/specs/latest/man/html/vkGetRandROutputDisplayEXT.html)
            @unsafe
            public let getRandROutputDisplayEXT: PFN_vkGetRandROutputDisplayEXT!
        #endif


        // END_GENERATE_INSTANCE_TABLE

        /// Initialize the instance table by calling the Vulkan function `vkGetInstanceProcAddr` to load all the instance-level functions.
        /// - Parameters:
        ///   - getInstanceProcAddr: A function pointer to `vkGetInstanceProcAddr`. This is used to load the Vulkan functions.
        ///   - instance: A handle to the Vulkan instance. This is passed to `getInstanceProcAddr` to load the functions.
        @safe
        internal init(getInstanceProcAddr: PFN_vkGetInstanceProcAddr, instance: VkInstance) {
            let getProcAddr = unsafe getInstanceProcAddr
            let context = unsafe instance

            // BEGIN_GENERATE_INSTANCE_TABLE_INIT
            traceLog("Loading vkDestroyInstance command in InstanceTable")
            unsafe self.destroyInstance = unsafeBitCast(
                getProcAddr(context, "vkDestroyInstance"),
                to: PFN_vkDestroyInstance.self
            )
            if unsafe self.destroyInstance == nil {
                debugLog("Failed to load vkDestroyInstance command in InstanceTable")
            }

            traceLog("Loading vkEnumeratePhysicalDevices command in InstanceTable")
            unsafe self.enumeratePhysicalDevices = unsafeBitCast(
                getProcAddr(context, "vkEnumeratePhysicalDevices"),
                to: PFN_vkEnumeratePhysicalDevices.self
            )
            if unsafe self.enumeratePhysicalDevices == nil {
                debugLog("Failed to load vkEnumeratePhysicalDevices command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceProperties command in InstanceTable")
            unsafe self.getPhysicalDeviceProperties = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceProperties"),
                to: PFN_vkGetPhysicalDeviceProperties.self
            )
            if unsafe self.getPhysicalDeviceProperties == nil {
                debugLog("Failed to load vkGetPhysicalDeviceProperties command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceQueueFamilyProperties command in InstanceTable")
            unsafe self.getPhysicalDeviceQueueFamilyProperties = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceQueueFamilyProperties"),
                to: PFN_vkGetPhysicalDeviceQueueFamilyProperties.self
            )
            if unsafe self.getPhysicalDeviceQueueFamilyProperties == nil {
                debugLog("Failed to load vkGetPhysicalDeviceQueueFamilyProperties command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceMemoryProperties command in InstanceTable")
            unsafe self.getPhysicalDeviceMemoryProperties = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceMemoryProperties"),
                to: PFN_vkGetPhysicalDeviceMemoryProperties.self
            )
            if unsafe self.getPhysicalDeviceMemoryProperties == nil {
                debugLog("Failed to load vkGetPhysicalDeviceMemoryProperties command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceFeatures command in InstanceTable")
            unsafe self.getPhysicalDeviceFeatures = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceFeatures"),
                to: PFN_vkGetPhysicalDeviceFeatures.self
            )
            if unsafe self.getPhysicalDeviceFeatures == nil {
                debugLog("Failed to load vkGetPhysicalDeviceFeatures command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceFormatProperties command in InstanceTable")
            unsafe self.getPhysicalDeviceFormatProperties = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceFormatProperties"),
                to: PFN_vkGetPhysicalDeviceFormatProperties.self
            )
            if unsafe self.getPhysicalDeviceFormatProperties == nil {
                debugLog("Failed to load vkGetPhysicalDeviceFormatProperties command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceImageFormatProperties command in InstanceTable")
            unsafe self.getPhysicalDeviceImageFormatProperties = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceImageFormatProperties"),
                to: PFN_vkGetPhysicalDeviceImageFormatProperties.self
            )
            if unsafe self.getPhysicalDeviceImageFormatProperties == nil {
                debugLog("Failed to load vkGetPhysicalDeviceImageFormatProperties command in InstanceTable")
            }

            traceLog("Loading vkCreateDevice command in InstanceTable")
            unsafe self.createDevice = unsafeBitCast(
                getProcAddr(context, "vkCreateDevice"),
                to: PFN_vkCreateDevice.self
            )
            if unsafe self.createDevice == nil {
                debugLog("Failed to load vkCreateDevice command in InstanceTable")
            }

            traceLog("Loading vkEnumerateDeviceLayerProperties command in InstanceTable")
            unsafe self.enumerateDeviceLayerProperties = unsafeBitCast(
                getProcAddr(context, "vkEnumerateDeviceLayerProperties"),
                to: PFN_vkEnumerateDeviceLayerProperties.self
            )
            if unsafe self.enumerateDeviceLayerProperties == nil {
                debugLog("Failed to load vkEnumerateDeviceLayerProperties command in InstanceTable")
            }

            traceLog("Loading vkEnumerateDeviceExtensionProperties command in InstanceTable")
            unsafe self.enumerateDeviceExtensionProperties = unsafeBitCast(
                getProcAddr(context, "vkEnumerateDeviceExtensionProperties"),
                to: PFN_vkEnumerateDeviceExtensionProperties.self
            )
            if unsafe self.enumerateDeviceExtensionProperties == nil {
                debugLog("Failed to load vkEnumerateDeviceExtensionProperties command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceSparseImageFormatProperties command in InstanceTable")
            unsafe self.getPhysicalDeviceSparseImageFormatProperties = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceSparseImageFormatProperties"),
                to: PFN_vkGetPhysicalDeviceSparseImageFormatProperties.self
            )
            if unsafe self.getPhysicalDeviceSparseImageFormatProperties == nil {
                debugLog("Failed to load vkGetPhysicalDeviceSparseImageFormatProperties command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceDisplayPropertiesKHR command in InstanceTable")
            unsafe self.getPhysicalDeviceDisplayPropertiesKHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceDisplayPropertiesKHR"),
                to: PFN_vkGetPhysicalDeviceDisplayPropertiesKHR.self
            )
            if unsafe self.getPhysicalDeviceDisplayPropertiesKHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceDisplayPropertiesKHR command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceDisplayPlanePropertiesKHR command in InstanceTable")
            unsafe self.getPhysicalDeviceDisplayPlanePropertiesKHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceDisplayPlanePropertiesKHR"),
                to: PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR.self
            )
            if unsafe self.getPhysicalDeviceDisplayPlanePropertiesKHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceDisplayPlanePropertiesKHR command in InstanceTable")
            }

            traceLog("Loading vkGetDisplayPlaneSupportedDisplaysKHR command in InstanceTable")
            unsafe self.getDisplayPlaneSupportedDisplaysKHR = unsafeBitCast(
                getProcAddr(context, "vkGetDisplayPlaneSupportedDisplaysKHR"),
                to: PFN_vkGetDisplayPlaneSupportedDisplaysKHR.self
            )
            if unsafe self.getDisplayPlaneSupportedDisplaysKHR == nil {
                debugLog("Failed to load vkGetDisplayPlaneSupportedDisplaysKHR command in InstanceTable")
            }

            traceLog("Loading vkGetDisplayModePropertiesKHR command in InstanceTable")
            unsafe self.getDisplayModePropertiesKHR = unsafeBitCast(
                getProcAddr(context, "vkGetDisplayModePropertiesKHR"),
                to: PFN_vkGetDisplayModePropertiesKHR.self
            )
            if unsafe self.getDisplayModePropertiesKHR == nil {
                debugLog("Failed to load vkGetDisplayModePropertiesKHR command in InstanceTable")
            }

            traceLog("Loading vkCreateDisplayModeKHR command in InstanceTable")
            unsafe self.createDisplayModeKHR = unsafeBitCast(
                getProcAddr(context, "vkCreateDisplayModeKHR"),
                to: PFN_vkCreateDisplayModeKHR.self
            )
            if unsafe self.createDisplayModeKHR == nil {
                debugLog("Failed to load vkCreateDisplayModeKHR command in InstanceTable")
            }

            traceLog("Loading vkGetDisplayPlaneCapabilitiesKHR command in InstanceTable")
            unsafe self.getDisplayPlaneCapabilitiesKHR = unsafeBitCast(
                getProcAddr(context, "vkGetDisplayPlaneCapabilitiesKHR"),
                to: PFN_vkGetDisplayPlaneCapabilitiesKHR.self
            )
            if unsafe self.getDisplayPlaneCapabilitiesKHR == nil {
                debugLog("Failed to load vkGetDisplayPlaneCapabilitiesKHR command in InstanceTable")
            }

            traceLog("Loading vkCreateDisplayPlaneSurfaceKHR command in InstanceTable")
            unsafe self.createDisplayPlaneSurfaceKHR = unsafeBitCast(
                getProcAddr(context, "vkCreateDisplayPlaneSurfaceKHR"),
                to: PFN_vkCreateDisplayPlaneSurfaceKHR.self
            )
            if unsafe self.createDisplayPlaneSurfaceKHR == nil {
                debugLog("Failed to load vkCreateDisplayPlaneSurfaceKHR command in InstanceTable")
            }

            traceLog("Loading vkDestroySurfaceKHR command in InstanceTable")
            unsafe self.destroySurfaceKHR = unsafeBitCast(
                getProcAddr(context, "vkDestroySurfaceKHR"),
                to: PFN_vkDestroySurfaceKHR.self
            )
            if unsafe self.destroySurfaceKHR == nil {
                debugLog("Failed to load vkDestroySurfaceKHR command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceSurfaceSupportKHR command in InstanceTable")
            unsafe self.getPhysicalDeviceSurfaceSupportKHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceSurfaceSupportKHR"),
                to: PFN_vkGetPhysicalDeviceSurfaceSupportKHR.self
            )
            if unsafe self.getPhysicalDeviceSurfaceSupportKHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceSurfaceSupportKHR command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceSurfaceCapabilitiesKHR command in InstanceTable")
            unsafe self.getPhysicalDeviceSurfaceCapabilitiesKHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR"),
                to: PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR.self
            )
            if unsafe self.getPhysicalDeviceSurfaceCapabilitiesKHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceSurfaceCapabilitiesKHR command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceSurfaceFormatsKHR command in InstanceTable")
            unsafe self.getPhysicalDeviceSurfaceFormatsKHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceSurfaceFormatsKHR"),
                to: PFN_vkGetPhysicalDeviceSurfaceFormatsKHR.self
            )
            if unsafe self.getPhysicalDeviceSurfaceFormatsKHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceSurfaceFormatsKHR command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceSurfacePresentModesKHR command in InstanceTable")
            unsafe self.getPhysicalDeviceSurfacePresentModesKHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceSurfacePresentModesKHR"),
                to: PFN_vkGetPhysicalDeviceSurfacePresentModesKHR.self
            )
            if unsafe self.getPhysicalDeviceSurfacePresentModesKHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceSurfacePresentModesKHR command in InstanceTable")
            }

            traceLog("Loading vkCreateDebugReportCallbackEXT command in InstanceTable")
            unsafe self.createDebugReportCallbackEXT = unsafeBitCast(
                getProcAddr(context, "vkCreateDebugReportCallbackEXT"),
                to: PFN_vkCreateDebugReportCallbackEXT.self
            )
            if unsafe self.createDebugReportCallbackEXT == nil {
                debugLog("Failed to load vkCreateDebugReportCallbackEXT command in InstanceTable")
            }

            traceLog("Loading vkDestroyDebugReportCallbackEXT command in InstanceTable")
            unsafe self.destroyDebugReportCallbackEXT = unsafeBitCast(
                getProcAddr(context, "vkDestroyDebugReportCallbackEXT"),
                to: PFN_vkDestroyDebugReportCallbackEXT.self
            )
            if unsafe self.destroyDebugReportCallbackEXT == nil {
                debugLog("Failed to load vkDestroyDebugReportCallbackEXT command in InstanceTable")
            }

            traceLog("Loading vkDebugReportMessageEXT command in InstanceTable")
            unsafe self.debugReportMessageEXT = unsafeBitCast(
                getProcAddr(context, "vkDebugReportMessageEXT"),
                to: PFN_vkDebugReportMessageEXT.self
            )
            if unsafe self.debugReportMessageEXT == nil {
                debugLog("Failed to load vkDebugReportMessageEXT command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceExternalImageFormatPropertiesNV command in InstanceTable")
            unsafe self.getPhysicalDeviceExternalImageFormatPropertiesNV = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceExternalImageFormatPropertiesNV"),
                to: PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV.self
            )
            if unsafe self.getPhysicalDeviceExternalImageFormatPropertiesNV == nil {
                debugLog("Failed to load vkGetPhysicalDeviceExternalImageFormatPropertiesNV command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceFeatures2 command in InstanceTable")
            unsafe self.getPhysicalDeviceFeatures2 = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceFeatures2"),
                to: PFN_vkGetPhysicalDeviceFeatures2.self
            )
            if unsafe self.getPhysicalDeviceFeatures2 == nil {
                debugLog("Failed to load vkGetPhysicalDeviceFeatures2 command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceProperties2 command in InstanceTable")
            unsafe self.getPhysicalDeviceProperties2 = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceProperties2"),
                to: PFN_vkGetPhysicalDeviceProperties2.self
            )
            if unsafe self.getPhysicalDeviceProperties2 == nil {
                debugLog("Failed to load vkGetPhysicalDeviceProperties2 command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceFormatProperties2 command in InstanceTable")
            unsafe self.getPhysicalDeviceFormatProperties2 = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceFormatProperties2"),
                to: PFN_vkGetPhysicalDeviceFormatProperties2.self
            )
            if unsafe self.getPhysicalDeviceFormatProperties2 == nil {
                debugLog("Failed to load vkGetPhysicalDeviceFormatProperties2 command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceImageFormatProperties2 command in InstanceTable")
            unsafe self.getPhysicalDeviceImageFormatProperties2 = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceImageFormatProperties2"),
                to: PFN_vkGetPhysicalDeviceImageFormatProperties2.self
            )
            if unsafe self.getPhysicalDeviceImageFormatProperties2 == nil {
                debugLog("Failed to load vkGetPhysicalDeviceImageFormatProperties2 command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceQueueFamilyProperties2 command in InstanceTable")
            unsafe self.getPhysicalDeviceQueueFamilyProperties2 = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceQueueFamilyProperties2"),
                to: PFN_vkGetPhysicalDeviceQueueFamilyProperties2.self
            )
            if unsafe self.getPhysicalDeviceQueueFamilyProperties2 == nil {
                debugLog("Failed to load vkGetPhysicalDeviceQueueFamilyProperties2 command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceMemoryProperties2 command in InstanceTable")
            unsafe self.getPhysicalDeviceMemoryProperties2 = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceMemoryProperties2"),
                to: PFN_vkGetPhysicalDeviceMemoryProperties2.self
            )
            if unsafe self.getPhysicalDeviceMemoryProperties2 == nil {
                debugLog("Failed to load vkGetPhysicalDeviceMemoryProperties2 command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceSparseImageFormatProperties2 command in InstanceTable")
            unsafe self.getPhysicalDeviceSparseImageFormatProperties2 = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceSparseImageFormatProperties2"),
                to: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2.self
            )
            if unsafe self.getPhysicalDeviceSparseImageFormatProperties2 == nil {
                debugLog("Failed to load vkGetPhysicalDeviceSparseImageFormatProperties2 command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceExternalBufferProperties command in InstanceTable")
            unsafe self.getPhysicalDeviceExternalBufferProperties = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceExternalBufferProperties"),
                to: PFN_vkGetPhysicalDeviceExternalBufferProperties.self
            )
            if unsafe self.getPhysicalDeviceExternalBufferProperties == nil {
                debugLog("Failed to load vkGetPhysicalDeviceExternalBufferProperties command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceExternalSemaphoreProperties command in InstanceTable")
            unsafe self.getPhysicalDeviceExternalSemaphoreProperties = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceExternalSemaphoreProperties"),
                to: PFN_vkGetPhysicalDeviceExternalSemaphoreProperties.self
            )
            if unsafe self.getPhysicalDeviceExternalSemaphoreProperties == nil {
                debugLog("Failed to load vkGetPhysicalDeviceExternalSemaphoreProperties command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceExternalFenceProperties command in InstanceTable")
            unsafe self.getPhysicalDeviceExternalFenceProperties = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceExternalFenceProperties"),
                to: PFN_vkGetPhysicalDeviceExternalFenceProperties.self
            )
            if unsafe self.getPhysicalDeviceExternalFenceProperties == nil {
                debugLog("Failed to load vkGetPhysicalDeviceExternalFenceProperties command in InstanceTable")
            }

            traceLog("Loading vkReleaseDisplayEXT command in InstanceTable")
            unsafe self.releaseDisplayEXT = unsafeBitCast(
                getProcAddr(context, "vkReleaseDisplayEXT"),
                to: PFN_vkReleaseDisplayEXT.self
            )
            if unsafe self.releaseDisplayEXT == nil {
                debugLog("Failed to load vkReleaseDisplayEXT command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceSurfaceCapabilities2EXT command in InstanceTable")
            unsafe self.getPhysicalDeviceSurfaceCapabilities2EXT = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceSurfaceCapabilities2EXT"),
                to: PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT.self
            )
            if unsafe self.getPhysicalDeviceSurfaceCapabilities2EXT == nil {
                debugLog("Failed to load vkGetPhysicalDeviceSurfaceCapabilities2EXT command in InstanceTable")
            }

            traceLog("Loading vkEnumeratePhysicalDeviceGroups command in InstanceTable")
            unsafe self.enumeratePhysicalDeviceGroups = unsafeBitCast(
                getProcAddr(context, "vkEnumeratePhysicalDeviceGroups"),
                to: PFN_vkEnumeratePhysicalDeviceGroups.self
            )
            if unsafe self.enumeratePhysicalDeviceGroups == nil {
                debugLog("Failed to load vkEnumeratePhysicalDeviceGroups command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceSurfaceCapabilities2KHR command in InstanceTable")
            unsafe self.getPhysicalDeviceSurfaceCapabilities2KHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceSurfaceCapabilities2KHR"),
                to: PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR.self
            )
            if unsafe self.getPhysicalDeviceSurfaceCapabilities2KHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceSurfaceCapabilities2KHR command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceSurfaceFormats2KHR command in InstanceTable")
            unsafe self.getPhysicalDeviceSurfaceFormats2KHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceSurfaceFormats2KHR"),
                to: PFN_vkGetPhysicalDeviceSurfaceFormats2KHR.self
            )
            if unsafe self.getPhysicalDeviceSurfaceFormats2KHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceSurfaceFormats2KHR command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceDisplayProperties2KHR command in InstanceTable")
            unsafe self.getPhysicalDeviceDisplayProperties2KHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceDisplayProperties2KHR"),
                to: PFN_vkGetPhysicalDeviceDisplayProperties2KHR.self
            )
            if unsafe self.getPhysicalDeviceDisplayProperties2KHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceDisplayProperties2KHR command in InstanceTable")
            }

            traceLog("Loading vkGetPhysicalDeviceDisplayPlaneProperties2KHR command in InstanceTable")
            unsafe self.getPhysicalDeviceDisplayPlaneProperties2KHR = unsafeBitCast(
                getProcAddr(context, "vkGetPhysicalDeviceDisplayPlaneProperties2KHR"),
                to: PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR.self
            )
            if unsafe self.getPhysicalDeviceDisplayPlaneProperties2KHR == nil {
                debugLog("Failed to load vkGetPhysicalDeviceDisplayPlaneProperties2KHR command in InstanceTable")
            }

            traceLog("Loading vkGetDisplayModeProperties2KHR command in InstanceTable")
            unsafe self.getDisplayModeProperties2KHR = unsafeBitCast(
                getProcAddr(context, "vkGetDisplayModeProperties2KHR"),
                to: PFN_vkGetDisplayModeProperties2KHR.self
            )
            if unsafe self.getDisplayModeProperties2KHR == nil {
                debugLog("Failed to load vkGetDisplayModeProperties2KHR command in InstanceTable")
            }

            traceLog("Loading vkGetDisplayPlaneCapabilities2KHR command in InstanceTable")
            unsafe self.getDisplayPlaneCapabilities2KHR = unsafeBitCast(
                getProcAddr(context, "vkGetDisplayPlaneCapabilities2KHR"),
                to: PFN_vkGetDisplayPlaneCapabilities2KHR.self
            )
            if unsafe self.getDisplayPlaneCapabilities2KHR == nil {
                debugLog("Failed to load vkGetDisplayPlaneCapabilities2KHR command in InstanceTable")
            }

            traceLog("Loading vkSetDebugUtilsObjectNameEXT command in InstanceTable")
            unsafe self.setDebugUtilsObjectNameEXT = unsafeBitCast(
                getProcAddr(context, "vkSetDebugUtilsObjectNameEXT"),
                to: PFN_vkSetDebugUtilsObjectNameEXT.self
            )
            if unsafe self.setDebugUtilsObjectNameEXT == nil {
                debugLog("Failed to load vkSetDebugUtilsObjectNameEXT command in InstanceTable")
            }

            traceLog("Loading vkSetDebugUtilsObjectTagEXT command in InstanceTable")
            unsafe self.setDebugUtilsObjectTagEXT = unsafeBitCast(
                getProcAddr(context, "vkSetDebugUtilsObjectTagEXT"),
                to: PFN_vkSetDebugUtilsObjectTagEXT.self
            )
            if unsafe self.setDebugUtilsObjectTagEXT == nil {
                debugLog("Failed to load vkSetDebugUtilsObjectTagEXT command in InstanceTable")
            }

            traceLog("Loading vkQueueBeginDebugUtilsLabelEXT command in InstanceTable")
            unsafe self.queueBeginDebugUtilsLabelEXT = unsafeBitCast(
                getProcAddr(context, "vkQueueBeginDebugUtilsLabelEXT"),
                to: PFN_vkQueueBeginDebugUtilsLabelEXT.self
            )
            if unsafe self.queueBeginDebugUtilsLabelEXT == nil {
                debugLog("Failed to load vkQueueBeginDebugUtilsLabelEXT command in InstanceTable")
            }

            traceLog("Loading vkQueueEndDebugUtilsLabelEXT command in InstanceTable")
            unsafe self.queueEndDebugUtilsLabelEXT = unsafeBitCast(
                getProcAddr(context, "vkQueueEndDebugUtilsLabelEXT"),
                to: PFN_vkQueueEndDebugUtilsLabelEXT.self
            )
            if unsafe self.queueEndDebugUtilsLabelEXT == nil {
                debugLog("Failed to load vkQueueEndDebugUtilsLabelEXT command in InstanceTable")
            }

            traceLog("Loading vkQueueInsertDebugUtilsLabelEXT command in InstanceTable")
            unsafe self.queueInsertDebugUtilsLabelEXT = unsafeBitCast(
                getProcAddr(context, "vkQueueInsertDebugUtilsLabelEXT"),
                to: PFN_vkQueueInsertDebugUtilsLabelEXT.self
            )
            if unsafe self.queueInsertDebugUtilsLabelEXT == nil {
                debugLog("Failed to load vkQueueInsertDebugUtilsLabelEXT command in InstanceTable")
            }

            traceLog("Loading vkCmdBeginDebugUtilsLabelEXT command in InstanceTable")
            unsafe self.cmdBeginDebugUtilsLabelEXT = unsafeBitCast(
                getProcAddr(context, "vkCmdBeginDebugUtilsLabelEXT"),
                to: PFN_vkCmdBeginDebugUtilsLabelEXT.self
            )
            if unsafe self.cmdBeginDebugUtilsLabelEXT == nil {
                debugLog("Failed to load vkCmdBeginDebugUtilsLabelEXT command in InstanceTable")
            }

            traceLog("Loading vkCmdEndDebugUtilsLabelEXT command in InstanceTable")
            unsafe self.cmdEndDebugUtilsLabelEXT = unsafeBitCast(
                getProcAddr(context, "vkCmdEndDebugUtilsLabelEXT"),
                to: PFN_vkCmdEndDebugUtilsLabelEXT.self
            )
            if unsafe self.cmdEndDebugUtilsLabelEXT == nil {
                debugLog("Failed to load vkCmdEndDebugUtilsLabelEXT command in InstanceTable")
            }

            traceLog("Loading vkCmdInsertDebugUtilsLabelEXT command in InstanceTable")
            unsafe self.cmdInsertDebugUtilsLabelEXT = unsafeBitCast(
                getProcAddr(context, "vkCmdInsertDebugUtilsLabelEXT"),
                to: PFN_vkCmdInsertDebugUtilsLabelEXT.self
            )
            if unsafe self.cmdInsertDebugUtilsLabelEXT == nil {
                debugLog("Failed to load vkCmdInsertDebugUtilsLabelEXT command in InstanceTable")
            }

            traceLog("Loading vkCreateDebugUtilsMessengerEXT command in InstanceTable")
            unsafe self.createDebugUtilsMessengerEXT = unsafeBitCast(
                getProcAddr(context, "vkCreateDebugUtilsMessengerEXT"),
                to: PFN_vkCreateDebugUtilsMessengerEXT.self
            )
            if unsafe self.createDebugUtilsMessengerEXT == nil {
                debugLog("Failed to load vkCreateDebugUtilsMessengerEXT command in InstanceTable")
            }

            traceLog("Loading vkDestroyDebugUtilsMessengerEXT command in InstanceTable")
            unsafe self.destroyDebugUtilsMessengerEXT = unsafeBitCast(
                getProcAddr(context, "vkDestroyDebugUtilsMessengerEXT"),
                to: PFN_vkDestroyDebugUtilsMessengerEXT.self
            )
            if unsafe self.destroyDebugUtilsMessengerEXT == nil {
                debugLog("Failed to load vkDestroyDebugUtilsMessengerEXT command in InstanceTable")
            }

            traceLog("Loading vkSubmitDebugUtilsMessageEXT command in InstanceTable")
            unsafe self.submitDebugUtilsMessageEXT = unsafeBitCast(
                getProcAddr(context, "vkSubmitDebugUtilsMessageEXT"),
                to: PFN_vkSubmitDebugUtilsMessageEXT.self
            )
            if unsafe self.submitDebugUtilsMessageEXT == nil {
                debugLog("Failed to load vkSubmitDebugUtilsMessageEXT command in InstanceTable")
            }

            traceLog("Loading vkCreateHeadlessSurfaceEXT command in InstanceTable")
            unsafe self.createHeadlessSurfaceEXT = unsafeBitCast(
                getProcAddr(context, "vkCreateHeadlessSurfaceEXT"),
                to: PFN_vkCreateHeadlessSurfaceEXT.self
            )
            if unsafe self.createHeadlessSurfaceEXT == nil {
                debugLog("Failed to load vkCreateHeadlessSurfaceEXT command in InstanceTable")
            }

            traceLog("Loading vkAcquireDrmDisplayEXT command in InstanceTable")
            unsafe self.acquireDrmDisplayEXT = unsafeBitCast(
                getProcAddr(context, "vkAcquireDrmDisplayEXT"),
                to: PFN_vkAcquireDrmDisplayEXT.self
            )
            if unsafe self.acquireDrmDisplayEXT == nil {
                debugLog("Failed to load vkAcquireDrmDisplayEXT command in InstanceTable")
            }

            traceLog("Loading vkGetDrmDisplayEXT command in InstanceTable")
            unsafe self.getDrmDisplayEXT = unsafeBitCast(
                getProcAddr(context, "vkGetDrmDisplayEXT"),
                to: PFN_vkGetDrmDisplayEXT.self
            )
            if unsafe self.getDrmDisplayEXT == nil {
                debugLog("Failed to load vkGetDrmDisplayEXT command in InstanceTable")
            }

            #if PlatformAndroid
                traceLog("Loading vkCreateAndroidSurfaceKHR command in InstanceTable")
                unsafe self.createAndroidSurfaceKHR = unsafeBitCast(
                    getProcAddr(context, "vkCreateAndroidSurfaceKHR"),
                    to: PFN_vkCreateAndroidSurfaceKHR.self
                )
                if unsafe self.createAndroidSurfaceKHR == nil {
                    debugLog("Failed to load vkCreateAndroidSurfaceKHR command in InstanceTable")
                }
            #endif


            #if PlatformDirectfb
                traceLog("Loading vkCreateDirectFBSurfaceEXT command in InstanceTable")
                unsafe self.createDirectFBSurfaceEXT = unsafeBitCast(
                    getProcAddr(context, "vkCreateDirectFBSurfaceEXT"),
                    to: PFN_vkCreateDirectFBSurfaceEXT.self
                )
                if unsafe self.createDirectFBSurfaceEXT == nil {
                    debugLog("Failed to load vkCreateDirectFBSurfaceEXT command in InstanceTable")
                }

                traceLog("Loading vkGetPhysicalDeviceDirectFBPresentationSupportEXT command in InstanceTable")
                unsafe self.getPhysicalDeviceDirectFBPresentationSupportEXT = unsafeBitCast(
                    getProcAddr(context, "vkGetPhysicalDeviceDirectFBPresentationSupportEXT"),
                    to: PFN_vkGetPhysicalDeviceDirectFBPresentationSupportEXT.self
                )
                if unsafe self.getPhysicalDeviceDirectFBPresentationSupportEXT == nil {
                    debugLog("Failed to load vkGetPhysicalDeviceDirectFBPresentationSupportEXT command in InstanceTable")
                }
            #endif


            #if PlatformFuchsia
                traceLog("Loading vkCreateImagePipeSurfaceFUCHSIA command in InstanceTable")
                unsafe self.createImagePipeSurfaceFUCHSIA = unsafeBitCast(
                    getProcAddr(context, "vkCreateImagePipeSurfaceFUCHSIA"),
                    to: PFN_vkCreateImagePipeSurfaceFUCHSIA.self
                )
                if unsafe self.createImagePipeSurfaceFUCHSIA == nil {
                    debugLog("Failed to load vkCreateImagePipeSurfaceFUCHSIA command in InstanceTable")
                }
            #endif


            #if PlatformGgp
                traceLog("Loading vkCreateStreamDescriptorSurfaceGGP command in InstanceTable")
                unsafe self.createStreamDescriptorSurfaceGGP = unsafeBitCast(
                    getProcAddr(context, "vkCreateStreamDescriptorSurfaceGGP"),
                    to: PFN_vkCreateStreamDescriptorSurfaceGGP.self
                )
                if unsafe self.createStreamDescriptorSurfaceGGP == nil {
                    debugLog("Failed to load vkCreateStreamDescriptorSurfaceGGP command in InstanceTable")
                }
            #endif


            #if PlatformIos
                traceLog("Loading vkCreateIOSSurfaceMVK command in InstanceTable")
                unsafe self.createIOSSurfaceMVK = unsafeBitCast(
                    getProcAddr(context, "vkCreateIOSSurfaceMVK"),
                    to: PFN_vkCreateIOSSurfaceMVK.self
                )
                if unsafe self.createIOSSurfaceMVK == nil {
                    debugLog("Failed to load vkCreateIOSSurfaceMVK command in InstanceTable")
                }
            #endif


            #if PlatformMacos
                traceLog("Loading vkCreateMacOSSurfaceMVK command in InstanceTable")
                unsafe self.createMacOSSurfaceMVK = unsafeBitCast(
                    getProcAddr(context, "vkCreateMacOSSurfaceMVK"),
                    to: PFN_vkCreateMacOSSurfaceMVK.self
                )
                if unsafe self.createMacOSSurfaceMVK == nil {
                    debugLog("Failed to load vkCreateMacOSSurfaceMVK command in InstanceTable")
                }
            #endif


            #if PlatformMetal
                traceLog("Loading vkCreateMetalSurfaceEXT command in InstanceTable")
                unsafe self.createMetalSurfaceEXT = unsafeBitCast(
                    getProcAddr(context, "vkCreateMetalSurfaceEXT"),
                    to: PFN_vkCreateMetalSurfaceEXT.self
                )
                if unsafe self.createMetalSurfaceEXT == nil {
                    debugLog("Failed to load vkCreateMetalSurfaceEXT command in InstanceTable")
                }
            #endif


            #if PlatformScreen
                traceLog("Loading vkCreateScreenSurfaceQNX command in InstanceTable")
                unsafe self.createScreenSurfaceQNX = unsafeBitCast(
                    getProcAddr(context, "vkCreateScreenSurfaceQNX"),
                    to: PFN_vkCreateScreenSurfaceQNX.self
                )
                if unsafe self.createScreenSurfaceQNX == nil {
                    debugLog("Failed to load vkCreateScreenSurfaceQNX command in InstanceTable")
                }

                traceLog("Loading vkGetPhysicalDeviceScreenPresentationSupportQNX command in InstanceTable")
                unsafe self.getPhysicalDeviceScreenPresentationSupportQNX = unsafeBitCast(
                    getProcAddr(context, "vkGetPhysicalDeviceScreenPresentationSupportQNX"),
                    to: PFN_vkGetPhysicalDeviceScreenPresentationSupportQNX.self
                )
                if unsafe self.getPhysicalDeviceScreenPresentationSupportQNX == nil {
                    debugLog("Failed to load vkGetPhysicalDeviceScreenPresentationSupportQNX command in InstanceTable")
                }
            #endif


            #if PlatformVi
                traceLog("Loading vkCreateViSurfaceNN command in InstanceTable")
                unsafe self.createViSurfaceNN = unsafeBitCast(
                    getProcAddr(context, "vkCreateViSurfaceNN"),
                    to: PFN_vkCreateViSurfaceNN.self
                )
                if unsafe self.createViSurfaceNN == nil {
                    debugLog("Failed to load vkCreateViSurfaceNN command in InstanceTable")
                }
            #endif


            #if PlatformWayland
                traceLog("Loading vkCreateWaylandSurfaceKHR command in InstanceTable")
                unsafe self.createWaylandSurfaceKHR = unsafeBitCast(
                    getProcAddr(context, "vkCreateWaylandSurfaceKHR"),
                    to: PFN_vkCreateWaylandSurfaceKHR.self
                )
                if unsafe self.createWaylandSurfaceKHR == nil {
                    debugLog("Failed to load vkCreateWaylandSurfaceKHR command in InstanceTable")
                }

                traceLog("Loading vkGetPhysicalDeviceWaylandPresentationSupportKHR command in InstanceTable")
                unsafe self.getPhysicalDeviceWaylandPresentationSupportKHR = unsafeBitCast(
                    getProcAddr(context, "vkGetPhysicalDeviceWaylandPresentationSupportKHR"),
                    to: PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR.self
                )
                if unsafe self.getPhysicalDeviceWaylandPresentationSupportKHR == nil {
                    debugLog("Failed to load vkGetPhysicalDeviceWaylandPresentationSupportKHR command in InstanceTable")
                }
            #endif


            #if PlatformWin32
                traceLog("Loading vkCreateWin32SurfaceKHR command in InstanceTable")
                unsafe self.createWin32SurfaceKHR = unsafeBitCast(
                    getProcAddr(context, "vkCreateWin32SurfaceKHR"),
                    to: PFN_vkCreateWin32SurfaceKHR.self
                )
                if unsafe self.createWin32SurfaceKHR == nil {
                    debugLog("Failed to load vkCreateWin32SurfaceKHR command in InstanceTable")
                }

                traceLog("Loading vkGetPhysicalDeviceWin32PresentationSupportKHR command in InstanceTable")
                unsafe self.getPhysicalDeviceWin32PresentationSupportKHR = unsafeBitCast(
                    getProcAddr(context, "vkGetPhysicalDeviceWin32PresentationSupportKHR"),
                    to: PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR.self
                )
                if unsafe self.getPhysicalDeviceWin32PresentationSupportKHR == nil {
                    debugLog("Failed to load vkGetPhysicalDeviceWin32PresentationSupportKHR command in InstanceTable")
                }
            #endif


            #if PlatformXcb
                traceLog("Loading vkCreateXcbSurfaceKHR command in InstanceTable")
                unsafe self.createXcbSurfaceKHR = unsafeBitCast(
                    getProcAddr(context, "vkCreateXcbSurfaceKHR"),
                    to: PFN_vkCreateXcbSurfaceKHR.self
                )
                if unsafe self.createXcbSurfaceKHR == nil {
                    debugLog("Failed to load vkCreateXcbSurfaceKHR command in InstanceTable")
                }

                traceLog("Loading vkGetPhysicalDeviceXcbPresentationSupportKHR command in InstanceTable")
                unsafe self.getPhysicalDeviceXcbPresentationSupportKHR = unsafeBitCast(
                    getProcAddr(context, "vkGetPhysicalDeviceXcbPresentationSupportKHR"),
                    to: PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR.self
                )
                if unsafe self.getPhysicalDeviceXcbPresentationSupportKHR == nil {
                    debugLog("Failed to load vkGetPhysicalDeviceXcbPresentationSupportKHR command in InstanceTable")
                }
            #endif


            #if PlatformXlib
                traceLog("Loading vkCreateXlibSurfaceKHR command in InstanceTable")
                unsafe self.createXlibSurfaceKHR = unsafeBitCast(
                    getProcAddr(context, "vkCreateXlibSurfaceKHR"),
                    to: PFN_vkCreateXlibSurfaceKHR.self
                )
                if unsafe self.createXlibSurfaceKHR == nil {
                    debugLog("Failed to load vkCreateXlibSurfaceKHR command in InstanceTable")
                }

                traceLog("Loading vkGetPhysicalDeviceXlibPresentationSupportKHR command in InstanceTable")
                unsafe self.getPhysicalDeviceXlibPresentationSupportKHR = unsafeBitCast(
                    getProcAddr(context, "vkGetPhysicalDeviceXlibPresentationSupportKHR"),
                    to: PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR.self
                )
                if unsafe self.getPhysicalDeviceXlibPresentationSupportKHR == nil {
                    debugLog("Failed to load vkGetPhysicalDeviceXlibPresentationSupportKHR command in InstanceTable")
                }
            #endif


            #if PlatformXlibXrandr
                traceLog("Loading vkAcquireXlibDisplayEXT command in InstanceTable")
                unsafe self.acquireXlibDisplayEXT = unsafeBitCast(
                    getProcAddr(context, "vkAcquireXlibDisplayEXT"),
                    to: PFN_vkAcquireXlibDisplayEXT.self
                )
                if unsafe self.acquireXlibDisplayEXT == nil {
                    debugLog("Failed to load vkAcquireXlibDisplayEXT command in InstanceTable")
                }

                traceLog("Loading vkGetRandROutputDisplayEXT command in InstanceTable")
                unsafe self.getRandROutputDisplayEXT = unsafeBitCast(
                    getProcAddr(context, "vkGetRandROutputDisplayEXT"),
                    to: PFN_vkGetRandROutputDisplayEXT.self
                )
                if unsafe self.getRandROutputDisplayEXT == nil {
                    debugLog("Failed to load vkGetRandROutputDisplayEXT command in InstanceTable")
                }
            #endif

            // END_GENERATE_INSTANCE_TABLE_INIT
        }
    }
}
