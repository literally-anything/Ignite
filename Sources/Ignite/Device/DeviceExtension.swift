/**
 * DeviceExtension.swift
 * Device
 *
 * Created by Hunter Baker on 6/17/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

/// A Vulkan device extension.
public struct DeviceExtension: Equatable, Hashable {
    /// The name of the extension for use when creating an device.
    public let name: String

    /// Initializes a new device extension with the given name.
    /// - Parameter name: The name of the extension.
    @inlinable
    public init(name: String) {
        self.name = name
    }

    /// Checks if two device extensions are equal based on their names.
    public static func == (lhs: DeviceExtension, rhs: DeviceExtension) -> Bool {
        lhs.name == rhs.name
    }

    /// Hashes the device extension based on its name.
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }

    // BEGIN_GENERATE_DEVICE_EXTENSIONS
    // Generated using header version: 318

    /// Equivalent to Vulkan's `VK_KHR_swapchain`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_swapchain.html)
    @inlinable
    public static var swapchain_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_swapchain")
    }

    /// Equivalent to Vulkan's `VK_KHR_display_swapchain`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_display_swapchain.html)
    @inlinable
    public static var displaySwapchain_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_display_swapchain")
    }

    /// Equivalent to Vulkan's `VK_NV_glsl_shader`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_glsl_shader.html)
    @available(*, deprecated, message: "VK_NV_glsl_shader is deprecated without replacement")
    @inlinable
    public static var glslShader_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_glsl_shader")
    }

    /// Equivalent to Vulkan's `VK_EXT_depth_range_unrestricted`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_depth_range_unrestricted.html)
    @inlinable
    public static var depthRangeUnrestricted_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_depth_range_unrestricted")
    }

    /// Equivalent to Vulkan's `VK_KHR_sampler_mirror_clamp_to_edge`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_sampler_mirror_clamp_to_edge.html)
    @inlinable
    public static var samplerMirrorClampToEdge_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_sampler_mirror_clamp_to_edge")
    }

    /// Equivalent to Vulkan's `VK_IMG_filter_cubic`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_IMG_filter_cubic.html)
    @inlinable
    public static var filterCubic_IMG: DeviceExtension {
        DeviceExtension(name: "VK_IMG_filter_cubic")
    }

    /// Equivalent to Vulkan's `VK_AMD_rasterization_order`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_rasterization_order.html)
    @inlinable
    public static var rasterizationOrder_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_rasterization_order")
    }

    /// Equivalent to Vulkan's `VK_AMD_shader_trinary_minmax`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_shader_trinary_minmax.html)
    @inlinable
    public static var shaderTrinaryMinmax_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_shader_trinary_minmax")
    }

    /// Equivalent to Vulkan's `VK_AMD_shader_explicit_vertex_parameter`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_shader_explicit_vertex_parameter.html)
    @inlinable
    public static var shaderExplicitVertexParameter_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_shader_explicit_vertex_parameter")
    }

    /// Equivalent to Vulkan's `VK_EXT_debug_marker`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_debug_marker.html)
    @inlinable
    public static var debugMarker_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_debug_marker")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_queue`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_queue.html)
    @inlinable
    public static var videoQueue_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_queue")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_decode_queue`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_decode_queue.html)
    @inlinable
    public static var videoDecodeQueue_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_decode_queue")
    }

    /// Equivalent to Vulkan's `VK_AMD_gcn_shader`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_gcn_shader.html)
    @inlinable
    public static var gcnShader_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_gcn_shader")
    }

    /// Equivalent to Vulkan's `VK_NV_dedicated_allocation`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_dedicated_allocation.html)
    @available(
        *, deprecated, message: "VK_NV_dedicated_allocation is deprecated and replaced by VK_KHR_dedicated_allocation"
    )
    @inlinable
    public static var dedicatedAllocation_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_dedicated_allocation")
    }

    /// Equivalent to Vulkan's `VK_EXT_transform_feedback`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_transform_feedback.html)
    @inlinable
    public static var transformFeedback_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_transform_feedback")
    }

    /// Equivalent to Vulkan's `VK_NVX_binary_import`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NVX_binary_import.html)
    @inlinable
    public static var binaryImport_NVX: DeviceExtension {
        DeviceExtension(name: "VK_NVX_binary_import")
    }

    /// Equivalent to Vulkan's `VK_NVX_image_view_handle`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NVX_image_view_handle.html)
    @inlinable
    public static var imageViewHandle_NVX: DeviceExtension {
        DeviceExtension(name: "VK_NVX_image_view_handle")
    }

    /// Equivalent to Vulkan's `VK_AMD_draw_indirect_count`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_draw_indirect_count.html)
    @inlinable
    public static var drawIndirectCount_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_draw_indirect_count")
    }

    /// Equivalent to Vulkan's `VK_AMD_negative_viewport_height`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_negative_viewport_height.html)
    @available(*, deprecated, message: "VK_AMD_negative_viewport_height is obsoleted and replaced by VK_KHR_maintenance1")
    @inlinable
    public static var negativeViewportHeight_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_negative_viewport_height")
    }

    /// Equivalent to Vulkan's `VK_AMD_gpu_shader_half_float`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_gpu_shader_half_float.html)
    @available(
        *, deprecated, message: "VK_AMD_gpu_shader_half_float is deprecated and replaced by VK_KHR_shader_float16_int8"
    )
    @inlinable
    public static var gpuShaderHalfFloat_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_gpu_shader_half_float")
    }

    /// Equivalent to Vulkan's `VK_AMD_shader_ballot`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_shader_ballot.html)
    @inlinable
    public static var shaderBallot_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_shader_ballot")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_encode_h264`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_encode_h264.html)
    @inlinable
    public static var videoEncodeH264_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_encode_h264")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_encode_h265`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_encode_h265.html)
    @inlinable
    public static var videoEncodeH265_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_encode_h265")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_decode_h264`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_decode_h264.html)
    @inlinable
    public static var videoDecodeH264_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_decode_h264")
    }

    /// Equivalent to Vulkan's `VK_AMD_texture_gather_bias_lod`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_texture_gather_bias_lod.html)
    @inlinable
    public static var textureGatherBiasLod_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_texture_gather_bias_lod")
    }

    /// Equivalent to Vulkan's `VK_AMD_shader_info`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_shader_info.html)
    @inlinable
    public static var shaderInfo_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_shader_info")
    }

    /// Equivalent to Vulkan's `VK_KHR_dynamic_rendering`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_dynamic_rendering.html)
    @inlinable
    public static var dynamicRendering_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_dynamic_rendering")
    }

    /// Equivalent to Vulkan's `VK_AMD_shader_image_load_store_lod`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_shader_image_load_store_lod.html)
    @inlinable
    public static var shaderImageLoadStoreLod_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_shader_image_load_store_lod")
    }

    /// Equivalent to Vulkan's `VK_NV_corner_sampled_image`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_corner_sampled_image.html)
    @inlinable
    public static var cornerSampledImage_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_corner_sampled_image")
    }

    /// Equivalent to Vulkan's `VK_KHR_multiview`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_multiview.html)
    @inlinable
    public static var multiview_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_multiview")
    }

    /// Equivalent to Vulkan's `VK_IMG_format_pvrtc`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_IMG_format_pvrtc.html)
    @available(*, deprecated, message: "VK_IMG_format_pvrtc is deprecated without replacement")
    @inlinable
    public static var formatPvrtc_IMG: DeviceExtension {
        DeviceExtension(name: "VK_IMG_format_pvrtc")
    }

    /// Equivalent to Vulkan's `VK_NV_external_memory`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_external_memory.html)
    @available(*, deprecated, message: "VK_NV_external_memory is deprecated and replaced by VK_KHR_external_memory")
    @inlinable
    public static var externalMemory_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_external_memory")
    }

    /// Equivalent to Vulkan's `VK_NV_external_memory_win32`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_external_memory_win32.html)
    @available(
        *, deprecated, message: "VK_NV_external_memory_win32 is deprecated and replaced by VK_KHR_external_memory_win32"
    )
    #if !PlatformWin32
        @available(
            *, unavailable, message: "VK_NV_external_memory_win32 is only available when the PlatformWin32 trait is enabled"
        )
    #endif
    @inlinable
    public static var externalMemoryWin32_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_external_memory_win32")
    }

    /// Equivalent to Vulkan's `VK_NV_win32_keyed_mutex`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_win32_keyed_mutex.html)
    #if !PlatformWin32
        @available(
            *, unavailable, message: "VK_NV_win32_keyed_mutex is only available when the PlatformWin32 trait is enabled"
        )
    #endif
    @inlinable
    public static var win32KeyedMutex_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_win32_keyed_mutex")
    }

    /// Equivalent to Vulkan's `VK_KHR_device_group`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_device_group.html)
    @inlinable
    public static var deviceGroup_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_device_group")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_draw_parameters`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_draw_parameters.html)
    @inlinable
    public static var shaderDrawParameters_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_draw_parameters")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_subgroup_ballot`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_subgroup_ballot.html)
    @available(*, deprecated, message: "VK_EXT_shader_subgroup_ballot is deprecated and replaced by VK_VERSION_1_2")
    @inlinable
    public static var shaderSubgroupBallot_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_subgroup_ballot")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_subgroup_vote`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_subgroup_vote.html)
    @available(*, deprecated, message: "VK_EXT_shader_subgroup_vote is deprecated and replaced by VK_VERSION_1_1")
    @inlinable
    public static var shaderSubgroupVote_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_subgroup_vote")
    }

    /// Equivalent to Vulkan's `VK_EXT_texture_compression_astc_hdr`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_texture_compression_astc_hdr.html)
    @inlinable
    public static var textureCompressionAstcHdr_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_texture_compression_astc_hdr")
    }

    /// Equivalent to Vulkan's `VK_EXT_astc_decode_mode`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_astc_decode_mode.html)
    @inlinable
    public static var astcDecodeMode_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_astc_decode_mode")
    }

    /// Equivalent to Vulkan's `VK_EXT_pipeline_robustness`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_pipeline_robustness.html)
    @inlinable
    public static var pipelineRobustness_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_pipeline_robustness")
    }

    /// Equivalent to Vulkan's `VK_KHR_maintenance1`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance1.html)
    @inlinable
    public static var maintenance1_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_maintenance1")
    }

    /// Equivalent to Vulkan's `VK_KHR_external_memory`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_memory.html)
    @inlinable
    public static var externalMemory_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_external_memory")
    }

    /// Equivalent to Vulkan's `VK_KHR_external_memory_win32`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_memory_win32.html)
    #if !PlatformWin32
        @available(
            *, unavailable, message: "VK_KHR_external_memory_win32 is only available when the PlatformWin32 trait is enabled"
        )
    #endif
    @inlinable
    public static var externalMemoryWin32_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_external_memory_win32")
    }

    /// Equivalent to Vulkan's `VK_KHR_external_memory_fd`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_memory_fd.html)
    @inlinable
    public static var externalMemoryFd_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_external_memory_fd")
    }

    /// Equivalent to Vulkan's `VK_KHR_win32_keyed_mutex`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_win32_keyed_mutex.html)
    #if !PlatformWin32
        @available(
            *, unavailable, message: "VK_KHR_win32_keyed_mutex is only available when the PlatformWin32 trait is enabled"
        )
    #endif
    @inlinable
    public static var win32KeyedMutex_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_win32_keyed_mutex")
    }

    /// Equivalent to Vulkan's `VK_KHR_external_semaphore`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_semaphore.html)
    @inlinable
    public static var externalSemaphore_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_external_semaphore")
    }

    /// Equivalent to Vulkan's `VK_KHR_external_semaphore_win32`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_semaphore_win32.html)
    #if !PlatformWin32
        @available(
            *, unavailable,
            message: "VK_KHR_external_semaphore_win32 is only available when the PlatformWin32 trait is enabled"
        )
    #endif
    @inlinable
    public static var externalSemaphoreWin32_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_external_semaphore_win32")
    }

    /// Equivalent to Vulkan's `VK_KHR_external_semaphore_fd`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_semaphore_fd.html)
    @inlinable
    public static var externalSemaphoreFd_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_external_semaphore_fd")
    }

    /// Equivalent to Vulkan's `VK_KHR_push_descriptor`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_push_descriptor.html)
    @inlinable
    public static var pushDescriptor_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_push_descriptor")
    }

    /// Equivalent to Vulkan's `VK_EXT_conditional_rendering`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_conditional_rendering.html)
    @inlinable
    public static var conditionalRendering_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_conditional_rendering")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_float16_int8`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_float16_int8.html)
    @inlinable
    public static var shaderFloat16Int8_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_float16_int8")
    }

    /// Equivalent to Vulkan's `VK_KHR_16bit_storage`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_16bit_storage.html)
    @inlinable
    public static var `16bitStorage_KHR`: DeviceExtension {
        DeviceExtension(name: "VK_KHR_16bit_storage")
    }

    /// Equivalent to Vulkan's `VK_KHR_incremental_present`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_incremental_present.html)
    @inlinable
    public static var incrementalPresent_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_incremental_present")
    }

    /// Equivalent to Vulkan's `VK_KHR_descriptor_update_template`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_descriptor_update_template.html)
    @inlinable
    public static var descriptorUpdateTemplate_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_descriptor_update_template")
    }

    /// Equivalent to Vulkan's `VK_NV_clip_space_w_scaling`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_clip_space_w_scaling.html)
    @inlinable
    public static var clipSpaceWScaling_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_clip_space_w_scaling")
    }

    /// Equivalent to Vulkan's `VK_EXT_display_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_display_control.html)
    @inlinable
    public static var displayControl_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_display_control")
    }

    /// Equivalent to Vulkan's `VK_GOOGLE_display_timing`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_display_timing.html)
    @inlinable
    public static var displayTiming_GOOGLE: DeviceExtension {
        DeviceExtension(name: "VK_GOOGLE_display_timing")
    }

    /// Equivalent to Vulkan's `VK_NV_sample_mask_override_coverage`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_sample_mask_override_coverage.html)
    @inlinable
    public static var sampleMaskOverrideCoverage_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_sample_mask_override_coverage")
    }

    /// Equivalent to Vulkan's `VK_NV_geometry_shader_passthrough`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_geometry_shader_passthrough.html)
    @inlinable
    public static var geometryShaderPassthrough_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_geometry_shader_passthrough")
    }

    /// Equivalent to Vulkan's `VK_NV_viewport_array2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_viewport_array2.html)
    @inlinable
    public static var viewportArray2_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_viewport_array2")
    }

    /// Equivalent to Vulkan's `VK_NVX_multiview_per_view_attributes`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NVX_multiview_per_view_attributes.html)
    @inlinable
    public static var multiviewPerViewAttributes_NVX: DeviceExtension {
        DeviceExtension(name: "VK_NVX_multiview_per_view_attributes")
    }

    /// Equivalent to Vulkan's `VK_NV_viewport_swizzle`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_viewport_swizzle.html)
    @inlinable
    public static var viewportSwizzle_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_viewport_swizzle")
    }

    /// Equivalent to Vulkan's `VK_EXT_discard_rectangles`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_discard_rectangles.html)
    @inlinable
    public static var discardRectangles_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_discard_rectangles")
    }

    /// Equivalent to Vulkan's `VK_EXT_conservative_rasterization`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_conservative_rasterization.html)
    @inlinable
    public static var conservativeRasterization_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_conservative_rasterization")
    }

    /// Equivalent to Vulkan's `VK_EXT_depth_clip_enable`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_depth_clip_enable.html)
    @inlinable
    public static var depthClipEnable_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_depth_clip_enable")
    }

    /// Equivalent to Vulkan's `VK_EXT_hdr_metadata`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_hdr_metadata.html)
    @inlinable
    public static var hdrMetadata_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_hdr_metadata")
    }

    /// Equivalent to Vulkan's `VK_KHR_imageless_framebuffer`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_imageless_framebuffer.html)
    @inlinable
    public static var imagelessFramebuffer_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_imageless_framebuffer")
    }

    /// Equivalent to Vulkan's `VK_KHR_create_renderpass2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_create_renderpass2.html)
    @inlinable
    public static var createRenderpass2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_create_renderpass2")
    }

    /// Equivalent to Vulkan's `VK_IMG_relaxed_line_rasterization`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_IMG_relaxed_line_rasterization.html)
    @inlinable
    public static var relaxedLineRasterization_IMG: DeviceExtension {
        DeviceExtension(name: "VK_IMG_relaxed_line_rasterization")
    }

    /// Equivalent to Vulkan's `VK_KHR_shared_presentable_image`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shared_presentable_image.html)
    @inlinable
    public static var sharedPresentableImage_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shared_presentable_image")
    }

    /// Equivalent to Vulkan's `VK_KHR_external_fence`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_fence.html)
    @inlinable
    public static var externalFence_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_external_fence")
    }

    /// Equivalent to Vulkan's `VK_KHR_external_fence_win32`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_fence_win32.html)
    #if !PlatformWin32
        @available(
            *, unavailable, message: "VK_KHR_external_fence_win32 is only available when the PlatformWin32 trait is enabled"
        )
    #endif
    @inlinable
    public static var externalFenceWin32_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_external_fence_win32")
    }

    /// Equivalent to Vulkan's `VK_KHR_external_fence_fd`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_external_fence_fd.html)
    @inlinable
    public static var externalFenceFd_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_external_fence_fd")
    }

    /// Equivalent to Vulkan's `VK_KHR_performance_query`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_performance_query.html)
    @inlinable
    public static var performanceQuery_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_performance_query")
    }

    /// Equivalent to Vulkan's `VK_KHR_maintenance2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance2.html)
    @inlinable
    public static var maintenance2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_maintenance2")
    }

    /// Equivalent to Vulkan's `VK_KHR_variable_pointers`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_variable_pointers.html)
    @inlinable
    public static var variablePointers_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_variable_pointers")
    }

    /// Equivalent to Vulkan's `VK_EXT_external_memory_dma_buf`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_external_memory_dma_buf.html)
    @inlinable
    public static var externalMemoryDmaBuf_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_external_memory_dma_buf")
    }

    /// Equivalent to Vulkan's `VK_EXT_queue_family_foreign`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_queue_family_foreign.html)
    @inlinable
    public static var queueFamilyForeign_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_queue_family_foreign")
    }

    /// Equivalent to Vulkan's `VK_KHR_dedicated_allocation`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_dedicated_allocation.html)
    @inlinable
    public static var dedicatedAllocation_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_dedicated_allocation")
    }

    /// Equivalent to Vulkan's `VK_ANDROID_external_memory_android_hardware_buffer`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ANDROID_external_memory_android_hardware_buffer.html)
    #if !PlatformAndroid
        @available(
            *, unavailable,
            message:
                "VK_ANDROID_external_memory_android_hardware_buffer is only available when the PlatformAndroid trait is enabled"
        )
    #endif
    @inlinable
    public static var externalMemoryAndroidHardwareBuffer_ANDROID: DeviceExtension {
        DeviceExtension(name: "VK_ANDROID_external_memory_android_hardware_buffer")
    }

    /// Equivalent to Vulkan's `VK_EXT_sampler_filter_minmax`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_sampler_filter_minmax.html)
    @inlinable
    public static var samplerFilterMinmax_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_sampler_filter_minmax")
    }

    /// Equivalent to Vulkan's `VK_KHR_storage_buffer_storage_class`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_storage_buffer_storage_class.html)
    @inlinable
    public static var storageBufferStorageClass_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_storage_buffer_storage_class")
    }

    /// Equivalent to Vulkan's `VK_AMD_gpu_shader_int16`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_gpu_shader_int16.html)
    @available(*, deprecated, message: "VK_AMD_gpu_shader_int16 is deprecated and replaced by VK_KHR_shader_float16_int8")
    @inlinable
    public static var gpuShaderInt16_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_gpu_shader_int16")
    }

    /// Equivalent to Vulkan's `VK_AMDX_shader_enqueue`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMDX_shader_enqueue.html)
    #if !EnableProvisional
        @available(
            *, unavailable, message: "VK_AMDX_shader_enqueue is only available when the EnableProvisional trait is enabled"
        )
    #endif
    @inlinable
    public static var shaderEnqueue_AMDX: DeviceExtension {
        DeviceExtension(name: "VK_AMDX_shader_enqueue")
    }

    /// Equivalent to Vulkan's `VK_AMD_mixed_attachment_samples`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_mixed_attachment_samples.html)
    @inlinable
    public static var mixedAttachmentSamples_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_mixed_attachment_samples")
    }

    /// Equivalent to Vulkan's `VK_AMD_shader_fragment_mask`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_shader_fragment_mask.html)
    @inlinable
    public static var shaderFragmentMask_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_shader_fragment_mask")
    }

    /// Equivalent to Vulkan's `VK_EXT_inline_uniform_block`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_inline_uniform_block.html)
    @inlinable
    public static var inlineUniformBlock_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_inline_uniform_block")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_stencil_export`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_stencil_export.html)
    @inlinable
    public static var shaderStencilExport_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_stencil_export")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_bfloat16`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_bfloat16.html)
    @inlinable
    public static var shaderBfloat16_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_bfloat16")
    }

    /// Equivalent to Vulkan's `VK_EXT_sample_locations`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_sample_locations.html)
    @inlinable
    public static var sampleLocations_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_sample_locations")
    }

    /// Equivalent to Vulkan's `VK_KHR_relaxed_block_layout`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_relaxed_block_layout.html)
    @inlinable
    public static var relaxedBlockLayout_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_relaxed_block_layout")
    }

    /// Equivalent to Vulkan's `VK_KHR_get_memory_requirements2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_get_memory_requirements2.html)
    @inlinable
    public static var getMemoryRequirements2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_get_memory_requirements2")
    }

    /// Equivalent to Vulkan's `VK_KHR_image_format_list`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_image_format_list.html)
    @inlinable
    public static var imageFormatList_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_image_format_list")
    }

    /// Equivalent to Vulkan's `VK_EXT_blend_operation_advanced`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_blend_operation_advanced.html)
    @inlinable
    public static var blendOperationAdvanced_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_blend_operation_advanced")
    }

    /// Equivalent to Vulkan's `VK_NV_fragment_coverage_to_color`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_fragment_coverage_to_color.html)
    @inlinable
    public static var fragmentCoverageToColor_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_fragment_coverage_to_color")
    }

    /// Equivalent to Vulkan's `VK_KHR_acceleration_structure`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_acceleration_structure.html)
    @inlinable
    public static var accelerationStructure_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_acceleration_structure")
    }

    /// Equivalent to Vulkan's `VK_KHR_ray_tracing_pipeline`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_ray_tracing_pipeline.html)
    @inlinable
    public static var rayTracingPipeline_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_ray_tracing_pipeline")
    }

    /// Equivalent to Vulkan's `VK_KHR_ray_query`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_ray_query.html)
    @inlinable
    public static var rayQuery_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_ray_query")
    }

    /// Equivalent to Vulkan's `VK_NV_framebuffer_mixed_samples`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_framebuffer_mixed_samples.html)
    @inlinable
    public static var framebufferMixedSamples_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_framebuffer_mixed_samples")
    }

    /// Equivalent to Vulkan's `VK_NV_fill_rectangle`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_fill_rectangle.html)
    @inlinable
    public static var fillRectangle_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_fill_rectangle")
    }

    /// Equivalent to Vulkan's `VK_NV_shader_sm_builtins`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_shader_sm_builtins.html)
    @inlinable
    public static var shaderSmBuiltins_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_shader_sm_builtins")
    }

    /// Equivalent to Vulkan's `VK_EXT_post_depth_coverage`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_post_depth_coverage.html)
    @inlinable
    public static var postDepthCoverage_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_post_depth_coverage")
    }

    /// Equivalent to Vulkan's `VK_KHR_sampler_ycbcr_conversion`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_sampler_ycbcr_conversion.html)
    @inlinable
    public static var samplerYcbcrConversion_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_sampler_ycbcr_conversion")
    }

    /// Equivalent to Vulkan's `VK_KHR_bind_memory2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_bind_memory2.html)
    @inlinable
    public static var bindMemory2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_bind_memory2")
    }

    /// Equivalent to Vulkan's `VK_EXT_image_drm_format_modifier`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_image_drm_format_modifier.html)
    @inlinable
    public static var imageDrmFormatModifier_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_image_drm_format_modifier")
    }

    /// Equivalent to Vulkan's `VK_EXT_validation_cache`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_validation_cache.html)
    @inlinable
    public static var validationCache_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_validation_cache")
    }

    /// Equivalent to Vulkan's `VK_EXT_descriptor_indexing`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_descriptor_indexing.html)
    @inlinable
    public static var descriptorIndexing_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_descriptor_indexing")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_viewport_index_layer`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_viewport_index_layer.html)
    @inlinable
    public static var shaderViewportIndexLayer_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_viewport_index_layer")
    }

    /// Equivalent to Vulkan's `VK_KHR_portability_subset`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_portability_subset.html)
    @inlinable
    public static var portabilitySubset_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_portability_subset")
    }

    /// Equivalent to Vulkan's `VK_NV_shading_rate_image`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_shading_rate_image.html)
    @inlinable
    public static var shadingRateImage_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_shading_rate_image")
    }

    /// Equivalent to Vulkan's `VK_NV_ray_tracing`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_ray_tracing.html)
    @available(*, deprecated, message: "VK_NV_ray_tracing is deprecated and replaced by VK_KHR_ray_tracing_pipeline")
    @inlinable
    public static var rayTracing_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_ray_tracing")
    }

    /// Equivalent to Vulkan's `VK_NV_representative_fragment_test`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_representative_fragment_test.html)
    @inlinable
    public static var representativeFragmentTest_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_representative_fragment_test")
    }

    /// Equivalent to Vulkan's `VK_KHR_maintenance3`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance3.html)
    @inlinable
    public static var maintenance3_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_maintenance3")
    }

    /// Equivalent to Vulkan's `VK_KHR_draw_indirect_count`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_draw_indirect_count.html)
    @inlinable
    public static var drawIndirectCount_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_draw_indirect_count")
    }

    /// Equivalent to Vulkan's `VK_EXT_filter_cubic`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_filter_cubic.html)
    @inlinable
    public static var filterCubic_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_filter_cubic")
    }

    /// Equivalent to Vulkan's `VK_QCOM_render_pass_shader_resolve`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_render_pass_shader_resolve.html)
    @inlinable
    public static var renderPassShaderResolve_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_render_pass_shader_resolve")
    }

    /// Equivalent to Vulkan's `VK_EXT_global_priority`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_global_priority.html)
    @inlinable
    public static var globalPriority_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_global_priority")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_subgroup_extended_types`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_subgroup_extended_types.html)
    @inlinable
    public static var shaderSubgroupExtendedTypes_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_subgroup_extended_types")
    }

    /// Equivalent to Vulkan's `VK_KHR_8bit_storage`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_8bit_storage.html)
    @inlinable
    public static var `8bitStorage_KHR`: DeviceExtension {
        DeviceExtension(name: "VK_KHR_8bit_storage")
    }

    /// Equivalent to Vulkan's `VK_EXT_external_memory_host`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_external_memory_host.html)
    @inlinable
    public static var externalMemoryHost_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_external_memory_host")
    }

    /// Equivalent to Vulkan's `VK_AMD_buffer_marker`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_buffer_marker.html)
    @inlinable
    public static var bufferMarker_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_buffer_marker")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_atomic_int64`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_atomic_int64.html)
    @inlinable
    public static var shaderAtomicInt64_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_atomic_int64")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_clock`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_clock.html)
    @inlinable
    public static var shaderClock_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_clock")
    }

    /// Equivalent to Vulkan's `VK_AMD_pipeline_compiler_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_pipeline_compiler_control.html)
    @inlinable
    public static var pipelineCompilerControl_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_pipeline_compiler_control")
    }

    /// Equivalent to Vulkan's `VK_EXT_calibrated_timestamps`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_calibrated_timestamps.html)
    @inlinable
    public static var calibratedTimestamps_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_calibrated_timestamps")
    }

    /// Equivalent to Vulkan's `VK_AMD_shader_core_properties`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_shader_core_properties.html)
    @inlinable
    public static var shaderCoreProperties_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_shader_core_properties")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_decode_h265`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_decode_h265.html)
    @inlinable
    public static var videoDecodeH265_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_decode_h265")
    }

    /// Equivalent to Vulkan's `VK_KHR_global_priority`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_global_priority.html)
    @inlinable
    public static var globalPriority_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_global_priority")
    }

    /// Equivalent to Vulkan's `VK_AMD_memory_overallocation_behavior`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_memory_overallocation_behavior.html)
    @inlinable
    public static var memoryOverallocationBehavior_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_memory_overallocation_behavior")
    }

    /// Equivalent to Vulkan's `VK_EXT_vertex_attribute_divisor`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_vertex_attribute_divisor.html)
    @inlinable
    public static var vertexAttributeDivisor_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_vertex_attribute_divisor")
    }

    /// Equivalent to Vulkan's `VK_GGP_frame_token`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GGP_frame_token.html)
    #if !PlatformGgp
        @available(*, unavailable, message: "VK_GGP_frame_token is only available when the PlatformGgp trait is enabled")
    #endif
    @inlinable
    public static var frameToken_GGP: DeviceExtension {
        DeviceExtension(name: "VK_GGP_frame_token")
    }

    /// Equivalent to Vulkan's `VK_EXT_pipeline_creation_feedback`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_pipeline_creation_feedback.html)
    @inlinable
    public static var pipelineCreationFeedback_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_pipeline_creation_feedback")
    }

    /// Equivalent to Vulkan's `VK_KHR_driver_properties`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_driver_properties.html)
    @inlinable
    public static var driverProperties_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_driver_properties")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_float_controls`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_float_controls.html)
    @inlinable
    public static var shaderFloatControls_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_float_controls")
    }

    /// Equivalent to Vulkan's `VK_NV_shader_subgroup_partitioned`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_shader_subgroup_partitioned.html)
    @inlinable
    public static var shaderSubgroupPartitioned_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_shader_subgroup_partitioned")
    }

    /// Equivalent to Vulkan's `VK_KHR_depth_stencil_resolve`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_depth_stencil_resolve.html)
    @inlinable
    public static var depthStencilResolve_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_depth_stencil_resolve")
    }

    /// Equivalent to Vulkan's `VK_KHR_swapchain_mutable_format`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_swapchain_mutable_format.html)
    @inlinable
    public static var swapchainMutableFormat_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_swapchain_mutable_format")
    }

    /// Equivalent to Vulkan's `VK_NV_compute_shader_derivatives`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_compute_shader_derivatives.html)
    @inlinable
    public static var computeShaderDerivatives_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_compute_shader_derivatives")
    }

    /// Equivalent to Vulkan's `VK_NV_mesh_shader`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_mesh_shader.html)
    @inlinable
    public static var meshShader_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_mesh_shader")
    }

    /// Equivalent to Vulkan's `VK_NV_fragment_shader_barycentric`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_fragment_shader_barycentric.html)
    @inlinable
    public static var fragmentShaderBarycentric_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_fragment_shader_barycentric")
    }

    /// Equivalent to Vulkan's `VK_NV_shader_image_footprint`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_shader_image_footprint.html)
    @inlinable
    public static var shaderImageFootprint_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_shader_image_footprint")
    }

    /// Equivalent to Vulkan's `VK_NV_scissor_exclusive`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_scissor_exclusive.html)
    @inlinable
    public static var scissorExclusive_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_scissor_exclusive")
    }

    /// Equivalent to Vulkan's `VK_NV_device_diagnostic_checkpoints`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_device_diagnostic_checkpoints.html)
    @inlinable
    public static var deviceDiagnosticCheckpoints_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_device_diagnostic_checkpoints")
    }

    /// Equivalent to Vulkan's `VK_KHR_timeline_semaphore`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_timeline_semaphore.html)
    @inlinable
    public static var timelineSemaphore_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_timeline_semaphore")
    }

    /// Equivalent to Vulkan's `VK_INTEL_shader_integer_functions2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_INTEL_shader_integer_functions2.html)
    @inlinable
    public static var shaderIntegerFunctions2_INTEL: DeviceExtension {
        DeviceExtension(name: "VK_INTEL_shader_integer_functions2")
    }

    /// Equivalent to Vulkan's `VK_INTEL_performance_query`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_INTEL_performance_query.html)
    @inlinable
    public static var performanceQuery_INTEL: DeviceExtension {
        DeviceExtension(name: "VK_INTEL_performance_query")
    }

    /// Equivalent to Vulkan's `VK_KHR_vulkan_memory_model`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_vulkan_memory_model.html)
    @inlinable
    public static var vulkanMemoryModel_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_vulkan_memory_model")
    }

    /// Equivalent to Vulkan's `VK_EXT_pci_bus_info`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_pci_bus_info.html)
    @inlinable
    public static var pciBusInfo_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_pci_bus_info")
    }

    /// Equivalent to Vulkan's `VK_AMD_display_native_hdr`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_display_native_hdr.html)
    @inlinable
    public static var displayNativeHdr_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_display_native_hdr")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_terminate_invocation`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_terminate_invocation.html)
    @inlinable
    public static var shaderTerminateInvocation_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_terminate_invocation")
    }

    /// Equivalent to Vulkan's `VK_EXT_fragment_density_map`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_fragment_density_map.html)
    @inlinable
    public static var fragmentDensityMap_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_fragment_density_map")
    }

    /// Equivalent to Vulkan's `VK_EXT_scalar_block_layout`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_scalar_block_layout.html)
    @inlinable
    public static var scalarBlockLayout_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_scalar_block_layout")
    }

    /// Equivalent to Vulkan's `VK_GOOGLE_hlsl_functionality1`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_hlsl_functionality1.html)
    @inlinable
    public static var hlslFunctionality1_GOOGLE: DeviceExtension {
        DeviceExtension(name: "VK_GOOGLE_hlsl_functionality1")
    }

    /// Equivalent to Vulkan's `VK_GOOGLE_decorate_string`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_decorate_string.html)
    @inlinable
    public static var decorateString_GOOGLE: DeviceExtension {
        DeviceExtension(name: "VK_GOOGLE_decorate_string")
    }

    /// Equivalent to Vulkan's `VK_EXT_subgroup_size_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_subgroup_size_control.html)
    @inlinable
    public static var subgroupSizeControl_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_subgroup_size_control")
    }

    /// Equivalent to Vulkan's `VK_KHR_fragment_shading_rate`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_fragment_shading_rate.html)
    @inlinable
    public static var fragmentShadingRate_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_fragment_shading_rate")
    }

    /// Equivalent to Vulkan's `VK_AMD_shader_core_properties2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_shader_core_properties2.html)
    @inlinable
    public static var shaderCoreProperties2_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_shader_core_properties2")
    }

    /// Equivalent to Vulkan's `VK_AMD_device_coherent_memory`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_device_coherent_memory.html)
    @inlinable
    public static var deviceCoherentMemory_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_device_coherent_memory")
    }

    /// Equivalent to Vulkan's `VK_KHR_dynamic_rendering_local_read`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_dynamic_rendering_local_read.html)
    @inlinable
    public static var dynamicRenderingLocalRead_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_dynamic_rendering_local_read")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_image_atomic_int64`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_image_atomic_int64.html)
    @inlinable
    public static var shaderImageAtomicInt64_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_image_atomic_int64")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_quad_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_quad_control.html)
    @inlinable
    public static var shaderQuadControl_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_quad_control")
    }

    /// Equivalent to Vulkan's `VK_KHR_spirv_1_4`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_spirv_1_4.html)
    @inlinable
    public static var spirv14_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_spirv_1_4")
    }

    /// Equivalent to Vulkan's `VK_EXT_memory_budget`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_memory_budget.html)
    @inlinable
    public static var memoryBudget_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_memory_budget")
    }

    /// Equivalent to Vulkan's `VK_EXT_memory_priority`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_memory_priority.html)
    @inlinable
    public static var memoryPriority_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_memory_priority")
    }

    /// Equivalent to Vulkan's `VK_NV_dedicated_allocation_image_aliasing`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_dedicated_allocation_image_aliasing.html)
    @inlinable
    public static var dedicatedAllocationImageAliasing_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_dedicated_allocation_image_aliasing")
    }

    /// Equivalent to Vulkan's `VK_KHR_separate_depth_stencil_layouts`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_separate_depth_stencil_layouts.html)
    @inlinable
    public static var separateDepthStencilLayouts_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_separate_depth_stencil_layouts")
    }

    /// Equivalent to Vulkan's `VK_EXT_buffer_device_address`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_buffer_device_address.html)
    @available(
        *, deprecated, message: "VK_EXT_buffer_device_address is deprecated and replaced by VK_KHR_buffer_device_address"
    )
    @inlinable
    public static var bufferDeviceAddress_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_buffer_device_address")
    }

    /// Equivalent to Vulkan's `VK_EXT_tooling_info`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_tooling_info.html)
    @inlinable
    public static var toolingInfo_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_tooling_info")
    }

    /// Equivalent to Vulkan's `VK_EXT_separate_stencil_usage`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_separate_stencil_usage.html)
    @inlinable
    public static var separateStencilUsage_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_separate_stencil_usage")
    }

    /// Equivalent to Vulkan's `VK_KHR_present_wait`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_present_wait.html)
    @inlinable
    public static var presentWait_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_present_wait")
    }

    /// Equivalent to Vulkan's `VK_NV_cooperative_matrix`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_cooperative_matrix.html)
    @inlinable
    public static var cooperativeMatrix_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_cooperative_matrix")
    }

    /// Equivalent to Vulkan's `VK_NV_coverage_reduction_mode`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_coverage_reduction_mode.html)
    @inlinable
    public static var coverageReductionMode_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_coverage_reduction_mode")
    }

    /// Equivalent to Vulkan's `VK_EXT_fragment_shader_interlock`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_fragment_shader_interlock.html)
    @inlinable
    public static var fragmentShaderInterlock_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_fragment_shader_interlock")
    }

    /// Equivalent to Vulkan's `VK_EXT_ycbcr_image_arrays`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_ycbcr_image_arrays.html)
    @inlinable
    public static var ycbcrImageArrays_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_ycbcr_image_arrays")
    }

    /// Equivalent to Vulkan's `VK_KHR_uniform_buffer_standard_layout`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_uniform_buffer_standard_layout.html)
    @inlinable
    public static var uniformBufferStandardLayout_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_uniform_buffer_standard_layout")
    }

    /// Equivalent to Vulkan's `VK_EXT_provoking_vertex`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_provoking_vertex.html)
    @inlinable
    public static var provokingVertex_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_provoking_vertex")
    }

    /// Equivalent to Vulkan's `VK_EXT_full_screen_exclusive`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_full_screen_exclusive.html)
    #if !PlatformWin32
        @available(
            *, unavailable, message: "VK_EXT_full_screen_exclusive is only available when the PlatformWin32 trait is enabled"
        )
    #endif
    @inlinable
    public static var fullScreenExclusive_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_full_screen_exclusive")
    }

    /// Equivalent to Vulkan's `VK_KHR_buffer_device_address`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_buffer_device_address.html)
    @inlinable
    public static var bufferDeviceAddress_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_buffer_device_address")
    }

    /// Equivalent to Vulkan's `VK_EXT_line_rasterization`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_line_rasterization.html)
    @inlinable
    public static var lineRasterization_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_line_rasterization")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_atomic_float`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_atomic_float.html)
    @inlinable
    public static var shaderAtomicFloat_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_atomic_float")
    }

    /// Equivalent to Vulkan's `VK_EXT_host_query_reset`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_host_query_reset.html)
    @inlinable
    public static var hostQueryReset_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_host_query_reset")
    }

    /// Equivalent to Vulkan's `VK_EXT_index_type_uint8`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_index_type_uint8.html)
    @inlinable
    public static var indexTypeUint8_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_index_type_uint8")
    }

    /// Equivalent to Vulkan's `VK_EXT_extended_dynamic_state`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_extended_dynamic_state.html)
    @inlinable
    public static var extendedDynamicState_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_extended_dynamic_state")
    }

    /// Equivalent to Vulkan's `VK_KHR_deferred_host_operations`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_deferred_host_operations.html)
    @inlinable
    public static var deferredHostOperations_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_deferred_host_operations")
    }

    /// Equivalent to Vulkan's `VK_KHR_pipeline_executable_properties`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_pipeline_executable_properties.html)
    @inlinable
    public static var pipelineExecutableProperties_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_pipeline_executable_properties")
    }

    /// Equivalent to Vulkan's `VK_EXT_host_image_copy`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_host_image_copy.html)
    @inlinable
    public static var hostImageCopy_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_host_image_copy")
    }

    /// Equivalent to Vulkan's `VK_KHR_map_memory2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_map_memory2.html)
    @inlinable
    public static var mapMemory2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_map_memory2")
    }

    /// Equivalent to Vulkan's `VK_EXT_map_memory_placed`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_map_memory_placed.html)
    @inlinable
    public static var mapMemoryPlaced_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_map_memory_placed")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_atomic_float2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_atomic_float2.html)
    @inlinable
    public static var shaderAtomicFloat2_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_atomic_float2")
    }

    /// Equivalent to Vulkan's `VK_EXT_swapchain_maintenance1`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_swapchain_maintenance1.html)
    @inlinable
    public static var swapchainMaintenance1_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_swapchain_maintenance1")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_demote_to_helper_invocation`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_demote_to_helper_invocation.html)
    @inlinable
    public static var shaderDemoteToHelperInvocation_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_demote_to_helper_invocation")
    }

    /// Equivalent to Vulkan's `VK_NV_device_generated_commands`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_device_generated_commands.html)
    @inlinable
    public static var deviceGeneratedCommands_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_device_generated_commands")
    }

    /// Equivalent to Vulkan's `VK_NV_inherited_viewport_scissor`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_inherited_viewport_scissor.html)
    @inlinable
    public static var inheritedViewportScissor_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_inherited_viewport_scissor")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_integer_dot_product`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_integer_dot_product.html)
    @inlinable
    public static var shaderIntegerDotProduct_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_integer_dot_product")
    }

    /// Equivalent to Vulkan's `VK_EXT_texel_buffer_alignment`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_texel_buffer_alignment.html)
    @inlinable
    public static var texelBufferAlignment_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_texel_buffer_alignment")
    }

    /// Equivalent to Vulkan's `VK_QCOM_render_pass_transform`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_render_pass_transform.html)
    @inlinable
    public static var renderPassTransform_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_render_pass_transform")
    }

    /// Equivalent to Vulkan's `VK_EXT_depth_bias_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_depth_bias_control.html)
    @inlinable
    public static var depthBiasControl_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_depth_bias_control")
    }

    /// Equivalent to Vulkan's `VK_EXT_device_memory_report`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_device_memory_report.html)
    @inlinable
    public static var deviceMemoryReport_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_device_memory_report")
    }

    /// Equivalent to Vulkan's `VK_EXT_robustness2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_robustness2.html)
    @inlinable
    public static var robustness2_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_robustness2")
    }

    /// Equivalent to Vulkan's `VK_EXT_custom_border_color`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_custom_border_color.html)
    @inlinable
    public static var customBorderColor_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_custom_border_color")
    }

    /// Equivalent to Vulkan's `VK_GOOGLE_user_type`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_GOOGLE_user_type.html)
    @inlinable
    public static var userType_GOOGLE: DeviceExtension {
        DeviceExtension(name: "VK_GOOGLE_user_type")
    }

    /// Equivalent to Vulkan's `VK_KHR_pipeline_library`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_pipeline_library.html)
    @inlinable
    public static var pipelineLibrary_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_pipeline_library")
    }

    /// Equivalent to Vulkan's `VK_NV_present_barrier`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_present_barrier.html)
    @inlinable
    public static var presentBarrier_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_present_barrier")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_non_semantic_info`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_non_semantic_info.html)
    @inlinable
    public static var shaderNonSemanticInfo_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_non_semantic_info")
    }

    /// Equivalent to Vulkan's `VK_KHR_present_id`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_present_id.html)
    @inlinable
    public static var presentId_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_present_id")
    }

    /// Equivalent to Vulkan's `VK_EXT_private_data`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_private_data.html)
    @inlinable
    public static var privateData_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_private_data")
    }

    /// Equivalent to Vulkan's `VK_EXT_pipeline_creation_cache_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_pipeline_creation_cache_control.html)
    @inlinable
    public static var pipelineCreationCacheControl_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_pipeline_creation_cache_control")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_encode_queue`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_encode_queue.html)
    @inlinable
    public static var videoEncodeQueue_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_encode_queue")
    }

    /// Equivalent to Vulkan's `VK_NV_device_diagnostics_config`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_device_diagnostics_config.html)
    @inlinable
    public static var deviceDiagnosticsConfig_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_device_diagnostics_config")
    }

    /// Equivalent to Vulkan's `VK_QCOM_render_pass_store_ops`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_render_pass_store_ops.html)
    @inlinable
    public static var renderPassStoreOps_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_render_pass_store_ops")
    }

    /// Equivalent to Vulkan's `VK_NV_cuda_kernel_launch`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_cuda_kernel_launch.html)
    #if !EnableProvisional
        @available(
            *, unavailable, message: "VK_NV_cuda_kernel_launch is only available when the EnableProvisional trait is enabled"
        )
    #endif
    @inlinable
    public static var cudaKernelLaunch_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_cuda_kernel_launch")
    }

    /// Equivalent to Vulkan's `VK_QCOM_tile_shading`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_tile_shading.html)
    @inlinable
    public static var tileShading_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_tile_shading")
    }

    /// Equivalent to Vulkan's `VK_NV_low_latency`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_low_latency.html)
    @inlinable
    public static var lowLatency_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_low_latency")
    }

    /// Equivalent to Vulkan's `VK_EXT_metal_objects`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_metal_objects.html)
    #if !PlatformMetal
        @available(*, unavailable, message: "VK_EXT_metal_objects is only available when the PlatformMetal trait is enabled")
    #endif
    @inlinable
    public static var metalObjects_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_metal_objects")
    }

    /// Equivalent to Vulkan's `VK_KHR_synchronization2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_synchronization2.html)
    @inlinable
    public static var synchronization2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_synchronization2")
    }

    /// Equivalent to Vulkan's `VK_EXT_descriptor_buffer`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_descriptor_buffer.html)
    @inlinable
    public static var descriptorBuffer_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_descriptor_buffer")
    }

    /// Equivalent to Vulkan's `VK_EXT_graphics_pipeline_library`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_graphics_pipeline_library.html)
    @inlinable
    public static var graphicsPipelineLibrary_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_graphics_pipeline_library")
    }

    /// Equivalent to Vulkan's `VK_AMD_shader_early_and_late_fragment_tests`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_shader_early_and_late_fragment_tests.html)
    @inlinable
    public static var shaderEarlyAndLateFragmentTests_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_shader_early_and_late_fragment_tests")
    }

    /// Equivalent to Vulkan's `VK_KHR_fragment_shader_barycentric`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_fragment_shader_barycentric.html)
    @inlinable
    public static var fragmentShaderBarycentric_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_fragment_shader_barycentric")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_subgroup_uniform_control_flow`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_subgroup_uniform_control_flow.html)
    @inlinable
    public static var shaderSubgroupUniformControlFlow_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_subgroup_uniform_control_flow")
    }

    /// Equivalent to Vulkan's `VK_KHR_zero_initialize_workgroup_memory`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_zero_initialize_workgroup_memory.html)
    @inlinable
    public static var zeroInitializeWorkgroupMemory_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_zero_initialize_workgroup_memory")
    }

    /// Equivalent to Vulkan's `VK_NV_fragment_shading_rate_enums`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_fragment_shading_rate_enums.html)
    @inlinable
    public static var fragmentShadingRateEnums_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_fragment_shading_rate_enums")
    }

    /// Equivalent to Vulkan's `VK_NV_ray_tracing_motion_blur`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_ray_tracing_motion_blur.html)
    @inlinable
    public static var rayTracingMotionBlur_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_ray_tracing_motion_blur")
    }

    /// Equivalent to Vulkan's `VK_EXT_mesh_shader`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_mesh_shader.html)
    @inlinable
    public static var meshShader_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_mesh_shader")
    }

    /// Equivalent to Vulkan's `VK_EXT_ycbcr_2plane_444_formats`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_ycbcr_2plane_444_formats.html)
    @inlinable
    public static var ycbcr2plane444Formats_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_ycbcr_2plane_444_formats")
    }

    /// Equivalent to Vulkan's `VK_EXT_fragment_density_map2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_fragment_density_map2.html)
    @inlinable
    public static var fragmentDensityMap2_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_fragment_density_map2")
    }

    /// Equivalent to Vulkan's `VK_QCOM_rotated_copy_commands`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_rotated_copy_commands.html)
    @inlinable
    public static var rotatedCopyCommands_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_rotated_copy_commands")
    }

    /// Equivalent to Vulkan's `VK_EXT_image_robustness`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_image_robustness.html)
    @inlinable
    public static var imageRobustness_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_image_robustness")
    }

    /// Equivalent to Vulkan's `VK_KHR_workgroup_memory_explicit_layout`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_workgroup_memory_explicit_layout.html)
    @inlinable
    public static var workgroupMemoryExplicitLayout_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_workgroup_memory_explicit_layout")
    }

    /// Equivalent to Vulkan's `VK_KHR_copy_commands2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_copy_commands2.html)
    @inlinable
    public static var copyCommands2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_copy_commands2")
    }

    /// Equivalent to Vulkan's `VK_EXT_image_compression_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_image_compression_control.html)
    @inlinable
    public static var imageCompressionControl_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_image_compression_control")
    }

    /// Equivalent to Vulkan's `VK_EXT_attachment_feedback_loop_layout`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_attachment_feedback_loop_layout.html)
    @inlinable
    public static var attachmentFeedbackLoopLayout_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_attachment_feedback_loop_layout")
    }

    /// Equivalent to Vulkan's `VK_EXT_4444_formats`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_4444_formats.html)
    @inlinable
    public static var `4444Formats_EXT`: DeviceExtension {
        DeviceExtension(name: "VK_EXT_4444_formats")
    }

    /// Equivalent to Vulkan's `VK_EXT_device_fault`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_device_fault.html)
    @inlinable
    public static var deviceFault_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_device_fault")
    }

    /// Equivalent to Vulkan's `VK_ARM_rasterization_order_attachment_access`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ARM_rasterization_order_attachment_access.html)
    @inlinable
    public static var rasterizationOrderAttachmentAccess_ARM: DeviceExtension {
        DeviceExtension(name: "VK_ARM_rasterization_order_attachment_access")
    }

    /// Equivalent to Vulkan's `VK_EXT_rgba10x6_formats`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_rgba10x6_formats.html)
    @inlinable
    public static var rgba10x6Formats_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_rgba10x6_formats")
    }

    /// Equivalent to Vulkan's `VK_NV_acquire_winrt_display`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_acquire_winrt_display.html)
    #if !PlatformWin32
        @available(
            *, unavailable, message: "VK_NV_acquire_winrt_display is only available when the PlatformWin32 trait is enabled"
        )
    #endif
    @inlinable
    public static var acquireWinrtDisplay_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_acquire_winrt_display")
    }

    /// Equivalent to Vulkan's `VK_VALVE_mutable_descriptor_type`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_VALVE_mutable_descriptor_type.html)
    @inlinable
    public static var mutableDescriptorType_VALVE: DeviceExtension {
        DeviceExtension(name: "VK_VALVE_mutable_descriptor_type")
    }

    /// Equivalent to Vulkan's `VK_EXT_vertex_input_dynamic_state`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_vertex_input_dynamic_state.html)
    @inlinable
    public static var vertexInputDynamicState_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_vertex_input_dynamic_state")
    }

    /// Equivalent to Vulkan's `VK_EXT_physical_device_drm`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_physical_device_drm.html)
    @inlinable
    public static var physicalDeviceDrm_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_physical_device_drm")
    }

    /// Equivalent to Vulkan's `VK_EXT_device_address_binding_report`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_device_address_binding_report.html)
    @inlinable
    public static var deviceAddressBindingReport_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_device_address_binding_report")
    }

    /// Equivalent to Vulkan's `VK_EXT_depth_clip_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_depth_clip_control.html)
    @inlinable
    public static var depthClipControl_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_depth_clip_control")
    }

    /// Equivalent to Vulkan's `VK_EXT_primitive_topology_list_restart`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_primitive_topology_list_restart.html)
    @inlinable
    public static var primitiveTopologyListRestart_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_primitive_topology_list_restart")
    }

    /// Equivalent to Vulkan's `VK_KHR_format_feature_flags2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_format_feature_flags2.html)
    @inlinable
    public static var formatFeatureFlags2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_format_feature_flags2")
    }

    /// Equivalent to Vulkan's `VK_EXT_present_mode_fifo_latest_ready`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_present_mode_fifo_latest_ready.html)
    @inlinable
    public static var presentModeFifoLatestReady_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_present_mode_fifo_latest_ready")
    }

    /// Equivalent to Vulkan's `VK_FUCHSIA_external_memory`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_FUCHSIA_external_memory.html)
    #if !PlatformFuchsia
        @available(
            *, unavailable, message: "VK_FUCHSIA_external_memory is only available when the PlatformFuchsia trait is enabled"
        )
    #endif
    @inlinable
    public static var externalMemory_FUCHSIA: DeviceExtension {
        DeviceExtension(name: "VK_FUCHSIA_external_memory")
    }

    /// Equivalent to Vulkan's `VK_FUCHSIA_external_semaphore`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_FUCHSIA_external_semaphore.html)
    #if !PlatformFuchsia
        @available(
            *, unavailable,
            message: "VK_FUCHSIA_external_semaphore is only available when the PlatformFuchsia trait is enabled"
        )
    #endif
    @inlinable
    public static var externalSemaphore_FUCHSIA: DeviceExtension {
        DeviceExtension(name: "VK_FUCHSIA_external_semaphore")
    }

    /// Equivalent to Vulkan's `VK_FUCHSIA_buffer_collection`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_FUCHSIA_buffer_collection.html)
    #if !PlatformFuchsia
        @available(
            *, unavailable,
            message: "VK_FUCHSIA_buffer_collection is only available when the PlatformFuchsia trait is enabled"
        )
    #endif
    @inlinable
    public static var bufferCollection_FUCHSIA: DeviceExtension {
        DeviceExtension(name: "VK_FUCHSIA_buffer_collection")
    }

    /// Equivalent to Vulkan's `VK_HUAWEI_subpass_shading`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_HUAWEI_subpass_shading.html)
    @inlinable
    public static var subpassShading_HUAWEI: DeviceExtension {
        DeviceExtension(name: "VK_HUAWEI_subpass_shading")
    }

    /// Equivalent to Vulkan's `VK_HUAWEI_invocation_mask`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_HUAWEI_invocation_mask.html)
    @inlinable
    public static var invocationMask_HUAWEI: DeviceExtension {
        DeviceExtension(name: "VK_HUAWEI_invocation_mask")
    }

    /// Equivalent to Vulkan's `VK_NV_external_memory_rdma`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_external_memory_rdma.html)
    @inlinable
    public static var externalMemoryRdma_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_external_memory_rdma")
    }

    /// Equivalent to Vulkan's `VK_EXT_pipeline_properties`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_pipeline_properties.html)
    @inlinable
    public static var pipelineProperties_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_pipeline_properties")
    }

    /// Equivalent to Vulkan's `VK_EXT_frame_boundary`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_frame_boundary.html)
    @inlinable
    public static var frameBoundary_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_frame_boundary")
    }

    /// Equivalent to Vulkan's `VK_EXT_multisampled_render_to_single_sampled`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_multisampled_render_to_single_sampled.html)
    @inlinable
    public static var multisampledRenderToSingleSampled_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_multisampled_render_to_single_sampled")
    }

    /// Equivalent to Vulkan's `VK_EXT_extended_dynamic_state2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_extended_dynamic_state2.html)
    @inlinable
    public static var extendedDynamicState2_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_extended_dynamic_state2")
    }

    /// Equivalent to Vulkan's `VK_EXT_color_write_enable`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_color_write_enable.html)
    @inlinable
    public static var colorWriteEnable_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_color_write_enable")
    }

    /// Equivalent to Vulkan's `VK_EXT_primitives_generated_query`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_primitives_generated_query.html)
    @inlinable
    public static var primitivesGeneratedQuery_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_primitives_generated_query")
    }

    /// Equivalent to Vulkan's `VK_KHR_ray_tracing_maintenance1`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_ray_tracing_maintenance1.html)
    @inlinable
    public static var rayTracingMaintenance1_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_ray_tracing_maintenance1")
    }

    /// Equivalent to Vulkan's `VK_EXT_global_priority_query`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_global_priority_query.html)
    @inlinable
    public static var globalPriorityQuery_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_global_priority_query")
    }

    /// Equivalent to Vulkan's `VK_EXT_image_view_min_lod`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_image_view_min_lod.html)
    @inlinable
    public static var imageViewMinLod_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_image_view_min_lod")
    }

    /// Equivalent to Vulkan's `VK_EXT_multi_draw`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_multi_draw.html)
    @inlinable
    public static var multiDraw_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_multi_draw")
    }

    /// Equivalent to Vulkan's `VK_EXT_image_2d_view_of_3d`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_image_2d_view_of_3d.html)
    @inlinable
    public static var image2dViewOf3d_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_image_2d_view_of_3d")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_tile_image`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_tile_image.html)
    @inlinable
    public static var shaderTileImage_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_tile_image")
    }

    /// Equivalent to Vulkan's `VK_EXT_opacity_micromap`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_opacity_micromap.html)
    @inlinable
    public static var opacityMicromap_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_opacity_micromap")
    }

    /// Equivalent to Vulkan's `VK_NV_displacement_micromap`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_displacement_micromap.html)
    @available(
        *, deprecated,
        message: "VK_NV_displacement_micromap is deprecated and replaced by VK_NV_cluster_acceleration_structure"
    )
    #if !EnableProvisional
        @available(
            *, unavailable,
            message: "VK_NV_displacement_micromap is only available when the EnableProvisional trait is enabled"
        )
    #endif
    @inlinable
    public static var displacementMicromap_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_displacement_micromap")
    }

    /// Equivalent to Vulkan's `VK_EXT_load_store_op_none`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_load_store_op_none.html)
    @inlinable
    public static var loadStoreOpNone_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_load_store_op_none")
    }

    /// Equivalent to Vulkan's `VK_HUAWEI_cluster_culling_shader`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_HUAWEI_cluster_culling_shader.html)
    @inlinable
    public static var clusterCullingShader_HUAWEI: DeviceExtension {
        DeviceExtension(name: "VK_HUAWEI_cluster_culling_shader")
    }

    /// Equivalent to Vulkan's `VK_EXT_border_color_swizzle`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_border_color_swizzle.html)
    @inlinable
    public static var borderColorSwizzle_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_border_color_swizzle")
    }

    /// Equivalent to Vulkan's `VK_EXT_pageable_device_local_memory`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_pageable_device_local_memory.html)
    @inlinable
    public static var pageableDeviceLocalMemory_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_pageable_device_local_memory")
    }

    /// Equivalent to Vulkan's `VK_KHR_maintenance4`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance4.html)
    @inlinable
    public static var maintenance4_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_maintenance4")
    }

    /// Equivalent to Vulkan's `VK_ARM_shader_core_properties`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ARM_shader_core_properties.html)
    @inlinable
    public static var shaderCoreProperties_ARM: DeviceExtension {
        DeviceExtension(name: "VK_ARM_shader_core_properties")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_subgroup_rotate`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_subgroup_rotate.html)
    @inlinable
    public static var shaderSubgroupRotate_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_subgroup_rotate")
    }

    /// Equivalent to Vulkan's `VK_ARM_scheduling_controls`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ARM_scheduling_controls.html)
    @inlinable
    public static var schedulingControls_ARM: DeviceExtension {
        DeviceExtension(name: "VK_ARM_scheduling_controls")
    }

    /// Equivalent to Vulkan's `VK_EXT_image_sliced_view_of_3d`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_image_sliced_view_of_3d.html)
    @inlinable
    public static var imageSlicedViewOf3d_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_image_sliced_view_of_3d")
    }

    /// Equivalent to Vulkan's `VK_VALVE_descriptor_set_host_mapping`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_VALVE_descriptor_set_host_mapping.html)
    @inlinable
    public static var descriptorSetHostMapping_VALVE: DeviceExtension {
        DeviceExtension(name: "VK_VALVE_descriptor_set_host_mapping")
    }

    /// Equivalent to Vulkan's `VK_EXT_depth_clamp_zero_one`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_depth_clamp_zero_one.html)
    @inlinable
    public static var depthClampZeroOne_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_depth_clamp_zero_one")
    }

    /// Equivalent to Vulkan's `VK_EXT_non_seamless_cube_map`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_non_seamless_cube_map.html)
    @inlinable
    public static var nonSeamlessCubeMap_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_non_seamless_cube_map")
    }

    /// Equivalent to Vulkan's `VK_ARM_render_pass_striped`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ARM_render_pass_striped.html)
    @inlinable
    public static var renderPassStriped_ARM: DeviceExtension {
        DeviceExtension(name: "VK_ARM_render_pass_striped")
    }

    /// Equivalent to Vulkan's `VK_QCOM_fragment_density_map_offset`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_fragment_density_map_offset.html)
    @inlinable
    public static var fragmentDensityMapOffset_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_fragment_density_map_offset")
    }

    /// Equivalent to Vulkan's `VK_NV_copy_memory_indirect`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_copy_memory_indirect.html)
    @inlinable
    public static var copyMemoryIndirect_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_copy_memory_indirect")
    }

    /// Equivalent to Vulkan's `VK_NV_memory_decompression`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_memory_decompression.html)
    @inlinable
    public static var memoryDecompression_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_memory_decompression")
    }

    /// Equivalent to Vulkan's `VK_NV_device_generated_commands_compute`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_device_generated_commands_compute.html)
    @inlinable
    public static var deviceGeneratedCommandsCompute_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_device_generated_commands_compute")
    }

    /// Equivalent to Vulkan's `VK_NV_ray_tracing_linear_swept_spheres`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_ray_tracing_linear_swept_spheres.html)
    @inlinable
    public static var rayTracingLinearSweptSpheres_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_ray_tracing_linear_swept_spheres")
    }

    /// Equivalent to Vulkan's `VK_NV_linear_color_attachment`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_linear_color_attachment.html)
    @inlinable
    public static var linearColorAttachment_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_linear_color_attachment")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_maximal_reconvergence`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_maximal_reconvergence.html)
    @inlinable
    public static var shaderMaximalReconvergence_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_maximal_reconvergence")
    }

    /// Equivalent to Vulkan's `VK_EXT_image_compression_control_swapchain`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_image_compression_control_swapchain.html)
    @inlinable
    public static var imageCompressionControlSwapchain_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_image_compression_control_swapchain")
    }

    /// Equivalent to Vulkan's `VK_QCOM_image_processing`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_image_processing.html)
    @inlinable
    public static var imageProcessing_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_image_processing")
    }

    /// Equivalent to Vulkan's `VK_EXT_nested_command_buffer`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_nested_command_buffer.html)
    @inlinable
    public static var nestedCommandBuffer_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_nested_command_buffer")
    }

    /// Equivalent to Vulkan's `VK_EXT_external_memory_acquire_unmodified`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_external_memory_acquire_unmodified.html)
    @inlinable
    public static var externalMemoryAcquireUnmodified_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_external_memory_acquire_unmodified")
    }

    /// Equivalent to Vulkan's `VK_EXT_extended_dynamic_state3`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_extended_dynamic_state3.html)
    @inlinable
    public static var extendedDynamicState3_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_extended_dynamic_state3")
    }

    /// Equivalent to Vulkan's `VK_EXT_subpass_merge_feedback`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_subpass_merge_feedback.html)
    @inlinable
    public static var subpassMergeFeedback_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_subpass_merge_feedback")
    }

    /// Equivalent to Vulkan's `VK_ARM_tensors`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ARM_tensors.html)
    @inlinable
    public static var tensors_ARM: DeviceExtension {
        DeviceExtension(name: "VK_ARM_tensors")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_module_identifier`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_module_identifier.html)
    @inlinable
    public static var shaderModuleIdentifier_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_module_identifier")
    }

    /// Equivalent to Vulkan's `VK_EXT_rasterization_order_attachment_access`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_rasterization_order_attachment_access.html)
    @inlinable
    public static var rasterizationOrderAttachmentAccess_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_rasterization_order_attachment_access")
    }

    /// Equivalent to Vulkan's `VK_NV_optical_flow`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_optical_flow.html)
    @inlinable
    public static var opticalFlow_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_optical_flow")
    }

    /// Equivalent to Vulkan's `VK_EXT_legacy_dithering`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_legacy_dithering.html)
    @inlinable
    public static var legacyDithering_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_legacy_dithering")
    }

    /// Equivalent to Vulkan's `VK_EXT_pipeline_protected_access`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_pipeline_protected_access.html)
    @inlinable
    public static var pipelineProtectedAccess_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_pipeline_protected_access")
    }

    /// Equivalent to Vulkan's `VK_ANDROID_external_format_resolve`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ANDROID_external_format_resolve.html)
    #if !PlatformAndroid
        @available(
            *, unavailable,
            message: "VK_ANDROID_external_format_resolve is only available when the PlatformAndroid trait is enabled"
        )
    #endif
    @inlinable
    public static var externalFormatResolve_ANDROID: DeviceExtension {
        DeviceExtension(name: "VK_ANDROID_external_format_resolve")
    }

    /// Equivalent to Vulkan's `VK_KHR_maintenance5`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance5.html)
    @inlinable
    public static var maintenance5_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_maintenance5")
    }

    /// Equivalent to Vulkan's `VK_AMD_anti_lag`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_AMD_anti_lag.html)
    @inlinable
    public static var antiLag_AMD: DeviceExtension {
        DeviceExtension(name: "VK_AMD_anti_lag")
    }

    /// Equivalent to Vulkan's `VK_KHR_present_id2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_present_id2.html)
    @inlinable
    public static var presentId2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_present_id2")
    }

    /// Equivalent to Vulkan's `VK_KHR_present_wait2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_present_wait2.html)
    @inlinable
    public static var presentWait2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_present_wait2")
    }

    /// Equivalent to Vulkan's `VK_KHR_ray_tracing_position_fetch`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_ray_tracing_position_fetch.html)
    @inlinable
    public static var rayTracingPositionFetch_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_ray_tracing_position_fetch")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_object`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_object.html)
    @inlinable
    public static var shaderObject_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_object")
    }

    /// Equivalent to Vulkan's `VK_KHR_pipeline_binary`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_pipeline_binary.html)
    @inlinable
    public static var pipelineBinary_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_pipeline_binary")
    }

    /// Equivalent to Vulkan's `VK_QCOM_tile_properties`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_tile_properties.html)
    @inlinable
    public static var tileProperties_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_tile_properties")
    }

    /// Equivalent to Vulkan's `VK_SEC_amigo_profiling`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_SEC_amigo_profiling.html)
    @inlinable
    public static var amigoProfiling_SEC: DeviceExtension {
        DeviceExtension(name: "VK_SEC_amigo_profiling")
    }

    /// Equivalent to Vulkan's `VK_QCOM_multiview_per_view_viewports`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_multiview_per_view_viewports.html)
    @inlinable
    public static var multiviewPerViewViewports_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_multiview_per_view_viewports")
    }

    /// Equivalent to Vulkan's `VK_NV_ray_tracing_invocation_reorder`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_ray_tracing_invocation_reorder.html)
    @inlinable
    public static var rayTracingInvocationReorder_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_ray_tracing_invocation_reorder")
    }

    /// Equivalent to Vulkan's `VK_NV_cooperative_vector`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_cooperative_vector.html)
    @inlinable
    public static var cooperativeVector_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_cooperative_vector")
    }

    /// Equivalent to Vulkan's `VK_NV_extended_sparse_address_space`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_extended_sparse_address_space.html)
    @inlinable
    public static var extendedSparseAddressSpace_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_extended_sparse_address_space")
    }

    /// Equivalent to Vulkan's `VK_EXT_mutable_descriptor_type`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_mutable_descriptor_type.html)
    @inlinable
    public static var mutableDescriptorType_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_mutable_descriptor_type")
    }

    /// Equivalent to Vulkan's `VK_EXT_legacy_vertex_attributes`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_legacy_vertex_attributes.html)
    @inlinable
    public static var legacyVertexAttributes_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_legacy_vertex_attributes")
    }

    /// Equivalent to Vulkan's `VK_ARM_shader_core_builtins`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ARM_shader_core_builtins.html)
    @inlinable
    public static var shaderCoreBuiltins_ARM: DeviceExtension {
        DeviceExtension(name: "VK_ARM_shader_core_builtins")
    }

    /// Equivalent to Vulkan's `VK_EXT_pipeline_library_group_handles`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_pipeline_library_group_handles.html)
    @inlinable
    public static var pipelineLibraryGroupHandles_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_pipeline_library_group_handles")
    }

    /// Equivalent to Vulkan's `VK_EXT_dynamic_rendering_unused_attachments`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_dynamic_rendering_unused_attachments.html)
    @inlinable
    public static var dynamicRenderingUnusedAttachments_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_dynamic_rendering_unused_attachments")
    }

    /// Equivalent to Vulkan's `VK_NV_low_latency2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_low_latency2.html)
    @inlinable
    public static var lowLatency2_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_low_latency2")
    }

    /// Equivalent to Vulkan's `VK_KHR_cooperative_matrix`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_cooperative_matrix.html)
    @inlinable
    public static var cooperativeMatrix_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_cooperative_matrix")
    }

    /// Equivalent to Vulkan's `VK_QCOM_multiview_per_view_render_areas`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_multiview_per_view_render_areas.html)
    @inlinable
    public static var multiviewPerViewRenderAreas_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_multiview_per_view_render_areas")
    }

    /// Equivalent to Vulkan's `VK_KHR_compute_shader_derivatives`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_compute_shader_derivatives.html)
    @inlinable
    public static var computeShaderDerivatives_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_compute_shader_derivatives")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_decode_av1`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_decode_av1.html)
    @inlinable
    public static var videoDecodeAv1_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_decode_av1")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_encode_av1`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_encode_av1.html)
    @inlinable
    public static var videoEncodeAv1_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_encode_av1")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_decode_vp9`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_decode_vp9.html)
    @inlinable
    public static var videoDecodeVp9_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_decode_vp9")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_maintenance1`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_maintenance1.html)
    @inlinable
    public static var videoMaintenance1_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_maintenance1")
    }

    /// Equivalent to Vulkan's `VK_NV_per_stage_descriptor_set`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_per_stage_descriptor_set.html)
    @inlinable
    public static var perStageDescriptorSet_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_per_stage_descriptor_set")
    }

    /// Equivalent to Vulkan's `VK_QCOM_image_processing2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_image_processing2.html)
    @inlinable
    public static var imageProcessing2_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_image_processing2")
    }

    /// Equivalent to Vulkan's `VK_QCOM_filter_cubic_weights`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_filter_cubic_weights.html)
    @inlinable
    public static var filterCubicWeights_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_filter_cubic_weights")
    }

    /// Equivalent to Vulkan's `VK_QCOM_ycbcr_degamma`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_ycbcr_degamma.html)
    @inlinable
    public static var ycbcrDegamma_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_ycbcr_degamma")
    }

    /// Equivalent to Vulkan's `VK_QCOM_filter_cubic_clamp`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_filter_cubic_clamp.html)
    @inlinable
    public static var filterCubicClamp_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_filter_cubic_clamp")
    }

    /// Equivalent to Vulkan's `VK_EXT_attachment_feedback_loop_dynamic_state`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_attachment_feedback_loop_dynamic_state.html)
    @inlinable
    public static var attachmentFeedbackLoopDynamicState_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_attachment_feedback_loop_dynamic_state")
    }

    /// Equivalent to Vulkan's `VK_KHR_vertex_attribute_divisor`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_vertex_attribute_divisor.html)
    @inlinable
    public static var vertexAttributeDivisor_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_vertex_attribute_divisor")
    }

    /// Equivalent to Vulkan's `VK_KHR_load_store_op_none`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_load_store_op_none.html)
    @inlinable
    public static var loadStoreOpNone_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_load_store_op_none")
    }

    /// Equivalent to Vulkan's `VK_KHR_unified_image_layouts`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_unified_image_layouts.html)
    @inlinable
    public static var unifiedImageLayouts_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_unified_image_layouts")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_float_controls2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_float_controls2.html)
    @inlinable
    public static var shaderFloatControls2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_float_controls2")
    }

    /// Equivalent to Vulkan's `VK_QNX_external_memory_screen_buffer`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QNX_external_memory_screen_buffer.html)
    #if !PlatformScreen
        @available(
            *, unavailable,
            message: "VK_QNX_external_memory_screen_buffer is only available when the PlatformScreen trait is enabled"
        )
    #endif
    @inlinable
    public static var externalMemoryScreenBuffer_QNX: DeviceExtension {
        DeviceExtension(name: "VK_QNX_external_memory_screen_buffer")
    }

    /// Equivalent to Vulkan's `VK_MSFT_layered_driver`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_MSFT_layered_driver.html)
    @inlinable
    public static var layeredDriver_MSFT: DeviceExtension {
        DeviceExtension(name: "VK_MSFT_layered_driver")
    }

    /// Equivalent to Vulkan's `VK_KHR_index_type_uint8`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_index_type_uint8.html)
    @inlinable
    public static var indexTypeUint8_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_index_type_uint8")
    }

    /// Equivalent to Vulkan's `VK_KHR_line_rasterization`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_line_rasterization.html)
    @inlinable
    public static var lineRasterization_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_line_rasterization")
    }

    /// Equivalent to Vulkan's `VK_KHR_calibrated_timestamps`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_calibrated_timestamps.html)
    @inlinable
    public static var calibratedTimestamps_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_calibrated_timestamps")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_expect_assume`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_expect_assume.html)
    @inlinable
    public static var shaderExpectAssume_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_expect_assume")
    }

    /// Equivalent to Vulkan's `VK_KHR_maintenance6`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance6.html)
    @inlinable
    public static var maintenance6_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_maintenance6")
    }

    /// Equivalent to Vulkan's `VK_NV_descriptor_pool_overallocation`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_descriptor_pool_overallocation.html)
    @inlinable
    public static var descriptorPoolOverallocation_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_descriptor_pool_overallocation")
    }

    /// Equivalent to Vulkan's `VK_QCOM_tile_memory_heap`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_QCOM_tile_memory_heap.html)
    @inlinable
    public static var tileMemoryHeap_QCOM: DeviceExtension {
        DeviceExtension(name: "VK_QCOM_tile_memory_heap")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_encode_quantization_map`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_encode_quantization_map.html)
    @inlinable
    public static var videoEncodeQuantizationMap_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_encode_quantization_map")
    }

    /// Equivalent to Vulkan's `VK_NV_raw_access_chains`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_raw_access_chains.html)
    @inlinable
    public static var rawAccessChains_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_raw_access_chains")
    }

    /// Equivalent to Vulkan's `VK_NV_external_compute_queue`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_external_compute_queue.html)
    @inlinable
    public static var externalComputeQueue_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_external_compute_queue")
    }

    /// Equivalent to Vulkan's `VK_KHR_shader_relaxed_extended_instruction`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_shader_relaxed_extended_instruction.html)
    @inlinable
    public static var shaderRelaxedExtendedInstruction_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_shader_relaxed_extended_instruction")
    }

    /// Equivalent to Vulkan's `VK_NV_command_buffer_inheritance`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_command_buffer_inheritance.html)
    @inlinable
    public static var commandBufferInheritance_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_command_buffer_inheritance")
    }

    /// Equivalent to Vulkan's `VK_KHR_maintenance7`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance7.html)
    @inlinable
    public static var maintenance7_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_maintenance7")
    }

    /// Equivalent to Vulkan's `VK_NV_shader_atomic_float16_vector`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_shader_atomic_float16_vector.html)
    @inlinable
    public static var shaderAtomicFloat16Vector_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_shader_atomic_float16_vector")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_replicated_composites`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_replicated_composites.html)
    @inlinable
    public static var shaderReplicatedComposites_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_replicated_composites")
    }

    /// Equivalent to Vulkan's `VK_EXT_shader_float8`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_shader_float8.html)
    @inlinable
    public static var shaderFloat8_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_shader_float8")
    }

    /// Equivalent to Vulkan's `VK_NV_ray_tracing_validation`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_ray_tracing_validation.html)
    @inlinable
    public static var rayTracingValidation_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_ray_tracing_validation")
    }

    /// Equivalent to Vulkan's `VK_NV_cluster_acceleration_structure`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_cluster_acceleration_structure.html)
    @inlinable
    public static var clusterAccelerationStructure_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_cluster_acceleration_structure")
    }

    /// Equivalent to Vulkan's `VK_NV_partitioned_acceleration_structure`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_partitioned_acceleration_structure.html)
    @inlinable
    public static var partitionedAccelerationStructure_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_partitioned_acceleration_structure")
    }

    /// Equivalent to Vulkan's `VK_EXT_device_generated_commands`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_device_generated_commands.html)
    @inlinable
    public static var deviceGeneratedCommands_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_device_generated_commands")
    }

    /// Equivalent to Vulkan's `VK_KHR_maintenance8`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance8.html)
    @inlinable
    public static var maintenance8_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_maintenance8")
    }

    /// Equivalent to Vulkan's `VK_MESA_image_alignment_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_MESA_image_alignment_control.html)
    @inlinable
    public static var imageAlignmentControl_MESA: DeviceExtension {
        DeviceExtension(name: "VK_MESA_image_alignment_control")
    }

    /// Equivalent to Vulkan's `VK_EXT_depth_clamp_control`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_depth_clamp_control.html)
    @inlinable
    public static var depthClampControl_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_depth_clamp_control")
    }

    /// Equivalent to Vulkan's `VK_KHR_maintenance9`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_maintenance9.html)
    @inlinable
    public static var maintenance9_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_maintenance9")
    }

    /// Equivalent to Vulkan's `VK_KHR_video_maintenance2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_video_maintenance2.html)
    @inlinable
    public static var videoMaintenance2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_video_maintenance2")
    }

    /// Equivalent to Vulkan's `VK_HUAWEI_hdr_vivid`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_HUAWEI_hdr_vivid.html)
    @inlinable
    public static var hdrVivid_HUAWEI: DeviceExtension {
        DeviceExtension(name: "VK_HUAWEI_hdr_vivid")
    }

    /// Equivalent to Vulkan's `VK_NV_cooperative_matrix2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_cooperative_matrix2.html)
    @inlinable
    public static var cooperativeMatrix2_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_cooperative_matrix2")
    }

    /// Equivalent to Vulkan's `VK_ARM_pipeline_opacity_micromap`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ARM_pipeline_opacity_micromap.html)
    @inlinable
    public static var pipelineOpacityMicromap_ARM: DeviceExtension {
        DeviceExtension(name: "VK_ARM_pipeline_opacity_micromap")
    }

    /// Equivalent to Vulkan's `VK_EXT_external_memory_metal`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_external_memory_metal.html)
    #if !PlatformMetal
        @available(
            *, unavailable, message: "VK_EXT_external_memory_metal is only available when the PlatformMetal trait is enabled"
        )
    #endif
    @inlinable
    public static var externalMemoryMetal_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_external_memory_metal")
    }

    /// Equivalent to Vulkan's `VK_KHR_depth_clamp_zero_one`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_depth_clamp_zero_one.html)
    @inlinable
    public static var depthClampZeroOne_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_depth_clamp_zero_one")
    }

    /// Equivalent to Vulkan's `VK_EXT_vertex_attribute_robustness`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_vertex_attribute_robustness.html)
    @inlinable
    public static var vertexAttributeRobustness_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_vertex_attribute_robustness")
    }

    /// Equivalent to Vulkan's `VK_ARM_format_pack`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_ARM_format_pack.html)
    @inlinable
    public static var formatPack_ARM: DeviceExtension {
        DeviceExtension(name: "VK_ARM_format_pack")
    }

    /// Equivalent to Vulkan's `VK_VALVE_fragment_density_map_layered`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_VALVE_fragment_density_map_layered.html)
    @inlinable
    public static var fragmentDensityMapLayered_VALVE: DeviceExtension {
        DeviceExtension(name: "VK_VALVE_fragment_density_map_layered")
    }

    /// Equivalent to Vulkan's `VK_KHR_robustness2`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_KHR_robustness2.html)
    @inlinable
    public static var robustness2_KHR: DeviceExtension {
        DeviceExtension(name: "VK_KHR_robustness2")
    }

    /// Equivalent to Vulkan's `VK_NV_present_metering`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_NV_present_metering.html)
    #if !EnableProvisional
        @available(
            *, unavailable, message: "VK_NV_present_metering is only available when the EnableProvisional trait is enabled"
        )
    #endif
    @inlinable
    public static var presentMetering_NV: DeviceExtension {
        DeviceExtension(name: "VK_NV_present_metering")
    }

    /// Equivalent to Vulkan's `VK_EXT_fragment_density_map_offset`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_fragment_density_map_offset.html)
    @inlinable
    public static var fragmentDensityMapOffset_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_fragment_density_map_offset")
    }

    /// Equivalent to Vulkan's `VK_EXT_zero_initialize_device_memory`.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VK_EXT_zero_initialize_device_memory.html)
    @inlinable
    public static var zeroInitializeDeviceMemory_EXT: DeviceExtension {
        DeviceExtension(name: "VK_EXT_zero_initialize_device_memory")
    }

    // END_GENERATE_DEVICE_EXTENSIONS
}
