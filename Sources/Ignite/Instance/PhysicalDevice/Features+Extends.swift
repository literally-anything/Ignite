/**
 * Features+Extends.swift
 * PhysicalDevice
 *
 * Created by Hunter Baker on 6/17/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

internal import CVulkan

extension PhysicalDevice.Features {
    // BEGIN_GENERATE_PHYSICAL_DEVICE_FEATURES_EXTENDS
    // Generated using header version: 318

    /// Wrapper for the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV.
    /// Available with extension VK_NV_device_generated_commands
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV.html)
    public var deviceGeneratedCommandsFeatures_NV: DeviceGeneratedCommandsFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV,
            type: VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV.self)
        return unsafe raw != nil ? DeviceGeneratedCommandsFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV.
    /// Available with extension VK_NV_device_generated_commands_compute
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV.html)
    public var deviceGeneratedCommandsComputeFeatures_NV: DeviceGeneratedCommandsComputeFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_COMPUTE_FEATURES_NV,
            type: VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV.self)
        return unsafe raw != nil ? DeviceGeneratedCommandsComputeFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePrivateDataFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_private_data
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePrivateDataFeatures.html)
    public var privateDataFeatures: PrivateDataFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES, type: VkPhysicalDevicePrivateDataFeatures.self)
        return unsafe raw != nil ? PrivateDataFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceClusterAccelerationStructureFeaturesNV.
    /// Available with extension VK_NV_cluster_acceleration_structure
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceClusterAccelerationStructureFeaturesNV.html)
    public var clusterAccelerationStructureFeatures_NV: ClusterAccelerationStructureFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_ACCELERATION_STRUCTURE_FEATURES_NV,
            type: VkPhysicalDeviceClusterAccelerationStructureFeaturesNV.self)
        return unsafe raw != nil ? ClusterAccelerationStructureFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVariablePointersFeatures.
    /// Available with version VulkanGenerate.Version, extension VK_KHR_variable_pointers, or extension VK_KHR_variable_pointers
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVariablePointersFeatures.html)
    public var variablePointersFeatures: VariablePointersFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES, type: VkPhysicalDeviceVariablePointersFeatures.self
        )
        return unsafe raw != nil ? VariablePointersFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMultiviewFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_multiview
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewFeatures.html)
    public var multiviewFeatures: MultiviewFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES, type: VkPhysicalDeviceMultiviewFeatures.self)
        return unsafe raw != nil ? MultiviewFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePresentIdFeaturesKHR.
    /// Available with extension VK_KHR_present_id
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentIdFeaturesKHR.html)
    public var presentIdFeatures_KHR: PresentIdFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_ID_FEATURES_KHR, type: VkPhysicalDevicePresentIdFeaturesKHR.self)
        return unsafe raw != nil ? PresentIdFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePresentId2FeaturesKHR.
    /// Available with extension VK_KHR_present_id2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentId2FeaturesKHR.html)
    public var presentId2Features_KHR: PresentId2Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_ID_2_FEATURES_KHR, type: VkPhysicalDevicePresentId2FeaturesKHR.self)
        return unsafe raw != nil ? PresentId2Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePresentWaitFeaturesKHR.
    /// Available with extension VK_KHR_present_wait
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentWaitFeaturesKHR.html)
    public var presentWaitFeatures_KHR: PresentWaitFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_WAIT_FEATURES_KHR, type: VkPhysicalDevicePresentWaitFeaturesKHR.self)
        return unsafe raw != nil ? PresentWaitFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePresentWait2FeaturesKHR.
    /// Available with extension VK_KHR_present_wait2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentWait2FeaturesKHR.html)
    public var presentWait2Features_KHR: PresentWait2Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_WAIT_2_FEATURES_KHR, type: VkPhysicalDevicePresentWait2FeaturesKHR.self
        )
        return unsafe raw != nil ? PresentWait2Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevice16BitStorageFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_16bit_storage
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice16BitStorageFeatures.html)
    public var device16BitStorageFeatures: `16BitStorageFeatures`? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES, type: VkPhysicalDevice16BitStorageFeatures.self)
        return unsafe raw != nil ? `16BitStorageFeatures`(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_shader_subgroup_extended_types
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures.html)
    public var shaderSubgroupExtendedTypesFeatures: ShaderSubgroupExtendedTypesFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES,
            type: VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures.self)
        return unsafe raw != nil ? ShaderSubgroupExtendedTypesFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSamplerYcbcrConversionFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_sampler_ycbcr_conversion
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSamplerYcbcrConversionFeatures.html)
    public var samplerYcbcrConversionFeatures: SamplerYcbcrConversionFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES,
            type: VkPhysicalDeviceSamplerYcbcrConversionFeatures.self)
        return unsafe raw != nil ? SamplerYcbcrConversionFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceProtectedMemoryFeatures.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProtectedMemoryFeatures.html)
    public var protectedMemoryFeatures: ProtectedMemoryFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES, type: VkPhysicalDeviceProtectedMemoryFeatures.self)
        return unsafe raw != nil ? ProtectedMemoryFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT.
    /// Available with extension VK_EXT_blend_operation_advanced
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT.html)
    public var blendOperationAdvancedFeatures_EXT: BlendOperationAdvancedFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT,
            type: VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT.self)
        return unsafe raw != nil ? BlendOperationAdvancedFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMultiDrawFeaturesEXT.
    /// Available with extension VK_EXT_multi_draw
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiDrawFeaturesEXT.html)
    public var multiDrawFeatures_EXT: MultiDrawFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_FEATURES_EXT, type: VkPhysicalDeviceMultiDrawFeaturesEXT.self)
        return unsafe raw != nil ? MultiDrawFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceInlineUniformBlockFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_inline_uniform_block
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceInlineUniformBlockFeatures.html)
    public var inlineUniformBlockFeatures: InlineUniformBlockFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES,
            type: VkPhysicalDeviceInlineUniformBlockFeatures.self)
        return unsafe raw != nil ? InlineUniformBlockFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance4Features.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_maintenance4
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance4Features.html)
    public var maintenance4Features: Maintenance4Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES, type: VkPhysicalDeviceMaintenance4Features.self)
        return unsafe raw != nil ? Maintenance4Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance5Features.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_maintenance5
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance5Features.html)
    public var maintenance5Features: Maintenance5Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_FEATURES, type: VkPhysicalDeviceMaintenance5Features.self)
        return unsafe raw != nil ? Maintenance5Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance6Features.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_maintenance6
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance6Features.html)
    public var maintenance6Features: Maintenance6Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_FEATURES, type: VkPhysicalDeviceMaintenance6Features.self)
        return unsafe raw != nil ? Maintenance6Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance7FeaturesKHR.
    /// Available with extension VK_KHR_maintenance7
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance7FeaturesKHR.html)
    public var maintenance7Features_KHR: Maintenance7Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_7_FEATURES_KHR, type: VkPhysicalDeviceMaintenance7FeaturesKHR.self)
        return unsafe raw != nil ? Maintenance7Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance8FeaturesKHR.
    /// Available with extension VK_KHR_maintenance8
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance8FeaturesKHR.html)
    public var maintenance8Features_KHR: Maintenance8Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_8_FEATURES_KHR, type: VkPhysicalDeviceMaintenance8FeaturesKHR.self)
        return unsafe raw != nil ? Maintenance8Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance9FeaturesKHR.
    /// Available with extension VK_KHR_maintenance9
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance9FeaturesKHR.html)
    public var maintenance9Features_KHR: Maintenance9Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_9_FEATURES_KHR, type: VkPhysicalDeviceMaintenance9FeaturesKHR.self)
        return unsafe raw != nil ? Maintenance9Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderDrawParametersFeatures.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderDrawParametersFeatures.html)
    public var shaderDrawParametersFeatures: ShaderDrawParametersFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES,
            type: VkPhysicalDeviceShaderDrawParametersFeatures.self)
        return unsafe raw != nil ? ShaderDrawParametersFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderFloat16Int8Features.
    /// Available with version VulkanGenerate.Version, extension VK_KHR_shader_float16_int8, or extension VK_KHR_shader_float16_int8
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderFloat16Int8Features.html)
    public var shaderFloat16Int8Features: ShaderFloat16Int8Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES,
            type: VkPhysicalDeviceShaderFloat16Int8Features.self)
        return unsafe raw != nil ? ShaderFloat16Int8Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceHostQueryResetFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_host_query_reset
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceHostQueryResetFeatures.html)
    public var hostQueryResetFeatures: HostQueryResetFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES, type: VkPhysicalDeviceHostQueryResetFeatures.self)
        return unsafe raw != nil ? HostQueryResetFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceGlobalPriorityQueryFeatures.
    /// Available with version VulkanGenerate.Version, extension VK_KHR_global_priority, or extension VK_EXT_global_priority_query
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGlobalPriorityQueryFeatures.html)
    public var globalPriorityQueryFeatures: GlobalPriorityQueryFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES,
            type: VkPhysicalDeviceGlobalPriorityQueryFeatures.self)
        return unsafe raw != nil ? GlobalPriorityQueryFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDeviceMemoryReportFeaturesEXT.
    /// Available with extension VK_EXT_device_memory_report
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceMemoryReportFeaturesEXT.html)
    public var deviceMemoryReportFeatures_EXT: DeviceMemoryReportFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_MEMORY_REPORT_FEATURES_EXT,
            type: VkPhysicalDeviceDeviceMemoryReportFeaturesEXT.self)
        return unsafe raw != nil ? DeviceMemoryReportFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDescriptorIndexingFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_descriptor_indexing
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorIndexingFeatures.html)
    public var descriptorIndexingFeatures: DescriptorIndexingFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES,
            type: VkPhysicalDeviceDescriptorIndexingFeatures.self)
        return unsafe raw != nil ? DescriptorIndexingFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTimelineSemaphoreFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_timeline_semaphore
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTimelineSemaphoreFeatures.html)
    public var timelineSemaphoreFeatures: TimelineSemaphoreFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES,
            type: VkPhysicalDeviceTimelineSemaphoreFeatures.self)
        return unsafe raw != nil ? TimelineSemaphoreFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevice8BitStorageFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_8bit_storage
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice8BitStorageFeatures.html)
    public var device8BitStorageFeatures: `8BitStorageFeatures`? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES, type: VkPhysicalDevice8BitStorageFeatures.self)
        return unsafe raw != nil ? `8BitStorageFeatures`(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceConditionalRenderingFeaturesEXT.
    /// Available with extension VK_EXT_conditional_rendering
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceConditionalRenderingFeaturesEXT.html)
    public var conditionalRenderingFeatures_EXT: ConditionalRenderingFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT,
            type: VkPhysicalDeviceConditionalRenderingFeaturesEXT.self)
        return unsafe raw != nil ? ConditionalRenderingFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVulkanMemoryModelFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_vulkan_memory_model
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkanMemoryModelFeatures.html)
    public var vulkanMemoryModelFeatures: VulkanMemoryModelFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES,
            type: VkPhysicalDeviceVulkanMemoryModelFeatures.self)
        return unsafe raw != nil ? VulkanMemoryModelFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderAtomicInt64Features.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_shader_atomic_int64
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderAtomicInt64Features.html)
    public var shaderAtomicInt64Features: ShaderAtomicInt64Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES,
            type: VkPhysicalDeviceShaderAtomicInt64Features.self)
        return unsafe raw != nil ? ShaderAtomicInt64Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderAtomicFloatFeaturesEXT.
    /// Available with extension VK_EXT_shader_atomic_float
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderAtomicFloatFeaturesEXT.html)
    public var shaderAtomicFloatFeatures_EXT: ShaderAtomicFloatFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT,
            type: VkPhysicalDeviceShaderAtomicFloatFeaturesEXT.self)
        return unsafe raw != nil ? ShaderAtomicFloatFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT.
    /// Available with extension VK_EXT_shader_atomic_float2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT.html)
    public var shaderAtomicFloat2Features_EXT: ShaderAtomicFloat2Features_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_2_FEATURES_EXT,
            type: VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT.self)
        return unsafe raw != nil ? ShaderAtomicFloat2Features_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVertexAttributeDivisorFeatures.
    /// Available with version VulkanGenerate.Version, extension VK_EXT_vertex_attribute_divisor, or extension VK_KHR_vertex_attribute_divisor
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexAttributeDivisorFeatures.html)
    public var vertexAttributeDivisorFeatures: VertexAttributeDivisorFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES,
            type: VkPhysicalDeviceVertexAttributeDivisorFeatures.self)
        return unsafe raw != nil ? VertexAttributeDivisorFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceASTCDecodeFeaturesEXT.
    /// Available with extension VK_EXT_astc_decode_mode
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceASTCDecodeFeaturesEXT.html)
    public var aSTCDecodeFeatures_EXT: ASTCDecodeFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT, type: VkPhysicalDeviceASTCDecodeFeaturesEXT.self)
        return unsafe raw != nil ? ASTCDecodeFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTransformFeedbackFeaturesEXT.
    /// Available with extension VK_EXT_transform_feedback
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTransformFeedbackFeaturesEXT.html)
    public var transformFeedbackFeatures_EXT: TransformFeedbackFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT,
            type: VkPhysicalDeviceTransformFeedbackFeaturesEXT.self)
        return unsafe raw != nil ? TransformFeedbackFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV.
    /// Available with extension VK_NV_representative_fragment_test
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV.html)
    public var representativeFragmentTestFeatures_NV: RepresentativeFragmentTestFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV,
            type: VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV.self)
        return unsafe raw != nil ? RepresentativeFragmentTestFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExclusiveScissorFeaturesNV.
    /// Available with extension VK_NV_scissor_exclusive
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExclusiveScissorFeaturesNV.html)
    public var exclusiveScissorFeatures_NV: ExclusiveScissorFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV,
            type: VkPhysicalDeviceExclusiveScissorFeaturesNV.self)
        return unsafe raw != nil ? ExclusiveScissorFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCornerSampledImageFeaturesNV.
    /// Available with extension VK_NV_corner_sampled_image
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCornerSampledImageFeaturesNV.html)
    public var cornerSampledImageFeatures_NV: CornerSampledImageFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV,
            type: VkPhysicalDeviceCornerSampledImageFeaturesNV.self)
        return unsafe raw != nil ? CornerSampledImageFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR.
    /// Available with extension VK_NV_compute_shader_derivatives, or extension VK_KHR_compute_shader_derivatives
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR.html)
    public var computeShaderDerivativesFeatures_KHR: ComputeShaderDerivativesFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_KHR,
            type: VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR.self)
        return unsafe raw != nil ? ComputeShaderDerivativesFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderImageFootprintFeaturesNV.
    /// Available with extension VK_NV_shader_image_footprint
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderImageFootprintFeaturesNV.html)
    public var shaderImageFootprintFeatures_NV: ShaderImageFootprintFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV,
            type: VkPhysicalDeviceShaderImageFootprintFeaturesNV.self)
        return unsafe raw != nil ? ShaderImageFootprintFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV.
    /// Available with extension VK_NV_dedicated_allocation_image_aliasing
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV.html)
    public var dedicatedAllocationImageAliasingFeatures_NV: DedicatedAllocationImageAliasingFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV,
            type: VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV.self)
        return unsafe raw != nil ? DedicatedAllocationImageAliasingFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCopyMemoryIndirectFeaturesNV.
    /// Available with extension VK_NV_copy_memory_indirect
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCopyMemoryIndirectFeaturesNV.html)
    public var copyMemoryIndirectFeatures_NV: CopyMemoryIndirectFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_FEATURES_NV,
            type: VkPhysicalDeviceCopyMemoryIndirectFeaturesNV.self)
        return unsafe raw != nil ? CopyMemoryIndirectFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMemoryDecompressionFeaturesNV.
    /// Available with extension VK_NV_memory_decompression
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryDecompressionFeaturesNV.html)
    public var memoryDecompressionFeatures_NV: MemoryDecompressionFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_FEATURES_NV,
            type: VkPhysicalDeviceMemoryDecompressionFeaturesNV.self)
        return unsafe raw != nil ? MemoryDecompressionFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShadingRateImageFeaturesNV.
    /// Available with extension VK_NV_shading_rate_image
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShadingRateImageFeaturesNV.html)
    public var shadingRateImageFeatures_NV: ShadingRateImageFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV,
            type: VkPhysicalDeviceShadingRateImageFeaturesNV.self)
        return unsafe raw != nil ? ShadingRateImageFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceInvocationMaskFeaturesHUAWEI.
    /// Available with extension VK_HUAWEI_invocation_mask
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceInvocationMaskFeaturesHUAWEI.html)
    public var invocationMaskFeatures_HUAWEI: InvocationMaskFeatures_HUAWEI? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INVOCATION_MASK_FEATURES_HUAWEI,
            type: VkPhysicalDeviceInvocationMaskFeaturesHUAWEI.self)
        return unsafe raw != nil ? InvocationMaskFeatures_HUAWEI(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMeshShaderFeaturesNV.
    /// Available with extension VK_NV_mesh_shader
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMeshShaderFeaturesNV.html)
    public var meshShaderFeatures_NV: MeshShaderFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV, type: VkPhysicalDeviceMeshShaderFeaturesNV.self)
        return unsafe raw != nil ? MeshShaderFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMeshShaderFeaturesEXT.
    /// Available with extension VK_EXT_mesh_shader
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMeshShaderFeaturesEXT.html)
    public var meshShaderFeatures_EXT: MeshShaderFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT, type: VkPhysicalDeviceMeshShaderFeaturesEXT.self)
        return unsafe raw != nil ? MeshShaderFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceAccelerationStructureFeaturesKHR.
    /// Available with extension VK_KHR_acceleration_structure
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAccelerationStructureFeaturesKHR.html)
    public var accelerationStructureFeatures_KHR: AccelerationStructureFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_FEATURES_KHR,
            type: VkPhysicalDeviceAccelerationStructureFeaturesKHR.self)
        return unsafe raw != nil ? AccelerationStructureFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingPipelineFeaturesKHR.
    /// Available with extension VK_KHR_ray_tracing_pipeline
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingPipelineFeaturesKHR.html)
    public var rayTracingPipelineFeatures_KHR: RayTracingPipelineFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_FEATURES_KHR,
            type: VkPhysicalDeviceRayTracingPipelineFeaturesKHR.self)
        return unsafe raw != nil ? RayTracingPipelineFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayQueryFeaturesKHR.
    /// Available with extension VK_KHR_ray_query
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayQueryFeaturesKHR.html)
    public var rayQueryFeatures_KHR: RayQueryFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_QUERY_FEATURES_KHR, type: VkPhysicalDeviceRayQueryFeaturesKHR.self)
        return unsafe raw != nil ? RayQueryFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR.
    /// Available with extension VK_KHR_ray_tracing_maintenance1
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR.html)
    public var rayTracingMaintenance1Features_KHR: RayTracingMaintenance1Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MAINTENANCE_1_FEATURES_KHR,
            type: VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR.self)
        return unsafe raw != nil ? RayTracingMaintenance1Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentDensityMapFeaturesEXT.
    /// Available with extension VK_EXT_fragment_density_map
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapFeaturesEXT.html)
    public var fragmentDensityMapFeatures_EXT: FragmentDensityMapFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT,
            type: VkPhysicalDeviceFragmentDensityMapFeaturesEXT.self)
        return unsafe raw != nil ? FragmentDensityMapFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentDensityMap2FeaturesEXT.
    /// Available with extension VK_EXT_fragment_density_map2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMap2FeaturesEXT.html)
    public var fragmentDensityMap2Features_EXT: FragmentDensityMap2Features_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT,
            type: VkPhysicalDeviceFragmentDensityMap2FeaturesEXT.self)
        return unsafe raw != nil ? FragmentDensityMap2Features_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT.
    /// Available with extension VK_QCOM_fragment_density_map_offset, or extension VK_EXT_fragment_density_map_offset
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT.html)
    public var fragmentDensityMapOffsetFeatures_EXT: FragmentDensityMapOffsetFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_EXT,
            type: VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT.self)
        return unsafe raw != nil ? FragmentDensityMapOffsetFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceScalarBlockLayoutFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_scalar_block_layout
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceScalarBlockLayoutFeatures.html)
    public var scalarBlockLayoutFeatures: ScalarBlockLayoutFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES,
            type: VkPhysicalDeviceScalarBlockLayoutFeatures.self)
        return unsafe raw != nil ? ScalarBlockLayoutFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceUniformBufferStandardLayoutFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_uniform_buffer_standard_layout
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceUniformBufferStandardLayoutFeatures.html)
    public var uniformBufferStandardLayoutFeatures: UniformBufferStandardLayoutFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES,
            type: VkPhysicalDeviceUniformBufferStandardLayoutFeatures.self)
        return unsafe raw != nil ? UniformBufferStandardLayoutFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDepthClipEnableFeaturesEXT.
    /// Available with extension VK_EXT_depth_clip_enable
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthClipEnableFeaturesEXT.html)
    public var depthClipEnableFeatures_EXT: DepthClipEnableFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT,
            type: VkPhysicalDeviceDepthClipEnableFeaturesEXT.self)
        return unsafe raw != nil ? DepthClipEnableFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMemoryPriorityFeaturesEXT.
    /// Available with extension VK_EXT_memory_priority
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryPriorityFeaturesEXT.html)
    public var memoryPriorityFeatures_EXT: MemoryPriorityFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT,
            type: VkPhysicalDeviceMemoryPriorityFeaturesEXT.self)
        return unsafe raw != nil ? MemoryPriorityFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT.
    /// Available with extension VK_EXT_pageable_device_local_memory
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT.html)
    public var pageableDeviceLocalMemoryFeatures_EXT: PageableDeviceLocalMemoryFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PAGEABLE_DEVICE_LOCAL_MEMORY_FEATURES_EXT,
            type: VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT.self)
        return unsafe raw != nil ? PageableDeviceLocalMemoryFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceBufferDeviceAddressFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_buffer_device_address
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBufferDeviceAddressFeatures.html)
    public var bufferDeviceAddressFeatures: BufferDeviceAddressFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES,
            type: VkPhysicalDeviceBufferDeviceAddressFeatures.self)
        return unsafe raw != nil ? BufferDeviceAddressFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceBufferDeviceAddressFeaturesEXT.
    /// Available with extension VK_EXT_buffer_device_address, or extension VK_EXT_buffer_device_address
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBufferDeviceAddressFeaturesEXT.html)
    public var bufferDeviceAddressFeatures_EXT: BufferDeviceAddressFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT,
            type: VkPhysicalDeviceBufferDeviceAddressFeaturesEXT.self)
        return unsafe raw != nil ? BufferDeviceAddressFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImagelessFramebufferFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_imageless_framebuffer
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImagelessFramebufferFeatures.html)
    public var imagelessFramebufferFeatures: ImagelessFramebufferFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES,
            type: VkPhysicalDeviceImagelessFramebufferFeatures.self)
        return unsafe raw != nil ? ImagelessFramebufferFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTextureCompressionASTCHDRFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_texture_compression_astc_hdr
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTextureCompressionASTCHDRFeatures.html)
    public var textureCompressionASTCHDRFeatures: TextureCompressionASTCHDRFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES,
            type: VkPhysicalDeviceTextureCompressionASTCHDRFeatures.self)
        return unsafe raw != nil ? TextureCompressionASTCHDRFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCooperativeMatrixFeaturesNV.
    /// Available with extension VK_NV_cooperative_matrix
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrixFeaturesNV.html)
    public var cooperativeMatrixFeatures_NV: CooperativeMatrixFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV,
            type: VkPhysicalDeviceCooperativeMatrixFeaturesNV.self)
        return unsafe raw != nil ? CooperativeMatrixFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceYcbcrImageArraysFeaturesEXT.
    /// Available with extension VK_EXT_ycbcr_image_arrays
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceYcbcrImageArraysFeaturesEXT.html)
    public var ycbcrImageArraysFeatures_EXT: YcbcrImageArraysFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT,
            type: VkPhysicalDeviceYcbcrImageArraysFeaturesEXT.self)
        return unsafe raw != nil ? YcbcrImageArraysFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePresentBarrierFeaturesNV.
    /// Available with extension VK_NV_present_barrier
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentBarrierFeaturesNV.html)
    public var presentBarrierFeatures_NV: PresentBarrierFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_BARRIER_FEATURES_NV,
            type: VkPhysicalDevicePresentBarrierFeaturesNV.self)
        return unsafe raw != nil ? PresentBarrierFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePerformanceQueryFeaturesKHR.
    /// Available with extension VK_KHR_performance_query
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePerformanceQueryFeaturesKHR.html)
    public var performanceQueryFeatures_KHR: PerformanceQueryFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR,
            type: VkPhysicalDevicePerformanceQueryFeaturesKHR.self)
        return unsafe raw != nil ? PerformanceQueryFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCoverageReductionModeFeaturesNV.
    /// Available with extension VK_NV_coverage_reduction_mode
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCoverageReductionModeFeaturesNV.html)
    public var coverageReductionModeFeatures_NV: CoverageReductionModeFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV,
            type: VkPhysicalDeviceCoverageReductionModeFeaturesNV.self)
        return unsafe raw != nil ? CoverageReductionModeFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL.
    /// Available with extension VK_INTEL_shader_integer_functions2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL.html)
    public var shaderIntegerFunctions2Features_INTEL: ShaderIntegerFunctions2Features_INTEL? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL,
            type: VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL.self)
        return unsafe raw != nil ? ShaderIntegerFunctions2Features_INTEL(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderClockFeaturesKHR.
    /// Available with extension VK_KHR_shader_clock
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderClockFeaturesKHR.html)
    public var shaderClockFeatures_KHR: ShaderClockFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR, type: VkPhysicalDeviceShaderClockFeaturesKHR.self)
        return unsafe raw != nil ? ShaderClockFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceIndexTypeUint8Features.
    /// Available with version VulkanGenerate.Version, extension VK_EXT_index_type_uint8, or extension VK_KHR_index_type_uint8
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceIndexTypeUint8Features.html)
    public var indexTypeUint8Features: IndexTypeUint8Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES, type: VkPhysicalDeviceIndexTypeUint8Features.self)
        return unsafe raw != nil ? IndexTypeUint8Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderSMBuiltinsFeaturesNV.
    /// Available with extension VK_NV_shader_sm_builtins
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSMBuiltinsFeaturesNV.html)
    public var shaderSMBuiltinsFeatures_NV: ShaderSMBuiltinsFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV,
            type: VkPhysicalDeviceShaderSMBuiltinsFeaturesNV.self)
        return unsafe raw != nil ? ShaderSMBuiltinsFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT.
    /// Available with extension VK_EXT_fragment_shader_interlock
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT.html)
    public var fragmentShaderInterlockFeatures_EXT: FragmentShaderInterlockFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT,
            type: VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT.self)
        return unsafe raw != nil ? FragmentShaderInterlockFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_separate_depth_stencil_layouts
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures.html)
    public var separateDepthStencilLayoutsFeatures: SeparateDepthStencilLayoutsFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES,
            type: VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures.self)
        return unsafe raw != nil ? SeparateDepthStencilLayoutsFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT.
    /// Available with extension VK_EXT_primitive_topology_list_restart
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT.html)
    public var primitiveTopologyListRestartFeatures_EXT: PrimitiveTopologyListRestartFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVE_TOPOLOGY_LIST_RESTART_FEATURES_EXT,
            type: VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT.self)
        return unsafe raw != nil ? PrimitiveTopologyListRestartFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR.
    /// Available with extension VK_KHR_pipeline_executable_properties
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR.html)
    public var pipelineExecutablePropertiesFeatures_KHR: PipelineExecutablePropertiesFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR,
            type: VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR.self)
        return unsafe raw != nil ? PipelineExecutablePropertiesFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_shader_demote_to_helper_invocation
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures.html)
    public var shaderDemoteToHelperInvocationFeatures: ShaderDemoteToHelperInvocationFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES,
            type: VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures.self)
        return unsafe raw != nil ? ShaderDemoteToHelperInvocationFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT.
    /// Available with extension VK_EXT_texel_buffer_alignment
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT.html)
    public var texelBufferAlignmentFeatures_EXT: TexelBufferAlignmentFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT,
            type: VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT.self)
        return unsafe raw != nil ? TexelBufferAlignmentFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSubgroupSizeControlFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_subgroup_size_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubgroupSizeControlFeatures.html)
    public var subgroupSizeControlFeatures: SubgroupSizeControlFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES,
            type: VkPhysicalDeviceSubgroupSizeControlFeatures.self)
        return unsafe raw != nil ? SubgroupSizeControlFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceLineRasterizationFeatures.
    /// Available with version VulkanGenerate.Version, extension VK_EXT_line_rasterization, or extension VK_KHR_line_rasterization
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLineRasterizationFeatures.html)
    public var lineRasterizationFeatures: LineRasterizationFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES,
            type: VkPhysicalDeviceLineRasterizationFeatures.self)
        return unsafe raw != nil ? LineRasterizationFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePipelineCreationCacheControlFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_pipeline_creation_cache_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineCreationCacheControlFeatures.html)
    public var pipelineCreationCacheControlFeatures: PipelineCreationCacheControlFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES,
            type: VkPhysicalDevicePipelineCreationCacheControlFeatures.self)
        return unsafe raw != nil ? PipelineCreationCacheControlFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVulkan11Features.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan11Features.html)
    public var vulkan11Features: Vulkan11Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES, type: VkPhysicalDeviceVulkan11Features.self)
        return unsafe raw != nil ? Vulkan11Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVulkan12Features.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan12Features.html)
    public var vulkan12Features: Vulkan12Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES, type: VkPhysicalDeviceVulkan12Features.self)
        return unsafe raw != nil ? Vulkan12Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVulkan13Features.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan13Features.html)
    public var vulkan13Features: Vulkan13Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_FEATURES, type: VkPhysicalDeviceVulkan13Features.self)
        return unsafe raw != nil ? Vulkan13Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVulkan14Features.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan14Features.html)
    public var vulkan14Features: Vulkan14Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_4_FEATURES, type: VkPhysicalDeviceVulkan14Features.self)
        return unsafe raw != nil ? Vulkan14Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCoherentMemoryFeaturesAMD.
    /// Available with extension VK_AMD_device_coherent_memory
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCoherentMemoryFeaturesAMD.html)
    public var coherentMemoryFeatures_AMD: CoherentMemoryFeatures_AMD? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD,
            type: VkPhysicalDeviceCoherentMemoryFeaturesAMD.self)
        return unsafe raw != nil ? CoherentMemoryFeatures_AMD(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCustomBorderColorFeaturesEXT.
    /// Available with extension VK_EXT_custom_border_color
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCustomBorderColorFeaturesEXT.html)
    public var customBorderColorFeatures_EXT: CustomBorderColorFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT,
            type: VkPhysicalDeviceCustomBorderColorFeaturesEXT.self)
        return unsafe raw != nil ? CustomBorderColorFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceBorderColorSwizzleFeaturesEXT.
    /// Available with extension VK_EXT_border_color_swizzle
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBorderColorSwizzleFeaturesEXT.html)
    public var borderColorSwizzleFeatures_EXT: BorderColorSwizzleFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BORDER_COLOR_SWIZZLE_FEATURES_EXT,
            type: VkPhysicalDeviceBorderColorSwizzleFeaturesEXT.self)
        return unsafe raw != nil ? BorderColorSwizzleFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExtendedDynamicStateFeaturesEXT.
    /// Available with extension VK_EXT_extended_dynamic_state
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedDynamicStateFeaturesEXT.html)
    public var extendedDynamicStateFeatures_EXT: ExtendedDynamicStateFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT,
            type: VkPhysicalDeviceExtendedDynamicStateFeaturesEXT.self)
        return unsafe raw != nil ? ExtendedDynamicStateFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExtendedDynamicState2FeaturesEXT.
    /// Available with extension VK_EXT_extended_dynamic_state2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedDynamicState2FeaturesEXT.html)
    public var extendedDynamicState2Features_EXT: ExtendedDynamicState2Features_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_2_FEATURES_EXT,
            type: VkPhysicalDeviceExtendedDynamicState2FeaturesEXT.self)
        return unsafe raw != nil ? ExtendedDynamicState2Features_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExtendedDynamicState3FeaturesEXT.
    /// Available with extension VK_EXT_extended_dynamic_state3
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedDynamicState3FeaturesEXT.html)
    public var extendedDynamicState3Features_EXT: ExtendedDynamicState3Features_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_FEATURES_EXT,
            type: VkPhysicalDeviceExtendedDynamicState3FeaturesEXT.self)
        return unsafe raw != nil ? ExtendedDynamicState3Features_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV.
    /// Available with extension VK_NV_partitioned_acceleration_structure
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV.html)
    public var partitionedAccelerationStructureFeatures_NV: PartitionedAccelerationStructureFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PARTITIONED_ACCELERATION_STRUCTURE_FEATURES_NV,
            type: VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV.self)
        return unsafe raw != nil ? PartitionedAccelerationStructureFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDiagnosticsConfigFeaturesNV.
    /// Available with extension VK_NV_device_diagnostics_config
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDiagnosticsConfigFeaturesNV.html)
    public var diagnosticsConfigFeatures_NV: DiagnosticsConfigFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV,
            type: VkPhysicalDeviceDiagnosticsConfigFeaturesNV.self)
        return unsafe raw != nil ? DiagnosticsConfigFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_zero_initialize_workgroup_memory
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.html)
    public var zeroInitializeWorkgroupMemoryFeatures: ZeroInitializeWorkgroupMemoryFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES,
            type: VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.self)
        return unsafe raw != nil ? ZeroInitializeWorkgroupMemoryFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR.
    /// Available with extension VK_KHR_shader_subgroup_uniform_control_flow
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR.html)
    public var shaderSubgroupUniformControlFlowFeatures_KHR: ShaderSubgroupUniformControlFlowFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR,
            type: VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR.self)
        return unsafe raw != nil ? ShaderSubgroupUniformControlFlowFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRobustness2FeaturesKHR.
    /// Available with extension VK_EXT_robustness2, or extension VK_KHR_robustness2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRobustness2FeaturesKHR.html)
    public var robustness2Features_KHR: Robustness2Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_KHR, type: VkPhysicalDeviceRobustness2FeaturesKHR.self)
        return unsafe raw != nil ? Robustness2Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageRobustnessFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_image_robustness
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageRobustnessFeatures.html)
    public var imageRobustnessFeatures: ImageRobustnessFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES, type: VkPhysicalDeviceImageRobustnessFeatures.self)
        return unsafe raw != nil ? ImageRobustnessFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR.
    /// Available with extension VK_KHR_workgroup_memory_explicit_layout
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR.html)
    public var workgroupMemoryExplicitLayoutFeatures_KHR: WorkgroupMemoryExplicitLayoutFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_WORKGROUP_MEMORY_EXPLICIT_LAYOUT_FEATURES_KHR,
            type: VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR.self)
        return unsafe raw != nil ? WorkgroupMemoryExplicitLayoutFeatures_KHR(rawValue: raw!) : nil
    }

    #if EnableProvisional
        /// Wrapper for the Vulkan VkPhysicalDevicePortabilitySubsetFeaturesKHR.
        /// Available with extension VK_KHR_portability_subset
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePortabilitySubsetFeaturesKHR.html)
        public var portabilitySubsetFeatures_KHR: PortabilitySubsetFeatures_KHR? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR,
                type: VkPhysicalDevicePortabilitySubsetFeaturesKHR.self)
            return unsafe raw != nil ? PortabilitySubsetFeatures_KHR(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public var portabilitySubsetFeatures_KHR: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDevice4444FormatsFeaturesEXT.
    /// Available with extension VK_EXT_4444_formats
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice4444FormatsFeaturesEXT.html)
    public var device4444FormatsFeatures_EXT: `4444FormatsFeatures_EXT`? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT, type: VkPhysicalDevice4444FormatsFeaturesEXT.self)
        return unsafe raw != nil ? `4444FormatsFeatures_EXT`(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSubpassShadingFeaturesHUAWEI.
    /// Available with extension VK_HUAWEI_subpass_shading
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubpassShadingFeaturesHUAWEI.html)
    public var subpassShadingFeatures_HUAWEI: SubpassShadingFeatures_HUAWEI? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_FEATURES_HUAWEI,
            type: VkPhysicalDeviceSubpassShadingFeaturesHUAWEI.self)
        return unsafe raw != nil ? SubpassShadingFeatures_HUAWEI(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI.
    /// Available with extension VK_HUAWEI_cluster_culling_shader
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI.html)
    public var clusterCullingShaderFeatures_HUAWEI: ClusterCullingShaderFeatures_HUAWEI? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_FEATURES_HUAWEI,
            type: VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI.self)
        return unsafe raw != nil ? ClusterCullingShaderFeatures_HUAWEI(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT.
    /// Available with extension VK_EXT_shader_image_atomic_int64
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT.html)
    public var shaderImageAtomicInt64Features_EXT: ShaderImageAtomicInt64Features_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_ATOMIC_INT64_FEATURES_EXT,
            type: VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT.self)
        return unsafe raw != nil ? ShaderImageAtomicInt64Features_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentShadingRateFeaturesKHR.
    /// Available with extension VK_KHR_fragment_shading_rate
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShadingRateFeaturesKHR.html)
    public var fragmentShadingRateFeatures_KHR: FragmentShadingRateFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_FEATURES_KHR,
            type: VkPhysicalDeviceFragmentShadingRateFeaturesKHR.self)
        return unsafe raw != nil ? FragmentShadingRateFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderTerminateInvocationFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_shader_terminate_invocation
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderTerminateInvocationFeatures.html)
    public var shaderTerminateInvocationFeatures: ShaderTerminateInvocationFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES,
            type: VkPhysicalDeviceShaderTerminateInvocationFeatures.self)
        return unsafe raw != nil ? ShaderTerminateInvocationFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV.
    /// Available with extension VK_NV_fragment_shading_rate_enums
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV.html)
    public var fragmentShadingRateEnumsFeatures_NV: FragmentShadingRateEnumsFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_FEATURES_NV,
            type: VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV.self)
        return unsafe raw != nil ? FragmentShadingRateEnumsFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImage2DViewOf3DFeaturesEXT.
    /// Available with extension VK_EXT_image_2d_view_of_3d
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImage2DViewOf3DFeaturesEXT.html)
    public var image2DViewOf3DFeatures_EXT: Image2DViewOf3DFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_2D_VIEW_OF_3D_FEATURES_EXT,
            type: VkPhysicalDeviceImage2DViewOf3DFeaturesEXT.self)
        return unsafe raw != nil ? Image2DViewOf3DFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT.
    /// Available with extension VK_EXT_image_sliced_view_of_3d
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT.html)
    public var imageSlicedViewOf3DFeatures_EXT: ImageSlicedViewOf3DFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_SLICED_VIEW_OF_3D_FEATURES_EXT,
            type: VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT.self)
        return unsafe raw != nil ? ImageSlicedViewOf3DFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT.
    /// Available with extension VK_EXT_attachment_feedback_loop_dynamic_state
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT.html)
    public var attachmentFeedbackLoopDynamicStateFeatures_EXT: AttachmentFeedbackLoopDynamicStateFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_DYNAMIC_STATE_FEATURES_EXT,
            type: VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT.self)
        return unsafe raw != nil ? AttachmentFeedbackLoopDynamicStateFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT.
    /// Available with extension VK_EXT_legacy_vertex_attributes
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT.html)
    public var legacyVertexAttributesFeatures_EXT: LegacyVertexAttributesFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_FEATURES_EXT,
            type: VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT.self)
        return unsafe raw != nil ? LegacyVertexAttributesFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT.
    /// Available with extension VK_VALVE_mutable_descriptor_type, or extension VK_EXT_mutable_descriptor_type
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT.html)
    public var mutableDescriptorTypeFeatures_EXT: MutableDescriptorTypeFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_EXT,
            type: VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT.self)
        return unsafe raw != nil ? MutableDescriptorTypeFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDepthClipControlFeaturesEXT.
    /// Available with extension VK_EXT_depth_clip_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthClipControlFeaturesEXT.html)
    public var depthClipControlFeatures_EXT: DepthClipControlFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_CONTROL_FEATURES_EXT,
            type: VkPhysicalDeviceDepthClipControlFeaturesEXT.self)
        return unsafe raw != nil ? DepthClipControlFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT.
    /// Available with extension VK_EXT_zero_initialize_device_memory
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT.html)
    public var zeroInitializeDeviceMemoryFeatures_EXT: ZeroInitializeDeviceMemoryFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_DEVICE_MEMORY_FEATURES_EXT,
            type: VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT.self)
        return unsafe raw != nil ? ZeroInitializeDeviceMemoryFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT.
    /// Available with extension VK_EXT_device_generated_commands
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT.html)
    public var deviceGeneratedCommandsFeatures_EXT: DeviceGeneratedCommandsFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_EXT,
            type: VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT.self)
        return unsafe raw != nil ? DeviceGeneratedCommandsFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDepthClampControlFeaturesEXT.
    /// Available with extension VK_EXT_depth_clamp_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthClampControlFeaturesEXT.html)
    public var depthClampControlFeatures_EXT: DepthClampControlFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLAMP_CONTROL_FEATURES_EXT,
            type: VkPhysicalDeviceDepthClampControlFeaturesEXT.self)
        return unsafe raw != nil ? DepthClampControlFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT.
    /// Available with extension VK_EXT_vertex_input_dynamic_state
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT.html)
    public var vertexInputDynamicStateFeatures_EXT: VertexInputDynamicStateFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_INPUT_DYNAMIC_STATE_FEATURES_EXT,
            type: VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT.self)
        return unsafe raw != nil ? VertexInputDynamicStateFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExternalMemoryRDMAFeaturesNV.
    /// Available with extension VK_NV_external_memory_rdma
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalMemoryRDMAFeaturesNV.html)
    public var externalMemoryRDMAFeatures_NV: ExternalMemoryRDMAFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_RDMA_FEATURES_NV,
            type: VkPhysicalDeviceExternalMemoryRDMAFeaturesNV.self)
        return unsafe raw != nil ? ExternalMemoryRDMAFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR.
    /// Available with extension VK_KHR_shader_relaxed_extended_instruction
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR.html)
    public var shaderRelaxedExtendedInstructionFeatures_KHR: ShaderRelaxedExtendedInstructionFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_RELAXED_EXTENDED_INSTRUCTION_FEATURES_KHR,
            type: VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR.self)
        return unsafe raw != nil ? ShaderRelaxedExtendedInstructionFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceColorWriteEnableFeaturesEXT.
    /// Available with extension VK_EXT_color_write_enable
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceColorWriteEnableFeaturesEXT.html)
    public var colorWriteEnableFeatures_EXT: ColorWriteEnableFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COLOR_WRITE_ENABLE_FEATURES_EXT,
            type: VkPhysicalDeviceColorWriteEnableFeaturesEXT.self)
        return unsafe raw != nil ? ColorWriteEnableFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSynchronization2Features.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_synchronization2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSynchronization2Features.html)
    public var synchronization2Features: Synchronization2Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES, type: VkPhysicalDeviceSynchronization2Features.self
        )
        return unsafe raw != nil ? Synchronization2Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR.
    /// Available with extension VK_KHR_unified_image_layouts
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR.html)
    public var unifiedImageLayoutsFeatures_KHR: UnifiedImageLayoutsFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFIED_IMAGE_LAYOUTS_FEATURES_KHR,
            type: VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR.self)
        return unsafe raw != nil ? UnifiedImageLayoutsFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceHostImageCopyFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_host_image_copy
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceHostImageCopyFeatures.html)
    public var hostImageCopyFeatures: HostImageCopyFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_FEATURES, type: VkPhysicalDeviceHostImageCopyFeatures.self)
        return unsafe raw != nil ? HostImageCopyFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT.
    /// Available with extension VK_EXT_primitives_generated_query
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT.html)
    public var primitivesGeneratedQueryFeatures_EXT: PrimitivesGeneratedQueryFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVES_GENERATED_QUERY_FEATURES_EXT,
            type: VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT.self)
        return unsafe raw != nil ? PrimitivesGeneratedQueryFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceLegacyDitheringFeaturesEXT.
    /// Available with extension VK_EXT_legacy_dithering
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLegacyDitheringFeaturesEXT.html)
    public var legacyDitheringFeatures_EXT: LegacyDitheringFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_DITHERING_FEATURES_EXT,
            type: VkPhysicalDeviceLegacyDitheringFeaturesEXT.self)
        return unsafe raw != nil ? LegacyDitheringFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT.
    /// Available with extension VK_EXT_multisampled_render_to_single_sampled
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT.html)
    public var multisampledRenderToSingleSampledFeatures_EXT: MultisampledRenderToSingleSampledFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_FEATURES_EXT,
            type: VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT.self)
        return unsafe raw != nil ? MultisampledRenderToSingleSampledFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePipelineProtectedAccessFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_pipeline_protected_access
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineProtectedAccessFeatures.html)
    public var pipelineProtectedAccessFeatures: PipelineProtectedAccessFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES,
            type: VkPhysicalDevicePipelineProtectedAccessFeatures.self)
        return unsafe raw != nil ? PipelineProtectedAccessFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVideoMaintenance1FeaturesKHR.
    /// Available with extension VK_KHR_video_maintenance1
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoMaintenance1FeaturesKHR.html)
    public var videoMaintenance1Features_KHR: VideoMaintenance1Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_MAINTENANCE_1_FEATURES_KHR,
            type: VkPhysicalDeviceVideoMaintenance1FeaturesKHR.self)
        return unsafe raw != nil ? VideoMaintenance1Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVideoMaintenance2FeaturesKHR.
    /// Available with extension VK_KHR_video_maintenance2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoMaintenance2FeaturesKHR.html)
    public var videoMaintenance2Features_KHR: VideoMaintenance2Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_MAINTENANCE_2_FEATURES_KHR,
            type: VkPhysicalDeviceVideoMaintenance2FeaturesKHR.self)
        return unsafe raw != nil ? VideoMaintenance2Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVideoDecodeVP9FeaturesKHR.
    /// Available with extension VK_KHR_video_decode_vp9
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoDecodeVP9FeaturesKHR.html)
    public var videoDecodeVP9Features_KHR: VideoDecodeVP9Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_DECODE_VP9_FEATURES_KHR,
            type: VkPhysicalDeviceVideoDecodeVP9FeaturesKHR.self)
        return unsafe raw != nil ? VideoDecodeVP9Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR.
    /// Available with extension VK_KHR_video_encode_quantization_map
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR.html)
    public var videoEncodeQuantizationMapFeatures_KHR: VideoEncodeQuantizationMapFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_ENCODE_QUANTIZATION_MAP_FEATURES_KHR,
            type: VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR.self)
        return unsafe raw != nil ? VideoEncodeQuantizationMapFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVideoEncodeAV1FeaturesKHR.
    /// Available with extension VK_KHR_video_encode_av1
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoEncodeAV1FeaturesKHR.html)
    public var videoEncodeAV1Features_KHR: VideoEncodeAV1Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_ENCODE_AV1_FEATURES_KHR,
            type: VkPhysicalDeviceVideoEncodeAV1FeaturesKHR.self)
        return unsafe raw != nil ? VideoEncodeAV1Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceInheritedViewportScissorFeaturesNV.
    /// Available with extension VK_NV_inherited_viewport_scissor
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceInheritedViewportScissorFeaturesNV.html)
    public var inheritedViewportScissorFeatures_NV: InheritedViewportScissorFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INHERITED_VIEWPORT_SCISSOR_FEATURES_NV,
            type: VkPhysicalDeviceInheritedViewportScissorFeaturesNV.self)
        return unsafe raw != nil ? InheritedViewportScissorFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT.
    /// Available with extension VK_EXT_ycbcr_2plane_444_formats
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT.html)
    public var ycbcr2Plane444FormatsFeatures_EXT: Ycbcr2Plane444FormatsFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_2_PLANE_444_FORMATS_FEATURES_EXT,
            type: VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT.self)
        return unsafe raw != nil ? Ycbcr2Plane444FormatsFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceProvokingVertexFeaturesEXT.
    /// Available with extension VK_EXT_provoking_vertex
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProvokingVertexFeaturesEXT.html)
    public var provokingVertexFeatures_EXT: ProvokingVertexFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_FEATURES_EXT,
            type: VkPhysicalDeviceProvokingVertexFeaturesEXT.self)
        return unsafe raw != nil ? ProvokingVertexFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDescriptorBufferFeaturesEXT.
    /// Available with extension VK_EXT_descriptor_buffer
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferFeaturesEXT.html)
    public var descriptorBufferFeatures_EXT: DescriptorBufferFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_FEATURES_EXT,
            type: VkPhysicalDeviceDescriptorBufferFeaturesEXT.self)
        return unsafe raw != nil ? DescriptorBufferFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderIntegerDotProductFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_shader_integer_dot_product
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderIntegerDotProductFeatures.html)
    public var shaderIntegerDotProductFeatures: ShaderIntegerDotProductFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES,
            type: VkPhysicalDeviceShaderIntegerDotProductFeatures.self)
        return unsafe raw != nil ? ShaderIntegerDotProductFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR.
    /// Available with extension VK_NV_fragment_shader_barycentric, or extension VK_KHR_fragment_shader_barycentric
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR.html)
    public var fragmentShaderBarycentricFeatures_KHR: FragmentShaderBarycentricFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR,
            type: VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR.self)
        return unsafe raw != nil ? FragmentShaderBarycentricFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingMotionBlurFeaturesNV.
    /// Available with extension VK_NV_ray_tracing_motion_blur
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingMotionBlurFeaturesNV.html)
    public var rayTracingMotionBlurFeatures_NV: RayTracingMotionBlurFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MOTION_BLUR_FEATURES_NV,
            type: VkPhysicalDeviceRayTracingMotionBlurFeaturesNV.self)
        return unsafe raw != nil ? RayTracingMotionBlurFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingValidationFeaturesNV.
    /// Available with extension VK_NV_ray_tracing_validation
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingValidationFeaturesNV.html)
    public var rayTracingValidationFeatures_NV: RayTracingValidationFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_VALIDATION_FEATURES_NV,
            type: VkPhysicalDeviceRayTracingValidationFeaturesNV.self)
        return unsafe raw != nil ? RayTracingValidationFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV.
    /// Available with extension VK_NV_ray_tracing_linear_swept_spheres
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV.html)
    public var rayTracingLinearSweptSpheresFeatures_NV: RayTracingLinearSweptSpheresFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_LINEAR_SWEPT_SPHERES_FEATURES_NV,
            type: VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV.self)
        return unsafe raw != nil ? RayTracingLinearSweptSpheresFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT.
    /// Available with extension VK_EXT_rgba10x6_formats
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT.html)
    public var rGBA10X6FormatsFeatures_EXT: RGBA10X6FormatsFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RGBA10X6_FORMATS_FEATURES_EXT,
            type: VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT.self)
        return unsafe raw != nil ? RGBA10X6FormatsFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDynamicRenderingFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_dynamic_rendering
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDynamicRenderingFeatures.html)
    public var dynamicRenderingFeatures: DynamicRenderingFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES, type: VkPhysicalDeviceDynamicRenderingFeatures.self
        )
        return unsafe raw != nil ? DynamicRenderingFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageViewMinLodFeaturesEXT.
    /// Available with extension VK_EXT_image_view_min_lod
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageViewMinLodFeaturesEXT.html)
    public var imageViewMinLodFeatures_EXT: ImageViewMinLodFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_MIN_LOD_FEATURES_EXT,
            type: VkPhysicalDeviceImageViewMinLodFeaturesEXT.self)
        return unsafe raw != nil ? ImageViewMinLodFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT.
    /// Available with extension VK_ARM_rasterization_order_attachment_access, or extension VK_EXT_rasterization_order_attachment_access
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT.html)
    public var rasterizationOrderAttachmentAccessFeatures_EXT: RasterizationOrderAttachmentAccessFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_EXT,
            type: VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT.self)
        return unsafe raw != nil ? RasterizationOrderAttachmentAccessFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceLinearColorAttachmentFeaturesNV.
    /// Available with extension VK_NV_linear_color_attachment
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLinearColorAttachmentFeaturesNV.html)
    public var linearColorAttachmentFeatures_NV: LinearColorAttachmentFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINEAR_COLOR_ATTACHMENT_FEATURES_NV,
            type: VkPhysicalDeviceLinearColorAttachmentFeaturesNV.self)
        return unsafe raw != nil ? LinearColorAttachmentFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT.
    /// Available with extension VK_EXT_graphics_pipeline_library
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT.html)
    public var graphicsPipelineLibraryFeatures_EXT: GraphicsPipelineLibraryFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_FEATURES_EXT,
            type: VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT.self)
        return unsafe raw != nil ? GraphicsPipelineLibraryFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePipelineBinaryFeaturesKHR.
    /// Available with extension VK_KHR_pipeline_binary
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineBinaryFeaturesKHR.html)
    public var pipelineBinaryFeatures_KHR: PipelineBinaryFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_BINARY_FEATURES_KHR,
            type: VkPhysicalDevicePipelineBinaryFeaturesKHR.self)
        return unsafe raw != nil ? PipelineBinaryFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE.
    /// Available with extension VK_VALVE_descriptor_set_host_mapping
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE.html)
    public var descriptorSetHostMappingFeatures_VALVE: DescriptorSetHostMappingFeatures_VALVE? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_SET_HOST_MAPPING_FEATURES_VALVE,
            type: VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE.self)
        return unsafe raw != nil ? DescriptorSetHostMappingFeatures_VALVE(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceNestedCommandBufferFeaturesEXT.
    /// Available with extension VK_EXT_nested_command_buffer
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceNestedCommandBufferFeaturesEXT.html)
    public var nestedCommandBufferFeatures_EXT: NestedCommandBufferFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_FEATURES_EXT,
            type: VkPhysicalDeviceNestedCommandBufferFeaturesEXT.self)
        return unsafe raw != nil ? NestedCommandBufferFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT.
    /// Available with extension VK_EXT_shader_module_identifier
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT.html)
    public var shaderModuleIdentifierFeatures_EXT: ShaderModuleIdentifierFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_FEATURES_EXT,
            type: VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT.self)
        return unsafe raw != nil ? ShaderModuleIdentifierFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageCompressionControlFeaturesEXT.
    /// Available with extension VK_EXT_image_compression_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageCompressionControlFeaturesEXT.html)
    public var imageCompressionControlFeatures_EXT: ImageCompressionControlFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_FEATURES_EXT,
            type: VkPhysicalDeviceImageCompressionControlFeaturesEXT.self)
        return unsafe raw != nil ? ImageCompressionControlFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT.
    /// Available with extension VK_EXT_image_compression_control_swapchain
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT.html)
    public var imageCompressionControlSwapchainFeatures_EXT: ImageCompressionControlSwapchainFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_SWAPCHAIN_FEATURES_EXT,
            type: VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT.self)
        return unsafe raw != nil ? ImageCompressionControlSwapchainFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT.
    /// Available with extension VK_EXT_subpass_merge_feedback
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT.html)
    public var subpassMergeFeedbackFeatures_EXT: SubpassMergeFeedbackFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_MERGE_FEEDBACK_FEATURES_EXT,
            type: VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT.self)
        return unsafe raw != nil ? SubpassMergeFeedbackFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceOpacityMicromapFeaturesEXT.
    /// Available with extension VK_EXT_opacity_micromap
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceOpacityMicromapFeaturesEXT.html)
    public var opacityMicromapFeatures_EXT: OpacityMicromapFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPACITY_MICROMAP_FEATURES_EXT,
            type: VkPhysicalDeviceOpacityMicromapFeaturesEXT.self)
        return unsafe raw != nil ? OpacityMicromapFeatures_EXT(rawValue: raw!) : nil
    }

    #if EnableProvisional
        /// Wrapper for the Vulkan VkPhysicalDeviceDisplacementMicromapFeaturesNV.
        /// Available with extension VK_NV_displacement_micromap
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDisplacementMicromapFeaturesNV.html)
        public var displacementMicromapFeatures_NV: DisplacementMicromapFeatures_NV? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_FEATURES_NV,
                type: VkPhysicalDeviceDisplacementMicromapFeaturesNV.self)
            return unsafe raw != nil ? DisplacementMicromapFeatures_NV(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public var displacementMicromapFeatures_NV: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDevicePipelinePropertiesFeaturesEXT.
    /// Available with extension VK_EXT_pipeline_properties
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelinePropertiesFeaturesEXT.html)
    public var pipelinePropertiesFeatures_EXT: PipelinePropertiesFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROPERTIES_FEATURES_EXT,
            type: VkPhysicalDevicePipelinePropertiesFeaturesEXT.self)
        return unsafe raw != nil ? PipelinePropertiesFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD.
    /// Available with extension VK_AMD_shader_early_and_late_fragment_tests
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD.html)
    public var shaderEarlyAndLateFragmentTestsFeatures_AMD: ShaderEarlyAndLateFragmentTestsFeatures_AMD? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_FEATURES_AMD,
            type: VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD.self)
        return unsafe raw != nil ? ShaderEarlyAndLateFragmentTestsFeatures_AMD(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT.
    /// Available with extension VK_EXT_non_seamless_cube_map
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT.html)
    public var nonSeamlessCubeMapFeatures_EXT: NonSeamlessCubeMapFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_NON_SEAMLESS_CUBE_MAP_FEATURES_EXT,
            type: VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT.self)
        return unsafe raw != nil ? NonSeamlessCubeMapFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePipelineRobustnessFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_pipeline_robustness
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineRobustnessFeatures.html)
    public var pipelineRobustnessFeatures: PipelineRobustnessFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES,
            type: VkPhysicalDevicePipelineRobustnessFeatures.self)
        return unsafe raw != nil ? PipelineRobustnessFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageProcessingFeaturesQCOM.
    /// Available with extension VK_QCOM_image_processing
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageProcessingFeaturesQCOM.html)
    public var imageProcessingFeatures_QCOM: ImageProcessingFeatures_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_FEATURES_QCOM,
            type: VkPhysicalDeviceImageProcessingFeaturesQCOM.self)
        return unsafe raw != nil ? ImageProcessingFeatures_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTilePropertiesFeaturesQCOM.
    /// Available with extension VK_QCOM_tile_properties
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTilePropertiesFeaturesQCOM.html)
    public var tilePropertiesFeatures_QCOM: TilePropertiesFeatures_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_PROPERTIES_FEATURES_QCOM,
            type: VkPhysicalDeviceTilePropertiesFeaturesQCOM.self)
        return unsafe raw != nil ? TilePropertiesFeatures_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceAmigoProfilingFeaturesSEC.
    /// Available with extension VK_SEC_amigo_profiling
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAmigoProfilingFeaturesSEC.html)
    public var amigoProfilingFeatures_SEC: AmigoProfilingFeatures_SEC? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_AMIGO_PROFILING_FEATURES_SEC,
            type: VkPhysicalDeviceAmigoProfilingFeaturesSEC.self)
        return unsafe raw != nil ? AmigoProfilingFeatures_SEC(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT.
    /// Available with extension VK_EXT_attachment_feedback_loop_layout
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT.html)
    public var attachmentFeedbackLoopLayoutFeatures_EXT: AttachmentFeedbackLoopLayoutFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_FEATURES_EXT,
            type: VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT.self)
        return unsafe raw != nil ? AttachmentFeedbackLoopLayoutFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceAddressBindingReportFeaturesEXT.
    /// Available with extension VK_EXT_device_address_binding_report
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAddressBindingReportFeaturesEXT.html)
    public var addressBindingReportFeatures_EXT: AddressBindingReportFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ADDRESS_BINDING_REPORT_FEATURES_EXT,
            type: VkPhysicalDeviceAddressBindingReportFeaturesEXT.self)
        return unsafe raw != nil ? AddressBindingReportFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceOpticalFlowFeaturesNV.
    /// Available with extension VK_NV_optical_flow
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceOpticalFlowFeaturesNV.html)
    public var opticalFlowFeatures_NV: OpticalFlowFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPTICAL_FLOW_FEATURES_NV, type: VkPhysicalDeviceOpticalFlowFeaturesNV.self)
        return unsafe raw != nil ? OpticalFlowFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFaultFeaturesEXT.
    /// Available with extension VK_EXT_device_fault
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFaultFeaturesEXT.html)
    public var faultFeatures_EXT: FaultFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FAULT_FEATURES_EXT, type: VkPhysicalDeviceFaultFeaturesEXT.self)
        return unsafe raw != nil ? FaultFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT.
    /// Available with extension VK_EXT_pipeline_library_group_handles
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT.html)
    public var pipelineLibraryGroupHandlesFeatures_EXT: PipelineLibraryGroupHandlesFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_LIBRARY_GROUP_HANDLES_FEATURES_EXT,
            type: VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT.self)
        return unsafe raw != nil ? PipelineLibraryGroupHandlesFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM.
    /// Available with extension VK_ARM_shader_core_builtins
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM.html)
    public var shaderCoreBuiltinsFeatures_ARM: ShaderCoreBuiltinsFeatures_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_FEATURES_ARM,
            type: VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM.self)
        return unsafe raw != nil ? ShaderCoreBuiltinsFeatures_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFrameBoundaryFeaturesEXT.
    /// Available with extension VK_EXT_frame_boundary
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFrameBoundaryFeaturesEXT.html)
    public var frameBoundaryFeatures_EXT: FrameBoundaryFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAME_BOUNDARY_FEATURES_EXT,
            type: VkPhysicalDeviceFrameBoundaryFeaturesEXT.self)
        return unsafe raw != nil ? FrameBoundaryFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT.
    /// Available with extension VK_EXT_dynamic_rendering_unused_attachments
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT.html)
    public var dynamicRenderingUnusedAttachmentsFeatures_EXT: DynamicRenderingUnusedAttachmentsFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_UNUSED_ATTACHMENTS_FEATURES_EXT,
            type: VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT.self)
        return unsafe raw != nil ? DynamicRenderingUnusedAttachmentsFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT.
    /// Available with extension VK_EXT_swapchain_maintenance1
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT.html)
    public var swapchainMaintenance1Features_EXT: SwapchainMaintenance1Features_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SWAPCHAIN_MAINTENANCE_1_FEATURES_EXT,
            type: VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT.self)
        return unsafe raw != nil ? SwapchainMaintenance1Features_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDepthBiasControlFeaturesEXT.
    /// Available with extension VK_EXT_depth_bias_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthBiasControlFeaturesEXT.html)
    public var depthBiasControlFeatures_EXT: DepthBiasControlFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_BIAS_CONTROL_FEATURES_EXT,
            type: VkPhysicalDeviceDepthBiasControlFeaturesEXT.self)
        return unsafe raw != nil ? DepthBiasControlFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV.
    /// Available with extension VK_NV_ray_tracing_invocation_reorder
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV.html)
    public var rayTracingInvocationReorderFeatures_NV: RayTracingInvocationReorderFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_FEATURES_NV,
            type: VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV.self)
        return unsafe raw != nil ? RayTracingInvocationReorderFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV.
    /// Available with extension VK_NV_extended_sparse_address_space
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV.html)
    public var extendedSparseAddressSpaceFeatures_NV: ExtendedSparseAddressSpaceFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_FEATURES_NV,
            type: VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV.self)
        return unsafe raw != nil ? ExtendedSparseAddressSpaceFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM.
    /// Available with extension VK_QCOM_multiview_per_view_viewports
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM.html)
    public var multiviewPerViewViewportsFeatures_QCOM: MultiviewPerViewViewportsFeatures_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_VIEWPORTS_FEATURES_QCOM,
            type: VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM.self)
        return unsafe raw != nil ? MultiviewPerViewViewportsFeatures_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR.
    /// Available with extension VK_KHR_ray_tracing_position_fetch
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR.html)
    public var rayTracingPositionFetchFeatures_KHR: RayTracingPositionFetchFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_POSITION_FETCH_FEATURES_KHR,
            type: VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR.self)
        return unsafe raw != nil ? RayTracingPositionFetchFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM.
    /// Available with extension VK_QCOM_multiview_per_view_render_areas
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM.html)
    public var multiviewPerViewRenderAreasFeatures_QCOM: MultiviewPerViewRenderAreasFeatures_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_RENDER_AREAS_FEATURES_QCOM,
            type: VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM.self)
        return unsafe raw != nil ? MultiviewPerViewRenderAreasFeatures_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderObjectFeaturesEXT.
    /// Available with extension VK_EXT_shader_object
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderObjectFeaturesEXT.html)
    public var shaderObjectFeatures_EXT: ShaderObjectFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_OBJECT_FEATURES_EXT, type: VkPhysicalDeviceShaderObjectFeaturesEXT.self)
        return unsafe raw != nil ? ShaderObjectFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderTileImageFeaturesEXT.
    /// Available with extension VK_EXT_shader_tile_image
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderTileImageFeaturesEXT.html)
    public var shaderTileImageFeatures_EXT: ShaderTileImageFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TILE_IMAGE_FEATURES_EXT,
            type: VkPhysicalDeviceShaderTileImageFeaturesEXT.self)
        return unsafe raw != nil ? ShaderTileImageFeatures_EXT(rawValue: raw!) : nil
    }

    #if PlatformScreen
        /// Wrapper for the Vulkan VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX.
        /// Available with extension VK_QNX_external_memory_screen_buffer
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX.html)
        public var externalMemoryScreenBufferFeatures_QNX: ExternalMemoryScreenBufferFeatures_QNX? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCREEN_BUFFER_FEATURES_QNX,
                type: VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX.self)
            return unsafe raw != nil ? ExternalMemoryScreenBufferFeatures_QNX(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'PlatformScreen' trait to be enabled")
        public var externalMemoryScreenBufferFeatures_QNX: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDeviceCooperativeMatrixFeaturesKHR.
    /// Available with extension VK_KHR_cooperative_matrix
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrixFeaturesKHR.html)
    public var cooperativeMatrixFeatures_KHR: CooperativeMatrixFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_KHR,
            type: VkPhysicalDeviceCooperativeMatrixFeaturesKHR.self)
        return unsafe raw != nil ? CooperativeMatrixFeatures_KHR(rawValue: raw!) : nil
    }

    #if EnableProvisional
        /// Wrapper for the Vulkan VkPhysicalDeviceShaderEnqueueFeaturesAMDX.
        /// Available with extension VK_AMDX_shader_enqueue
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderEnqueueFeaturesAMDX.html)
        public var shaderEnqueueFeatures_AMDX: ShaderEnqueueFeatures_AMDX? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ENQUEUE_FEATURES_AMDX,
                type: VkPhysicalDeviceShaderEnqueueFeaturesAMDX.self)
            return unsafe raw != nil ? ShaderEnqueueFeatures_AMDX(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public var shaderEnqueueFeatures_AMDX: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDeviceAntiLagFeaturesAMD.
    /// Available with extension VK_AMD_anti_lag
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAntiLagFeaturesAMD.html)
    public var antiLagFeatures_AMD: AntiLagFeatures_AMD? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ANTI_LAG_FEATURES_AMD, type: VkPhysicalDeviceAntiLagFeaturesAMD.self)
        return unsafe raw != nil ? AntiLagFeatures_AMD(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTileMemoryHeapFeaturesQCOM.
    /// Available with extension VK_QCOM_tile_memory_heap
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTileMemoryHeapFeaturesQCOM.html)
    public var tileMemoryHeapFeatures_QCOM: TileMemoryHeapFeatures_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_MEMORY_HEAP_FEATURES_QCOM,
            type: VkPhysicalDeviceTileMemoryHeapFeaturesQCOM.self)
        return unsafe raw != nil ? TileMemoryHeapFeatures_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCubicClampFeaturesQCOM.
    /// Available with extension VK_QCOM_filter_cubic_clamp
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCubicClampFeaturesQCOM.html)
    public var cubicClampFeatures_QCOM: CubicClampFeatures_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUBIC_CLAMP_FEATURES_QCOM, type: VkPhysicalDeviceCubicClampFeaturesQCOM.self)
        return unsafe raw != nil ? CubicClampFeatures_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceYcbcrDegammaFeaturesQCOM.
    /// Available with extension VK_QCOM_ycbcr_degamma
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceYcbcrDegammaFeaturesQCOM.html)
    public var ycbcrDegammaFeatures_QCOM: YcbcrDegammaFeatures_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_DEGAMMA_FEATURES_QCOM,
            type: VkPhysicalDeviceYcbcrDegammaFeaturesQCOM.self)
        return unsafe raw != nil ? YcbcrDegammaFeatures_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCubicWeightsFeaturesQCOM.
    /// Available with extension VK_QCOM_filter_cubic_weights
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCubicWeightsFeaturesQCOM.html)
    public var cubicWeightsFeatures_QCOM: CubicWeightsFeatures_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUBIC_WEIGHTS_FEATURES_QCOM,
            type: VkPhysicalDeviceCubicWeightsFeaturesQCOM.self)
        return unsafe raw != nil ? CubicWeightsFeatures_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageProcessing2FeaturesQCOM.
    /// Available with extension VK_QCOM_image_processing2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageProcessing2FeaturesQCOM.html)
    public var imageProcessing2Features_QCOM: ImageProcessing2Features_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_2_FEATURES_QCOM,
            type: VkPhysicalDeviceImageProcessing2FeaturesQCOM.self)
        return unsafe raw != nil ? ImageProcessing2Features_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV.
    /// Available with extension VK_NV_descriptor_pool_overallocation
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV.html)
    public var descriptorPoolOverallocationFeatures_NV: DescriptorPoolOverallocationFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_POOL_OVERALLOCATION_FEATURES_NV,
            type: VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV.self)
        return unsafe raw != nil ? DescriptorPoolOverallocationFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePerStageDescriptorSetFeaturesNV.
    /// Available with extension VK_NV_per_stage_descriptor_set
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePerStageDescriptorSetFeaturesNV.html)
    public var perStageDescriptorSetFeatures_NV: PerStageDescriptorSetFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PER_STAGE_DESCRIPTOR_SET_FEATURES_NV,
            type: VkPhysicalDevicePerStageDescriptorSetFeaturesNV.self)
        return unsafe raw != nil ? PerStageDescriptorSetFeatures_NV(rawValue: raw!) : nil
    }

    #if PlatformAndroid
        /// Wrapper for the Vulkan VkPhysicalDeviceExternalFormatResolveFeaturesANDROID.
        /// Available with extension VK_ANDROID_external_format_resolve
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalFormatResolveFeaturesANDROID.html)
        public var externalFormatResolveFeatures_ANDROID: ExternalFormatResolveFeatures_ANDROID? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_FEATURES_ANDROID,
                type: VkPhysicalDeviceExternalFormatResolveFeaturesANDROID.self)
            return unsafe raw != nil ? ExternalFormatResolveFeatures_ANDROID(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'PlatformAndroid' trait to be enabled")
        public var externalFormatResolveFeatures_ANDROID: Any { fatalError() }
    #endif

    #if EnableProvisional
        /// Wrapper for the Vulkan VkPhysicalDeviceCudaKernelLaunchFeaturesNV.
        /// Available with extension VK_NV_cuda_kernel_launch
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCudaKernelLaunchFeaturesNV.html)
        public var cudaKernelLaunchFeatures_NV: CudaKernelLaunchFeatures_NV? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_FEATURES_NV,
                type: VkPhysicalDeviceCudaKernelLaunchFeaturesNV.self)
            return unsafe raw != nil ? CudaKernelLaunchFeatures_NV(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public var cudaKernelLaunchFeatures_NV: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDeviceSchedulingControlsFeaturesARM.
    /// Available with extension VK_ARM_scheduling_controls
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSchedulingControlsFeaturesARM.html)
    public var schedulingControlsFeatures_ARM: SchedulingControlsFeatures_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCHEDULING_CONTROLS_FEATURES_ARM,
            type: VkPhysicalDeviceSchedulingControlsFeaturesARM.self)
        return unsafe raw != nil ? SchedulingControlsFeatures_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG.
    /// Available with extension VK_IMG_relaxed_line_rasterization
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG.html)
    public var relaxedLineRasterizationFeatures_IMG: RelaxedLineRasterizationFeatures_IMG? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RELAXED_LINE_RASTERIZATION_FEATURES_IMG,
            type: VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG.self)
        return unsafe raw != nil ? RelaxedLineRasterizationFeatures_IMG(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRenderPassStripedFeaturesARM.
    /// Available with extension VK_ARM_render_pass_striped
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRenderPassStripedFeaturesARM.html)
    public var renderPassStripedFeatures_ARM: RenderPassStripedFeatures_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RENDER_PASS_STRIPED_FEATURES_ARM,
            type: VkPhysicalDeviceRenderPassStripedFeaturesARM.self)
        return unsafe raw != nil ? RenderPassStripedFeatures_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePipelineOpacityMicromapFeaturesARM.
    /// Available with extension VK_ARM_pipeline_opacity_micromap
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineOpacityMicromapFeaturesARM.html)
    public var pipelineOpacityMicromapFeatures_ARM: PipelineOpacityMicromapFeatures_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_OPACITY_MICROMAP_FEATURES_ARM,
            type: VkPhysicalDevicePipelineOpacityMicromapFeaturesARM.self)
        return unsafe raw != nil ? PipelineOpacityMicromapFeatures_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR.
    /// Available with extension VK_KHR_shader_maximal_reconvergence
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR.html)
    public var shaderMaximalReconvergenceFeatures_KHR: ShaderMaximalReconvergenceFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MAXIMAL_RECONVERGENCE_FEATURES_KHR,
            type: VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR.self)
        return unsafe raw != nil ? ShaderMaximalReconvergenceFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderSubgroupRotateFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_shader_subgroup_rotate
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSubgroupRotateFeatures.html)
    public var shaderSubgroupRotateFeatures: ShaderSubgroupRotateFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_ROTATE_FEATURES,
            type: VkPhysicalDeviceShaderSubgroupRotateFeatures.self)
        return unsafe raw != nil ? ShaderSubgroupRotateFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderExpectAssumeFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_shader_expect_assume
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderExpectAssumeFeatures.html)
    public var shaderExpectAssumeFeatures: ShaderExpectAssumeFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EXPECT_ASSUME_FEATURES,
            type: VkPhysicalDeviceShaderExpectAssumeFeatures.self)
        return unsafe raw != nil ? ShaderExpectAssumeFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderFloatControls2Features.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_shader_float_controls2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderFloatControls2Features.html)
    public var shaderFloatControls2Features: ShaderFloatControls2Features? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES,
            type: VkPhysicalDeviceShaderFloatControls2Features.self)
        return unsafe raw != nil ? ShaderFloatControls2Features(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDynamicRenderingLocalReadFeatures.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_dynamic_rendering_local_read
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDynamicRenderingLocalReadFeatures.html)
    public var dynamicRenderingLocalReadFeatures: DynamicRenderingLocalReadFeatures? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_LOCAL_READ_FEATURES,
            type: VkPhysicalDeviceDynamicRenderingLocalReadFeatures.self)
        return unsafe raw != nil ? DynamicRenderingLocalReadFeatures(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderQuadControlFeaturesKHR.
    /// Available with extension VK_KHR_shader_quad_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderQuadControlFeaturesKHR.html)
    public var shaderQuadControlFeatures_KHR: ShaderQuadControlFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_QUAD_CONTROL_FEATURES_KHR,
            type: VkPhysicalDeviceShaderQuadControlFeaturesKHR.self)
        return unsafe raw != nil ? ShaderQuadControlFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV.
    /// Available with extension VK_NV_shader_atomic_float16_vector
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV.html)
    public var shaderAtomicFloat16VectorFeatures_NV: ShaderAtomicFloat16VectorFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT16_VECTOR_FEATURES_NV,
            type: VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV.self)
        return unsafe raw != nil ? ShaderAtomicFloat16VectorFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMapMemoryPlacedFeaturesEXT.
    /// Available with extension VK_EXT_map_memory_placed
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMapMemoryPlacedFeaturesEXT.html)
    public var mapMemoryPlacedFeatures_EXT: MapMemoryPlacedFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAP_MEMORY_PLACED_FEATURES_EXT,
            type: VkPhysicalDeviceMapMemoryPlacedFeaturesEXT.self)
        return unsafe raw != nil ? MapMemoryPlacedFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderBfloat16FeaturesKHR.
    /// Available with extension VK_KHR_shader_bfloat16
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderBfloat16FeaturesKHR.html)
    public var shaderBfloat16Features_KHR: ShaderBfloat16Features_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_BFLOAT16_FEATURES_KHR,
            type: VkPhysicalDeviceShaderBfloat16FeaturesKHR.self)
        return unsafe raw != nil ? ShaderBfloat16Features_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRawAccessChainsFeaturesNV.
    /// Available with extension VK_NV_raw_access_chains
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRawAccessChainsFeaturesNV.html)
    public var rawAccessChainsFeatures_NV: RawAccessChainsFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAW_ACCESS_CHAINS_FEATURES_NV,
            type: VkPhysicalDeviceRawAccessChainsFeaturesNV.self)
        return unsafe raw != nil ? RawAccessChainsFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCommandBufferInheritanceFeaturesNV.
    /// Available with extension VK_NV_command_buffer_inheritance
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCommandBufferInheritanceFeaturesNV.html)
    public var commandBufferInheritanceFeatures_NV: CommandBufferInheritanceFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMMAND_BUFFER_INHERITANCE_FEATURES_NV,
            type: VkPhysicalDeviceCommandBufferInheritanceFeaturesNV.self)
        return unsafe raw != nil ? CommandBufferInheritanceFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageAlignmentControlFeaturesMESA.
    /// Available with extension VK_MESA_image_alignment_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageAlignmentControlFeaturesMESA.html)
    public var imageAlignmentControlFeatures_MESA: ImageAlignmentControlFeatures_MESA? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_FEATURES_MESA,
            type: VkPhysicalDeviceImageAlignmentControlFeaturesMESA.self)
        return unsafe raw != nil ? ImageAlignmentControlFeatures_MESA(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT.
    /// Available with extension VK_EXT_shader_replicated_composites
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT.html)
    public var shaderReplicatedCompositesFeatures_EXT: ShaderReplicatedCompositesFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_REPLICATED_COMPOSITES_FEATURES_EXT,
            type: VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT.self)
        return unsafe raw != nil ? ShaderReplicatedCompositesFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT.
    /// Available with extension VK_EXT_present_mode_fifo_latest_ready
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT.html)
    public var presentModeFifoLatestReadyFeatures_EXT: PresentModeFifoLatestReadyFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_MODE_FIFO_LATEST_READY_FEATURES_EXT,
            type: VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT.self)
        return unsafe raw != nil ? PresentModeFifoLatestReadyFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCooperativeMatrix2FeaturesNV.
    /// Available with extension VK_NV_cooperative_matrix2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrix2FeaturesNV.html)
    public var cooperativeMatrix2Features_NV: CooperativeMatrix2Features_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_FEATURES_NV,
            type: VkPhysicalDeviceCooperativeMatrix2FeaturesNV.self)
        return unsafe raw != nil ? CooperativeMatrix2Features_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceHdrVividFeaturesHUAWEI.
    /// Available with extension VK_HUAWEI_hdr_vivid
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceHdrVividFeaturesHUAWEI.html)
    public var hdrVividFeatures_HUAWEI: HdrVividFeatures_HUAWEI? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HDR_VIVID_FEATURES_HUAWEI, type: VkPhysicalDeviceHdrVividFeaturesHUAWEI.self)
        return unsafe raw != nil ? HdrVividFeatures_HUAWEI(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT.
    /// Available with extension VK_EXT_vertex_attribute_robustness
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT.html)
    public var vertexAttributeRobustnessFeatures_EXT: VertexAttributeRobustnessFeatures_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_ROBUSTNESS_FEATURES_EXT,
            type: VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT.self)
        return unsafe raw != nil ? VertexAttributeRobustnessFeatures_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDepthClampZeroOneFeaturesKHR.
    /// Available with extension VK_EXT_depth_clamp_zero_one, or extension VK_KHR_depth_clamp_zero_one
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthClampZeroOneFeaturesKHR.html)
    public var depthClampZeroOneFeatures_KHR: DepthClampZeroOneFeatures_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLAMP_ZERO_ONE_FEATURES_KHR,
            type: VkPhysicalDeviceDepthClampZeroOneFeaturesKHR.self)
        return unsafe raw != nil ? DepthClampZeroOneFeatures_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCooperativeVectorFeaturesNV.
    /// Available with extension VK_NV_cooperative_vector
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeVectorFeaturesNV.html)
    public var cooperativeVectorFeatures_NV: CooperativeVectorFeatures_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_VECTOR_FEATURES_NV,
            type: VkPhysicalDeviceCooperativeVectorFeaturesNV.self)
        return unsafe raw != nil ? CooperativeVectorFeatures_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTileShadingFeaturesQCOM.
    /// Available with extension VK_QCOM_tile_shading
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTileShadingFeaturesQCOM.html)
    public var tileShadingFeatures_QCOM: TileShadingFeatures_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_SHADING_FEATURES_QCOM, type: VkPhysicalDeviceTileShadingFeaturesQCOM.self)
        return unsafe raw != nil ? TileShadingFeatures_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE.
    /// Available with extension VK_VALVE_fragment_density_map_layered
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE.html)
    public var fragmentDensityMapLayeredFeatures_VALVE: FragmentDensityMapLayeredFeatures_VALVE? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_LAYERED_FEATURES_VALVE,
            type: VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE.self)
        return unsafe raw != nil ? FragmentDensityMapLayeredFeatures_VALVE(rawValue: raw!) : nil
    }

    #if EnableProvisional
        /// Wrapper for the Vulkan VkPhysicalDevicePresentMeteringFeaturesNV.
        /// Available with extension VK_NV_present_metering
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentMeteringFeaturesNV.html)
        public var presentMeteringFeatures_NV: PresentMeteringFeatures_NV? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_METERING_FEATURES_NV,
                type: VkPhysicalDevicePresentMeteringFeaturesNV.self)
            return unsafe raw != nil ? PresentMeteringFeatures_NV(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public var presentMeteringFeatures_NV: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDeviceFormatPackFeaturesARM.
    /// Available with extension VK_ARM_format_pack
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFormatPackFeaturesARM.html)
    public var formatPackFeatures_ARM: FormatPackFeatures_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FORMAT_PACK_FEATURES_ARM, type: VkPhysicalDeviceFormatPackFeaturesARM.self)
        return unsafe raw != nil ? FormatPackFeatures_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTensorFeaturesARM.
    /// Available with extension VK_ARM_tensors
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTensorFeaturesARM.html)
    public var tensorFeatures_ARM: TensorFeatures_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TENSOR_FEATURES_ARM, type: VkPhysicalDeviceTensorFeaturesARM.self)
        return unsafe raw != nil ? TensorFeatures_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDescriptorBufferTensorFeaturesARM.
    /// Available with extension VK_ARM_tensors
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferTensorFeaturesARM.html)
    public var descriptorBufferTensorFeatures_ARM: DescriptorBufferTensorFeatures_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_TENSOR_FEATURES_ARM,
            type: VkPhysicalDeviceDescriptorBufferTensorFeaturesARM.self)
        return unsafe raw != nil ? DescriptorBufferTensorFeatures_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderFloat8FeaturesEXT.
    /// Available with extension VK_EXT_shader_float8
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderFloat8FeaturesEXT.html)
    public var shaderFloat8Features_EXT: ShaderFloat8Features_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT8_FEATURES_EXT, type: VkPhysicalDeviceShaderFloat8FeaturesEXT.self)
        return unsafe raw != nil ? ShaderFloat8Features_EXT(rawValue: raw!) : nil
    }


    /// Wrapper around the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV.html)
    @safe
    public struct DeviceGeneratedCommandsFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `deviceGeneratedCommands` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV`.
        public var deviceGeneratedCommands: Bool {
            unsafe rawValue.deviceGeneratedCommands != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV.html)
    @safe
    public struct DeviceGeneratedCommandsComputeFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `deviceGeneratedCompute` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV`.
        public var deviceGeneratedCompute: Bool {
            unsafe rawValue.deviceGeneratedCompute != 0
        }

        /// The `deviceGeneratedComputePipelines` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV`.
        public var deviceGeneratedComputePipelines: Bool {
            unsafe rawValue.deviceGeneratedComputePipelines != 0
        }

        /// The `deviceGeneratedComputeCaptureReplay` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV`.
        public var deviceGeneratedComputeCaptureReplay: Bool {
            unsafe rawValue.deviceGeneratedComputeCaptureReplay != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePrivateDataFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePrivateDataFeatures.html)
    @safe
    public struct PrivateDataFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePrivateDataFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePrivateDataFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `privateData` member of the Vulkan `VkPhysicalDevicePrivateDataFeatures`.
        public var privateData: Bool {
            unsafe rawValue.privateData != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceClusterAccelerationStructureFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceClusterAccelerationStructureFeaturesNV.html)
    @safe
    public struct ClusterAccelerationStructureFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceClusterAccelerationStructureFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceClusterAccelerationStructureFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `clusterAccelerationStructure` member of the Vulkan `VkPhysicalDeviceClusterAccelerationStructureFeaturesNV`.
        public var clusterAccelerationStructure: Bool {
            unsafe rawValue.clusterAccelerationStructure != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVariablePointersFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVariablePointersFeatures.html)
    @safe
    public struct VariablePointersFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVariablePointersFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVariablePointersFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `variablePointersStorageBuffer` member of the Vulkan `VkPhysicalDeviceVariablePointersFeatures`.
        public var variablePointersStorageBuffer: Bool {
            unsafe rawValue.variablePointersStorageBuffer != 0
        }

        /// The `variablePointers` member of the Vulkan `VkPhysicalDeviceVariablePointersFeatures`.
        public var variablePointers: Bool {
            unsafe rawValue.variablePointers != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMultiviewFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewFeatures.html)
    @safe
    public struct MultiviewFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMultiviewFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMultiviewFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `multiview` member of the Vulkan `VkPhysicalDeviceMultiviewFeatures`.
        public var multiview: Bool {
            unsafe rawValue.multiview != 0
        }

        /// The `multiviewGeometryShader` member of the Vulkan `VkPhysicalDeviceMultiviewFeatures`.
        public var multiviewGeometryShader: Bool {
            unsafe rawValue.multiviewGeometryShader != 0
        }

        /// The `multiviewTessellationShader` member of the Vulkan `VkPhysicalDeviceMultiviewFeatures`.
        public var multiviewTessellationShader: Bool {
            unsafe rawValue.multiviewTessellationShader != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePresentIdFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentIdFeaturesKHR.html)
    @safe
    public struct PresentIdFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePresentIdFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePresentIdFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `presentId` member of the Vulkan `VkPhysicalDevicePresentIdFeaturesKHR`.
        public var presentId: Bool {
            unsafe rawValue.presentId != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePresentId2FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentId2FeaturesKHR.html)
    @safe
    public struct PresentId2Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePresentId2FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePresentId2FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `presentId2` member of the Vulkan `VkPhysicalDevicePresentId2FeaturesKHR`.
        public var presentId2: Bool {
            unsafe rawValue.presentId2 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePresentWaitFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentWaitFeaturesKHR.html)
    @safe
    public struct PresentWaitFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePresentWaitFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePresentWaitFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `presentWait` member of the Vulkan `VkPhysicalDevicePresentWaitFeaturesKHR`.
        public var presentWait: Bool {
            unsafe rawValue.presentWait != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePresentWait2FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentWait2FeaturesKHR.html)
    @safe
    public struct PresentWait2Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePresentWait2FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePresentWait2FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `presentWait2` member of the Vulkan `VkPhysicalDevicePresentWait2FeaturesKHR`.
        public var presentWait2: Bool {
            unsafe rawValue.presentWait2 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevice16BitStorageFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice16BitStorageFeatures.html)
    @safe
    public struct `16BitStorageFeatures` {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevice16BitStorageFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevice16BitStorageFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `storageBuffer16BitAccess` member of the Vulkan `VkPhysicalDevice16BitStorageFeatures`.
        public var storageBuffer16BitAccess: Bool {
            unsafe rawValue.storageBuffer16BitAccess != 0
        }

        /// The `uniformAndStorageBuffer16BitAccess` member of the Vulkan `VkPhysicalDevice16BitStorageFeatures`.
        public var uniformAndStorageBuffer16BitAccess: Bool {
            unsafe rawValue.uniformAndStorageBuffer16BitAccess != 0
        }

        /// The `storagePushConstant16` member of the Vulkan `VkPhysicalDevice16BitStorageFeatures`.
        public var storagePushConstant16: Bool {
            unsafe rawValue.storagePushConstant16 != 0
        }

        /// The `storageInputOutput16` member of the Vulkan `VkPhysicalDevice16BitStorageFeatures`.
        public var storageInputOutput16: Bool {
            unsafe rawValue.storageInputOutput16 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures.html)
    @safe
    public struct ShaderSubgroupExtendedTypesFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderSubgroupExtendedTypes` member of the Vulkan `VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures`.
        public var shaderSubgroupExtendedTypes: Bool {
            unsafe rawValue.shaderSubgroupExtendedTypes != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSamplerYcbcrConversionFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSamplerYcbcrConversionFeatures.html)
    @safe
    public struct SamplerYcbcrConversionFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSamplerYcbcrConversionFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSamplerYcbcrConversionFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `samplerYcbcrConversion` member of the Vulkan `VkPhysicalDeviceSamplerYcbcrConversionFeatures`.
        public var samplerYcbcrConversion: Bool {
            unsafe rawValue.samplerYcbcrConversion != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceProtectedMemoryFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProtectedMemoryFeatures.html)
    @safe
    public struct ProtectedMemoryFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceProtectedMemoryFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceProtectedMemoryFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `protectedMemory` member of the Vulkan `VkPhysicalDeviceProtectedMemoryFeatures`.
        public var protectedMemory: Bool {
            unsafe rawValue.protectedMemory != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT.html)
    @safe
    public struct BlendOperationAdvancedFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `advancedBlendCoherentOperations` member of the Vulkan `VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT`.
        public var advancedBlendCoherentOperations: Bool {
            unsafe rawValue.advancedBlendCoherentOperations != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMultiDrawFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiDrawFeaturesEXT.html)
    @safe
    public struct MultiDrawFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMultiDrawFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMultiDrawFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `multiDraw` member of the Vulkan `VkPhysicalDeviceMultiDrawFeaturesEXT`.
        public var multiDraw: Bool {
            unsafe rawValue.multiDraw != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceInlineUniformBlockFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceInlineUniformBlockFeatures.html)
    @safe
    public struct InlineUniformBlockFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceInlineUniformBlockFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceInlineUniformBlockFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `inlineUniformBlock` member of the Vulkan `VkPhysicalDeviceInlineUniformBlockFeatures`.
        public var inlineUniformBlock: Bool {
            unsafe rawValue.inlineUniformBlock != 0
        }

        /// The `descriptorBindingInlineUniformBlockUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceInlineUniformBlockFeatures`.
        public var descriptorBindingInlineUniformBlockUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingInlineUniformBlockUpdateAfterBind != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance4Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance4Features.html)
    @safe
    public struct Maintenance4Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance4Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance4Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `maintenance4` member of the Vulkan `VkPhysicalDeviceMaintenance4Features`.
        public var maintenance4: Bool {
            unsafe rawValue.maintenance4 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance5Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance5Features.html)
    @safe
    public struct Maintenance5Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance5Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance5Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `maintenance5` member of the Vulkan `VkPhysicalDeviceMaintenance5Features`.
        public var maintenance5: Bool {
            unsafe rawValue.maintenance5 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance6Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance6Features.html)
    @safe
    public struct Maintenance6Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance6Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance6Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `maintenance6` member of the Vulkan `VkPhysicalDeviceMaintenance6Features`.
        public var maintenance6: Bool {
            unsafe rawValue.maintenance6 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance7FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance7FeaturesKHR.html)
    @safe
    public struct Maintenance7Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance7FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance7FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `maintenance7` member of the Vulkan `VkPhysicalDeviceMaintenance7FeaturesKHR`.
        public var maintenance7: Bool {
            unsafe rawValue.maintenance7 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance8FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance8FeaturesKHR.html)
    @safe
    public struct Maintenance8Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance8FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance8FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `maintenance8` member of the Vulkan `VkPhysicalDeviceMaintenance8FeaturesKHR`.
        public var maintenance8: Bool {
            unsafe rawValue.maintenance8 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance9FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance9FeaturesKHR.html)
    @safe
    public struct Maintenance9Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance9FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance9FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `maintenance9` member of the Vulkan `VkPhysicalDeviceMaintenance9FeaturesKHR`.
        public var maintenance9: Bool {
            unsafe rawValue.maintenance9 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderDrawParametersFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderDrawParametersFeatures.html)
    @safe
    public struct ShaderDrawParametersFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderDrawParametersFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderDrawParametersFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderDrawParameters` member of the Vulkan `VkPhysicalDeviceShaderDrawParametersFeatures`.
        public var shaderDrawParameters: Bool {
            unsafe rawValue.shaderDrawParameters != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderFloat16Int8Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderFloat16Int8Features.html)
    @safe
    public struct ShaderFloat16Int8Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderFloat16Int8Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderFloat16Int8Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderFloat16` member of the Vulkan `VkPhysicalDeviceShaderFloat16Int8Features`.
        public var shaderFloat16: Bool {
            unsafe rawValue.shaderFloat16 != 0
        }

        /// The `shaderInt8` member of the Vulkan `VkPhysicalDeviceShaderFloat16Int8Features`.
        public var shaderInt8: Bool {
            unsafe rawValue.shaderInt8 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceHostQueryResetFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceHostQueryResetFeatures.html)
    @safe
    public struct HostQueryResetFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceHostQueryResetFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceHostQueryResetFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `hostQueryReset` member of the Vulkan `VkPhysicalDeviceHostQueryResetFeatures`.
        public var hostQueryReset: Bool {
            unsafe rawValue.hostQueryReset != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceGlobalPriorityQueryFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGlobalPriorityQueryFeatures.html)
    @safe
    public struct GlobalPriorityQueryFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceGlobalPriorityQueryFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceGlobalPriorityQueryFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `globalPriorityQuery` member of the Vulkan `VkPhysicalDeviceGlobalPriorityQueryFeatures`.
        public var globalPriorityQuery: Bool {
            unsafe rawValue.globalPriorityQuery != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDeviceMemoryReportFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceMemoryReportFeaturesEXT.html)
    @safe
    public struct DeviceMemoryReportFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDeviceMemoryReportFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDeviceMemoryReportFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `deviceMemoryReport` member of the Vulkan `VkPhysicalDeviceDeviceMemoryReportFeaturesEXT`.
        public var deviceMemoryReport: Bool {
            unsafe rawValue.deviceMemoryReport != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDescriptorIndexingFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorIndexingFeatures.html)
    @safe
    public struct DescriptorIndexingFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDescriptorIndexingFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDescriptorIndexingFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderInputAttachmentArrayDynamicIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderInputAttachmentArrayDynamicIndexing: Bool {
            unsafe rawValue.shaderInputAttachmentArrayDynamicIndexing != 0
        }

        /// The `shaderUniformTexelBufferArrayDynamicIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderUniformTexelBufferArrayDynamicIndexing: Bool {
            unsafe rawValue.shaderUniformTexelBufferArrayDynamicIndexing != 0
        }

        /// The `shaderStorageTexelBufferArrayDynamicIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderStorageTexelBufferArrayDynamicIndexing: Bool {
            unsafe rawValue.shaderStorageTexelBufferArrayDynamicIndexing != 0
        }

        /// The `shaderUniformBufferArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderUniformBufferArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderUniformBufferArrayNonUniformIndexing != 0
        }

        /// The `shaderSampledImageArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderSampledImageArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderSampledImageArrayNonUniformIndexing != 0
        }

        /// The `shaderStorageBufferArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderStorageBufferArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderStorageBufferArrayNonUniformIndexing != 0
        }

        /// The `shaderStorageImageArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderStorageImageArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderStorageImageArrayNonUniformIndexing != 0
        }

        /// The `shaderInputAttachmentArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderInputAttachmentArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderInputAttachmentArrayNonUniformIndexing != 0
        }

        /// The `shaderUniformTexelBufferArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderUniformTexelBufferArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderUniformTexelBufferArrayNonUniformIndexing != 0
        }

        /// The `shaderStorageTexelBufferArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var shaderStorageTexelBufferArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderStorageTexelBufferArrayNonUniformIndexing != 0
        }

        /// The `descriptorBindingUniformBufferUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var descriptorBindingUniformBufferUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingUniformBufferUpdateAfterBind != 0
        }

        /// The `descriptorBindingSampledImageUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var descriptorBindingSampledImageUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingSampledImageUpdateAfterBind != 0
        }

        /// The `descriptorBindingStorageImageUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var descriptorBindingStorageImageUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingStorageImageUpdateAfterBind != 0
        }

        /// The `descriptorBindingStorageBufferUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var descriptorBindingStorageBufferUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingStorageBufferUpdateAfterBind != 0
        }

        /// The `descriptorBindingUniformTexelBufferUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var descriptorBindingUniformTexelBufferUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingUniformTexelBufferUpdateAfterBind != 0
        }

        /// The `descriptorBindingStorageTexelBufferUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var descriptorBindingStorageTexelBufferUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingStorageTexelBufferUpdateAfterBind != 0
        }

        /// The `descriptorBindingUpdateUnusedWhilePending` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var descriptorBindingUpdateUnusedWhilePending: Bool {
            unsafe rawValue.descriptorBindingUpdateUnusedWhilePending != 0
        }

        /// The `descriptorBindingPartiallyBound` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var descriptorBindingPartiallyBound: Bool {
            unsafe rawValue.descriptorBindingPartiallyBound != 0
        }

        /// The `descriptorBindingVariableDescriptorCount` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var descriptorBindingVariableDescriptorCount: Bool {
            unsafe rawValue.descriptorBindingVariableDescriptorCount != 0
        }

        /// The `runtimeDescriptorArray` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingFeatures`.
        public var runtimeDescriptorArray: Bool {
            unsafe rawValue.runtimeDescriptorArray != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTimelineSemaphoreFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTimelineSemaphoreFeatures.html)
    @safe
    public struct TimelineSemaphoreFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTimelineSemaphoreFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTimelineSemaphoreFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `timelineSemaphore` member of the Vulkan `VkPhysicalDeviceTimelineSemaphoreFeatures`.
        public var timelineSemaphore: Bool {
            unsafe rawValue.timelineSemaphore != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevice8BitStorageFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice8BitStorageFeatures.html)
    @safe
    public struct `8BitStorageFeatures` {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevice8BitStorageFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevice8BitStorageFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `storageBuffer8BitAccess` member of the Vulkan `VkPhysicalDevice8BitStorageFeatures`.
        public var storageBuffer8BitAccess: Bool {
            unsafe rawValue.storageBuffer8BitAccess != 0
        }

        /// The `uniformAndStorageBuffer8BitAccess` member of the Vulkan `VkPhysicalDevice8BitStorageFeatures`.
        public var uniformAndStorageBuffer8BitAccess: Bool {
            unsafe rawValue.uniformAndStorageBuffer8BitAccess != 0
        }

        /// The `storagePushConstant8` member of the Vulkan `VkPhysicalDevice8BitStorageFeatures`.
        public var storagePushConstant8: Bool {
            unsafe rawValue.storagePushConstant8 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceConditionalRenderingFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceConditionalRenderingFeaturesEXT.html)
    @safe
    public struct ConditionalRenderingFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceConditionalRenderingFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceConditionalRenderingFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `conditionalRendering` member of the Vulkan `VkPhysicalDeviceConditionalRenderingFeaturesEXT`.
        public var conditionalRendering: Bool {
            unsafe rawValue.conditionalRendering != 0
        }

        /// The `inheritedConditionalRendering` member of the Vulkan `VkPhysicalDeviceConditionalRenderingFeaturesEXT`.
        public var inheritedConditionalRendering: Bool {
            unsafe rawValue.inheritedConditionalRendering != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVulkanMemoryModelFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkanMemoryModelFeatures.html)
    @safe
    public struct VulkanMemoryModelFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVulkanMemoryModelFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVulkanMemoryModelFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `vulkanMemoryModel` member of the Vulkan `VkPhysicalDeviceVulkanMemoryModelFeatures`.
        public var vulkanMemoryModel: Bool {
            unsafe rawValue.vulkanMemoryModel != 0
        }

        /// The `vulkanMemoryModelDeviceScope` member of the Vulkan `VkPhysicalDeviceVulkanMemoryModelFeatures`.
        public var vulkanMemoryModelDeviceScope: Bool {
            unsafe rawValue.vulkanMemoryModelDeviceScope != 0
        }

        /// The `vulkanMemoryModelAvailabilityVisibilityChains` member of the Vulkan `VkPhysicalDeviceVulkanMemoryModelFeatures`.
        public var vulkanMemoryModelAvailabilityVisibilityChains: Bool {
            unsafe rawValue.vulkanMemoryModelAvailabilityVisibilityChains != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderAtomicInt64Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderAtomicInt64Features.html)
    @safe
    public struct ShaderAtomicInt64Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderAtomicInt64Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderAtomicInt64Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderBufferInt64Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicInt64Features`.
        public var shaderBufferInt64Atomics: Bool {
            unsafe rawValue.shaderBufferInt64Atomics != 0
        }

        /// The `shaderSharedInt64Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicInt64Features`.
        public var shaderSharedInt64Atomics: Bool {
            unsafe rawValue.shaderSharedInt64Atomics != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderAtomicFloatFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderAtomicFloatFeaturesEXT.html)
    @safe
    public struct ShaderAtomicFloatFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderAtomicFloatFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderAtomicFloatFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderBufferFloat32Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderBufferFloat32Atomics: Bool {
            unsafe rawValue.shaderBufferFloat32Atomics != 0
        }

        /// The `shaderBufferFloat32AtomicAdd` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderBufferFloat32AtomicAdd: Bool {
            unsafe rawValue.shaderBufferFloat32AtomicAdd != 0
        }

        /// The `shaderBufferFloat64Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderBufferFloat64Atomics: Bool {
            unsafe rawValue.shaderBufferFloat64Atomics != 0
        }

        /// The `shaderBufferFloat64AtomicAdd` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderBufferFloat64AtomicAdd: Bool {
            unsafe rawValue.shaderBufferFloat64AtomicAdd != 0
        }

        /// The `shaderSharedFloat32Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderSharedFloat32Atomics: Bool {
            unsafe rawValue.shaderSharedFloat32Atomics != 0
        }

        /// The `shaderSharedFloat32AtomicAdd` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderSharedFloat32AtomicAdd: Bool {
            unsafe rawValue.shaderSharedFloat32AtomicAdd != 0
        }

        /// The `shaderSharedFloat64Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderSharedFloat64Atomics: Bool {
            unsafe rawValue.shaderSharedFloat64Atomics != 0
        }

        /// The `shaderSharedFloat64AtomicAdd` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderSharedFloat64AtomicAdd: Bool {
            unsafe rawValue.shaderSharedFloat64AtomicAdd != 0
        }

        /// The `shaderImageFloat32Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderImageFloat32Atomics: Bool {
            unsafe rawValue.shaderImageFloat32Atomics != 0
        }

        /// The `shaderImageFloat32AtomicAdd` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var shaderImageFloat32AtomicAdd: Bool {
            unsafe rawValue.shaderImageFloat32AtomicAdd != 0
        }

        /// The `sparseImageFloat32Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var sparseImageFloat32Atomics: Bool {
            unsafe rawValue.sparseImageFloat32Atomics != 0
        }

        /// The `sparseImageFloat32AtomicAdd` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloatFeaturesEXT`.
        public var sparseImageFloat32AtomicAdd: Bool {
            unsafe rawValue.sparseImageFloat32AtomicAdd != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT.html)
    @safe
    public struct ShaderAtomicFloat2Features_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderBufferFloat16Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderBufferFloat16Atomics: Bool {
            unsafe rawValue.shaderBufferFloat16Atomics != 0
        }

        /// The `shaderBufferFloat16AtomicAdd` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderBufferFloat16AtomicAdd: Bool {
            unsafe rawValue.shaderBufferFloat16AtomicAdd != 0
        }

        /// The `shaderBufferFloat16AtomicMinMax` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderBufferFloat16AtomicMinMax: Bool {
            unsafe rawValue.shaderBufferFloat16AtomicMinMax != 0
        }

        /// The `shaderBufferFloat32AtomicMinMax` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderBufferFloat32AtomicMinMax: Bool {
            unsafe rawValue.shaderBufferFloat32AtomicMinMax != 0
        }

        /// The `shaderBufferFloat64AtomicMinMax` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderBufferFloat64AtomicMinMax: Bool {
            unsafe rawValue.shaderBufferFloat64AtomicMinMax != 0
        }

        /// The `shaderSharedFloat16Atomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderSharedFloat16Atomics: Bool {
            unsafe rawValue.shaderSharedFloat16Atomics != 0
        }

        /// The `shaderSharedFloat16AtomicAdd` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderSharedFloat16AtomicAdd: Bool {
            unsafe rawValue.shaderSharedFloat16AtomicAdd != 0
        }

        /// The `shaderSharedFloat16AtomicMinMax` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderSharedFloat16AtomicMinMax: Bool {
            unsafe rawValue.shaderSharedFloat16AtomicMinMax != 0
        }

        /// The `shaderSharedFloat32AtomicMinMax` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderSharedFloat32AtomicMinMax: Bool {
            unsafe rawValue.shaderSharedFloat32AtomicMinMax != 0
        }

        /// The `shaderSharedFloat64AtomicMinMax` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderSharedFloat64AtomicMinMax: Bool {
            unsafe rawValue.shaderSharedFloat64AtomicMinMax != 0
        }

        /// The `shaderImageFloat32AtomicMinMax` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var shaderImageFloat32AtomicMinMax: Bool {
            unsafe rawValue.shaderImageFloat32AtomicMinMax != 0
        }

        /// The `sparseImageFloat32AtomicMinMax` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT`.
        public var sparseImageFloat32AtomicMinMax: Bool {
            unsafe rawValue.sparseImageFloat32AtomicMinMax != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVertexAttributeDivisorFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexAttributeDivisorFeatures.html)
    @safe
    public struct VertexAttributeDivisorFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVertexAttributeDivisorFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVertexAttributeDivisorFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `vertexAttributeInstanceRateDivisor` member of the Vulkan `VkPhysicalDeviceVertexAttributeDivisorFeatures`.
        public var vertexAttributeInstanceRateDivisor: Bool {
            unsafe rawValue.vertexAttributeInstanceRateDivisor != 0
        }

        /// The `vertexAttributeInstanceRateZeroDivisor` member of the Vulkan `VkPhysicalDeviceVertexAttributeDivisorFeatures`.
        public var vertexAttributeInstanceRateZeroDivisor: Bool {
            unsafe rawValue.vertexAttributeInstanceRateZeroDivisor != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceASTCDecodeFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceASTCDecodeFeaturesEXT.html)
    @safe
    public struct ASTCDecodeFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceASTCDecodeFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceASTCDecodeFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `decodeModeSharedExponent` member of the Vulkan `VkPhysicalDeviceASTCDecodeFeaturesEXT`.
        public var decodeModeSharedExponent: Bool {
            unsafe rawValue.decodeModeSharedExponent != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTransformFeedbackFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTransformFeedbackFeaturesEXT.html)
    @safe
    public struct TransformFeedbackFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTransformFeedbackFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTransformFeedbackFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `transformFeedback` member of the Vulkan `VkPhysicalDeviceTransformFeedbackFeaturesEXT`.
        public var transformFeedback: Bool {
            unsafe rawValue.transformFeedback != 0
        }

        /// The `geometryStreams` member of the Vulkan `VkPhysicalDeviceTransformFeedbackFeaturesEXT`.
        public var geometryStreams: Bool {
            unsafe rawValue.geometryStreams != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV.html)
    @safe
    public struct RepresentativeFragmentTestFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `representativeFragmentTest` member of the Vulkan `VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV`.
        public var representativeFragmentTest: Bool {
            unsafe rawValue.representativeFragmentTest != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExclusiveScissorFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExclusiveScissorFeaturesNV.html)
    @safe
    public struct ExclusiveScissorFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExclusiveScissorFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExclusiveScissorFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `exclusiveScissor` member of the Vulkan `VkPhysicalDeviceExclusiveScissorFeaturesNV`.
        public var exclusiveScissor: Bool {
            unsafe rawValue.exclusiveScissor != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCornerSampledImageFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCornerSampledImageFeaturesNV.html)
    @safe
    public struct CornerSampledImageFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCornerSampledImageFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCornerSampledImageFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `cornerSampledImage` member of the Vulkan `VkPhysicalDeviceCornerSampledImageFeaturesNV`.
        public var cornerSampledImage: Bool {
            unsafe rawValue.cornerSampledImage != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR.html)
    @safe
    public struct ComputeShaderDerivativesFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `computeDerivativeGroupQuads` member of the Vulkan `VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR`.
        public var computeDerivativeGroupQuads: Bool {
            unsafe rawValue.computeDerivativeGroupQuads != 0
        }

        /// The `computeDerivativeGroupLinear` member of the Vulkan `VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR`.
        public var computeDerivativeGroupLinear: Bool {
            unsafe rawValue.computeDerivativeGroupLinear != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderImageFootprintFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderImageFootprintFeaturesNV.html)
    @safe
    public struct ShaderImageFootprintFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderImageFootprintFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderImageFootprintFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `imageFootprint` member of the Vulkan `VkPhysicalDeviceShaderImageFootprintFeaturesNV`.
        public var imageFootprint: Bool {
            unsafe rawValue.imageFootprint != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV.html)
    @safe
    public struct DedicatedAllocationImageAliasingFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `dedicatedAllocationImageAliasing` member of the Vulkan `VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV`.
        public var dedicatedAllocationImageAliasing: Bool {
            unsafe rawValue.dedicatedAllocationImageAliasing != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCopyMemoryIndirectFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCopyMemoryIndirectFeaturesNV.html)
    @safe
    public struct CopyMemoryIndirectFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCopyMemoryIndirectFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCopyMemoryIndirectFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `indirectCopy` member of the Vulkan `VkPhysicalDeviceCopyMemoryIndirectFeaturesNV`.
        public var indirectCopy: Bool {
            unsafe rawValue.indirectCopy != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMemoryDecompressionFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryDecompressionFeaturesNV.html)
    @safe
    public struct MemoryDecompressionFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMemoryDecompressionFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMemoryDecompressionFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `memoryDecompression` member of the Vulkan `VkPhysicalDeviceMemoryDecompressionFeaturesNV`.
        public var memoryDecompression: Bool {
            unsafe rawValue.memoryDecompression != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShadingRateImageFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShadingRateImageFeaturesNV.html)
    @safe
    public struct ShadingRateImageFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShadingRateImageFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShadingRateImageFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `shadingRateImage` member of the Vulkan `VkPhysicalDeviceShadingRateImageFeaturesNV`.
        public var shadingRateImage: Bool {
            unsafe rawValue.shadingRateImage != 0
        }

        /// The `shadingRateCoarseSampleOrder` member of the Vulkan `VkPhysicalDeviceShadingRateImageFeaturesNV`.
        public var shadingRateCoarseSampleOrder: Bool {
            unsafe rawValue.shadingRateCoarseSampleOrder != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceInvocationMaskFeaturesHUAWEI.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceInvocationMaskFeaturesHUAWEI.html)
    @safe
    public struct InvocationMaskFeatures_HUAWEI {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceInvocationMaskFeaturesHUAWEI

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceInvocationMaskFeaturesHUAWEI) {
            unsafe self.rawValue = rawValue
        }

        /// The `invocationMask` member of the Vulkan `VkPhysicalDeviceInvocationMaskFeaturesHUAWEI`.
        public var invocationMask: Bool {
            unsafe rawValue.invocationMask != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMeshShaderFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMeshShaderFeaturesNV.html)
    @safe
    public struct MeshShaderFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMeshShaderFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMeshShaderFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `taskShader` member of the Vulkan `VkPhysicalDeviceMeshShaderFeaturesNV`.
        public var taskShader: Bool {
            unsafe rawValue.taskShader != 0
        }

        /// The `meshShader` member of the Vulkan `VkPhysicalDeviceMeshShaderFeaturesNV`.
        public var meshShader: Bool {
            unsafe rawValue.meshShader != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMeshShaderFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMeshShaderFeaturesEXT.html)
    @safe
    public struct MeshShaderFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMeshShaderFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMeshShaderFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `taskShader` member of the Vulkan `VkPhysicalDeviceMeshShaderFeaturesEXT`.
        public var taskShader: Bool {
            unsafe rawValue.taskShader != 0
        }

        /// The `meshShader` member of the Vulkan `VkPhysicalDeviceMeshShaderFeaturesEXT`.
        public var meshShader: Bool {
            unsafe rawValue.meshShader != 0
        }

        /// The `multiviewMeshShader` member of the Vulkan `VkPhysicalDeviceMeshShaderFeaturesEXT`.
        public var multiviewMeshShader: Bool {
            unsafe rawValue.multiviewMeshShader != 0
        }

        /// The `primitiveFragmentShadingRateMeshShader` member of the Vulkan `VkPhysicalDeviceMeshShaderFeaturesEXT`.
        public var primitiveFragmentShadingRateMeshShader: Bool {
            unsafe rawValue.primitiveFragmentShadingRateMeshShader != 0
        }

        /// The `meshShaderQueries` member of the Vulkan `VkPhysicalDeviceMeshShaderFeaturesEXT`.
        public var meshShaderQueries: Bool {
            unsafe rawValue.meshShaderQueries != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceAccelerationStructureFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAccelerationStructureFeaturesKHR.html)
    @safe
    public struct AccelerationStructureFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceAccelerationStructureFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceAccelerationStructureFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `accelerationStructure` member of the Vulkan `VkPhysicalDeviceAccelerationStructureFeaturesKHR`.
        public var accelerationStructure: Bool {
            unsafe rawValue.accelerationStructure != 0
        }

        /// The `accelerationStructureCaptureReplay` member of the Vulkan `VkPhysicalDeviceAccelerationStructureFeaturesKHR`.
        public var accelerationStructureCaptureReplay: Bool {
            unsafe rawValue.accelerationStructureCaptureReplay != 0
        }

        /// The `accelerationStructureIndirectBuild` member of the Vulkan `VkPhysicalDeviceAccelerationStructureFeaturesKHR`.
        public var accelerationStructureIndirectBuild: Bool {
            unsafe rawValue.accelerationStructureIndirectBuild != 0
        }

        /// The `accelerationStructureHostCommands` member of the Vulkan `VkPhysicalDeviceAccelerationStructureFeaturesKHR`.
        public var accelerationStructureHostCommands: Bool {
            unsafe rawValue.accelerationStructureHostCommands != 0
        }

        /// The `descriptorBindingAccelerationStructureUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceAccelerationStructureFeaturesKHR`.
        public var descriptorBindingAccelerationStructureUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingAccelerationStructureUpdateAfterBind != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingPipelineFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingPipelineFeaturesKHR.html)
    @safe
    public struct RayTracingPipelineFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingPipelineFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingPipelineFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `rayTracingPipeline` member of the Vulkan `VkPhysicalDeviceRayTracingPipelineFeaturesKHR`.
        public var rayTracingPipeline: Bool {
            unsafe rawValue.rayTracingPipeline != 0
        }

        /// The `rayTracingPipelineShaderGroupHandleCaptureReplay` member of the Vulkan `VkPhysicalDeviceRayTracingPipelineFeaturesKHR`.
        public var rayTracingPipelineShaderGroupHandleCaptureReplay: Bool {
            unsafe rawValue.rayTracingPipelineShaderGroupHandleCaptureReplay != 0
        }

        /// The `rayTracingPipelineShaderGroupHandleCaptureReplayMixed` member of the Vulkan `VkPhysicalDeviceRayTracingPipelineFeaturesKHR`.
        public var rayTracingPipelineShaderGroupHandleCaptureReplayMixed: Bool {
            unsafe rawValue.rayTracingPipelineShaderGroupHandleCaptureReplayMixed != 0
        }

        /// The `rayTracingPipelineTraceRaysIndirect` member of the Vulkan `VkPhysicalDeviceRayTracingPipelineFeaturesKHR`.
        public var rayTracingPipelineTraceRaysIndirect: Bool {
            unsafe rawValue.rayTracingPipelineTraceRaysIndirect != 0
        }

        /// The `rayTraversalPrimitiveCulling` member of the Vulkan `VkPhysicalDeviceRayTracingPipelineFeaturesKHR`.
        public var rayTraversalPrimitiveCulling: Bool {
            unsafe rawValue.rayTraversalPrimitiveCulling != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayQueryFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayQueryFeaturesKHR.html)
    @safe
    public struct RayQueryFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayQueryFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayQueryFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `rayQuery` member of the Vulkan `VkPhysicalDeviceRayQueryFeaturesKHR`.
        public var rayQuery: Bool {
            unsafe rawValue.rayQuery != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR.html)
    @safe
    public struct RayTracingMaintenance1Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `rayTracingMaintenance1` member of the Vulkan `VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR`.
        public var rayTracingMaintenance1: Bool {
            unsafe rawValue.rayTracingMaintenance1 != 0
        }

        /// The `rayTracingPipelineTraceRaysIndirect2` member of the Vulkan `VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR`.
        public var rayTracingPipelineTraceRaysIndirect2: Bool {
            unsafe rawValue.rayTracingPipelineTraceRaysIndirect2 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentDensityMapFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapFeaturesEXT.html)
    @safe
    public struct FragmentDensityMapFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentDensityMapFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentDensityMapFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `fragmentDensityMap` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapFeaturesEXT`.
        public var fragmentDensityMap: Bool {
            unsafe rawValue.fragmentDensityMap != 0
        }

        /// The `fragmentDensityMapDynamic` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapFeaturesEXT`.
        public var fragmentDensityMapDynamic: Bool {
            unsafe rawValue.fragmentDensityMapDynamic != 0
        }

        /// The `fragmentDensityMapNonSubsampledImages` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapFeaturesEXT`.
        public var fragmentDensityMapNonSubsampledImages: Bool {
            unsafe rawValue.fragmentDensityMapNonSubsampledImages != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentDensityMap2FeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMap2FeaturesEXT.html)
    @safe
    public struct FragmentDensityMap2Features_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentDensityMap2FeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentDensityMap2FeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `fragmentDensityMapDeferred` member of the Vulkan `VkPhysicalDeviceFragmentDensityMap2FeaturesEXT`.
        public var fragmentDensityMapDeferred: Bool {
            unsafe rawValue.fragmentDensityMapDeferred != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT.html)
    @safe
    public struct FragmentDensityMapOffsetFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `fragmentDensityMapOffset` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT`.
        public var fragmentDensityMapOffset: Bool {
            unsafe rawValue.fragmentDensityMapOffset != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceScalarBlockLayoutFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceScalarBlockLayoutFeatures.html)
    @safe
    public struct ScalarBlockLayoutFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceScalarBlockLayoutFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceScalarBlockLayoutFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `scalarBlockLayout` member of the Vulkan `VkPhysicalDeviceScalarBlockLayoutFeatures`.
        public var scalarBlockLayout: Bool {
            unsafe rawValue.scalarBlockLayout != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceUniformBufferStandardLayoutFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceUniformBufferStandardLayoutFeatures.html)
    @safe
    public struct UniformBufferStandardLayoutFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceUniformBufferStandardLayoutFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceUniformBufferStandardLayoutFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `uniformBufferStandardLayout` member of the Vulkan `VkPhysicalDeviceUniformBufferStandardLayoutFeatures`.
        public var uniformBufferStandardLayout: Bool {
            unsafe rawValue.uniformBufferStandardLayout != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDepthClipEnableFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthClipEnableFeaturesEXT.html)
    @safe
    public struct DepthClipEnableFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDepthClipEnableFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDepthClipEnableFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `depthClipEnable` member of the Vulkan `VkPhysicalDeviceDepthClipEnableFeaturesEXT`.
        public var depthClipEnable: Bool {
            unsafe rawValue.depthClipEnable != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMemoryPriorityFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryPriorityFeaturesEXT.html)
    @safe
    public struct MemoryPriorityFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMemoryPriorityFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMemoryPriorityFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `memoryPriority` member of the Vulkan `VkPhysicalDeviceMemoryPriorityFeaturesEXT`.
        public var memoryPriority: Bool {
            unsafe rawValue.memoryPriority != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT.html)
    @safe
    public struct PageableDeviceLocalMemoryFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `pageableDeviceLocalMemory` member of the Vulkan `VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT`.
        public var pageableDeviceLocalMemory: Bool {
            unsafe rawValue.pageableDeviceLocalMemory != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceBufferDeviceAddressFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBufferDeviceAddressFeatures.html)
    @safe
    public struct BufferDeviceAddressFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceBufferDeviceAddressFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceBufferDeviceAddressFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `bufferDeviceAddress` member of the Vulkan `VkPhysicalDeviceBufferDeviceAddressFeatures`.
        public var bufferDeviceAddress: Bool {
            unsafe rawValue.bufferDeviceAddress != 0
        }

        /// The `bufferDeviceAddressCaptureReplay` member of the Vulkan `VkPhysicalDeviceBufferDeviceAddressFeatures`.
        public var bufferDeviceAddressCaptureReplay: Bool {
            unsafe rawValue.bufferDeviceAddressCaptureReplay != 0
        }

        /// The `bufferDeviceAddressMultiDevice` member of the Vulkan `VkPhysicalDeviceBufferDeviceAddressFeatures`.
        public var bufferDeviceAddressMultiDevice: Bool {
            unsafe rawValue.bufferDeviceAddressMultiDevice != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceBufferDeviceAddressFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBufferDeviceAddressFeaturesEXT.html)
    @safe
    public struct BufferDeviceAddressFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceBufferDeviceAddressFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceBufferDeviceAddressFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `bufferDeviceAddress` member of the Vulkan `VkPhysicalDeviceBufferDeviceAddressFeaturesEXT`.
        public var bufferDeviceAddress: Bool {
            unsafe rawValue.bufferDeviceAddress != 0
        }

        /// The `bufferDeviceAddressCaptureReplay` member of the Vulkan `VkPhysicalDeviceBufferDeviceAddressFeaturesEXT`.
        public var bufferDeviceAddressCaptureReplay: Bool {
            unsafe rawValue.bufferDeviceAddressCaptureReplay != 0
        }

        /// The `bufferDeviceAddressMultiDevice` member of the Vulkan `VkPhysicalDeviceBufferDeviceAddressFeaturesEXT`.
        public var bufferDeviceAddressMultiDevice: Bool {
            unsafe rawValue.bufferDeviceAddressMultiDevice != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImagelessFramebufferFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImagelessFramebufferFeatures.html)
    @safe
    public struct ImagelessFramebufferFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImagelessFramebufferFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImagelessFramebufferFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `imagelessFramebuffer` member of the Vulkan `VkPhysicalDeviceImagelessFramebufferFeatures`.
        public var imagelessFramebuffer: Bool {
            unsafe rawValue.imagelessFramebuffer != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTextureCompressionASTCHDRFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTextureCompressionASTCHDRFeatures.html)
    @safe
    public struct TextureCompressionASTCHDRFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTextureCompressionASTCHDRFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTextureCompressionASTCHDRFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `textureCompressionASTC_HDR` member of the Vulkan `VkPhysicalDeviceTextureCompressionASTCHDRFeatures`.
        public var textureCompressionASTC_HDR: Bool {
            unsafe rawValue.textureCompressionASTC_HDR != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCooperativeMatrixFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrixFeaturesNV.html)
    @safe
    public struct CooperativeMatrixFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCooperativeMatrixFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCooperativeMatrixFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `cooperativeMatrix` member of the Vulkan `VkPhysicalDeviceCooperativeMatrixFeaturesNV`.
        public var cooperativeMatrix: Bool {
            unsafe rawValue.cooperativeMatrix != 0
        }

        /// The `cooperativeMatrixRobustBufferAccess` member of the Vulkan `VkPhysicalDeviceCooperativeMatrixFeaturesNV`.
        public var cooperativeMatrixRobustBufferAccess: Bool {
            unsafe rawValue.cooperativeMatrixRobustBufferAccess != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceYcbcrImageArraysFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceYcbcrImageArraysFeaturesEXT.html)
    @safe
    public struct YcbcrImageArraysFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceYcbcrImageArraysFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceYcbcrImageArraysFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `ycbcrImageArrays` member of the Vulkan `VkPhysicalDeviceYcbcrImageArraysFeaturesEXT`.
        public var ycbcrImageArrays: Bool {
            unsafe rawValue.ycbcrImageArrays != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePresentBarrierFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentBarrierFeaturesNV.html)
    @safe
    public struct PresentBarrierFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePresentBarrierFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePresentBarrierFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `presentBarrier` member of the Vulkan `VkPhysicalDevicePresentBarrierFeaturesNV`.
        public var presentBarrier: Bool {
            unsafe rawValue.presentBarrier != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePerformanceQueryFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePerformanceQueryFeaturesKHR.html)
    @safe
    public struct PerformanceQueryFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePerformanceQueryFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePerformanceQueryFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `performanceCounterQueryPools` member of the Vulkan `VkPhysicalDevicePerformanceQueryFeaturesKHR`.
        public var performanceCounterQueryPools: Bool {
            unsafe rawValue.performanceCounterQueryPools != 0
        }

        /// The `performanceCounterMultipleQueryPools` member of the Vulkan `VkPhysicalDevicePerformanceQueryFeaturesKHR`.
        public var performanceCounterMultipleQueryPools: Bool {
            unsafe rawValue.performanceCounterMultipleQueryPools != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCoverageReductionModeFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCoverageReductionModeFeaturesNV.html)
    @safe
    public struct CoverageReductionModeFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCoverageReductionModeFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCoverageReductionModeFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `coverageReductionMode` member of the Vulkan `VkPhysicalDeviceCoverageReductionModeFeaturesNV`.
        public var coverageReductionMode: Bool {
            unsafe rawValue.coverageReductionMode != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL.html)
    @safe
    public struct ShaderIntegerFunctions2Features_INTEL {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderIntegerFunctions2` member of the Vulkan `VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL`.
        public var shaderIntegerFunctions2: Bool {
            unsafe rawValue.shaderIntegerFunctions2 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderClockFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderClockFeaturesKHR.html)
    @safe
    public struct ShaderClockFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderClockFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderClockFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderSubgroupClock` member of the Vulkan `VkPhysicalDeviceShaderClockFeaturesKHR`.
        public var shaderSubgroupClock: Bool {
            unsafe rawValue.shaderSubgroupClock != 0
        }

        /// The `shaderDeviceClock` member of the Vulkan `VkPhysicalDeviceShaderClockFeaturesKHR`.
        public var shaderDeviceClock: Bool {
            unsafe rawValue.shaderDeviceClock != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceIndexTypeUint8Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceIndexTypeUint8Features.html)
    @safe
    public struct IndexTypeUint8Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceIndexTypeUint8Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceIndexTypeUint8Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `indexTypeUint8` member of the Vulkan `VkPhysicalDeviceIndexTypeUint8Features`.
        public var indexTypeUint8: Bool {
            unsafe rawValue.indexTypeUint8 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderSMBuiltinsFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSMBuiltinsFeaturesNV.html)
    @safe
    public struct ShaderSMBuiltinsFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderSMBuiltinsFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderSMBuiltinsFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderSMBuiltins` member of the Vulkan `VkPhysicalDeviceShaderSMBuiltinsFeaturesNV`.
        public var shaderSMBuiltins: Bool {
            unsafe rawValue.shaderSMBuiltins != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT.html)
    @safe
    public struct FragmentShaderInterlockFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `fragmentShaderSampleInterlock` member of the Vulkan `VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT`.
        public var fragmentShaderSampleInterlock: Bool {
            unsafe rawValue.fragmentShaderSampleInterlock != 0
        }

        /// The `fragmentShaderPixelInterlock` member of the Vulkan `VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT`.
        public var fragmentShaderPixelInterlock: Bool {
            unsafe rawValue.fragmentShaderPixelInterlock != 0
        }

        /// The `fragmentShaderShadingRateInterlock` member of the Vulkan `VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT`.
        public var fragmentShaderShadingRateInterlock: Bool {
            unsafe rawValue.fragmentShaderShadingRateInterlock != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures.html)
    @safe
    public struct SeparateDepthStencilLayoutsFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `separateDepthStencilLayouts` member of the Vulkan `VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures`.
        public var separateDepthStencilLayouts: Bool {
            unsafe rawValue.separateDepthStencilLayouts != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT.html)
    @safe
    public struct PrimitiveTopologyListRestartFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `primitiveTopologyListRestart` member of the Vulkan `VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT`.
        public var primitiveTopologyListRestart: Bool {
            unsafe rawValue.primitiveTopologyListRestart != 0
        }

        /// The `primitiveTopologyPatchListRestart` member of the Vulkan `VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT`.
        public var primitiveTopologyPatchListRestart: Bool {
            unsafe rawValue.primitiveTopologyPatchListRestart != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR.html)
    @safe
    public struct PipelineExecutablePropertiesFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelineExecutableInfo` member of the Vulkan `VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR`.
        public var pipelineExecutableInfo: Bool {
            unsafe rawValue.pipelineExecutableInfo != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures.html)
    @safe
    public struct ShaderDemoteToHelperInvocationFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderDemoteToHelperInvocation` member of the Vulkan `VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures`.
        public var shaderDemoteToHelperInvocation: Bool {
            unsafe rawValue.shaderDemoteToHelperInvocation != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT.html)
    @safe
    public struct TexelBufferAlignmentFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `texelBufferAlignment` member of the Vulkan `VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT`.
        public var texelBufferAlignment: Bool {
            unsafe rawValue.texelBufferAlignment != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSubgroupSizeControlFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubgroupSizeControlFeatures.html)
    @safe
    public struct SubgroupSizeControlFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSubgroupSizeControlFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSubgroupSizeControlFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `subgroupSizeControl` member of the Vulkan `VkPhysicalDeviceSubgroupSizeControlFeatures`.
        public var subgroupSizeControl: Bool {
            unsafe rawValue.subgroupSizeControl != 0
        }

        /// The `computeFullSubgroups` member of the Vulkan `VkPhysicalDeviceSubgroupSizeControlFeatures`.
        public var computeFullSubgroups: Bool {
            unsafe rawValue.computeFullSubgroups != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceLineRasterizationFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLineRasterizationFeatures.html)
    @safe
    public struct LineRasterizationFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceLineRasterizationFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceLineRasterizationFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `rectangularLines` member of the Vulkan `VkPhysicalDeviceLineRasterizationFeatures`.
        public var rectangularLines: Bool {
            unsafe rawValue.rectangularLines != 0
        }

        /// The `bresenhamLines` member of the Vulkan `VkPhysicalDeviceLineRasterizationFeatures`.
        public var bresenhamLines: Bool {
            unsafe rawValue.bresenhamLines != 0
        }

        /// The `smoothLines` member of the Vulkan `VkPhysicalDeviceLineRasterizationFeatures`.
        public var smoothLines: Bool {
            unsafe rawValue.smoothLines != 0
        }

        /// The `stippledRectangularLines` member of the Vulkan `VkPhysicalDeviceLineRasterizationFeatures`.
        public var stippledRectangularLines: Bool {
            unsafe rawValue.stippledRectangularLines != 0
        }

        /// The `stippledBresenhamLines` member of the Vulkan `VkPhysicalDeviceLineRasterizationFeatures`.
        public var stippledBresenhamLines: Bool {
            unsafe rawValue.stippledBresenhamLines != 0
        }

        /// The `stippledSmoothLines` member of the Vulkan `VkPhysicalDeviceLineRasterizationFeatures`.
        public var stippledSmoothLines: Bool {
            unsafe rawValue.stippledSmoothLines != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePipelineCreationCacheControlFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineCreationCacheControlFeatures.html)
    @safe
    public struct PipelineCreationCacheControlFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelineCreationCacheControlFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelineCreationCacheControlFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelineCreationCacheControl` member of the Vulkan `VkPhysicalDevicePipelineCreationCacheControlFeatures`.
        public var pipelineCreationCacheControl: Bool {
            unsafe rawValue.pipelineCreationCacheControl != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVulkan11Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan11Features.html)
    @safe
    public struct Vulkan11Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVulkan11Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVulkan11Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `storageBuffer16BitAccess` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var storageBuffer16BitAccess: Bool {
            unsafe rawValue.storageBuffer16BitAccess != 0
        }

        /// The `uniformAndStorageBuffer16BitAccess` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var uniformAndStorageBuffer16BitAccess: Bool {
            unsafe rawValue.uniformAndStorageBuffer16BitAccess != 0
        }

        /// The `storagePushConstant16` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var storagePushConstant16: Bool {
            unsafe rawValue.storagePushConstant16 != 0
        }

        /// The `storageInputOutput16` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var storageInputOutput16: Bool {
            unsafe rawValue.storageInputOutput16 != 0
        }

        /// The `multiview` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var multiview: Bool {
            unsafe rawValue.multiview != 0
        }

        /// The `multiviewGeometryShader` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var multiviewGeometryShader: Bool {
            unsafe rawValue.multiviewGeometryShader != 0
        }

        /// The `multiviewTessellationShader` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var multiviewTessellationShader: Bool {
            unsafe rawValue.multiviewTessellationShader != 0
        }

        /// The `variablePointersStorageBuffer` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var variablePointersStorageBuffer: Bool {
            unsafe rawValue.variablePointersStorageBuffer != 0
        }

        /// The `variablePointers` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var variablePointers: Bool {
            unsafe rawValue.variablePointers != 0
        }

        /// The `protectedMemory` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var protectedMemory: Bool {
            unsafe rawValue.protectedMemory != 0
        }

        /// The `samplerYcbcrConversion` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var samplerYcbcrConversion: Bool {
            unsafe rawValue.samplerYcbcrConversion != 0
        }

        /// The `shaderDrawParameters` member of the Vulkan `VkPhysicalDeviceVulkan11Features`.
        public var shaderDrawParameters: Bool {
            unsafe rawValue.shaderDrawParameters != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVulkan12Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan12Features.html)
    @safe
    public struct Vulkan12Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVulkan12Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVulkan12Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `samplerMirrorClampToEdge` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var samplerMirrorClampToEdge: Bool {
            unsafe rawValue.samplerMirrorClampToEdge != 0
        }

        /// The `drawIndirectCount` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var drawIndirectCount: Bool {
            unsafe rawValue.drawIndirectCount != 0
        }

        /// The `storageBuffer8BitAccess` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var storageBuffer8BitAccess: Bool {
            unsafe rawValue.storageBuffer8BitAccess != 0
        }

        /// The `uniformAndStorageBuffer8BitAccess` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var uniformAndStorageBuffer8BitAccess: Bool {
            unsafe rawValue.uniformAndStorageBuffer8BitAccess != 0
        }

        /// The `storagePushConstant8` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var storagePushConstant8: Bool {
            unsafe rawValue.storagePushConstant8 != 0
        }

        /// The `shaderBufferInt64Atomics` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderBufferInt64Atomics: Bool {
            unsafe rawValue.shaderBufferInt64Atomics != 0
        }

        /// The `shaderSharedInt64Atomics` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderSharedInt64Atomics: Bool {
            unsafe rawValue.shaderSharedInt64Atomics != 0
        }

        /// The `shaderFloat16` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderFloat16: Bool {
            unsafe rawValue.shaderFloat16 != 0
        }

        /// The `shaderInt8` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderInt8: Bool {
            unsafe rawValue.shaderInt8 != 0
        }

        /// The `descriptorIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorIndexing: Bool {
            unsafe rawValue.descriptorIndexing != 0
        }

        /// The `shaderInputAttachmentArrayDynamicIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderInputAttachmentArrayDynamicIndexing: Bool {
            unsafe rawValue.shaderInputAttachmentArrayDynamicIndexing != 0
        }

        /// The `shaderUniformTexelBufferArrayDynamicIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderUniformTexelBufferArrayDynamicIndexing: Bool {
            unsafe rawValue.shaderUniformTexelBufferArrayDynamicIndexing != 0
        }

        /// The `shaderStorageTexelBufferArrayDynamicIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderStorageTexelBufferArrayDynamicIndexing: Bool {
            unsafe rawValue.shaderStorageTexelBufferArrayDynamicIndexing != 0
        }

        /// The `shaderUniformBufferArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderUniformBufferArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderUniformBufferArrayNonUniformIndexing != 0
        }

        /// The `shaderSampledImageArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderSampledImageArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderSampledImageArrayNonUniformIndexing != 0
        }

        /// The `shaderStorageBufferArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderStorageBufferArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderStorageBufferArrayNonUniformIndexing != 0
        }

        /// The `shaderStorageImageArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderStorageImageArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderStorageImageArrayNonUniformIndexing != 0
        }

        /// The `shaderInputAttachmentArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderInputAttachmentArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderInputAttachmentArrayNonUniformIndexing != 0
        }

        /// The `shaderUniformTexelBufferArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderUniformTexelBufferArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderUniformTexelBufferArrayNonUniformIndexing != 0
        }

        /// The `shaderStorageTexelBufferArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderStorageTexelBufferArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderStorageTexelBufferArrayNonUniformIndexing != 0
        }

        /// The `descriptorBindingUniformBufferUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorBindingUniformBufferUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingUniformBufferUpdateAfterBind != 0
        }

        /// The `descriptorBindingSampledImageUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorBindingSampledImageUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingSampledImageUpdateAfterBind != 0
        }

        /// The `descriptorBindingStorageImageUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorBindingStorageImageUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingStorageImageUpdateAfterBind != 0
        }

        /// The `descriptorBindingStorageBufferUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorBindingStorageBufferUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingStorageBufferUpdateAfterBind != 0
        }

        /// The `descriptorBindingUniformTexelBufferUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorBindingUniformTexelBufferUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingUniformTexelBufferUpdateAfterBind != 0
        }

        /// The `descriptorBindingStorageTexelBufferUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorBindingStorageTexelBufferUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingStorageTexelBufferUpdateAfterBind != 0
        }

        /// The `descriptorBindingUpdateUnusedWhilePending` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorBindingUpdateUnusedWhilePending: Bool {
            unsafe rawValue.descriptorBindingUpdateUnusedWhilePending != 0
        }

        /// The `descriptorBindingPartiallyBound` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorBindingPartiallyBound: Bool {
            unsafe rawValue.descriptorBindingPartiallyBound != 0
        }

        /// The `descriptorBindingVariableDescriptorCount` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var descriptorBindingVariableDescriptorCount: Bool {
            unsafe rawValue.descriptorBindingVariableDescriptorCount != 0
        }

        /// The `runtimeDescriptorArray` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var runtimeDescriptorArray: Bool {
            unsafe rawValue.runtimeDescriptorArray != 0
        }

        /// The `samplerFilterMinmax` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var samplerFilterMinmax: Bool {
            unsafe rawValue.samplerFilterMinmax != 0
        }

        /// The `scalarBlockLayout` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var scalarBlockLayout: Bool {
            unsafe rawValue.scalarBlockLayout != 0
        }

        /// The `imagelessFramebuffer` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var imagelessFramebuffer: Bool {
            unsafe rawValue.imagelessFramebuffer != 0
        }

        /// The `uniformBufferStandardLayout` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var uniformBufferStandardLayout: Bool {
            unsafe rawValue.uniformBufferStandardLayout != 0
        }

        /// The `shaderSubgroupExtendedTypes` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderSubgroupExtendedTypes: Bool {
            unsafe rawValue.shaderSubgroupExtendedTypes != 0
        }

        /// The `separateDepthStencilLayouts` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var separateDepthStencilLayouts: Bool {
            unsafe rawValue.separateDepthStencilLayouts != 0
        }

        /// The `hostQueryReset` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var hostQueryReset: Bool {
            unsafe rawValue.hostQueryReset != 0
        }

        /// The `timelineSemaphore` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var timelineSemaphore: Bool {
            unsafe rawValue.timelineSemaphore != 0
        }

        /// The `bufferDeviceAddress` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var bufferDeviceAddress: Bool {
            unsafe rawValue.bufferDeviceAddress != 0
        }

        /// The `bufferDeviceAddressCaptureReplay` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var bufferDeviceAddressCaptureReplay: Bool {
            unsafe rawValue.bufferDeviceAddressCaptureReplay != 0
        }

        /// The `bufferDeviceAddressMultiDevice` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var bufferDeviceAddressMultiDevice: Bool {
            unsafe rawValue.bufferDeviceAddressMultiDevice != 0
        }

        /// The `vulkanMemoryModel` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var vulkanMemoryModel: Bool {
            unsafe rawValue.vulkanMemoryModel != 0
        }

        /// The `vulkanMemoryModelDeviceScope` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var vulkanMemoryModelDeviceScope: Bool {
            unsafe rawValue.vulkanMemoryModelDeviceScope != 0
        }

        /// The `vulkanMemoryModelAvailabilityVisibilityChains` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var vulkanMemoryModelAvailabilityVisibilityChains: Bool {
            unsafe rawValue.vulkanMemoryModelAvailabilityVisibilityChains != 0
        }

        /// The `shaderOutputViewportIndex` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderOutputViewportIndex: Bool {
            unsafe rawValue.shaderOutputViewportIndex != 0
        }

        /// The `shaderOutputLayer` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var shaderOutputLayer: Bool {
            unsafe rawValue.shaderOutputLayer != 0
        }

        /// The `subgroupBroadcastDynamicId` member of the Vulkan `VkPhysicalDeviceVulkan12Features`.
        public var subgroupBroadcastDynamicId: Bool {
            unsafe rawValue.subgroupBroadcastDynamicId != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVulkan13Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan13Features.html)
    @safe
    public struct Vulkan13Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVulkan13Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVulkan13Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `robustImageAccess` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var robustImageAccess: Bool {
            unsafe rawValue.robustImageAccess != 0
        }

        /// The `inlineUniformBlock` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var inlineUniformBlock: Bool {
            unsafe rawValue.inlineUniformBlock != 0
        }

        /// The `descriptorBindingInlineUniformBlockUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var descriptorBindingInlineUniformBlockUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingInlineUniformBlockUpdateAfterBind != 0
        }

        /// The `pipelineCreationCacheControl` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var pipelineCreationCacheControl: Bool {
            unsafe rawValue.pipelineCreationCacheControl != 0
        }

        /// The `privateData` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var privateData: Bool {
            unsafe rawValue.privateData != 0
        }

        /// The `shaderDemoteToHelperInvocation` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var shaderDemoteToHelperInvocation: Bool {
            unsafe rawValue.shaderDemoteToHelperInvocation != 0
        }

        /// The `shaderTerminateInvocation` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var shaderTerminateInvocation: Bool {
            unsafe rawValue.shaderTerminateInvocation != 0
        }

        /// The `subgroupSizeControl` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var subgroupSizeControl: Bool {
            unsafe rawValue.subgroupSizeControl != 0
        }

        /// The `computeFullSubgroups` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var computeFullSubgroups: Bool {
            unsafe rawValue.computeFullSubgroups != 0
        }

        /// The `synchronization2` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var synchronization2: Bool {
            unsafe rawValue.synchronization2 != 0
        }

        /// The `textureCompressionASTC_HDR` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var textureCompressionASTC_HDR: Bool {
            unsafe rawValue.textureCompressionASTC_HDR != 0
        }

        /// The `shaderZeroInitializeWorkgroupMemory` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var shaderZeroInitializeWorkgroupMemory: Bool {
            unsafe rawValue.shaderZeroInitializeWorkgroupMemory != 0
        }

        /// The `dynamicRendering` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var dynamicRendering: Bool {
            unsafe rawValue.dynamicRendering != 0
        }

        /// The `shaderIntegerDotProduct` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var shaderIntegerDotProduct: Bool {
            unsafe rawValue.shaderIntegerDotProduct != 0
        }

        /// The `maintenance4` member of the Vulkan `VkPhysicalDeviceVulkan13Features`.
        public var maintenance4: Bool {
            unsafe rawValue.maintenance4 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVulkan14Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan14Features.html)
    @safe
    public struct Vulkan14Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVulkan14Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVulkan14Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `globalPriorityQuery` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var globalPriorityQuery: Bool {
            unsafe rawValue.globalPriorityQuery != 0
        }

        /// The `shaderSubgroupRotate` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var shaderSubgroupRotate: Bool {
            unsafe rawValue.shaderSubgroupRotate != 0
        }

        /// The `shaderSubgroupRotateClustered` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var shaderSubgroupRotateClustered: Bool {
            unsafe rawValue.shaderSubgroupRotateClustered != 0
        }

        /// The `shaderFloatControls2` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var shaderFloatControls2: Bool {
            unsafe rawValue.shaderFloatControls2 != 0
        }

        /// The `shaderExpectAssume` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var shaderExpectAssume: Bool {
            unsafe rawValue.shaderExpectAssume != 0
        }

        /// The `rectangularLines` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var rectangularLines: Bool {
            unsafe rawValue.rectangularLines != 0
        }

        /// The `bresenhamLines` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var bresenhamLines: Bool {
            unsafe rawValue.bresenhamLines != 0
        }

        /// The `smoothLines` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var smoothLines: Bool {
            unsafe rawValue.smoothLines != 0
        }

        /// The `stippledRectangularLines` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var stippledRectangularLines: Bool {
            unsafe rawValue.stippledRectangularLines != 0
        }

        /// The `stippledBresenhamLines` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var stippledBresenhamLines: Bool {
            unsafe rawValue.stippledBresenhamLines != 0
        }

        /// The `stippledSmoothLines` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var stippledSmoothLines: Bool {
            unsafe rawValue.stippledSmoothLines != 0
        }

        /// The `vertexAttributeInstanceRateDivisor` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var vertexAttributeInstanceRateDivisor: Bool {
            unsafe rawValue.vertexAttributeInstanceRateDivisor != 0
        }

        /// The `vertexAttributeInstanceRateZeroDivisor` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var vertexAttributeInstanceRateZeroDivisor: Bool {
            unsafe rawValue.vertexAttributeInstanceRateZeroDivisor != 0
        }

        /// The `indexTypeUint8` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var indexTypeUint8: Bool {
            unsafe rawValue.indexTypeUint8 != 0
        }

        /// The `dynamicRenderingLocalRead` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var dynamicRenderingLocalRead: Bool {
            unsafe rawValue.dynamicRenderingLocalRead != 0
        }

        /// The `maintenance5` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var maintenance5: Bool {
            unsafe rawValue.maintenance5 != 0
        }

        /// The `maintenance6` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var maintenance6: Bool {
            unsafe rawValue.maintenance6 != 0
        }

        /// The `pipelineProtectedAccess` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var pipelineProtectedAccess: Bool {
            unsafe rawValue.pipelineProtectedAccess != 0
        }

        /// The `pipelineRobustness` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var pipelineRobustness: Bool {
            unsafe rawValue.pipelineRobustness != 0
        }

        /// The `hostImageCopy` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var hostImageCopy: Bool {
            unsafe rawValue.hostImageCopy != 0
        }

        /// The `pushDescriptor` member of the Vulkan `VkPhysicalDeviceVulkan14Features`.
        public var pushDescriptor: Bool {
            unsafe rawValue.pushDescriptor != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCoherentMemoryFeaturesAMD.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCoherentMemoryFeaturesAMD.html)
    @safe
    public struct CoherentMemoryFeatures_AMD {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCoherentMemoryFeaturesAMD

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCoherentMemoryFeaturesAMD) {
            unsafe self.rawValue = rawValue
        }

        /// The `deviceCoherentMemory` member of the Vulkan `VkPhysicalDeviceCoherentMemoryFeaturesAMD`.
        public var deviceCoherentMemory: Bool {
            unsafe rawValue.deviceCoherentMemory != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCustomBorderColorFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCustomBorderColorFeaturesEXT.html)
    @safe
    public struct CustomBorderColorFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCustomBorderColorFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCustomBorderColorFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `customBorderColors` member of the Vulkan `VkPhysicalDeviceCustomBorderColorFeaturesEXT`.
        public var customBorderColors: Bool {
            unsafe rawValue.customBorderColors != 0
        }

        /// The `customBorderColorWithoutFormat` member of the Vulkan `VkPhysicalDeviceCustomBorderColorFeaturesEXT`.
        public var customBorderColorWithoutFormat: Bool {
            unsafe rawValue.customBorderColorWithoutFormat != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceBorderColorSwizzleFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBorderColorSwizzleFeaturesEXT.html)
    @safe
    public struct BorderColorSwizzleFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceBorderColorSwizzleFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceBorderColorSwizzleFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `borderColorSwizzle` member of the Vulkan `VkPhysicalDeviceBorderColorSwizzleFeaturesEXT`.
        public var borderColorSwizzle: Bool {
            unsafe rawValue.borderColorSwizzle != 0
        }

        /// The `borderColorSwizzleFromImage` member of the Vulkan `VkPhysicalDeviceBorderColorSwizzleFeaturesEXT`.
        public var borderColorSwizzleFromImage: Bool {
            unsafe rawValue.borderColorSwizzleFromImage != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExtendedDynamicStateFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedDynamicStateFeaturesEXT.html)
    @safe
    public struct ExtendedDynamicStateFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExtendedDynamicStateFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExtendedDynamicStateFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `extendedDynamicState` member of the Vulkan `VkPhysicalDeviceExtendedDynamicStateFeaturesEXT`.
        public var extendedDynamicState: Bool {
            unsafe rawValue.extendedDynamicState != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExtendedDynamicState2FeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedDynamicState2FeaturesEXT.html)
    @safe
    public struct ExtendedDynamicState2Features_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExtendedDynamicState2FeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExtendedDynamicState2FeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `extendedDynamicState2` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState2FeaturesEXT`.
        public var extendedDynamicState2: Bool {
            unsafe rawValue.extendedDynamicState2 != 0
        }

        /// The `extendedDynamicState2LogicOp` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState2FeaturesEXT`.
        public var extendedDynamicState2LogicOp: Bool {
            unsafe rawValue.extendedDynamicState2LogicOp != 0
        }

        /// The `extendedDynamicState2PatchControlPoints` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState2FeaturesEXT`.
        public var extendedDynamicState2PatchControlPoints: Bool {
            unsafe rawValue.extendedDynamicState2PatchControlPoints != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExtendedDynamicState3FeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedDynamicState3FeaturesEXT.html)
    @safe
    public struct ExtendedDynamicState3Features_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExtendedDynamicState3FeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExtendedDynamicState3FeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `extendedDynamicState3TessellationDomainOrigin` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3TessellationDomainOrigin: Bool {
            unsafe rawValue.extendedDynamicState3TessellationDomainOrigin != 0
        }

        /// The `extendedDynamicState3DepthClampEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3DepthClampEnable: Bool {
            unsafe rawValue.extendedDynamicState3DepthClampEnable != 0
        }

        /// The `extendedDynamicState3PolygonMode` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3PolygonMode: Bool {
            unsafe rawValue.extendedDynamicState3PolygonMode != 0
        }

        /// The `extendedDynamicState3RasterizationSamples` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3RasterizationSamples: Bool {
            unsafe rawValue.extendedDynamicState3RasterizationSamples != 0
        }

        /// The `extendedDynamicState3SampleMask` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3SampleMask: Bool {
            unsafe rawValue.extendedDynamicState3SampleMask != 0
        }

        /// The `extendedDynamicState3AlphaToCoverageEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3AlphaToCoverageEnable: Bool {
            unsafe rawValue.extendedDynamicState3AlphaToCoverageEnable != 0
        }

        /// The `extendedDynamicState3AlphaToOneEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3AlphaToOneEnable: Bool {
            unsafe rawValue.extendedDynamicState3AlphaToOneEnable != 0
        }

        /// The `extendedDynamicState3LogicOpEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3LogicOpEnable: Bool {
            unsafe rawValue.extendedDynamicState3LogicOpEnable != 0
        }

        /// The `extendedDynamicState3ColorBlendEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ColorBlendEnable: Bool {
            unsafe rawValue.extendedDynamicState3ColorBlendEnable != 0
        }

        /// The `extendedDynamicState3ColorBlendEquation` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ColorBlendEquation: Bool {
            unsafe rawValue.extendedDynamicState3ColorBlendEquation != 0
        }

        /// The `extendedDynamicState3ColorWriteMask` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ColorWriteMask: Bool {
            unsafe rawValue.extendedDynamicState3ColorWriteMask != 0
        }

        /// The `extendedDynamicState3RasterizationStream` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3RasterizationStream: Bool {
            unsafe rawValue.extendedDynamicState3RasterizationStream != 0
        }

        /// The `extendedDynamicState3ConservativeRasterizationMode` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ConservativeRasterizationMode: Bool {
            unsafe rawValue.extendedDynamicState3ConservativeRasterizationMode != 0
        }

        /// The `extendedDynamicState3ExtraPrimitiveOverestimationSize` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ExtraPrimitiveOverestimationSize: Bool {
            unsafe rawValue.extendedDynamicState3ExtraPrimitiveOverestimationSize != 0
        }

        /// The `extendedDynamicState3DepthClipEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3DepthClipEnable: Bool {
            unsafe rawValue.extendedDynamicState3DepthClipEnable != 0
        }

        /// The `extendedDynamicState3SampleLocationsEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3SampleLocationsEnable: Bool {
            unsafe rawValue.extendedDynamicState3SampleLocationsEnable != 0
        }

        /// The `extendedDynamicState3ColorBlendAdvanced` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ColorBlendAdvanced: Bool {
            unsafe rawValue.extendedDynamicState3ColorBlendAdvanced != 0
        }

        /// The `extendedDynamicState3ProvokingVertexMode` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ProvokingVertexMode: Bool {
            unsafe rawValue.extendedDynamicState3ProvokingVertexMode != 0
        }

        /// The `extendedDynamicState3LineRasterizationMode` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3LineRasterizationMode: Bool {
            unsafe rawValue.extendedDynamicState3LineRasterizationMode != 0
        }

        /// The `extendedDynamicState3LineStippleEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3LineStippleEnable: Bool {
            unsafe rawValue.extendedDynamicState3LineStippleEnable != 0
        }

        /// The `extendedDynamicState3DepthClipNegativeOneToOne` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3DepthClipNegativeOneToOne: Bool {
            unsafe rawValue.extendedDynamicState3DepthClipNegativeOneToOne != 0
        }

        /// The `extendedDynamicState3ViewportWScalingEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ViewportWScalingEnable: Bool {
            unsafe rawValue.extendedDynamicState3ViewportWScalingEnable != 0
        }

        /// The `extendedDynamicState3ViewportSwizzle` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ViewportSwizzle: Bool {
            unsafe rawValue.extendedDynamicState3ViewportSwizzle != 0
        }

        /// The `extendedDynamicState3CoverageToColorEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3CoverageToColorEnable: Bool {
            unsafe rawValue.extendedDynamicState3CoverageToColorEnable != 0
        }

        /// The `extendedDynamicState3CoverageToColorLocation` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3CoverageToColorLocation: Bool {
            unsafe rawValue.extendedDynamicState3CoverageToColorLocation != 0
        }

        /// The `extendedDynamicState3CoverageModulationMode` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3CoverageModulationMode: Bool {
            unsafe rawValue.extendedDynamicState3CoverageModulationMode != 0
        }

        /// The `extendedDynamicState3CoverageModulationTableEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3CoverageModulationTableEnable: Bool {
            unsafe rawValue.extendedDynamicState3CoverageModulationTableEnable != 0
        }

        /// The `extendedDynamicState3CoverageModulationTable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3CoverageModulationTable: Bool {
            unsafe rawValue.extendedDynamicState3CoverageModulationTable != 0
        }

        /// The `extendedDynamicState3CoverageReductionMode` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3CoverageReductionMode: Bool {
            unsafe rawValue.extendedDynamicState3CoverageReductionMode != 0
        }

        /// The `extendedDynamicState3RepresentativeFragmentTestEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3RepresentativeFragmentTestEnable: Bool {
            unsafe rawValue.extendedDynamicState3RepresentativeFragmentTestEnable != 0
        }

        /// The `extendedDynamicState3ShadingRateImageEnable` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3FeaturesEXT`.
        public var extendedDynamicState3ShadingRateImageEnable: Bool {
            unsafe rawValue.extendedDynamicState3ShadingRateImageEnable != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV.html)
    @safe
    public struct PartitionedAccelerationStructureFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `partitionedAccelerationStructure` member of the Vulkan `VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV`.
        public var partitionedAccelerationStructure: Bool {
            unsafe rawValue.partitionedAccelerationStructure != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDiagnosticsConfigFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDiagnosticsConfigFeaturesNV.html)
    @safe
    public struct DiagnosticsConfigFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDiagnosticsConfigFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDiagnosticsConfigFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `diagnosticsConfig` member of the Vulkan `VkPhysicalDeviceDiagnosticsConfigFeaturesNV`.
        public var diagnosticsConfig: Bool {
            unsafe rawValue.diagnosticsConfig != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.html)
    @safe
    public struct ZeroInitializeWorkgroupMemoryFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderZeroInitializeWorkgroupMemory` member of the Vulkan `VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures`.
        public var shaderZeroInitializeWorkgroupMemory: Bool {
            unsafe rawValue.shaderZeroInitializeWorkgroupMemory != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR.html)
    @safe
    public struct ShaderSubgroupUniformControlFlowFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderSubgroupUniformControlFlow` member of the Vulkan `VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR`.
        public var shaderSubgroupUniformControlFlow: Bool {
            unsafe rawValue.shaderSubgroupUniformControlFlow != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRobustness2FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRobustness2FeaturesKHR.html)
    @safe
    public struct Robustness2Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRobustness2FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRobustness2FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `robustBufferAccess2` member of the Vulkan `VkPhysicalDeviceRobustness2FeaturesKHR`.
        public var robustBufferAccess2: Bool {
            unsafe rawValue.robustBufferAccess2 != 0
        }

        /// The `robustImageAccess2` member of the Vulkan `VkPhysicalDeviceRobustness2FeaturesKHR`.
        public var robustImageAccess2: Bool {
            unsafe rawValue.robustImageAccess2 != 0
        }

        /// The `nullDescriptor` member of the Vulkan `VkPhysicalDeviceRobustness2FeaturesKHR`.
        public var nullDescriptor: Bool {
            unsafe rawValue.nullDescriptor != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageRobustnessFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageRobustnessFeatures.html)
    @safe
    public struct ImageRobustnessFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageRobustnessFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageRobustnessFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `robustImageAccess` member of the Vulkan `VkPhysicalDeviceImageRobustnessFeatures`.
        public var robustImageAccess: Bool {
            unsafe rawValue.robustImageAccess != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR.html)
    @safe
    public struct WorkgroupMemoryExplicitLayoutFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `workgroupMemoryExplicitLayout` member of the Vulkan `VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR`.
        public var workgroupMemoryExplicitLayout: Bool {
            unsafe rawValue.workgroupMemoryExplicitLayout != 0
        }

        /// The `workgroupMemoryExplicitLayoutScalarBlockLayout` member of the Vulkan `VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR`.
        public var workgroupMemoryExplicitLayoutScalarBlockLayout: Bool {
            unsafe rawValue.workgroupMemoryExplicitLayoutScalarBlockLayout != 0
        }

        /// The `workgroupMemoryExplicitLayout8BitAccess` member of the Vulkan `VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR`.
        public var workgroupMemoryExplicitLayout8BitAccess: Bool {
            unsafe rawValue.workgroupMemoryExplicitLayout8BitAccess != 0
        }

        /// The `workgroupMemoryExplicitLayout16BitAccess` member of the Vulkan `VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR`.
        public var workgroupMemoryExplicitLayout16BitAccess: Bool {
            unsafe rawValue.workgroupMemoryExplicitLayout16BitAccess != 0
        }
    }

    #if EnableProvisional
        /// Wrapper around the Vulkan VkPhysicalDevicePortabilitySubsetFeaturesKHR.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePortabilitySubsetFeaturesKHR.html)
        @safe
        public struct PortabilitySubsetFeatures_KHR {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDevicePortabilitySubsetFeaturesKHR

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDevicePortabilitySubsetFeaturesKHR) {
                unsafe self.rawValue = rawValue
            }

            /// The `constantAlphaColorBlendFactors` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var constantAlphaColorBlendFactors: Bool {
                unsafe rawValue.constantAlphaColorBlendFactors != 0
            }

            /// The `events` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var events: Bool {
                unsafe rawValue.events != 0
            }

            /// The `imageViewFormatReinterpretation` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var imageViewFormatReinterpretation: Bool {
                unsafe rawValue.imageViewFormatReinterpretation != 0
            }

            /// The `imageViewFormatSwizzle` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var imageViewFormatSwizzle: Bool {
                unsafe rawValue.imageViewFormatSwizzle != 0
            }

            /// The `imageView2DOn3DImage` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var imageView2DOn3DImage: Bool {
                unsafe rawValue.imageView2DOn3DImage != 0
            }

            /// The `multisampleArrayImage` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var multisampleArrayImage: Bool {
                unsafe rawValue.multisampleArrayImage != 0
            }

            /// The `mutableComparisonSamplers` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var mutableComparisonSamplers: Bool {
                unsafe rawValue.mutableComparisonSamplers != 0
            }

            /// The `pointPolygons` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var pointPolygons: Bool {
                unsafe rawValue.pointPolygons != 0
            }

            /// The `samplerMipLodBias` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var samplerMipLodBias: Bool {
                unsafe rawValue.samplerMipLodBias != 0
            }

            /// The `separateStencilMaskRef` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var separateStencilMaskRef: Bool {
                unsafe rawValue.separateStencilMaskRef != 0
            }

            /// The `shaderSampleRateInterpolationFunctions` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var shaderSampleRateInterpolationFunctions: Bool {
                unsafe rawValue.shaderSampleRateInterpolationFunctions != 0
            }

            /// The `tessellationIsolines` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var tessellationIsolines: Bool {
                unsafe rawValue.tessellationIsolines != 0
            }

            /// The `tessellationPointMode` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var tessellationPointMode: Bool {
                unsafe rawValue.tessellationPointMode != 0
            }

            /// The `triangleFans` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var triangleFans: Bool {
                unsafe rawValue.triangleFans != 0
            }

            /// The `vertexAttributeAccessBeyondStride` member of the Vulkan `VkPhysicalDevicePortabilitySubsetFeaturesKHR`.
            public var vertexAttributeAccessBeyondStride: Bool {
                unsafe rawValue.vertexAttributeAccessBeyondStride != 0
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public struct PortabilitySubsetFeatures_KHR {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDevice4444FormatsFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevice4444FormatsFeaturesEXT.html)
    @safe
    public struct `4444FormatsFeatures_EXT` {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevice4444FormatsFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevice4444FormatsFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `formatA4R4G4B4` member of the Vulkan `VkPhysicalDevice4444FormatsFeaturesEXT`.
        public var formatA4R4G4B4: Bool {
            unsafe rawValue.formatA4R4G4B4 != 0
        }

        /// The `formatA4B4G4R4` member of the Vulkan `VkPhysicalDevice4444FormatsFeaturesEXT`.
        public var formatA4B4G4R4: Bool {
            unsafe rawValue.formatA4B4G4R4 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSubpassShadingFeaturesHUAWEI.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubpassShadingFeaturesHUAWEI.html)
    @safe
    public struct SubpassShadingFeatures_HUAWEI {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSubpassShadingFeaturesHUAWEI

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSubpassShadingFeaturesHUAWEI) {
            unsafe self.rawValue = rawValue
        }

        /// The `subpassShading` member of the Vulkan `VkPhysicalDeviceSubpassShadingFeaturesHUAWEI`.
        public var subpassShading: Bool {
            unsafe rawValue.subpassShading != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI.html)
    @safe
    public struct ClusterCullingShaderFeatures_HUAWEI {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI) {
            unsafe self.rawValue = rawValue
        }

        /// The `clustercullingShader` member of the Vulkan `VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI`.
        public var clustercullingShader: Bool {
            unsafe rawValue.clustercullingShader != 0
        }

        /// The `multiviewClusterCullingShader` member of the Vulkan `VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI`.
        public var multiviewClusterCullingShader: Bool {
            unsafe rawValue.multiviewClusterCullingShader != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT.html)
    @safe
    public struct ShaderImageAtomicInt64Features_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderImageInt64Atomics` member of the Vulkan `VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT`.
        public var shaderImageInt64Atomics: Bool {
            unsafe rawValue.shaderImageInt64Atomics != 0
        }

        /// The `sparseImageInt64Atomics` member of the Vulkan `VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT`.
        public var sparseImageInt64Atomics: Bool {
            unsafe rawValue.sparseImageInt64Atomics != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentShadingRateFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShadingRateFeaturesKHR.html)
    @safe
    public struct FragmentShadingRateFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentShadingRateFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentShadingRateFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelineFragmentShadingRate` member of the Vulkan `VkPhysicalDeviceFragmentShadingRateFeaturesKHR`.
        public var pipelineFragmentShadingRate: Bool {
            unsafe rawValue.pipelineFragmentShadingRate != 0
        }

        /// The `primitiveFragmentShadingRate` member of the Vulkan `VkPhysicalDeviceFragmentShadingRateFeaturesKHR`.
        public var primitiveFragmentShadingRate: Bool {
            unsafe rawValue.primitiveFragmentShadingRate != 0
        }

        /// The `attachmentFragmentShadingRate` member of the Vulkan `VkPhysicalDeviceFragmentShadingRateFeaturesKHR`.
        public var attachmentFragmentShadingRate: Bool {
            unsafe rawValue.attachmentFragmentShadingRate != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderTerminateInvocationFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderTerminateInvocationFeatures.html)
    @safe
    public struct ShaderTerminateInvocationFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderTerminateInvocationFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderTerminateInvocationFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderTerminateInvocation` member of the Vulkan `VkPhysicalDeviceShaderTerminateInvocationFeatures`.
        public var shaderTerminateInvocation: Bool {
            unsafe rawValue.shaderTerminateInvocation != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV.html)
    @safe
    public struct FragmentShadingRateEnumsFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `fragmentShadingRateEnums` member of the Vulkan `VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV`.
        public var fragmentShadingRateEnums: Bool {
            unsafe rawValue.fragmentShadingRateEnums != 0
        }

        /// The `supersampleFragmentShadingRates` member of the Vulkan `VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV`.
        public var supersampleFragmentShadingRates: Bool {
            unsafe rawValue.supersampleFragmentShadingRates != 0
        }

        /// The `noInvocationFragmentShadingRates` member of the Vulkan `VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV`.
        public var noInvocationFragmentShadingRates: Bool {
            unsafe rawValue.noInvocationFragmentShadingRates != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImage2DViewOf3DFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImage2DViewOf3DFeaturesEXT.html)
    @safe
    public struct Image2DViewOf3DFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImage2DViewOf3DFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImage2DViewOf3DFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `image2DViewOf3D` member of the Vulkan `VkPhysicalDeviceImage2DViewOf3DFeaturesEXT`.
        public var image2DViewOf3D: Bool {
            unsafe rawValue.image2DViewOf3D != 0
        }

        /// The `sampler2DViewOf3D` member of the Vulkan `VkPhysicalDeviceImage2DViewOf3DFeaturesEXT`.
        public var sampler2DViewOf3D: Bool {
            unsafe rawValue.sampler2DViewOf3D != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT.html)
    @safe
    public struct ImageSlicedViewOf3DFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `imageSlicedViewOf3D` member of the Vulkan `VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT`.
        public var imageSlicedViewOf3D: Bool {
            unsafe rawValue.imageSlicedViewOf3D != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT.html)
    @safe
    public struct AttachmentFeedbackLoopDynamicStateFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `attachmentFeedbackLoopDynamicState` member of the Vulkan `VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT`.
        public var attachmentFeedbackLoopDynamicState: Bool {
            unsafe rawValue.attachmentFeedbackLoopDynamicState != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT.html)
    @safe
    public struct LegacyVertexAttributesFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `legacyVertexAttributes` member of the Vulkan `VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT`.
        public var legacyVertexAttributes: Bool {
            unsafe rawValue.legacyVertexAttributes != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT.html)
    @safe
    public struct MutableDescriptorTypeFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `mutableDescriptorType` member of the Vulkan `VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT`.
        public var mutableDescriptorType: Bool {
            unsafe rawValue.mutableDescriptorType != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDepthClipControlFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthClipControlFeaturesEXT.html)
    @safe
    public struct DepthClipControlFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDepthClipControlFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDepthClipControlFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `depthClipControl` member of the Vulkan `VkPhysicalDeviceDepthClipControlFeaturesEXT`.
        public var depthClipControl: Bool {
            unsafe rawValue.depthClipControl != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT.html)
    @safe
    public struct ZeroInitializeDeviceMemoryFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `zeroInitializeDeviceMemory` member of the Vulkan `VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT`.
        public var zeroInitializeDeviceMemory: Bool {
            unsafe rawValue.zeroInitializeDeviceMemory != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT.html)
    @safe
    public struct DeviceGeneratedCommandsFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `deviceGeneratedCommands` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT`.
        public var deviceGeneratedCommands: Bool {
            unsafe rawValue.deviceGeneratedCommands != 0
        }

        /// The `dynamicGeneratedPipelineLayout` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT`.
        public var dynamicGeneratedPipelineLayout: Bool {
            unsafe rawValue.dynamicGeneratedPipelineLayout != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDepthClampControlFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthClampControlFeaturesEXT.html)
    @safe
    public struct DepthClampControlFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDepthClampControlFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDepthClampControlFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `depthClampControl` member of the Vulkan `VkPhysicalDeviceDepthClampControlFeaturesEXT`.
        public var depthClampControl: Bool {
            unsafe rawValue.depthClampControl != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT.html)
    @safe
    public struct VertexInputDynamicStateFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `vertexInputDynamicState` member of the Vulkan `VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT`.
        public var vertexInputDynamicState: Bool {
            unsafe rawValue.vertexInputDynamicState != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExternalMemoryRDMAFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalMemoryRDMAFeaturesNV.html)
    @safe
    public struct ExternalMemoryRDMAFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExternalMemoryRDMAFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExternalMemoryRDMAFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `externalMemoryRDMA` member of the Vulkan `VkPhysicalDeviceExternalMemoryRDMAFeaturesNV`.
        public var externalMemoryRDMA: Bool {
            unsafe rawValue.externalMemoryRDMA != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR.html)
    @safe
    public struct ShaderRelaxedExtendedInstructionFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderRelaxedExtendedInstruction` member of the Vulkan `VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR`.
        public var shaderRelaxedExtendedInstruction: Bool {
            unsafe rawValue.shaderRelaxedExtendedInstruction != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceColorWriteEnableFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceColorWriteEnableFeaturesEXT.html)
    @safe
    public struct ColorWriteEnableFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceColorWriteEnableFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceColorWriteEnableFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `colorWriteEnable` member of the Vulkan `VkPhysicalDeviceColorWriteEnableFeaturesEXT`.
        public var colorWriteEnable: Bool {
            unsafe rawValue.colorWriteEnable != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSynchronization2Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSynchronization2Features.html)
    @safe
    public struct Synchronization2Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSynchronization2Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSynchronization2Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `synchronization2` member of the Vulkan `VkPhysicalDeviceSynchronization2Features`.
        public var synchronization2: Bool {
            unsafe rawValue.synchronization2 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR.html)
    @safe
    public struct UnifiedImageLayoutsFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `unifiedImageLayouts` member of the Vulkan `VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR`.
        public var unifiedImageLayouts: Bool {
            unsafe rawValue.unifiedImageLayouts != 0
        }

        /// The `unifiedImageLayoutsVideo` member of the Vulkan `VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR`.
        public var unifiedImageLayoutsVideo: Bool {
            unsafe rawValue.unifiedImageLayoutsVideo != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceHostImageCopyFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceHostImageCopyFeatures.html)
    @safe
    public struct HostImageCopyFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceHostImageCopyFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceHostImageCopyFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `hostImageCopy` member of the Vulkan `VkPhysicalDeviceHostImageCopyFeatures`.
        public var hostImageCopy: Bool {
            unsafe rawValue.hostImageCopy != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT.html)
    @safe
    public struct PrimitivesGeneratedQueryFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `primitivesGeneratedQuery` member of the Vulkan `VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT`.
        public var primitivesGeneratedQuery: Bool {
            unsafe rawValue.primitivesGeneratedQuery != 0
        }

        /// The `primitivesGeneratedQueryWithRasterizerDiscard` member of the Vulkan `VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT`.
        public var primitivesGeneratedQueryWithRasterizerDiscard: Bool {
            unsafe rawValue.primitivesGeneratedQueryWithRasterizerDiscard != 0
        }

        /// The `primitivesGeneratedQueryWithNonZeroStreams` member of the Vulkan `VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT`.
        public var primitivesGeneratedQueryWithNonZeroStreams: Bool {
            unsafe rawValue.primitivesGeneratedQueryWithNonZeroStreams != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceLegacyDitheringFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLegacyDitheringFeaturesEXT.html)
    @safe
    public struct LegacyDitheringFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceLegacyDitheringFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceLegacyDitheringFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `legacyDithering` member of the Vulkan `VkPhysicalDeviceLegacyDitheringFeaturesEXT`.
        public var legacyDithering: Bool {
            unsafe rawValue.legacyDithering != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT.html)
    @safe
    public struct MultisampledRenderToSingleSampledFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `multisampledRenderToSingleSampled` member of the Vulkan `VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT`.
        public var multisampledRenderToSingleSampled: Bool {
            unsafe rawValue.multisampledRenderToSingleSampled != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePipelineProtectedAccessFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineProtectedAccessFeatures.html)
    @safe
    public struct PipelineProtectedAccessFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelineProtectedAccessFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelineProtectedAccessFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelineProtectedAccess` member of the Vulkan `VkPhysicalDevicePipelineProtectedAccessFeatures`.
        public var pipelineProtectedAccess: Bool {
            unsafe rawValue.pipelineProtectedAccess != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVideoMaintenance1FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoMaintenance1FeaturesKHR.html)
    @safe
    public struct VideoMaintenance1Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVideoMaintenance1FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVideoMaintenance1FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `videoMaintenance1` member of the Vulkan `VkPhysicalDeviceVideoMaintenance1FeaturesKHR`.
        public var videoMaintenance1: Bool {
            unsafe rawValue.videoMaintenance1 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVideoMaintenance2FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoMaintenance2FeaturesKHR.html)
    @safe
    public struct VideoMaintenance2Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVideoMaintenance2FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVideoMaintenance2FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `videoMaintenance2` member of the Vulkan `VkPhysicalDeviceVideoMaintenance2FeaturesKHR`.
        public var videoMaintenance2: Bool {
            unsafe rawValue.videoMaintenance2 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVideoDecodeVP9FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoDecodeVP9FeaturesKHR.html)
    @safe
    public struct VideoDecodeVP9Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVideoDecodeVP9FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVideoDecodeVP9FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `videoDecodeVP9` member of the Vulkan `VkPhysicalDeviceVideoDecodeVP9FeaturesKHR`.
        public var videoDecodeVP9: Bool {
            unsafe rawValue.videoDecodeVP9 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR.html)
    @safe
    public struct VideoEncodeQuantizationMapFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `videoEncodeQuantizationMap` member of the Vulkan `VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR`.
        public var videoEncodeQuantizationMap: Bool {
            unsafe rawValue.videoEncodeQuantizationMap != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVideoEncodeAV1FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVideoEncodeAV1FeaturesKHR.html)
    @safe
    public struct VideoEncodeAV1Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVideoEncodeAV1FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVideoEncodeAV1FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `videoEncodeAV1` member of the Vulkan `VkPhysicalDeviceVideoEncodeAV1FeaturesKHR`.
        public var videoEncodeAV1: Bool {
            unsafe rawValue.videoEncodeAV1 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceInheritedViewportScissorFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceInheritedViewportScissorFeaturesNV.html)
    @safe
    public struct InheritedViewportScissorFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceInheritedViewportScissorFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceInheritedViewportScissorFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `inheritedViewportScissor2D` member of the Vulkan `VkPhysicalDeviceInheritedViewportScissorFeaturesNV`.
        public var inheritedViewportScissor2D: Bool {
            unsafe rawValue.inheritedViewportScissor2D != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT.html)
    @safe
    public struct Ycbcr2Plane444FormatsFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `ycbcr2plane444Formats` member of the Vulkan `VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT`.
        public var ycbcr2plane444Formats: Bool {
            unsafe rawValue.ycbcr2plane444Formats != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceProvokingVertexFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProvokingVertexFeaturesEXT.html)
    @safe
    public struct ProvokingVertexFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceProvokingVertexFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceProvokingVertexFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `provokingVertexLast` member of the Vulkan `VkPhysicalDeviceProvokingVertexFeaturesEXT`.
        public var provokingVertexLast: Bool {
            unsafe rawValue.provokingVertexLast != 0
        }

        /// The `transformFeedbackPreservesProvokingVertex` member of the Vulkan `VkPhysicalDeviceProvokingVertexFeaturesEXT`.
        public var transformFeedbackPreservesProvokingVertex: Bool {
            unsafe rawValue.transformFeedbackPreservesProvokingVertex != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDescriptorBufferFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferFeaturesEXT.html)
    @safe
    public struct DescriptorBufferFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDescriptorBufferFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDescriptorBufferFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `descriptorBuffer` member of the Vulkan `VkPhysicalDeviceDescriptorBufferFeaturesEXT`.
        public var descriptorBuffer: Bool {
            unsafe rawValue.descriptorBuffer != 0
        }

        /// The `descriptorBufferCaptureReplay` member of the Vulkan `VkPhysicalDeviceDescriptorBufferFeaturesEXT`.
        public var descriptorBufferCaptureReplay: Bool {
            unsafe rawValue.descriptorBufferCaptureReplay != 0
        }

        /// The `descriptorBufferImageLayoutIgnored` member of the Vulkan `VkPhysicalDeviceDescriptorBufferFeaturesEXT`.
        public var descriptorBufferImageLayoutIgnored: Bool {
            unsafe rawValue.descriptorBufferImageLayoutIgnored != 0
        }

        /// The `descriptorBufferPushDescriptors` member of the Vulkan `VkPhysicalDeviceDescriptorBufferFeaturesEXT`.
        public var descriptorBufferPushDescriptors: Bool {
            unsafe rawValue.descriptorBufferPushDescriptors != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderIntegerDotProductFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderIntegerDotProductFeatures.html)
    @safe
    public struct ShaderIntegerDotProductFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderIntegerDotProductFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderIntegerDotProductFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderIntegerDotProduct` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductFeatures`.
        public var shaderIntegerDotProduct: Bool {
            unsafe rawValue.shaderIntegerDotProduct != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR.html)
    @safe
    public struct FragmentShaderBarycentricFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `fragmentShaderBarycentric` member of the Vulkan `VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR`.
        public var fragmentShaderBarycentric: Bool {
            unsafe rawValue.fragmentShaderBarycentric != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingMotionBlurFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingMotionBlurFeaturesNV.html)
    @safe
    public struct RayTracingMotionBlurFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingMotionBlurFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingMotionBlurFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `rayTracingMotionBlur` member of the Vulkan `VkPhysicalDeviceRayTracingMotionBlurFeaturesNV`.
        public var rayTracingMotionBlur: Bool {
            unsafe rawValue.rayTracingMotionBlur != 0
        }

        /// The `rayTracingMotionBlurPipelineTraceRaysIndirect` member of the Vulkan `VkPhysicalDeviceRayTracingMotionBlurFeaturesNV`.
        public var rayTracingMotionBlurPipelineTraceRaysIndirect: Bool {
            unsafe rawValue.rayTracingMotionBlurPipelineTraceRaysIndirect != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingValidationFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingValidationFeaturesNV.html)
    @safe
    public struct RayTracingValidationFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingValidationFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingValidationFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `rayTracingValidation` member of the Vulkan `VkPhysicalDeviceRayTracingValidationFeaturesNV`.
        public var rayTracingValidation: Bool {
            unsafe rawValue.rayTracingValidation != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV.html)
    @safe
    public struct RayTracingLinearSweptSpheresFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `spheres` member of the Vulkan `VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV`.
        public var spheres: Bool {
            unsafe rawValue.spheres != 0
        }

        /// The `linearSweptSpheres` member of the Vulkan `VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV`.
        public var linearSweptSpheres: Bool {
            unsafe rawValue.linearSweptSpheres != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT.html)
    @safe
    public struct RGBA10X6FormatsFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `formatRgba10x6WithoutYCbCrSampler` member of the Vulkan `VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT`.
        public var formatRgba10x6WithoutYCbCrSampler: Bool {
            unsafe rawValue.formatRgba10x6WithoutYCbCrSampler != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDynamicRenderingFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDynamicRenderingFeatures.html)
    @safe
    public struct DynamicRenderingFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDynamicRenderingFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDynamicRenderingFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `dynamicRendering` member of the Vulkan `VkPhysicalDeviceDynamicRenderingFeatures`.
        public var dynamicRendering: Bool {
            unsafe rawValue.dynamicRendering != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageViewMinLodFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageViewMinLodFeaturesEXT.html)
    @safe
    public struct ImageViewMinLodFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageViewMinLodFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageViewMinLodFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `minLod` member of the Vulkan `VkPhysicalDeviceImageViewMinLodFeaturesEXT`.
        public var minLod: Bool {
            unsafe rawValue.minLod != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT.html)
    @safe
    public struct RasterizationOrderAttachmentAccessFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `rasterizationOrderColorAttachmentAccess` member of the Vulkan `VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT`.
        public var rasterizationOrderColorAttachmentAccess: Bool {
            unsafe rawValue.rasterizationOrderColorAttachmentAccess != 0
        }

        /// The `rasterizationOrderDepthAttachmentAccess` member of the Vulkan `VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT`.
        public var rasterizationOrderDepthAttachmentAccess: Bool {
            unsafe rawValue.rasterizationOrderDepthAttachmentAccess != 0
        }

        /// The `rasterizationOrderStencilAttachmentAccess` member of the Vulkan `VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT`.
        public var rasterizationOrderStencilAttachmentAccess: Bool {
            unsafe rawValue.rasterizationOrderStencilAttachmentAccess != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceLinearColorAttachmentFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLinearColorAttachmentFeaturesNV.html)
    @safe
    public struct LinearColorAttachmentFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceLinearColorAttachmentFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceLinearColorAttachmentFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `linearColorAttachment` member of the Vulkan `VkPhysicalDeviceLinearColorAttachmentFeaturesNV`.
        public var linearColorAttachment: Bool {
            unsafe rawValue.linearColorAttachment != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT.html)
    @safe
    public struct GraphicsPipelineLibraryFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `graphicsPipelineLibrary` member of the Vulkan `VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT`.
        public var graphicsPipelineLibrary: Bool {
            unsafe rawValue.graphicsPipelineLibrary != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePipelineBinaryFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineBinaryFeaturesKHR.html)
    @safe
    public struct PipelineBinaryFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelineBinaryFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelineBinaryFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelineBinaries` member of the Vulkan `VkPhysicalDevicePipelineBinaryFeaturesKHR`.
        public var pipelineBinaries: Bool {
            unsafe rawValue.pipelineBinaries != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE.html)
    @safe
    public struct DescriptorSetHostMappingFeatures_VALVE {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE) {
            unsafe self.rawValue = rawValue
        }

        /// The `descriptorSetHostMapping` member of the Vulkan `VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE`.
        public var descriptorSetHostMapping: Bool {
            unsafe rawValue.descriptorSetHostMapping != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceNestedCommandBufferFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceNestedCommandBufferFeaturesEXT.html)
    @safe
    public struct NestedCommandBufferFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceNestedCommandBufferFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceNestedCommandBufferFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `nestedCommandBuffer` member of the Vulkan `VkPhysicalDeviceNestedCommandBufferFeaturesEXT`.
        public var nestedCommandBuffer: Bool {
            unsafe rawValue.nestedCommandBuffer != 0
        }

        /// The `nestedCommandBufferRendering` member of the Vulkan `VkPhysicalDeviceNestedCommandBufferFeaturesEXT`.
        public var nestedCommandBufferRendering: Bool {
            unsafe rawValue.nestedCommandBufferRendering != 0
        }

        /// The `nestedCommandBufferSimultaneousUse` member of the Vulkan `VkPhysicalDeviceNestedCommandBufferFeaturesEXT`.
        public var nestedCommandBufferSimultaneousUse: Bool {
            unsafe rawValue.nestedCommandBufferSimultaneousUse != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT.html)
    @safe
    public struct ShaderModuleIdentifierFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderModuleIdentifier` member of the Vulkan `VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT`.
        public var shaderModuleIdentifier: Bool {
            unsafe rawValue.shaderModuleIdentifier != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageCompressionControlFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageCompressionControlFeaturesEXT.html)
    @safe
    public struct ImageCompressionControlFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageCompressionControlFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageCompressionControlFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `imageCompressionControl` member of the Vulkan `VkPhysicalDeviceImageCompressionControlFeaturesEXT`.
        public var imageCompressionControl: Bool {
            unsafe rawValue.imageCompressionControl != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT.html)
    @safe
    public struct ImageCompressionControlSwapchainFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `imageCompressionControlSwapchain` member of the Vulkan `VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT`.
        public var imageCompressionControlSwapchain: Bool {
            unsafe rawValue.imageCompressionControlSwapchain != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT.html)
    @safe
    public struct SubpassMergeFeedbackFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `subpassMergeFeedback` member of the Vulkan `VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT`.
        public var subpassMergeFeedback: Bool {
            unsafe rawValue.subpassMergeFeedback != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceOpacityMicromapFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceOpacityMicromapFeaturesEXT.html)
    @safe
    public struct OpacityMicromapFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceOpacityMicromapFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceOpacityMicromapFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `micromap` member of the Vulkan `VkPhysicalDeviceOpacityMicromapFeaturesEXT`.
        public var micromap: Bool {
            unsafe rawValue.micromap != 0
        }

        /// The `micromapCaptureReplay` member of the Vulkan `VkPhysicalDeviceOpacityMicromapFeaturesEXT`.
        public var micromapCaptureReplay: Bool {
            unsafe rawValue.micromapCaptureReplay != 0
        }

        /// The `micromapHostCommands` member of the Vulkan `VkPhysicalDeviceOpacityMicromapFeaturesEXT`.
        public var micromapHostCommands: Bool {
            unsafe rawValue.micromapHostCommands != 0
        }
    }

    #if EnableProvisional
        /// Wrapper around the Vulkan VkPhysicalDeviceDisplacementMicromapFeaturesNV.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDisplacementMicromapFeaturesNV.html)
        @safe
        public struct DisplacementMicromapFeatures_NV {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDeviceDisplacementMicromapFeaturesNV

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDeviceDisplacementMicromapFeaturesNV) {
                unsafe self.rawValue = rawValue
            }

            /// The `displacementMicromap` member of the Vulkan `VkPhysicalDeviceDisplacementMicromapFeaturesNV`.
            public var displacementMicromap: Bool {
                unsafe rawValue.displacementMicromap != 0
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public struct DisplacementMicromapFeatures_NV {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDevicePipelinePropertiesFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelinePropertiesFeaturesEXT.html)
    @safe
    public struct PipelinePropertiesFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelinePropertiesFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelinePropertiesFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelinePropertiesIdentifier` member of the Vulkan `VkPhysicalDevicePipelinePropertiesFeaturesEXT`.
        public var pipelinePropertiesIdentifier: Bool {
            unsafe rawValue.pipelinePropertiesIdentifier != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD.html)
    @safe
    public struct ShaderEarlyAndLateFragmentTestsFeatures_AMD {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderEarlyAndLateFragmentTests` member of the Vulkan `VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD`.
        public var shaderEarlyAndLateFragmentTests: Bool {
            unsafe rawValue.shaderEarlyAndLateFragmentTests != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT.html)
    @safe
    public struct NonSeamlessCubeMapFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `nonSeamlessCubeMap` member of the Vulkan `VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT`.
        public var nonSeamlessCubeMap: Bool {
            unsafe rawValue.nonSeamlessCubeMap != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePipelineRobustnessFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineRobustnessFeatures.html)
    @safe
    public struct PipelineRobustnessFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelineRobustnessFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelineRobustnessFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelineRobustness` member of the Vulkan `VkPhysicalDevicePipelineRobustnessFeatures`.
        public var pipelineRobustness: Bool {
            unsafe rawValue.pipelineRobustness != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageProcessingFeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageProcessingFeaturesQCOM.html)
    @safe
    public struct ImageProcessingFeatures_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageProcessingFeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageProcessingFeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `textureSampleWeighted` member of the Vulkan `VkPhysicalDeviceImageProcessingFeaturesQCOM`.
        public var textureSampleWeighted: Bool {
            unsafe rawValue.textureSampleWeighted != 0
        }

        /// The `textureBoxFilter` member of the Vulkan `VkPhysicalDeviceImageProcessingFeaturesQCOM`.
        public var textureBoxFilter: Bool {
            unsafe rawValue.textureBoxFilter != 0
        }

        /// The `textureBlockMatch` member of the Vulkan `VkPhysicalDeviceImageProcessingFeaturesQCOM`.
        public var textureBlockMatch: Bool {
            unsafe rawValue.textureBlockMatch != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTilePropertiesFeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTilePropertiesFeaturesQCOM.html)
    @safe
    public struct TilePropertiesFeatures_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTilePropertiesFeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTilePropertiesFeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `tileProperties` member of the Vulkan `VkPhysicalDeviceTilePropertiesFeaturesQCOM`.
        public var tileProperties: Bool {
            unsafe rawValue.tileProperties != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceAmigoProfilingFeaturesSEC.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAmigoProfilingFeaturesSEC.html)
    @safe
    public struct AmigoProfilingFeatures_SEC {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceAmigoProfilingFeaturesSEC

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceAmigoProfilingFeaturesSEC) {
            unsafe self.rawValue = rawValue
        }

        /// The `amigoProfiling` member of the Vulkan `VkPhysicalDeviceAmigoProfilingFeaturesSEC`.
        public var amigoProfiling: Bool {
            unsafe rawValue.amigoProfiling != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT.html)
    @safe
    public struct AttachmentFeedbackLoopLayoutFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `attachmentFeedbackLoopLayout` member of the Vulkan `VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT`.
        public var attachmentFeedbackLoopLayout: Bool {
            unsafe rawValue.attachmentFeedbackLoopLayout != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceAddressBindingReportFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAddressBindingReportFeaturesEXT.html)
    @safe
    public struct AddressBindingReportFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceAddressBindingReportFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceAddressBindingReportFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `reportAddressBinding` member of the Vulkan `VkPhysicalDeviceAddressBindingReportFeaturesEXT`.
        public var reportAddressBinding: Bool {
            unsafe rawValue.reportAddressBinding != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceOpticalFlowFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceOpticalFlowFeaturesNV.html)
    @safe
    public struct OpticalFlowFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceOpticalFlowFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceOpticalFlowFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `opticalFlow` member of the Vulkan `VkPhysicalDeviceOpticalFlowFeaturesNV`.
        public var opticalFlow: Bool {
            unsafe rawValue.opticalFlow != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFaultFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFaultFeaturesEXT.html)
    @safe
    public struct FaultFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFaultFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFaultFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `deviceFault` member of the Vulkan `VkPhysicalDeviceFaultFeaturesEXT`.
        public var deviceFault: Bool {
            unsafe rawValue.deviceFault != 0
        }

        /// The `deviceFaultVendorBinary` member of the Vulkan `VkPhysicalDeviceFaultFeaturesEXT`.
        public var deviceFaultVendorBinary: Bool {
            unsafe rawValue.deviceFaultVendorBinary != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT.html)
    @safe
    public struct PipelineLibraryGroupHandlesFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelineLibraryGroupHandles` member of the Vulkan `VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT`.
        public var pipelineLibraryGroupHandles: Bool {
            unsafe rawValue.pipelineLibraryGroupHandles != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM.html)
    @safe
    public struct ShaderCoreBuiltinsFeatures_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderCoreBuiltins` member of the Vulkan `VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM`.
        public var shaderCoreBuiltins: Bool {
            unsafe rawValue.shaderCoreBuiltins != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFrameBoundaryFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFrameBoundaryFeaturesEXT.html)
    @safe
    public struct FrameBoundaryFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFrameBoundaryFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFrameBoundaryFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `frameBoundary` member of the Vulkan `VkPhysicalDeviceFrameBoundaryFeaturesEXT`.
        public var frameBoundary: Bool {
            unsafe rawValue.frameBoundary != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT.html)
    @safe
    public struct DynamicRenderingUnusedAttachmentsFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `dynamicRenderingUnusedAttachments` member of the Vulkan `VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT`.
        public var dynamicRenderingUnusedAttachments: Bool {
            unsafe rawValue.dynamicRenderingUnusedAttachments != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT.html)
    @safe
    public struct SwapchainMaintenance1Features_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `swapchainMaintenance1` member of the Vulkan `VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT`.
        public var swapchainMaintenance1: Bool {
            unsafe rawValue.swapchainMaintenance1 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDepthBiasControlFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthBiasControlFeaturesEXT.html)
    @safe
    public struct DepthBiasControlFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDepthBiasControlFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDepthBiasControlFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `depthBiasControl` member of the Vulkan `VkPhysicalDeviceDepthBiasControlFeaturesEXT`.
        public var depthBiasControl: Bool {
            unsafe rawValue.depthBiasControl != 0
        }

        /// The `leastRepresentableValueForceUnormRepresentation` member of the Vulkan `VkPhysicalDeviceDepthBiasControlFeaturesEXT`.
        public var leastRepresentableValueForceUnormRepresentation: Bool {
            unsafe rawValue.leastRepresentableValueForceUnormRepresentation != 0
        }

        /// The `floatRepresentation` member of the Vulkan `VkPhysicalDeviceDepthBiasControlFeaturesEXT`.
        public var floatRepresentation: Bool {
            unsafe rawValue.floatRepresentation != 0
        }

        /// The `depthBiasExact` member of the Vulkan `VkPhysicalDeviceDepthBiasControlFeaturesEXT`.
        public var depthBiasExact: Bool {
            unsafe rawValue.depthBiasExact != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV.html)
    @safe
    public struct RayTracingInvocationReorderFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `rayTracingInvocationReorder` member of the Vulkan `VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV`.
        public var rayTracingInvocationReorder: Bool {
            unsafe rawValue.rayTracingInvocationReorder != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV.html)
    @safe
    public struct ExtendedSparseAddressSpaceFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `extendedSparseAddressSpace` member of the Vulkan `VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV`.
        public var extendedSparseAddressSpace: Bool {
            unsafe rawValue.extendedSparseAddressSpace != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM.html)
    @safe
    public struct MultiviewPerViewViewportsFeatures_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `multiviewPerViewViewports` member of the Vulkan `VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM`.
        public var multiviewPerViewViewports: Bool {
            unsafe rawValue.multiviewPerViewViewports != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR.html)
    @safe
    public struct RayTracingPositionFetchFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `rayTracingPositionFetch` member of the Vulkan `VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR`.
        public var rayTracingPositionFetch: Bool {
            unsafe rawValue.rayTracingPositionFetch != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM.html)
    @safe
    public struct MultiviewPerViewRenderAreasFeatures_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `multiviewPerViewRenderAreas` member of the Vulkan `VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM`.
        public var multiviewPerViewRenderAreas: Bool {
            unsafe rawValue.multiviewPerViewRenderAreas != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderObjectFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderObjectFeaturesEXT.html)
    @safe
    public struct ShaderObjectFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderObjectFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderObjectFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderObject` member of the Vulkan `VkPhysicalDeviceShaderObjectFeaturesEXT`.
        public var shaderObject: Bool {
            unsafe rawValue.shaderObject != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderTileImageFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderTileImageFeaturesEXT.html)
    @safe
    public struct ShaderTileImageFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderTileImageFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderTileImageFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderTileImageColorReadAccess` member of the Vulkan `VkPhysicalDeviceShaderTileImageFeaturesEXT`.
        public var shaderTileImageColorReadAccess: Bool {
            unsafe rawValue.shaderTileImageColorReadAccess != 0
        }

        /// The `shaderTileImageDepthReadAccess` member of the Vulkan `VkPhysicalDeviceShaderTileImageFeaturesEXT`.
        public var shaderTileImageDepthReadAccess: Bool {
            unsafe rawValue.shaderTileImageDepthReadAccess != 0
        }

        /// The `shaderTileImageStencilReadAccess` member of the Vulkan `VkPhysicalDeviceShaderTileImageFeaturesEXT`.
        public var shaderTileImageStencilReadAccess: Bool {
            unsafe rawValue.shaderTileImageStencilReadAccess != 0
        }
    }

    #if PlatformScreen
        /// Wrapper around the Vulkan VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX.html)
        @safe
        public struct ExternalMemoryScreenBufferFeatures_QNX {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX) {
                unsafe self.rawValue = rawValue
            }

            /// The `screenBufferImport` member of the Vulkan `VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX`.
            public var screenBufferImport: Bool {
                unsafe rawValue.screenBufferImport != 0
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'PlatformScreen' trait to be enabled")
        public struct ExternalMemoryScreenBufferFeatures_QNX {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDeviceCooperativeMatrixFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrixFeaturesKHR.html)
    @safe
    public struct CooperativeMatrixFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCooperativeMatrixFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCooperativeMatrixFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `cooperativeMatrix` member of the Vulkan `VkPhysicalDeviceCooperativeMatrixFeaturesKHR`.
        public var cooperativeMatrix: Bool {
            unsafe rawValue.cooperativeMatrix != 0
        }

        /// The `cooperativeMatrixRobustBufferAccess` member of the Vulkan `VkPhysicalDeviceCooperativeMatrixFeaturesKHR`.
        public var cooperativeMatrixRobustBufferAccess: Bool {
            unsafe rawValue.cooperativeMatrixRobustBufferAccess != 0
        }
    }

    #if EnableProvisional
        /// Wrapper around the Vulkan VkPhysicalDeviceShaderEnqueueFeaturesAMDX.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderEnqueueFeaturesAMDX.html)
        @safe
        public struct ShaderEnqueueFeatures_AMDX {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDeviceShaderEnqueueFeaturesAMDX

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDeviceShaderEnqueueFeaturesAMDX) {
                unsafe self.rawValue = rawValue
            }

            /// The `shaderEnqueue` member of the Vulkan `VkPhysicalDeviceShaderEnqueueFeaturesAMDX`.
            public var shaderEnqueue: Bool {
                unsafe rawValue.shaderEnqueue != 0
            }

            /// The `shaderMeshEnqueue` member of the Vulkan `VkPhysicalDeviceShaderEnqueueFeaturesAMDX`.
            public var shaderMeshEnqueue: Bool {
                unsafe rawValue.shaderMeshEnqueue != 0
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public struct ShaderEnqueueFeatures_AMDX {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDeviceAntiLagFeaturesAMD.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAntiLagFeaturesAMD.html)
    @safe
    public struct AntiLagFeatures_AMD {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceAntiLagFeaturesAMD

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceAntiLagFeaturesAMD) {
            unsafe self.rawValue = rawValue
        }

        /// The `antiLag` member of the Vulkan `VkPhysicalDeviceAntiLagFeaturesAMD`.
        public var antiLag: Bool {
            unsafe rawValue.antiLag != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTileMemoryHeapFeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTileMemoryHeapFeaturesQCOM.html)
    @safe
    public struct TileMemoryHeapFeatures_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTileMemoryHeapFeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTileMemoryHeapFeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `tileMemoryHeap` member of the Vulkan `VkPhysicalDeviceTileMemoryHeapFeaturesQCOM`.
        public var tileMemoryHeap: Bool {
            unsafe rawValue.tileMemoryHeap != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCubicClampFeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCubicClampFeaturesQCOM.html)
    @safe
    public struct CubicClampFeatures_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCubicClampFeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCubicClampFeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `cubicRangeClamp` member of the Vulkan `VkPhysicalDeviceCubicClampFeaturesQCOM`.
        public var cubicRangeClamp: Bool {
            unsafe rawValue.cubicRangeClamp != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceYcbcrDegammaFeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceYcbcrDegammaFeaturesQCOM.html)
    @safe
    public struct YcbcrDegammaFeatures_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceYcbcrDegammaFeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceYcbcrDegammaFeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `ycbcrDegamma` member of the Vulkan `VkPhysicalDeviceYcbcrDegammaFeaturesQCOM`.
        public var ycbcrDegamma: Bool {
            unsafe rawValue.ycbcrDegamma != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCubicWeightsFeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCubicWeightsFeaturesQCOM.html)
    @safe
    public struct CubicWeightsFeatures_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCubicWeightsFeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCubicWeightsFeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `selectableCubicWeights` member of the Vulkan `VkPhysicalDeviceCubicWeightsFeaturesQCOM`.
        public var selectableCubicWeights: Bool {
            unsafe rawValue.selectableCubicWeights != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageProcessing2FeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageProcessing2FeaturesQCOM.html)
    @safe
    public struct ImageProcessing2Features_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageProcessing2FeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageProcessing2FeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `textureBlockMatch2` member of the Vulkan `VkPhysicalDeviceImageProcessing2FeaturesQCOM`.
        public var textureBlockMatch2: Bool {
            unsafe rawValue.textureBlockMatch2 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV.html)
    @safe
    public struct DescriptorPoolOverallocationFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `descriptorPoolOverallocation` member of the Vulkan `VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV`.
        public var descriptorPoolOverallocation: Bool {
            unsafe rawValue.descriptorPoolOverallocation != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePerStageDescriptorSetFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePerStageDescriptorSetFeaturesNV.html)
    @safe
    public struct PerStageDescriptorSetFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePerStageDescriptorSetFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePerStageDescriptorSetFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `perStageDescriptorSet` member of the Vulkan `VkPhysicalDevicePerStageDescriptorSetFeaturesNV`.
        public var perStageDescriptorSet: Bool {
            unsafe rawValue.perStageDescriptorSet != 0
        }

        /// The `dynamicPipelineLayout` member of the Vulkan `VkPhysicalDevicePerStageDescriptorSetFeaturesNV`.
        public var dynamicPipelineLayout: Bool {
            unsafe rawValue.dynamicPipelineLayout != 0
        }
    }

    #if PlatformAndroid
        /// Wrapper around the Vulkan VkPhysicalDeviceExternalFormatResolveFeaturesANDROID.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalFormatResolveFeaturesANDROID.html)
        @safe
        public struct ExternalFormatResolveFeatures_ANDROID {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDeviceExternalFormatResolveFeaturesANDROID

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDeviceExternalFormatResolveFeaturesANDROID) {
                unsafe self.rawValue = rawValue
            }

            /// The `externalFormatResolve` member of the Vulkan `VkPhysicalDeviceExternalFormatResolveFeaturesANDROID`.
            public var externalFormatResolve: Bool {
                unsafe rawValue.externalFormatResolve != 0
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'PlatformAndroid' trait to be enabled")
        public struct ExternalFormatResolveFeatures_ANDROID {}
    #endif

    #if EnableProvisional
        /// Wrapper around the Vulkan VkPhysicalDeviceCudaKernelLaunchFeaturesNV.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCudaKernelLaunchFeaturesNV.html)
        @safe
        public struct CudaKernelLaunchFeatures_NV {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDeviceCudaKernelLaunchFeaturesNV

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDeviceCudaKernelLaunchFeaturesNV) {
                unsafe self.rawValue = rawValue
            }

            /// The `cudaKernelLaunchFeatures` member of the Vulkan `VkPhysicalDeviceCudaKernelLaunchFeaturesNV`.
            public var cudaKernelLaunchFeatures: Bool {
                unsafe rawValue.cudaKernelLaunchFeatures != 0
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public struct CudaKernelLaunchFeatures_NV {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDeviceSchedulingControlsFeaturesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSchedulingControlsFeaturesARM.html)
    @safe
    public struct SchedulingControlsFeatures_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSchedulingControlsFeaturesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSchedulingControlsFeaturesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `schedulingControls` member of the Vulkan `VkPhysicalDeviceSchedulingControlsFeaturesARM`.
        public var schedulingControls: Bool {
            unsafe rawValue.schedulingControls != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG.html)
    @safe
    public struct RelaxedLineRasterizationFeatures_IMG {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG) {
            unsafe self.rawValue = rawValue
        }

        /// The `relaxedLineRasterization` member of the Vulkan `VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG`.
        public var relaxedLineRasterization: Bool {
            unsafe rawValue.relaxedLineRasterization != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRenderPassStripedFeaturesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRenderPassStripedFeaturesARM.html)
    @safe
    public struct RenderPassStripedFeatures_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRenderPassStripedFeaturesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRenderPassStripedFeaturesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `renderPassStriped` member of the Vulkan `VkPhysicalDeviceRenderPassStripedFeaturesARM`.
        public var renderPassStriped: Bool {
            unsafe rawValue.renderPassStriped != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePipelineOpacityMicromapFeaturesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineOpacityMicromapFeaturesARM.html)
    @safe
    public struct PipelineOpacityMicromapFeatures_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelineOpacityMicromapFeaturesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelineOpacityMicromapFeaturesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelineOpacityMicromap` member of the Vulkan `VkPhysicalDevicePipelineOpacityMicromapFeaturesARM`.
        public var pipelineOpacityMicromap: Bool {
            unsafe rawValue.pipelineOpacityMicromap != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR.html)
    @safe
    public struct ShaderMaximalReconvergenceFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderMaximalReconvergence` member of the Vulkan `VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR`.
        public var shaderMaximalReconvergence: Bool {
            unsafe rawValue.shaderMaximalReconvergence != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderSubgroupRotateFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSubgroupRotateFeatures.html)
    @safe
    public struct ShaderSubgroupRotateFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderSubgroupRotateFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderSubgroupRotateFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderSubgroupRotate` member of the Vulkan `VkPhysicalDeviceShaderSubgroupRotateFeatures`.
        public var shaderSubgroupRotate: Bool {
            unsafe rawValue.shaderSubgroupRotate != 0
        }

        /// The `shaderSubgroupRotateClustered` member of the Vulkan `VkPhysicalDeviceShaderSubgroupRotateFeatures`.
        public var shaderSubgroupRotateClustered: Bool {
            unsafe rawValue.shaderSubgroupRotateClustered != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderExpectAssumeFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderExpectAssumeFeatures.html)
    @safe
    public struct ShaderExpectAssumeFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderExpectAssumeFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderExpectAssumeFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderExpectAssume` member of the Vulkan `VkPhysicalDeviceShaderExpectAssumeFeatures`.
        public var shaderExpectAssume: Bool {
            unsafe rawValue.shaderExpectAssume != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderFloatControls2Features.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderFloatControls2Features.html)
    @safe
    public struct ShaderFloatControls2Features {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderFloatControls2Features

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderFloatControls2Features) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderFloatControls2` member of the Vulkan `VkPhysicalDeviceShaderFloatControls2Features`.
        public var shaderFloatControls2: Bool {
            unsafe rawValue.shaderFloatControls2 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDynamicRenderingLocalReadFeatures.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDynamicRenderingLocalReadFeatures.html)
    @safe
    public struct DynamicRenderingLocalReadFeatures {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDynamicRenderingLocalReadFeatures

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDynamicRenderingLocalReadFeatures) {
            unsafe self.rawValue = rawValue
        }

        /// The `dynamicRenderingLocalRead` member of the Vulkan `VkPhysicalDeviceDynamicRenderingLocalReadFeatures`.
        public var dynamicRenderingLocalRead: Bool {
            unsafe rawValue.dynamicRenderingLocalRead != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderQuadControlFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderQuadControlFeaturesKHR.html)
    @safe
    public struct ShaderQuadControlFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderQuadControlFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderQuadControlFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderQuadControl` member of the Vulkan `VkPhysicalDeviceShaderQuadControlFeaturesKHR`.
        public var shaderQuadControl: Bool {
            unsafe rawValue.shaderQuadControl != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV.html)
    @safe
    public struct ShaderAtomicFloat16VectorFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderFloat16VectorAtomics` member of the Vulkan `VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV`.
        public var shaderFloat16VectorAtomics: Bool {
            unsafe rawValue.shaderFloat16VectorAtomics != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMapMemoryPlacedFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMapMemoryPlacedFeaturesEXT.html)
    @safe
    public struct MapMemoryPlacedFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMapMemoryPlacedFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMapMemoryPlacedFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `memoryMapPlaced` member of the Vulkan `VkPhysicalDeviceMapMemoryPlacedFeaturesEXT`.
        public var memoryMapPlaced: Bool {
            unsafe rawValue.memoryMapPlaced != 0
        }

        /// The `memoryMapRangePlaced` member of the Vulkan `VkPhysicalDeviceMapMemoryPlacedFeaturesEXT`.
        public var memoryMapRangePlaced: Bool {
            unsafe rawValue.memoryMapRangePlaced != 0
        }

        /// The `memoryUnmapReserve` member of the Vulkan `VkPhysicalDeviceMapMemoryPlacedFeaturesEXT`.
        public var memoryUnmapReserve: Bool {
            unsafe rawValue.memoryUnmapReserve != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderBfloat16FeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderBfloat16FeaturesKHR.html)
    @safe
    public struct ShaderBfloat16Features_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderBfloat16FeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderBfloat16FeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderBFloat16Type` member of the Vulkan `VkPhysicalDeviceShaderBfloat16FeaturesKHR`.
        public var shaderBFloat16Type: Bool {
            unsafe rawValue.shaderBFloat16Type != 0
        }

        /// The `shaderBFloat16DotProduct` member of the Vulkan `VkPhysicalDeviceShaderBfloat16FeaturesKHR`.
        public var shaderBFloat16DotProduct: Bool {
            unsafe rawValue.shaderBFloat16DotProduct != 0
        }

        /// The `shaderBFloat16CooperativeMatrix` member of the Vulkan `VkPhysicalDeviceShaderBfloat16FeaturesKHR`.
        public var shaderBFloat16CooperativeMatrix: Bool {
            unsafe rawValue.shaderBFloat16CooperativeMatrix != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRawAccessChainsFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRawAccessChainsFeaturesNV.html)
    @safe
    public struct RawAccessChainsFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRawAccessChainsFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRawAccessChainsFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderRawAccessChains` member of the Vulkan `VkPhysicalDeviceRawAccessChainsFeaturesNV`.
        public var shaderRawAccessChains: Bool {
            unsafe rawValue.shaderRawAccessChains != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCommandBufferInheritanceFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCommandBufferInheritanceFeaturesNV.html)
    @safe
    public struct CommandBufferInheritanceFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCommandBufferInheritanceFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCommandBufferInheritanceFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `commandBufferInheritance` member of the Vulkan `VkPhysicalDeviceCommandBufferInheritanceFeaturesNV`.
        public var commandBufferInheritance: Bool {
            unsafe rawValue.commandBufferInheritance != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageAlignmentControlFeaturesMESA.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageAlignmentControlFeaturesMESA.html)
    @safe
    public struct ImageAlignmentControlFeatures_MESA {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageAlignmentControlFeaturesMESA

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageAlignmentControlFeaturesMESA) {
            unsafe self.rawValue = rawValue
        }

        /// The `imageAlignmentControl` member of the Vulkan `VkPhysicalDeviceImageAlignmentControlFeaturesMESA`.
        public var imageAlignmentControl: Bool {
            unsafe rawValue.imageAlignmentControl != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT.html)
    @safe
    public struct ShaderReplicatedCompositesFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderReplicatedComposites` member of the Vulkan `VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT`.
        public var shaderReplicatedComposites: Bool {
            unsafe rawValue.shaderReplicatedComposites != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT.html)
    @safe
    public struct PresentModeFifoLatestReadyFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `presentModeFifoLatestReady` member of the Vulkan `VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT`.
        public var presentModeFifoLatestReady: Bool {
            unsafe rawValue.presentModeFifoLatestReady != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCooperativeMatrix2FeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrix2FeaturesNV.html)
    @safe
    public struct CooperativeMatrix2Features_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCooperativeMatrix2FeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCooperativeMatrix2FeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `cooperativeMatrixWorkgroupScope` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2FeaturesNV`.
        public var cooperativeMatrixWorkgroupScope: Bool {
            unsafe rawValue.cooperativeMatrixWorkgroupScope != 0
        }

        /// The `cooperativeMatrixFlexibleDimensions` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2FeaturesNV`.
        public var cooperativeMatrixFlexibleDimensions: Bool {
            unsafe rawValue.cooperativeMatrixFlexibleDimensions != 0
        }

        /// The `cooperativeMatrixReductions` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2FeaturesNV`.
        public var cooperativeMatrixReductions: Bool {
            unsafe rawValue.cooperativeMatrixReductions != 0
        }

        /// The `cooperativeMatrixConversions` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2FeaturesNV`.
        public var cooperativeMatrixConversions: Bool {
            unsafe rawValue.cooperativeMatrixConversions != 0
        }

        /// The `cooperativeMatrixPerElementOperations` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2FeaturesNV`.
        public var cooperativeMatrixPerElementOperations: Bool {
            unsafe rawValue.cooperativeMatrixPerElementOperations != 0
        }

        /// The `cooperativeMatrixTensorAddressing` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2FeaturesNV`.
        public var cooperativeMatrixTensorAddressing: Bool {
            unsafe rawValue.cooperativeMatrixTensorAddressing != 0
        }

        /// The `cooperativeMatrixBlockLoads` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2FeaturesNV`.
        public var cooperativeMatrixBlockLoads: Bool {
            unsafe rawValue.cooperativeMatrixBlockLoads != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceHdrVividFeaturesHUAWEI.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceHdrVividFeaturesHUAWEI.html)
    @safe
    public struct HdrVividFeatures_HUAWEI {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceHdrVividFeaturesHUAWEI

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceHdrVividFeaturesHUAWEI) {
            unsafe self.rawValue = rawValue
        }

        /// The `hdrVivid` member of the Vulkan `VkPhysicalDeviceHdrVividFeaturesHUAWEI`.
        public var hdrVivid: Bool {
            unsafe rawValue.hdrVivid != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT.html)
    @safe
    public struct VertexAttributeRobustnessFeatures_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `vertexAttributeRobustness` member of the Vulkan `VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT`.
        public var vertexAttributeRobustness: Bool {
            unsafe rawValue.vertexAttributeRobustness != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDepthClampZeroOneFeaturesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthClampZeroOneFeaturesKHR.html)
    @safe
    public struct DepthClampZeroOneFeatures_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDepthClampZeroOneFeaturesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDepthClampZeroOneFeaturesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `depthClampZeroOne` member of the Vulkan `VkPhysicalDeviceDepthClampZeroOneFeaturesKHR`.
        public var depthClampZeroOne: Bool {
            unsafe rawValue.depthClampZeroOne != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCooperativeVectorFeaturesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeVectorFeaturesNV.html)
    @safe
    public struct CooperativeVectorFeatures_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCooperativeVectorFeaturesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCooperativeVectorFeaturesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `cooperativeVector` member of the Vulkan `VkPhysicalDeviceCooperativeVectorFeaturesNV`.
        public var cooperativeVector: Bool {
            unsafe rawValue.cooperativeVector != 0
        }

        /// The `cooperativeVectorTraining` member of the Vulkan `VkPhysicalDeviceCooperativeVectorFeaturesNV`.
        public var cooperativeVectorTraining: Bool {
            unsafe rawValue.cooperativeVectorTraining != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTileShadingFeaturesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTileShadingFeaturesQCOM.html)
    @safe
    public struct TileShadingFeatures_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTileShadingFeaturesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTileShadingFeaturesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `tileShading` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShading: Bool {
            unsafe rawValue.tileShading != 0
        }

        /// The `tileShadingFragmentStage` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingFragmentStage: Bool {
            unsafe rawValue.tileShadingFragmentStage != 0
        }

        /// The `tileShadingColorAttachments` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingColorAttachments: Bool {
            unsafe rawValue.tileShadingColorAttachments != 0
        }

        /// The `tileShadingDepthAttachments` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingDepthAttachments: Bool {
            unsafe rawValue.tileShadingDepthAttachments != 0
        }

        /// The `tileShadingStencilAttachments` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingStencilAttachments: Bool {
            unsafe rawValue.tileShadingStencilAttachments != 0
        }

        /// The `tileShadingInputAttachments` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingInputAttachments: Bool {
            unsafe rawValue.tileShadingInputAttachments != 0
        }

        /// The `tileShadingSampledAttachments` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingSampledAttachments: Bool {
            unsafe rawValue.tileShadingSampledAttachments != 0
        }

        /// The `tileShadingPerTileDraw` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingPerTileDraw: Bool {
            unsafe rawValue.tileShadingPerTileDraw != 0
        }

        /// The `tileShadingPerTileDispatch` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingPerTileDispatch: Bool {
            unsafe rawValue.tileShadingPerTileDispatch != 0
        }

        /// The `tileShadingDispatchTile` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingDispatchTile: Bool {
            unsafe rawValue.tileShadingDispatchTile != 0
        }

        /// The `tileShadingApron` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingApron: Bool {
            unsafe rawValue.tileShadingApron != 0
        }

        /// The `tileShadingAnisotropicApron` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingAnisotropicApron: Bool {
            unsafe rawValue.tileShadingAnisotropicApron != 0
        }

        /// The `tileShadingAtomicOps` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingAtomicOps: Bool {
            unsafe rawValue.tileShadingAtomicOps != 0
        }

        /// The `tileShadingImageProcessing` member of the Vulkan `VkPhysicalDeviceTileShadingFeaturesQCOM`.
        public var tileShadingImageProcessing: Bool {
            unsafe rawValue.tileShadingImageProcessing != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE.html)
    @safe
    public struct FragmentDensityMapLayeredFeatures_VALVE {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE) {
            unsafe self.rawValue = rawValue
        }

        /// The `fragmentDensityMapLayered` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE`.
        public var fragmentDensityMapLayered: Bool {
            unsafe rawValue.fragmentDensityMapLayered != 0
        }
    }

    #if EnableProvisional
        /// Wrapper around the Vulkan VkPhysicalDevicePresentMeteringFeaturesNV.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePresentMeteringFeaturesNV.html)
        @safe
        public struct PresentMeteringFeatures_NV {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDevicePresentMeteringFeaturesNV

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDevicePresentMeteringFeaturesNV) {
                unsafe self.rawValue = rawValue
            }

            /// The `presentMetering` member of the Vulkan `VkPhysicalDevicePresentMeteringFeaturesNV`.
            public var presentMetering: Bool {
                unsafe rawValue.presentMetering != 0
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public struct PresentMeteringFeatures_NV {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDeviceFormatPackFeaturesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFormatPackFeaturesARM.html)
    @safe
    public struct FormatPackFeatures_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFormatPackFeaturesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFormatPackFeaturesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `formatPack` member of the Vulkan `VkPhysicalDeviceFormatPackFeaturesARM`.
        public var formatPack: Bool {
            unsafe rawValue.formatPack != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTensorFeaturesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTensorFeaturesARM.html)
    @safe
    public struct TensorFeatures_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTensorFeaturesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTensorFeaturesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `tensorNonPacked` member of the Vulkan `VkPhysicalDeviceTensorFeaturesARM`.
        public var tensorNonPacked: Bool {
            unsafe rawValue.tensorNonPacked != 0
        }

        /// The `shaderTensorAccess` member of the Vulkan `VkPhysicalDeviceTensorFeaturesARM`.
        public var shaderTensorAccess: Bool {
            unsafe rawValue.shaderTensorAccess != 0
        }

        /// The `shaderStorageTensorArrayDynamicIndexing` member of the Vulkan `VkPhysicalDeviceTensorFeaturesARM`.
        public var shaderStorageTensorArrayDynamicIndexing: Bool {
            unsafe rawValue.shaderStorageTensorArrayDynamicIndexing != 0
        }

        /// The `shaderStorageTensorArrayNonUniformIndexing` member of the Vulkan `VkPhysicalDeviceTensorFeaturesARM`.
        public var shaderStorageTensorArrayNonUniformIndexing: Bool {
            unsafe rawValue.shaderStorageTensorArrayNonUniformIndexing != 0
        }

        /// The `descriptorBindingStorageTensorUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceTensorFeaturesARM`.
        public var descriptorBindingStorageTensorUpdateAfterBind: Bool {
            unsafe rawValue.descriptorBindingStorageTensorUpdateAfterBind != 0
        }

        /// The `tensors` member of the Vulkan `VkPhysicalDeviceTensorFeaturesARM`.
        public var tensors: Bool {
            unsafe rawValue.tensors != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDescriptorBufferTensorFeaturesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferTensorFeaturesARM.html)
    @safe
    public struct DescriptorBufferTensorFeatures_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDescriptorBufferTensorFeaturesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDescriptorBufferTensorFeaturesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `descriptorBufferTensorDescriptors` member of the Vulkan `VkPhysicalDeviceDescriptorBufferTensorFeaturesARM`.
        public var descriptorBufferTensorDescriptors: Bool {
            unsafe rawValue.descriptorBufferTensorDescriptors != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderFloat8FeaturesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderFloat8FeaturesEXT.html)
    @safe
    public struct ShaderFloat8Features_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderFloat8FeaturesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderFloat8FeaturesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderFloat8` member of the Vulkan `VkPhysicalDeviceShaderFloat8FeaturesEXT`.
        public var shaderFloat8: Bool {
            unsafe rawValue.shaderFloat8 != 0
        }

        /// The `shaderFloat8CooperativeMatrix` member of the Vulkan `VkPhysicalDeviceShaderFloat8FeaturesEXT`.
        public var shaderFloat8CooperativeMatrix: Bool {
            unsafe rawValue.shaderFloat8CooperativeMatrix != 0
        }
    }

    // END_GENERATE_PHYSICAL_DEVICE_FEATURES_EXTENDS
}
