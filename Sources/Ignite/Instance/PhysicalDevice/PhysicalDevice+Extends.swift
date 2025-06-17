/**
 * PhysicalDevice+Extends.swift
 * PhysicalDevice
 *
 * Created by Hunter Baker on 6/15/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

extension PhysicalDevice {
    // BEGIN_GENERATE_PHYSICAL_DEVICE_PROPERTIES_EXTENDS
    // Generated using header version: 318

    /// Wrapper for the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV.
    /// Available with extension VK_NV_device_generated_commands
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV.html)
    public var deviceGeneratedCommandsProperties_NV: DeviceGeneratedCommandsProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV,
            type: VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV.self)
        return unsafe raw != nil ? DeviceGeneratedCommandsProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceClusterAccelerationStructurePropertiesNV.
    /// Available with extension VK_NV_cluster_acceleration_structure
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceClusterAccelerationStructurePropertiesNV.html)
    public var clusterAccelerationStructureProperties_NV: ClusterAccelerationStructureProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_ACCELERATION_STRUCTURE_PROPERTIES_NV,
            type: VkPhysicalDeviceClusterAccelerationStructurePropertiesNV.self)
        return unsafe raw != nil ? ClusterAccelerationStructureProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMultiDrawPropertiesEXT.
    /// Available with extension VK_EXT_multi_draw
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiDrawPropertiesEXT.html)
    public var multiDrawProperties_EXT: MultiDrawProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_PROPERTIES_EXT, type: VkPhysicalDeviceMultiDrawPropertiesEXT.self)
        return unsafe raw != nil ? MultiDrawProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePushDescriptorProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_push_descriptor
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePushDescriptorProperties.html)
    public var pushDescriptorProperties: PushDescriptorProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES, type: VkPhysicalDevicePushDescriptorProperties.self
        )
        return unsafe raw != nil ? PushDescriptorProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDriverProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_driver_properties
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDriverProperties.html)
    public var driverProperties: DriverProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES, type: VkPhysicalDeviceDriverProperties.self)
        return unsafe raw != nil ? DriverProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceIDProperties.
    /// Available with version VulkanGenerate.Version, extension VK_KHR_external_memory_capabilities, extension VK_KHR_external_semaphore_capabilities, or extension VK_KHR_external_fence_capabilities
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceIDProperties.html)
    public var iDProperties: IDProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES, type: VkPhysicalDeviceIDProperties.self)
        return unsafe raw != nil ? IDProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMultiviewProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_multiview
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewProperties.html)
    public var multiviewProperties: MultiviewProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES, type: VkPhysicalDeviceMultiviewProperties.self)
        return unsafe raw != nil ? MultiviewProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDiscardRectanglePropertiesEXT.
    /// Available with extension VK_EXT_discard_rectangles
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDiscardRectanglePropertiesEXT.html)
    public var discardRectangleProperties_EXT: DiscardRectangleProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT,
            type: VkPhysicalDeviceDiscardRectanglePropertiesEXT.self)
        return unsafe raw != nil ? DiscardRectangleProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX.
    /// Available with extension VK_NVX_multiview_per_view_attributes
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX.html)
    public var multiviewPerViewAttributesProperties_NVX: MultiviewPerViewAttributesProperties_NVX? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX,
            type: VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX.self)
        return unsafe raw != nil ? MultiviewPerViewAttributesProperties_NVX(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSubgroupProperties.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubgroupProperties.html)
    public var subgroupProperties: SubgroupProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES, type: VkPhysicalDeviceSubgroupProperties.self)
        return unsafe raw != nil ? SubgroupProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePointClippingProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_maintenance2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePointClippingProperties.html)
    public var pointClippingProperties: PointClippingProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES, type: VkPhysicalDevicePointClippingProperties.self)
        return unsafe raw != nil ? PointClippingProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceProtectedMemoryProperties.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProtectedMemoryProperties.html)
    public var protectedMemoryProperties: ProtectedMemoryProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES,
            type: VkPhysicalDeviceProtectedMemoryProperties.self)
        return unsafe raw != nil ? ProtectedMemoryProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSamplerFilterMinmaxProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_sampler_filter_minmax
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSamplerFilterMinmaxProperties.html)
    public var samplerFilterMinmaxProperties: SamplerFilterMinmaxProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES,
            type: VkPhysicalDeviceSamplerFilterMinmaxProperties.self)
        return unsafe raw != nil ? SamplerFilterMinmaxProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSampleLocationsPropertiesEXT.
    /// Available with extension VK_EXT_sample_locations
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSampleLocationsPropertiesEXT.html)
    public var sampleLocationsProperties_EXT: SampleLocationsProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT,
            type: VkPhysicalDeviceSampleLocationsPropertiesEXT.self)
        return unsafe raw != nil ? SampleLocationsProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT.
    /// Available with extension VK_EXT_blend_operation_advanced
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT.html)
    public var blendOperationAdvancedProperties_EXT: BlendOperationAdvancedProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT,
            type: VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT.self)
        return unsafe raw != nil ? BlendOperationAdvancedProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceInlineUniformBlockProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_inline_uniform_block
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceInlineUniformBlockProperties.html)
    public var inlineUniformBlockProperties: InlineUniformBlockProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES,
            type: VkPhysicalDeviceInlineUniformBlockProperties.self)
        return unsafe raw != nil ? InlineUniformBlockProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance3Properties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_maintenance3
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance3Properties.html)
    public var maintenance3Properties: Maintenance3Properties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES, type: VkPhysicalDeviceMaintenance3Properties.self)
        return unsafe raw != nil ? Maintenance3Properties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance4Properties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_maintenance4
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance4Properties.html)
    public var maintenance4Properties: Maintenance4Properties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES, type: VkPhysicalDeviceMaintenance4Properties.self)
        return unsafe raw != nil ? Maintenance4Properties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance5Properties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_maintenance5
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance5Properties.html)
    public var maintenance5Properties: Maintenance5Properties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_PROPERTIES, type: VkPhysicalDeviceMaintenance5Properties.self)
        return unsafe raw != nil ? Maintenance5Properties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance6Properties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_maintenance6
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance6Properties.html)
    public var maintenance6Properties: Maintenance6Properties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_PROPERTIES, type: VkPhysicalDeviceMaintenance6Properties.self)
        return unsafe raw != nil ? Maintenance6Properties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance7PropertiesKHR.
    /// Available with extension VK_KHR_maintenance7
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance7PropertiesKHR.html)
    public var maintenance7Properties_KHR: Maintenance7Properties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_7_PROPERTIES_KHR,
            type: VkPhysicalDeviceMaintenance7PropertiesKHR.self)
        return unsafe raw != nil ? Maintenance7Properties_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceLayeredApiPropertiesListKHR.
    /// Available with extension VK_KHR_maintenance7
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLayeredApiPropertiesListKHR.html)
    public var layeredApiPropertiesList_KHR: LayeredApiPropertiesList_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_LIST_KHR,
            type: VkPhysicalDeviceLayeredApiPropertiesListKHR.self)
        return unsafe raw != nil ? LayeredApiPropertiesList_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMaintenance9PropertiesKHR.
    /// Available with extension VK_KHR_maintenance9
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance9PropertiesKHR.html)
    public var maintenance9Properties_KHR: Maintenance9Properties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_9_PROPERTIES_KHR,
            type: VkPhysicalDeviceMaintenance9PropertiesKHR.self)
        return unsafe raw != nil ? Maintenance9Properties_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFloatControlsProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_shader_float_controls
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFloatControlsProperties.html)
    public var floatControlsProperties: FloatControlsProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES, type: VkPhysicalDeviceFloatControlsProperties.self)
        return unsafe raw != nil ? FloatControlsProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExternalMemoryHostPropertiesEXT.
    /// Available with extension VK_EXT_external_memory_host
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalMemoryHostPropertiesEXT.html)
    public var externalMemoryHostProperties_EXT: ExternalMemoryHostProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT,
            type: VkPhysicalDeviceExternalMemoryHostPropertiesEXT.self)
        return unsafe raw != nil ? ExternalMemoryHostProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceConservativeRasterizationPropertiesEXT.
    /// Available with extension VK_EXT_conservative_rasterization
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceConservativeRasterizationPropertiesEXT.html)
    public var conservativeRasterizationProperties_EXT: ConservativeRasterizationProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT,
            type: VkPhysicalDeviceConservativeRasterizationPropertiesEXT.self)
        return unsafe raw != nil ? ConservativeRasterizationProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderCorePropertiesAMD.
    /// Available with extension VK_AMD_shader_core_properties
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCorePropertiesAMD.html)
    public var shaderCoreProperties_AMD: ShaderCoreProperties_AMD? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD, type: VkPhysicalDeviceShaderCorePropertiesAMD.self)
        return unsafe raw != nil ? ShaderCoreProperties_AMD(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderCoreProperties2AMD.
    /// Available with extension VK_AMD_shader_core_properties2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCoreProperties2AMD.html)
    public var shaderCoreProperties2_AMD: ShaderCoreProperties2_AMD? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD,
            type: VkPhysicalDeviceShaderCoreProperties2AMD.self)
        return unsafe raw != nil ? ShaderCoreProperties2_AMD(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDescriptorIndexingProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_descriptor_indexing
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorIndexingProperties.html)
    public var descriptorIndexingProperties: DescriptorIndexingProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES,
            type: VkPhysicalDeviceDescriptorIndexingProperties.self)
        return unsafe raw != nil ? DescriptorIndexingProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTimelineSemaphoreProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_timeline_semaphore
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTimelineSemaphoreProperties.html)
    public var timelineSemaphoreProperties: TimelineSemaphoreProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES,
            type: VkPhysicalDeviceTimelineSemaphoreProperties.self)
        return unsafe raw != nil ? TimelineSemaphoreProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT.
    /// Available with extension VK_EXT_vertex_attribute_divisor
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT.html)
    public var vertexAttributeDivisorProperties_EXT: VertexAttributeDivisorProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT,
            type: VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT.self)
        return unsafe raw != nil ? VertexAttributeDivisorProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVertexAttributeDivisorProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_vertex_attribute_divisor
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexAttributeDivisorProperties.html)
    public var vertexAttributeDivisorProperties: VertexAttributeDivisorProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES,
            type: VkPhysicalDeviceVertexAttributeDivisorProperties.self)
        return unsafe raw != nil ? VertexAttributeDivisorProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePCIBusInfoPropertiesEXT.
    /// Available with extension VK_EXT_pci_bus_info
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePCIBusInfoPropertiesEXT.html)
    public var pCIBusInfoProperties_EXT: PCIBusInfoProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT, type: VkPhysicalDevicePCIBusInfoPropertiesEXT.self
        )
        return unsafe raw != nil ? PCIBusInfoProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDepthStencilResolveProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_depth_stencil_resolve
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthStencilResolveProperties.html)
    public var depthStencilResolveProperties: DepthStencilResolveProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES,
            type: VkPhysicalDeviceDepthStencilResolveProperties.self)
        return unsafe raw != nil ? DepthStencilResolveProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTransformFeedbackPropertiesEXT.
    /// Available with extension VK_EXT_transform_feedback
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTransformFeedbackPropertiesEXT.html)
    public var transformFeedbackProperties_EXT: TransformFeedbackProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT,
            type: VkPhysicalDeviceTransformFeedbackPropertiesEXT.self)
        return unsafe raw != nil ? TransformFeedbackProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR.
    /// Available with extension VK_KHR_compute_shader_derivatives
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR.html)
    public var computeShaderDerivativesProperties_KHR: ComputeShaderDerivativesProperties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_PROPERTIES_KHR,
            type: VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR.self)
        return unsafe raw != nil ? ComputeShaderDerivativesProperties_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCopyMemoryIndirectPropertiesNV.
    /// Available with extension VK_NV_copy_memory_indirect
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCopyMemoryIndirectPropertiesNV.html)
    public var copyMemoryIndirectProperties_NV: CopyMemoryIndirectProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_PROPERTIES_NV,
            type: VkPhysicalDeviceCopyMemoryIndirectPropertiesNV.self)
        return unsafe raw != nil ? CopyMemoryIndirectProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMemoryDecompressionPropertiesNV.
    /// Available with extension VK_NV_memory_decompression
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryDecompressionPropertiesNV.html)
    public var memoryDecompressionProperties_NV: MemoryDecompressionProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_PROPERTIES_NV,
            type: VkPhysicalDeviceMemoryDecompressionPropertiesNV.self)
        return unsafe raw != nil ? MemoryDecompressionProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShadingRateImagePropertiesNV.
    /// Available with extension VK_NV_shading_rate_image
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShadingRateImagePropertiesNV.html)
    public var shadingRateImageProperties_NV: ShadingRateImageProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV,
            type: VkPhysicalDeviceShadingRateImagePropertiesNV.self)
        return unsafe raw != nil ? ShadingRateImageProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMeshShaderPropertiesNV.
    /// Available with extension VK_NV_mesh_shader
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMeshShaderPropertiesNV.html)
    public var meshShaderProperties_NV: MeshShaderProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV, type: VkPhysicalDeviceMeshShaderPropertiesNV.self)
        return unsafe raw != nil ? MeshShaderProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMeshShaderPropertiesEXT.
    /// Available with extension VK_EXT_mesh_shader
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMeshShaderPropertiesEXT.html)
    public var meshShaderProperties_EXT: MeshShaderProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT, type: VkPhysicalDeviceMeshShaderPropertiesEXT.self)
        return unsafe raw != nil ? MeshShaderProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceAccelerationStructurePropertiesKHR.
    /// Available with extension VK_KHR_acceleration_structure
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAccelerationStructurePropertiesKHR.html)
    public var accelerationStructureProperties_KHR: AccelerationStructureProperties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_PROPERTIES_KHR,
            type: VkPhysicalDeviceAccelerationStructurePropertiesKHR.self)
        return unsafe raw != nil ? AccelerationStructureProperties_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingPipelinePropertiesKHR.
    /// Available with extension VK_KHR_ray_tracing_pipeline
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingPipelinePropertiesKHR.html)
    public var rayTracingPipelineProperties_KHR: RayTracingPipelineProperties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_PROPERTIES_KHR,
            type: VkPhysicalDeviceRayTracingPipelinePropertiesKHR.self)
        return unsafe raw != nil ? RayTracingPipelineProperties_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingPropertiesNV.
    /// Available with extension VK_NV_ray_tracing
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingPropertiesNV.html)
    public var rayTracingProperties_NV: RayTracingProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV, type: VkPhysicalDeviceRayTracingPropertiesNV.self)
        return unsafe raw != nil ? RayTracingProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentDensityMapPropertiesEXT.
    /// Available with extension VK_EXT_fragment_density_map
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapPropertiesEXT.html)
    public var fragmentDensityMapProperties_EXT: FragmentDensityMapProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT,
            type: VkPhysicalDeviceFragmentDensityMapPropertiesEXT.self)
        return unsafe raw != nil ? FragmentDensityMapProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentDensityMap2PropertiesEXT.
    /// Available with extension VK_EXT_fragment_density_map2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMap2PropertiesEXT.html)
    public var fragmentDensityMap2Properties_EXT: FragmentDensityMap2Properties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT,
            type: VkPhysicalDeviceFragmentDensityMap2PropertiesEXT.self)
        return unsafe raw != nil ? FragmentDensityMap2Properties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT.
    /// Available with extension VK_QCOM_fragment_density_map_offset, or extension VK_EXT_fragment_density_map_offset
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT.html)
    public var fragmentDensityMapOffsetProperties_EXT: FragmentDensityMapOffsetProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_EXT,
            type: VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT.self)
        return unsafe raw != nil ? FragmentDensityMapOffsetProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCooperativeMatrixPropertiesNV.
    /// Available with extension VK_NV_cooperative_matrix
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrixPropertiesNV.html)
    public var cooperativeMatrixProperties_NV: CooperativeMatrixProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV,
            type: VkPhysicalDeviceCooperativeMatrixPropertiesNV.self)
        return unsafe raw != nil ? CooperativeMatrixProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePerformanceQueryPropertiesKHR.
    /// Available with extension VK_KHR_performance_query
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePerformanceQueryPropertiesKHR.html)
    public var performanceQueryProperties_KHR: PerformanceQueryProperties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR,
            type: VkPhysicalDevicePerformanceQueryPropertiesKHR.self)
        return unsafe raw != nil ? PerformanceQueryProperties_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderSMBuiltinsPropertiesNV.
    /// Available with extension VK_NV_shader_sm_builtins
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSMBuiltinsPropertiesNV.html)
    public var shaderSMBuiltinsProperties_NV: ShaderSMBuiltinsProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV,
            type: VkPhysicalDeviceShaderSMBuiltinsPropertiesNV.self)
        return unsafe raw != nil ? ShaderSMBuiltinsProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTexelBufferAlignmentProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_texel_buffer_alignment
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTexelBufferAlignmentProperties.html)
    public var texelBufferAlignmentProperties: TexelBufferAlignmentProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES,
            type: VkPhysicalDeviceTexelBufferAlignmentProperties.self)
        return unsafe raw != nil ? TexelBufferAlignmentProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSubgroupSizeControlProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_subgroup_size_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubgroupSizeControlProperties.html)
    public var subgroupSizeControlProperties: SubgroupSizeControlProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES,
            type: VkPhysicalDeviceSubgroupSizeControlProperties.self)
        return unsafe raw != nil ? SubgroupSizeControlProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceSubpassShadingPropertiesHUAWEI.
    /// Available with extension VK_HUAWEI_subpass_shading
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubpassShadingPropertiesHUAWEI.html)
    public var subpassShadingProperties_HUAWEI: SubpassShadingProperties_HUAWEI? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_PROPERTIES_HUAWEI,
            type: VkPhysicalDeviceSubpassShadingPropertiesHUAWEI.self)
        return unsafe raw != nil ? SubpassShadingProperties_HUAWEI(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI.
    /// Available with extension VK_HUAWEI_cluster_culling_shader
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI.html)
    public var clusterCullingShaderProperties_HUAWEI: ClusterCullingShaderProperties_HUAWEI? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_PROPERTIES_HUAWEI,
            type: VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI.self)
        return unsafe raw != nil ? ClusterCullingShaderProperties_HUAWEI(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceLineRasterizationProperties.
    /// Available with version VulkanGenerate.Version, extension VK_EXT_line_rasterization, or extension VK_KHR_line_rasterization
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLineRasterizationProperties.html)
    public var lineRasterizationProperties: LineRasterizationProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES,
            type: VkPhysicalDeviceLineRasterizationProperties.self)
        return unsafe raw != nil ? LineRasterizationProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVulkan11Properties.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan11Properties.html)
    public var vulkan11Properties: Vulkan11Properties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES, type: VkPhysicalDeviceVulkan11Properties.self)
        return unsafe raw != nil ? Vulkan11Properties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVulkan12Properties.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan12Properties.html)
    public var vulkan12Properties: Vulkan12Properties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES, type: VkPhysicalDeviceVulkan12Properties.self)
        return unsafe raw != nil ? Vulkan12Properties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVulkan13Properties.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan13Properties.html)
    public var vulkan13Properties: Vulkan13Properties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_PROPERTIES, type: VkPhysicalDeviceVulkan13Properties.self)
        return unsafe raw != nil ? Vulkan13Properties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceVulkan14Properties.
    /// Available with version VulkanGenerate.Version
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan14Properties.html)
    public var vulkan14Properties: Vulkan14Properties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_4_PROPERTIES, type: VkPhysicalDeviceVulkan14Properties.self)
        return unsafe raw != nil ? Vulkan14Properties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCustomBorderColorPropertiesEXT.
    /// Available with extension VK_EXT_custom_border_color
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCustomBorderColorPropertiesEXT.html)
    public var customBorderColorProperties_EXT: CustomBorderColorProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT,
            type: VkPhysicalDeviceCustomBorderColorPropertiesEXT.self)
        return unsafe raw != nil ? CustomBorderColorProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExtendedDynamicState3PropertiesEXT.
    /// Available with extension VK_EXT_extended_dynamic_state3
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedDynamicState3PropertiesEXT.html)
    public var extendedDynamicState3Properties_EXT: ExtendedDynamicState3Properties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_PROPERTIES_EXT,
            type: VkPhysicalDeviceExtendedDynamicState3PropertiesEXT.self)
        return unsafe raw != nil ? ExtendedDynamicState3Properties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV.
    /// Available with extension VK_NV_partitioned_acceleration_structure
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV.html)
    public var partitionedAccelerationStructureProperties_NV: PartitionedAccelerationStructureProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PARTITIONED_ACCELERATION_STRUCTURE_PROPERTIES_NV,
            type: VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV.self)
        return unsafe raw != nil ? PartitionedAccelerationStructureProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRobustness2PropertiesKHR.
    /// Available with extension VK_EXT_robustness2, or extension VK_KHR_robustness2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRobustness2PropertiesKHR.html)
    public var robustness2Properties_KHR: Robustness2Properties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_KHR,
            type: VkPhysicalDeviceRobustness2PropertiesKHR.self)
        return unsafe raw != nil ? Robustness2Properties_KHR(rawValue: raw!) : nil
    }

    #if EnableProvisional
        /// Wrapper for the Vulkan VkPhysicalDevicePortabilitySubsetPropertiesKHR.
        /// Available with extension VK_KHR_portability_subset
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePortabilitySubsetPropertiesKHR.html)
        public var portabilitySubsetProperties_KHR: PortabilitySubsetProperties_KHR? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR,
                type: VkPhysicalDevicePortabilitySubsetPropertiesKHR.self)
            return unsafe raw != nil ? PortabilitySubsetProperties_KHR(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public var portabilitySubsetProperties_KHR: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentShadingRatePropertiesKHR.
    /// Available with extension VK_KHR_fragment_shading_rate
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShadingRatePropertiesKHR.html)
    public var fragmentShadingRateProperties_KHR: FragmentShadingRateProperties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_PROPERTIES_KHR,
            type: VkPhysicalDeviceFragmentShadingRatePropertiesKHR.self)
        return unsafe raw != nil ? FragmentShadingRateProperties_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV.
    /// Available with extension VK_NV_fragment_shading_rate_enums
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV.html)
    public var fragmentShadingRateEnumsProperties_NV: FragmentShadingRateEnumsProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_PROPERTIES_NV,
            type: VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV.self)
        return unsafe raw != nil ? FragmentShadingRateEnumsProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT.
    /// Available with extension VK_EXT_legacy_vertex_attributes
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT.html)
    public var legacyVertexAttributesProperties_EXT: LegacyVertexAttributesProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_PROPERTIES_EXT,
            type: VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT.self)
        return unsafe raw != nil ? LegacyVertexAttributesProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT.
    /// Available with extension VK_EXT_device_generated_commands
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT.html)
    public var deviceGeneratedCommandsProperties_EXT: DeviceGeneratedCommandsProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_EXT,
            type: VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT.self)
        return unsafe raw != nil ? DeviceGeneratedCommandsProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceHostImageCopyProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_host_image_copy
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceHostImageCopyProperties.html)
    public var hostImageCopyProperties: HostImageCopyProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_PROPERTIES, type: VkPhysicalDeviceHostImageCopyProperties.self)
        return unsafe raw != nil ? HostImageCopyProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceProvokingVertexPropertiesEXT.
    /// Available with extension VK_EXT_provoking_vertex
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProvokingVertexPropertiesEXT.html)
    public var provokingVertexProperties_EXT: ProvokingVertexProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_PROPERTIES_EXT,
            type: VkPhysicalDeviceProvokingVertexPropertiesEXT.self)
        return unsafe raw != nil ? ProvokingVertexProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDescriptorBufferPropertiesEXT.
    /// Available with extension VK_EXT_descriptor_buffer
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferPropertiesEXT.html)
    public var descriptorBufferProperties_EXT: DescriptorBufferProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT,
            type: VkPhysicalDeviceDescriptorBufferPropertiesEXT.self)
        return unsafe raw != nil ? DescriptorBufferProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT.
    /// Available with extension VK_EXT_descriptor_buffer
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT.html)
    public var descriptorBufferDensityMapProperties_EXT: DescriptorBufferDensityMapProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_DENSITY_MAP_PROPERTIES_EXT,
            type: VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT.self)
        return unsafe raw != nil ? DescriptorBufferDensityMapProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderIntegerDotProductProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_KHR_shader_integer_dot_product
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderIntegerDotProductProperties.html)
    public var shaderIntegerDotProductProperties: ShaderIntegerDotProductProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES,
            type: VkPhysicalDeviceShaderIntegerDotProductProperties.self)
        return unsafe raw != nil ? ShaderIntegerDotProductProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDrmPropertiesEXT.
    /// Available with extension VK_EXT_physical_device_drm
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDrmPropertiesEXT.html)
    public var drmProperties_EXT: DrmProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRM_PROPERTIES_EXT, type: VkPhysicalDeviceDrmPropertiesEXT.self)
        return unsafe raw != nil ? DrmProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR.
    /// Available with extension VK_KHR_fragment_shader_barycentric
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR.html)
    public var fragmentShaderBarycentricProperties_KHR: FragmentShaderBarycentricProperties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_PROPERTIES_KHR,
            type: VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR.self)
        return unsafe raw != nil ? FragmentShaderBarycentricProperties_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDevicePipelineBinaryPropertiesKHR.
    /// Available with extension VK_KHR_pipeline_binary
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineBinaryPropertiesKHR.html)
    public var pipelineBinaryProperties_KHR: PipelineBinaryProperties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_BINARY_PROPERTIES_KHR,
            type: VkPhysicalDevicePipelineBinaryPropertiesKHR.self)
        return unsafe raw != nil ? PipelineBinaryProperties_KHR(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT.
    /// Available with extension VK_EXT_graphics_pipeline_library
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT.html)
    public var graphicsPipelineLibraryProperties_EXT: GraphicsPipelineLibraryProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_PROPERTIES_EXT,
            type: VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT.self)
        return unsafe raw != nil ? GraphicsPipelineLibraryProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceNestedCommandBufferPropertiesEXT.
    /// Available with extension VK_EXT_nested_command_buffer
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceNestedCommandBufferPropertiesEXT.html)
    public var nestedCommandBufferProperties_EXT: NestedCommandBufferProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_PROPERTIES_EXT,
            type: VkPhysicalDeviceNestedCommandBufferPropertiesEXT.self)
        return unsafe raw != nil ? NestedCommandBufferProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT.
    /// Available with extension VK_EXT_shader_module_identifier
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT.html)
    public var shaderModuleIdentifierProperties_EXT: ShaderModuleIdentifierProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_PROPERTIES_EXT,
            type: VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT.self)
        return unsafe raw != nil ? ShaderModuleIdentifierProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceOpacityMicromapPropertiesEXT.
    /// Available with extension VK_EXT_opacity_micromap
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceOpacityMicromapPropertiesEXT.html)
    public var opacityMicromapProperties_EXT: OpacityMicromapProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPACITY_MICROMAP_PROPERTIES_EXT,
            type: VkPhysicalDeviceOpacityMicromapPropertiesEXT.self)
        return unsafe raw != nil ? OpacityMicromapProperties_EXT(rawValue: raw!) : nil
    }

    #if EnableProvisional
        /// Wrapper for the Vulkan VkPhysicalDeviceDisplacementMicromapPropertiesNV.
        /// Available with extension VK_NV_displacement_micromap
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDisplacementMicromapPropertiesNV.html)
        public var displacementMicromapProperties_NV: DisplacementMicromapProperties_NV? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_PROPERTIES_NV,
                type: VkPhysicalDeviceDisplacementMicromapPropertiesNV.self)
            return unsafe raw != nil ? DisplacementMicromapProperties_NV(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public var displacementMicromapProperties_NV: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDevicePipelineRobustnessProperties.
    /// Available with version VulkanGenerate.Version, or extension VK_EXT_pipeline_robustness
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineRobustnessProperties.html)
    public var pipelineRobustnessProperties: PipelineRobustnessProperties? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES,
            type: VkPhysicalDevicePipelineRobustnessProperties.self)
        return unsafe raw != nil ? PipelineRobustnessProperties(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageProcessingPropertiesQCOM.
    /// Available with extension VK_QCOM_image_processing
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageProcessingPropertiesQCOM.html)
    public var imageProcessingProperties_QCOM: ImageProcessingProperties_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_PROPERTIES_QCOM,
            type: VkPhysicalDeviceImageProcessingPropertiesQCOM.self)
        return unsafe raw != nil ? ImageProcessingProperties_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceOpticalFlowPropertiesNV.
    /// Available with extension VK_NV_optical_flow
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceOpticalFlowPropertiesNV.html)
    public var opticalFlowProperties_NV: OpticalFlowProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPTICAL_FLOW_PROPERTIES_NV, type: VkPhysicalDeviceOpticalFlowPropertiesNV.self)
        return unsafe raw != nil ? OpticalFlowProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM.
    /// Available with extension VK_ARM_shader_core_builtins
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM.html)
    public var shaderCoreBuiltinsProperties_ARM: ShaderCoreBuiltinsProperties_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_PROPERTIES_ARM,
            type: VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM.self)
        return unsafe raw != nil ? ShaderCoreBuiltinsProperties_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV.
    /// Available with extension VK_NV_ray_tracing_invocation_reorder
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV.html)
    public var rayTracingInvocationReorderProperties_NV: RayTracingInvocationReorderProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_PROPERTIES_NV,
            type: VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV.self)
        return unsafe raw != nil ? RayTracingInvocationReorderProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV.
    /// Available with extension VK_NV_extended_sparse_address_space
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV.html)
    public var extendedSparseAddressSpaceProperties_NV: ExtendedSparseAddressSpaceProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_PROPERTIES_NV,
            type: VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV.self)
        return unsafe raw != nil ? ExtendedSparseAddressSpaceProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderCorePropertiesARM.
    /// Available with extension VK_ARM_shader_core_properties
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCorePropertiesARM.html)
    public var shaderCoreProperties_ARM: ShaderCoreProperties_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_ARM, type: VkPhysicalDeviceShaderCorePropertiesARM.self)
        return unsafe raw != nil ? ShaderCoreProperties_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderObjectPropertiesEXT.
    /// Available with extension VK_EXT_shader_object
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderObjectPropertiesEXT.html)
    public var shaderObjectProperties_EXT: ShaderObjectProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_OBJECT_PROPERTIES_EXT,
            type: VkPhysicalDeviceShaderObjectPropertiesEXT.self)
        return unsafe raw != nil ? ShaderObjectProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceShaderTileImagePropertiesEXT.
    /// Available with extension VK_EXT_shader_tile_image
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderTileImagePropertiesEXT.html)
    public var shaderTileImageProperties_EXT: ShaderTileImageProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TILE_IMAGE_PROPERTIES_EXT,
            type: VkPhysicalDeviceShaderTileImagePropertiesEXT.self)
        return unsafe raw != nil ? ShaderTileImageProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCooperativeMatrixPropertiesKHR.
    /// Available with extension VK_KHR_cooperative_matrix
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrixPropertiesKHR.html)
    public var cooperativeMatrixProperties_KHR: CooperativeMatrixProperties_KHR? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_KHR,
            type: VkPhysicalDeviceCooperativeMatrixPropertiesKHR.self)
        return unsafe raw != nil ? CooperativeMatrixProperties_KHR(rawValue: raw!) : nil
    }

    #if EnableProvisional
        /// Wrapper for the Vulkan VkPhysicalDeviceShaderEnqueuePropertiesAMDX.
        /// Available with extension VK_AMDX_shader_enqueue
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderEnqueuePropertiesAMDX.html)
        public var shaderEnqueueProperties_AMDX: ShaderEnqueueProperties_AMDX? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ENQUEUE_PROPERTIES_AMDX,
                type: VkPhysicalDeviceShaderEnqueuePropertiesAMDX.self)
            return unsafe raw != nil ? ShaderEnqueueProperties_AMDX(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public var shaderEnqueueProperties_AMDX: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDeviceTileMemoryHeapPropertiesQCOM.
    /// Available with extension VK_QCOM_tile_memory_heap
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTileMemoryHeapPropertiesQCOM.html)
    public var tileMemoryHeapProperties_QCOM: TileMemoryHeapProperties_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_MEMORY_HEAP_PROPERTIES_QCOM,
            type: VkPhysicalDeviceTileMemoryHeapPropertiesQCOM.self)
        return unsafe raw != nil ? TileMemoryHeapProperties_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageProcessing2PropertiesQCOM.
    /// Available with extension VK_QCOM_image_processing2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageProcessing2PropertiesQCOM.html)
    public var imageProcessing2Properties_QCOM: ImageProcessing2Properties_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_2_PROPERTIES_QCOM,
            type: VkPhysicalDeviceImageProcessing2PropertiesQCOM.self)
        return unsafe raw != nil ? ImageProcessing2Properties_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceLayeredDriverPropertiesMSFT.
    /// Available with extension VK_MSFT_layered_driver
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLayeredDriverPropertiesMSFT.html)
    public var layeredDriverProperties_MSFT: LayeredDriverProperties_MSFT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_DRIVER_PROPERTIES_MSFT,
            type: VkPhysicalDeviceLayeredDriverPropertiesMSFT.self)
        return unsafe raw != nil ? LayeredDriverProperties_MSFT(rawValue: raw!) : nil
    }

    #if PlatformAndroid
        /// Wrapper for the Vulkan VkPhysicalDeviceExternalFormatResolvePropertiesANDROID.
        /// Available with extension VK_ANDROID_external_format_resolve
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalFormatResolvePropertiesANDROID.html)
        public var externalFormatResolveProperties_ANDROID: ExternalFormatResolveProperties_ANDROID? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_PROPERTIES_ANDROID,
                type: VkPhysicalDeviceExternalFormatResolvePropertiesANDROID.self)
            return unsafe raw != nil ? ExternalFormatResolveProperties_ANDROID(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'PlatformAndroid' trait to be enabled")
        public var externalFormatResolveProperties_ANDROID: Any { fatalError() }
    #endif

    #if EnableProvisional
        /// Wrapper for the Vulkan VkPhysicalDeviceCudaKernelLaunchPropertiesNV.
        /// Available with extension VK_NV_cuda_kernel_launch
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCudaKernelLaunchPropertiesNV.html)
        public var cudaKernelLaunchProperties_NV: CudaKernelLaunchProperties_NV? {
            let raw = unsafe nextChain.get(
                VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_PROPERTIES_NV,
                type: VkPhysicalDeviceCudaKernelLaunchPropertiesNV.self)
            return unsafe raw != nil ? CudaKernelLaunchProperties_NV(rawValue: raw!) : nil
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public var cudaKernelLaunchProperties_NV: Any { fatalError() }
    #endif

    /// Wrapper for the Vulkan VkPhysicalDeviceSchedulingControlsPropertiesARM.
    /// Available with extension VK_ARM_scheduling_controls
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSchedulingControlsPropertiesARM.html)
    public var schedulingControlsProperties_ARM: SchedulingControlsProperties_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCHEDULING_CONTROLS_PROPERTIES_ARM,
            type: VkPhysicalDeviceSchedulingControlsPropertiesARM.self)
        return unsafe raw != nil ? SchedulingControlsProperties_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceRenderPassStripedPropertiesARM.
    /// Available with extension VK_ARM_render_pass_striped
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRenderPassStripedPropertiesARM.html)
    public var renderPassStripedProperties_ARM: RenderPassStripedProperties_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RENDER_PASS_STRIPED_PROPERTIES_ARM,
            type: VkPhysicalDeviceRenderPassStripedPropertiesARM.self)
        return unsafe raw != nil ? RenderPassStripedProperties_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceMapMemoryPlacedPropertiesEXT.
    /// Available with extension VK_EXT_map_memory_placed
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMapMemoryPlacedPropertiesEXT.html)
    public var mapMemoryPlacedProperties_EXT: MapMemoryPlacedProperties_EXT? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAP_MEMORY_PLACED_PROPERTIES_EXT,
            type: VkPhysicalDeviceMapMemoryPlacedPropertiesEXT.self)
        return unsafe raw != nil ? MapMemoryPlacedProperties_EXT(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceImageAlignmentControlPropertiesMESA.
    /// Available with extension VK_MESA_image_alignment_control
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageAlignmentControlPropertiesMESA.html)
    public var imageAlignmentControlProperties_MESA: ImageAlignmentControlProperties_MESA? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_PROPERTIES_MESA,
            type: VkPhysicalDeviceImageAlignmentControlPropertiesMESA.self)
        return unsafe raw != nil ? ImageAlignmentControlProperties_MESA(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCooperativeMatrix2PropertiesNV.
    /// Available with extension VK_NV_cooperative_matrix2
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrix2PropertiesNV.html)
    public var cooperativeMatrix2Properties_NV: CooperativeMatrix2Properties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_PROPERTIES_NV,
            type: VkPhysicalDeviceCooperativeMatrix2PropertiesNV.self)
        return unsafe raw != nil ? CooperativeMatrix2Properties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceCooperativeVectorPropertiesNV.
    /// Available with extension VK_NV_cooperative_vector
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeVectorPropertiesNV.html)
    public var cooperativeVectorProperties_NV: CooperativeVectorProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_VECTOR_PROPERTIES_NV,
            type: VkPhysicalDeviceCooperativeVectorPropertiesNV.self)
        return unsafe raw != nil ? CooperativeVectorProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTileShadingPropertiesQCOM.
    /// Available with extension VK_QCOM_tile_shading
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTileShadingPropertiesQCOM.html)
    public var tileShadingProperties_QCOM: TileShadingProperties_QCOM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_SHADING_PROPERTIES_QCOM,
            type: VkPhysicalDeviceTileShadingPropertiesQCOM.self)
        return unsafe raw != nil ? TileShadingProperties_QCOM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE.
    /// Available with extension VK_VALVE_fragment_density_map_layered
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE.html)
    public var fragmentDensityMapLayeredProperties_VALVE: FragmentDensityMapLayeredProperties_VALVE? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_LAYERED_PROPERTIES_VALVE,
            type: VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE.self)
        return unsafe raw != nil ? FragmentDensityMapLayeredProperties_VALVE(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceExternalComputeQueuePropertiesNV.
    /// Available with extension VK_NV_external_compute_queue
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalComputeQueuePropertiesNV.html)
    public var externalComputeQueueProperties_NV: ExternalComputeQueueProperties_NV? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_COMPUTE_QUEUE_PROPERTIES_NV,
            type: VkPhysicalDeviceExternalComputeQueuePropertiesNV.self)
        return unsafe raw != nil ? ExternalComputeQueueProperties_NV(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceTensorPropertiesARM.
    /// Available with extension VK_ARM_tensors
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTensorPropertiesARM.html)
    public var tensorProperties_ARM: TensorProperties_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TENSOR_PROPERTIES_ARM, type: VkPhysicalDeviceTensorPropertiesARM.self)
        return unsafe raw != nil ? TensorProperties_ARM(rawValue: raw!) : nil
    }

    /// Wrapper for the Vulkan VkPhysicalDeviceDescriptorBufferTensorPropertiesARM.
    /// Available with extension VK_ARM_tensors
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferTensorPropertiesARM.html)
    public var descriptorBufferTensorProperties_ARM: DescriptorBufferTensorProperties_ARM? {
        let raw = unsafe nextChain.get(
            VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_TENSOR_PROPERTIES_ARM,
            type: VkPhysicalDeviceDescriptorBufferTensorPropertiesARM.self)
        return unsafe raw != nil ? DescriptorBufferTensorProperties_ARM(rawValue: raw!) : nil
    }


    /// Wrapper around the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV.html)
    @safe
    public struct DeviceGeneratedCommandsProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxGraphicsShaderGroupCount` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV`.
        public var maxGraphicsShaderGroupCount: UInt32 {
            unsafe rawValue.maxGraphicsShaderGroupCount
        }

        /// The `maxIndirectSequenceCount` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV`.
        public var maxIndirectSequenceCount: UInt32 {
            unsafe rawValue.maxIndirectSequenceCount
        }

        /// The `maxIndirectCommandsTokenCount` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV`.
        public var maxIndirectCommandsTokenCount: UInt32 {
            unsafe rawValue.maxIndirectCommandsTokenCount
        }

        /// The `maxIndirectCommandsStreamCount` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV`.
        public var maxIndirectCommandsStreamCount: UInt32 {
            unsafe rawValue.maxIndirectCommandsStreamCount
        }

        /// The `maxIndirectCommandsTokenOffset` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV`.
        public var maxIndirectCommandsTokenOffset: UInt32 {
            unsafe rawValue.maxIndirectCommandsTokenOffset
        }

        /// The `maxIndirectCommandsStreamStride` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV`.
        public var maxIndirectCommandsStreamStride: UInt32 {
            unsafe rawValue.maxIndirectCommandsStreamStride
        }

        /// The `minSequencesCountBufferOffsetAlignment` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV`.
        public var minSequencesCountBufferOffsetAlignment: UInt32 {
            unsafe rawValue.minSequencesCountBufferOffsetAlignment
        }

        /// The `minSequencesIndexBufferOffsetAlignment` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV`.
        public var minSequencesIndexBufferOffsetAlignment: UInt32 {
            unsafe rawValue.minSequencesIndexBufferOffsetAlignment
        }

        /// The `minIndirectCommandsBufferOffsetAlignment` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV`.
        public var minIndirectCommandsBufferOffsetAlignment: UInt32 {
            unsafe rawValue.minIndirectCommandsBufferOffsetAlignment
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceClusterAccelerationStructurePropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceClusterAccelerationStructurePropertiesNV.html)
    @safe
    public struct ClusterAccelerationStructureProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceClusterAccelerationStructurePropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceClusterAccelerationStructurePropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxVerticesPerCluster` member of the Vulkan `VkPhysicalDeviceClusterAccelerationStructurePropertiesNV`.
        public var maxVerticesPerCluster: UInt32 {
            unsafe rawValue.maxVerticesPerCluster
        }

        /// The `maxTrianglesPerCluster` member of the Vulkan `VkPhysicalDeviceClusterAccelerationStructurePropertiesNV`.
        public var maxTrianglesPerCluster: UInt32 {
            unsafe rawValue.maxTrianglesPerCluster
        }

        /// The `clusterScratchByteAlignment` member of the Vulkan `VkPhysicalDeviceClusterAccelerationStructurePropertiesNV`.
        public var clusterScratchByteAlignment: UInt32 {
            unsafe rawValue.clusterScratchByteAlignment
        }

        /// The `clusterByteAlignment` member of the Vulkan `VkPhysicalDeviceClusterAccelerationStructurePropertiesNV`.
        public var clusterByteAlignment: UInt32 {
            unsafe rawValue.clusterByteAlignment
        }

        /// The `clusterTemplateByteAlignment` member of the Vulkan `VkPhysicalDeviceClusterAccelerationStructurePropertiesNV`.
        public var clusterTemplateByteAlignment: UInt32 {
            unsafe rawValue.clusterTemplateByteAlignment
        }

        /// The `clusterBottomLevelByteAlignment` member of the Vulkan `VkPhysicalDeviceClusterAccelerationStructurePropertiesNV`.
        public var clusterBottomLevelByteAlignment: UInt32 {
            unsafe rawValue.clusterBottomLevelByteAlignment
        }

        /// The `clusterTemplateBoundsByteAlignment` member of the Vulkan `VkPhysicalDeviceClusterAccelerationStructurePropertiesNV`.
        public var clusterTemplateBoundsByteAlignment: UInt32 {
            unsafe rawValue.clusterTemplateBoundsByteAlignment
        }

        /// The `maxClusterGeometryIndex` member of the Vulkan `VkPhysicalDeviceClusterAccelerationStructurePropertiesNV`.
        public var maxClusterGeometryIndex: UInt32 {
            unsafe rawValue.maxClusterGeometryIndex
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMultiDrawPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiDrawPropertiesEXT.html)
    @safe
    public struct MultiDrawProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMultiDrawPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMultiDrawPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxMultiDrawCount` member of the Vulkan `VkPhysicalDeviceMultiDrawPropertiesEXT`.
        public var maxMultiDrawCount: UInt32 {
            unsafe rawValue.maxMultiDrawCount
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePushDescriptorProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePushDescriptorProperties.html)
    @safe
    public struct PushDescriptorProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePushDescriptorProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePushDescriptorProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxPushDescriptors` member of the Vulkan `VkPhysicalDevicePushDescriptorProperties`.
        public var maxPushDescriptors: UInt32 {
            unsafe rawValue.maxPushDescriptors
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDriverProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDriverProperties.html)
    @safe
    public struct DriverProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDriverProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDriverProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `driverID` member of the Vulkan `VkPhysicalDeviceDriverProperties`.
        public var driverID: DriverId? {
            unsafe DriverId(rawValue: rawValue.driverID.rawValue)
        }

        /// The `driverName` member of the Vulkan `VkPhysicalDeviceDriverProperties`.
        public var driverName:
            (
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar
            )
        {
            unsafe rawValue.driverName
        }

        /// The `driverInfo` member of the Vulkan `VkPhysicalDeviceDriverProperties`.
        public var driverInfo:
            (
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar
            )
        {
            unsafe rawValue.driverInfo
        }

        /// The `conformanceVersion` member of the Vulkan `VkPhysicalDeviceDriverProperties`.
        public var conformanceVersion: VkConformanceVersion {
            unsafe rawValue.conformanceVersion
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceIDProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceIDProperties.html)
    @safe
    public struct IDProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceIDProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceIDProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `deviceUUID` member of the Vulkan `VkPhysicalDeviceIDProperties`.
        public var deviceUUID:
            (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
        {
            unsafe rawValue.deviceUUID
        }

        /// The `driverUUID` member of the Vulkan `VkPhysicalDeviceIDProperties`.
        public var driverUUID:
            (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
        {
            unsafe rawValue.driverUUID
        }

        /// The `deviceLUID` member of the Vulkan `VkPhysicalDeviceIDProperties`.
        public var deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8) {
            unsafe rawValue.deviceLUID
        }

        /// The `deviceNodeMask` member of the Vulkan `VkPhysicalDeviceIDProperties`.
        public var deviceNodeMask: UInt32 {
            unsafe rawValue.deviceNodeMask
        }

        /// The `deviceLUIDValid` member of the Vulkan `VkPhysicalDeviceIDProperties`.
        public var deviceLUIDValid: Bool {
            unsafe rawValue.deviceLUIDValid != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMultiviewProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewProperties.html)
    @safe
    public struct MultiviewProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMultiviewProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMultiviewProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxMultiviewViewCount` member of the Vulkan `VkPhysicalDeviceMultiviewProperties`.
        public var maxMultiviewViewCount: UInt32 {
            unsafe rawValue.maxMultiviewViewCount
        }

        /// The `maxMultiviewInstanceIndex` member of the Vulkan `VkPhysicalDeviceMultiviewProperties`.
        public var maxMultiviewInstanceIndex: UInt32 {
            unsafe rawValue.maxMultiviewInstanceIndex
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDiscardRectanglePropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDiscardRectanglePropertiesEXT.html)
    @safe
    public struct DiscardRectangleProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDiscardRectanglePropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDiscardRectanglePropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxDiscardRectangles` member of the Vulkan `VkPhysicalDeviceDiscardRectanglePropertiesEXT`.
        public var maxDiscardRectangles: UInt32 {
            unsafe rawValue.maxDiscardRectangles
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX.html)
    @safe
    public struct MultiviewPerViewAttributesProperties_NVX {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX) {
            unsafe self.rawValue = rawValue
        }

        /// The `perViewPositionAllComponents` member of the Vulkan `VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX`.
        public var perViewPositionAllComponents: Bool {
            unsafe rawValue.perViewPositionAllComponents != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSubgroupProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubgroupProperties.html)
    @safe
    public struct SubgroupProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSubgroupProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSubgroupProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `subgroupSize` member of the Vulkan `VkPhysicalDeviceSubgroupProperties`.
        public var subgroupSize: UInt32 {
            unsafe rawValue.subgroupSize
        }

        /// The `supportedStages` member of the Vulkan `VkPhysicalDeviceSubgroupProperties`.
        public var supportedStages: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.supportedStages)
        }

        /// The `supportedOperations` member of the Vulkan `VkPhysicalDeviceSubgroupProperties`.
        public var supportedOperations: SubgroupFeatureFlags {
            unsafe SubgroupFeatureFlags(rawValue: rawValue.supportedOperations)
        }

        /// The `quadOperationsInAllStages` member of the Vulkan `VkPhysicalDeviceSubgroupProperties`.
        public var quadOperationsInAllStages: Bool {
            unsafe rawValue.quadOperationsInAllStages != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePointClippingProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePointClippingProperties.html)
    @safe
    public struct PointClippingProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePointClippingProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePointClippingProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `pointClippingBehavior` member of the Vulkan `VkPhysicalDevicePointClippingProperties`.
        public var pointClippingBehavior: PointClippingBehavior? {
            unsafe PointClippingBehavior(rawValue: rawValue.pointClippingBehavior.rawValue)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceProtectedMemoryProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProtectedMemoryProperties.html)
    @safe
    public struct ProtectedMemoryProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceProtectedMemoryProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceProtectedMemoryProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `protectedNoFault` member of the Vulkan `VkPhysicalDeviceProtectedMemoryProperties`.
        public var protectedNoFault: Bool {
            unsafe rawValue.protectedNoFault != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSamplerFilterMinmaxProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSamplerFilterMinmaxProperties.html)
    @safe
    public struct SamplerFilterMinmaxProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSamplerFilterMinmaxProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSamplerFilterMinmaxProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `filterMinmaxSingleComponentFormats` member of the Vulkan `VkPhysicalDeviceSamplerFilterMinmaxProperties`.
        public var filterMinmaxSingleComponentFormats: Bool {
            unsafe rawValue.filterMinmaxSingleComponentFormats != 0
        }

        /// The `filterMinmaxImageComponentMapping` member of the Vulkan `VkPhysicalDeviceSamplerFilterMinmaxProperties`.
        public var filterMinmaxImageComponentMapping: Bool {
            unsafe rawValue.filterMinmaxImageComponentMapping != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSampleLocationsPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSampleLocationsPropertiesEXT.html)
    @safe
    public struct SampleLocationsProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSampleLocationsPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSampleLocationsPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `sampleLocationSampleCounts` member of the Vulkan `VkPhysicalDeviceSampleLocationsPropertiesEXT`.
        public var sampleLocationSampleCounts: SampleCountFlags {
            unsafe SampleCountFlags(rawValue: rawValue.sampleLocationSampleCounts)
        }

        /// The `maxSampleLocationGridSize` member of the Vulkan `VkPhysicalDeviceSampleLocationsPropertiesEXT`.
        public var maxSampleLocationGridSize: VkExtent2D {
            unsafe rawValue.maxSampleLocationGridSize
        }

        /// The `sampleLocationCoordinateRange` member of the Vulkan `VkPhysicalDeviceSampleLocationsPropertiesEXT`.
        public var sampleLocationCoordinateRange: (Float, Float) {
            unsafe rawValue.sampleLocationCoordinateRange
        }

        /// The `sampleLocationSubPixelBits` member of the Vulkan `VkPhysicalDeviceSampleLocationsPropertiesEXT`.
        public var sampleLocationSubPixelBits: UInt32 {
            unsafe rawValue.sampleLocationSubPixelBits
        }

        /// The `variableSampleLocations` member of the Vulkan `VkPhysicalDeviceSampleLocationsPropertiesEXT`.
        public var variableSampleLocations: Bool {
            unsafe rawValue.variableSampleLocations != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT.html)
    @safe
    public struct BlendOperationAdvancedProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `advancedBlendMaxColorAttachments` member of the Vulkan `VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT`.
        public var advancedBlendMaxColorAttachments: UInt32 {
            unsafe rawValue.advancedBlendMaxColorAttachments
        }

        /// The `advancedBlendIndependentBlend` member of the Vulkan `VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT`.
        public var advancedBlendIndependentBlend: Bool {
            unsafe rawValue.advancedBlendIndependentBlend != 0
        }

        /// The `advancedBlendNonPremultipliedSrcColor` member of the Vulkan `VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT`.
        public var advancedBlendNonPremultipliedSrcColor: Bool {
            unsafe rawValue.advancedBlendNonPremultipliedSrcColor != 0
        }

        /// The `advancedBlendNonPremultipliedDstColor` member of the Vulkan `VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT`.
        public var advancedBlendNonPremultipliedDstColor: Bool {
            unsafe rawValue.advancedBlendNonPremultipliedDstColor != 0
        }

        /// The `advancedBlendCorrelatedOverlap` member of the Vulkan `VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT`.
        public var advancedBlendCorrelatedOverlap: Bool {
            unsafe rawValue.advancedBlendCorrelatedOverlap != 0
        }

        /// The `advancedBlendAllOperations` member of the Vulkan `VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT`.
        public var advancedBlendAllOperations: Bool {
            unsafe rawValue.advancedBlendAllOperations != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceInlineUniformBlockProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceInlineUniformBlockProperties.html)
    @safe
    public struct InlineUniformBlockProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceInlineUniformBlockProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceInlineUniformBlockProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxInlineUniformBlockSize` member of the Vulkan `VkPhysicalDeviceInlineUniformBlockProperties`.
        public var maxInlineUniformBlockSize: UInt32 {
            unsafe rawValue.maxInlineUniformBlockSize
        }

        /// The `maxPerStageDescriptorInlineUniformBlocks` member of the Vulkan `VkPhysicalDeviceInlineUniformBlockProperties`.
        public var maxPerStageDescriptorInlineUniformBlocks: UInt32 {
            unsafe rawValue.maxPerStageDescriptorInlineUniformBlocks
        }

        /// The `maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks` member of the Vulkan `VkPhysicalDeviceInlineUniformBlockProperties`.
        public var maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks
        }

        /// The `maxDescriptorSetInlineUniformBlocks` member of the Vulkan `VkPhysicalDeviceInlineUniformBlockProperties`.
        public var maxDescriptorSetInlineUniformBlocks: UInt32 {
            unsafe rawValue.maxDescriptorSetInlineUniformBlocks
        }

        /// The `maxDescriptorSetUpdateAfterBindInlineUniformBlocks` member of the Vulkan `VkPhysicalDeviceInlineUniformBlockProperties`.
        public var maxDescriptorSetUpdateAfterBindInlineUniformBlocks: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindInlineUniformBlocks
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance3Properties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance3Properties.html)
    @safe
    public struct Maintenance3Properties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance3Properties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance3Properties) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxPerSetDescriptors` member of the Vulkan `VkPhysicalDeviceMaintenance3Properties`.
        public var maxPerSetDescriptors: UInt32 {
            unsafe rawValue.maxPerSetDescriptors
        }

        /// The `maxMemoryAllocationSize` member of the Vulkan `VkPhysicalDeviceMaintenance3Properties`.
        public var maxMemoryAllocationSize: VkDeviceSize {
            unsafe rawValue.maxMemoryAllocationSize
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance4Properties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance4Properties.html)
    @safe
    public struct Maintenance4Properties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance4Properties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance4Properties) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxBufferSize` member of the Vulkan `VkPhysicalDeviceMaintenance4Properties`.
        public var maxBufferSize: VkDeviceSize {
            unsafe rawValue.maxBufferSize
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance5Properties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance5Properties.html)
    @safe
    public struct Maintenance5Properties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance5Properties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance5Properties) {
            unsafe self.rawValue = rawValue
        }

        /// The `earlyFragmentMultisampleCoverageAfterSampleCounting` member of the Vulkan `VkPhysicalDeviceMaintenance5Properties`.
        public var earlyFragmentMultisampleCoverageAfterSampleCounting: Bool {
            unsafe rawValue.earlyFragmentMultisampleCoverageAfterSampleCounting != 0
        }

        /// The `earlyFragmentSampleMaskTestBeforeSampleCounting` member of the Vulkan `VkPhysicalDeviceMaintenance5Properties`.
        public var earlyFragmentSampleMaskTestBeforeSampleCounting: Bool {
            unsafe rawValue.earlyFragmentSampleMaskTestBeforeSampleCounting != 0
        }

        /// The `depthStencilSwizzleOneSupport` member of the Vulkan `VkPhysicalDeviceMaintenance5Properties`.
        public var depthStencilSwizzleOneSupport: Bool {
            unsafe rawValue.depthStencilSwizzleOneSupport != 0
        }

        /// The `polygonModePointSize` member of the Vulkan `VkPhysicalDeviceMaintenance5Properties`.
        public var polygonModePointSize: Bool {
            unsafe rawValue.polygonModePointSize != 0
        }

        /// The `nonStrictSinglePixelWideLinesUseParallelogram` member of the Vulkan `VkPhysicalDeviceMaintenance5Properties`.
        public var nonStrictSinglePixelWideLinesUseParallelogram: Bool {
            unsafe rawValue.nonStrictSinglePixelWideLinesUseParallelogram != 0
        }

        /// The `nonStrictWideLinesUseParallelogram` member of the Vulkan `VkPhysicalDeviceMaintenance5Properties`.
        public var nonStrictWideLinesUseParallelogram: Bool {
            unsafe rawValue.nonStrictWideLinesUseParallelogram != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance6Properties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance6Properties.html)
    @safe
    public struct Maintenance6Properties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance6Properties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance6Properties) {
            unsafe self.rawValue = rawValue
        }

        /// The `blockTexelViewCompatibleMultipleLayers` member of the Vulkan `VkPhysicalDeviceMaintenance6Properties`.
        public var blockTexelViewCompatibleMultipleLayers: Bool {
            unsafe rawValue.blockTexelViewCompatibleMultipleLayers != 0
        }

        /// The `maxCombinedImageSamplerDescriptorCount` member of the Vulkan `VkPhysicalDeviceMaintenance6Properties`.
        public var maxCombinedImageSamplerDescriptorCount: UInt32 {
            unsafe rawValue.maxCombinedImageSamplerDescriptorCount
        }

        /// The `fragmentShadingRateClampCombinerInputs` member of the Vulkan `VkPhysicalDeviceMaintenance6Properties`.
        public var fragmentShadingRateClampCombinerInputs: Bool {
            unsafe rawValue.fragmentShadingRateClampCombinerInputs != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance7PropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance7PropertiesKHR.html)
    @safe
    public struct Maintenance7Properties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance7PropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance7PropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `robustFragmentShadingRateAttachmentAccess` member of the Vulkan `VkPhysicalDeviceMaintenance7PropertiesKHR`.
        public var robustFragmentShadingRateAttachmentAccess: Bool {
            unsafe rawValue.robustFragmentShadingRateAttachmentAccess != 0
        }

        /// The `separateDepthStencilAttachmentAccess` member of the Vulkan `VkPhysicalDeviceMaintenance7PropertiesKHR`.
        public var separateDepthStencilAttachmentAccess: Bool {
            unsafe rawValue.separateDepthStencilAttachmentAccess != 0
        }

        /// The `maxDescriptorSetTotalUniformBuffersDynamic` member of the Vulkan `VkPhysicalDeviceMaintenance7PropertiesKHR`.
        public var maxDescriptorSetTotalUniformBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetTotalUniformBuffersDynamic
        }

        /// The `maxDescriptorSetTotalStorageBuffersDynamic` member of the Vulkan `VkPhysicalDeviceMaintenance7PropertiesKHR`.
        public var maxDescriptorSetTotalStorageBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetTotalStorageBuffersDynamic
        }

        /// The `maxDescriptorSetTotalBuffersDynamic` member of the Vulkan `VkPhysicalDeviceMaintenance7PropertiesKHR`.
        public var maxDescriptorSetTotalBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetTotalBuffersDynamic
        }

        /// The `maxDescriptorSetUpdateAfterBindTotalUniformBuffersDynamic` member of the Vulkan `VkPhysicalDeviceMaintenance7PropertiesKHR`.
        public var maxDescriptorSetUpdateAfterBindTotalUniformBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindTotalUniformBuffersDynamic
        }

        /// The `maxDescriptorSetUpdateAfterBindTotalStorageBuffersDynamic` member of the Vulkan `VkPhysicalDeviceMaintenance7PropertiesKHR`.
        public var maxDescriptorSetUpdateAfterBindTotalStorageBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindTotalStorageBuffersDynamic
        }

        /// The `maxDescriptorSetUpdateAfterBindTotalBuffersDynamic` member of the Vulkan `VkPhysicalDeviceMaintenance7PropertiesKHR`.
        public var maxDescriptorSetUpdateAfterBindTotalBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindTotalBuffersDynamic
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceLayeredApiPropertiesListKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLayeredApiPropertiesListKHR.html)
    @safe
    public struct LayeredApiPropertiesList_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceLayeredApiPropertiesListKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceLayeredApiPropertiesListKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `pLayeredApis` member of the Vulkan `VkPhysicalDeviceLayeredApiPropertiesListKHR`.
        public var pLayeredApis: UnsafeBufferPointer<VkPhysicalDeviceLayeredApiPropertiesKHR> {
            unsafe UnsafeBufferPointer(start: rawValue.pLayeredApis, count: Int(rawValue.layeredApiCount))
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMaintenance9PropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMaintenance9PropertiesKHR.html)
    @safe
    public struct Maintenance9Properties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMaintenance9PropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMaintenance9PropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `image2DViewOf3DSparse` member of the Vulkan `VkPhysicalDeviceMaintenance9PropertiesKHR`.
        public var image2DViewOf3DSparse: Bool {
            unsafe rawValue.image2DViewOf3DSparse != 0
        }

        /// The `defaultVertexAttributeValue` member of the Vulkan `VkPhysicalDeviceMaintenance9PropertiesKHR`.
        public var defaultVertexAttributeValue: DefaultVertexAttributeValueKHR? {
            unsafe DefaultVertexAttributeValueKHR(rawValue: rawValue.defaultVertexAttributeValue.rawValue)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFloatControlsProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFloatControlsProperties.html)
    @safe
    public struct FloatControlsProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFloatControlsProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFloatControlsProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `denormBehaviorIndependence` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var denormBehaviorIndependence: ShaderFloatControlsIndependence? {
            unsafe ShaderFloatControlsIndependence(rawValue: rawValue.denormBehaviorIndependence.rawValue)
        }

        /// The `roundingModeIndependence` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var roundingModeIndependence: ShaderFloatControlsIndependence? {
            unsafe ShaderFloatControlsIndependence(rawValue: rawValue.roundingModeIndependence.rawValue)
        }

        /// The `shaderSignedZeroInfNanPreserveFloat16` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderSignedZeroInfNanPreserveFloat16: Bool {
            unsafe rawValue.shaderSignedZeroInfNanPreserveFloat16 != 0
        }

        /// The `shaderSignedZeroInfNanPreserveFloat32` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderSignedZeroInfNanPreserveFloat32: Bool {
            unsafe rawValue.shaderSignedZeroInfNanPreserveFloat32 != 0
        }

        /// The `shaderSignedZeroInfNanPreserveFloat64` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderSignedZeroInfNanPreserveFloat64: Bool {
            unsafe rawValue.shaderSignedZeroInfNanPreserveFloat64 != 0
        }

        /// The `shaderDenormPreserveFloat16` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderDenormPreserveFloat16: Bool {
            unsafe rawValue.shaderDenormPreserveFloat16 != 0
        }

        /// The `shaderDenormPreserveFloat32` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderDenormPreserveFloat32: Bool {
            unsafe rawValue.shaderDenormPreserveFloat32 != 0
        }

        /// The `shaderDenormPreserveFloat64` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderDenormPreserveFloat64: Bool {
            unsafe rawValue.shaderDenormPreserveFloat64 != 0
        }

        /// The `shaderDenormFlushToZeroFloat16` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderDenormFlushToZeroFloat16: Bool {
            unsafe rawValue.shaderDenormFlushToZeroFloat16 != 0
        }

        /// The `shaderDenormFlushToZeroFloat32` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderDenormFlushToZeroFloat32: Bool {
            unsafe rawValue.shaderDenormFlushToZeroFloat32 != 0
        }

        /// The `shaderDenormFlushToZeroFloat64` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderDenormFlushToZeroFloat64: Bool {
            unsafe rawValue.shaderDenormFlushToZeroFloat64 != 0
        }

        /// The `shaderRoundingModeRTEFloat16` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderRoundingModeRTEFloat16: Bool {
            unsafe rawValue.shaderRoundingModeRTEFloat16 != 0
        }

        /// The `shaderRoundingModeRTEFloat32` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderRoundingModeRTEFloat32: Bool {
            unsafe rawValue.shaderRoundingModeRTEFloat32 != 0
        }

        /// The `shaderRoundingModeRTEFloat64` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderRoundingModeRTEFloat64: Bool {
            unsafe rawValue.shaderRoundingModeRTEFloat64 != 0
        }

        /// The `shaderRoundingModeRTZFloat16` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderRoundingModeRTZFloat16: Bool {
            unsafe rawValue.shaderRoundingModeRTZFloat16 != 0
        }

        /// The `shaderRoundingModeRTZFloat32` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderRoundingModeRTZFloat32: Bool {
            unsafe rawValue.shaderRoundingModeRTZFloat32 != 0
        }

        /// The `shaderRoundingModeRTZFloat64` member of the Vulkan `VkPhysicalDeviceFloatControlsProperties`.
        public var shaderRoundingModeRTZFloat64: Bool {
            unsafe rawValue.shaderRoundingModeRTZFloat64 != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExternalMemoryHostPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalMemoryHostPropertiesEXT.html)
    @safe
    public struct ExternalMemoryHostProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExternalMemoryHostPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExternalMemoryHostPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `minImportedHostPointerAlignment` member of the Vulkan `VkPhysicalDeviceExternalMemoryHostPropertiesEXT`.
        public var minImportedHostPointerAlignment: VkDeviceSize {
            unsafe rawValue.minImportedHostPointerAlignment
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceConservativeRasterizationPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceConservativeRasterizationPropertiesEXT.html)
    @safe
    public struct ConservativeRasterizationProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceConservativeRasterizationPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceConservativeRasterizationPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `primitiveOverestimationSize` member of the Vulkan `VkPhysicalDeviceConservativeRasterizationPropertiesEXT`.
        public var primitiveOverestimationSize: Float {
            unsafe rawValue.primitiveOverestimationSize
        }

        /// The `maxExtraPrimitiveOverestimationSize` member of the Vulkan `VkPhysicalDeviceConservativeRasterizationPropertiesEXT`.
        public var maxExtraPrimitiveOverestimationSize: Float {
            unsafe rawValue.maxExtraPrimitiveOverestimationSize
        }

        /// The `extraPrimitiveOverestimationSizeGranularity` member of the Vulkan `VkPhysicalDeviceConservativeRasterizationPropertiesEXT`.
        public var extraPrimitiveOverestimationSizeGranularity: Float {
            unsafe rawValue.extraPrimitiveOverestimationSizeGranularity
        }

        /// The `primitiveUnderestimation` member of the Vulkan `VkPhysicalDeviceConservativeRasterizationPropertiesEXT`.
        public var primitiveUnderestimation: Bool {
            unsafe rawValue.primitiveUnderestimation != 0
        }

        /// The `conservativePointAndLineRasterization` member of the Vulkan `VkPhysicalDeviceConservativeRasterizationPropertiesEXT`.
        public var conservativePointAndLineRasterization: Bool {
            unsafe rawValue.conservativePointAndLineRasterization != 0
        }

        /// The `degenerateTrianglesRasterized` member of the Vulkan `VkPhysicalDeviceConservativeRasterizationPropertiesEXT`.
        public var degenerateTrianglesRasterized: Bool {
            unsafe rawValue.degenerateTrianglesRasterized != 0
        }

        /// The `degenerateLinesRasterized` member of the Vulkan `VkPhysicalDeviceConservativeRasterizationPropertiesEXT`.
        public var degenerateLinesRasterized: Bool {
            unsafe rawValue.degenerateLinesRasterized != 0
        }

        /// The `fullyCoveredFragmentShaderInputVariable` member of the Vulkan `VkPhysicalDeviceConservativeRasterizationPropertiesEXT`.
        public var fullyCoveredFragmentShaderInputVariable: Bool {
            unsafe rawValue.fullyCoveredFragmentShaderInputVariable != 0
        }

        /// The `conservativeRasterizationPostDepthCoverage` member of the Vulkan `VkPhysicalDeviceConservativeRasterizationPropertiesEXT`.
        public var conservativeRasterizationPostDepthCoverage: Bool {
            unsafe rawValue.conservativeRasterizationPostDepthCoverage != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderCorePropertiesAMD.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCorePropertiesAMD.html)
    @safe
    public struct ShaderCoreProperties_AMD {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderCorePropertiesAMD

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderCorePropertiesAMD) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderEngineCount` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var shaderEngineCount: UInt32 {
            unsafe rawValue.shaderEngineCount
        }

        /// The `shaderArraysPerEngineCount` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var shaderArraysPerEngineCount: UInt32 {
            unsafe rawValue.shaderArraysPerEngineCount
        }

        /// The `computeUnitsPerShaderArray` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var computeUnitsPerShaderArray: UInt32 {
            unsafe rawValue.computeUnitsPerShaderArray
        }

        /// The `simdPerComputeUnit` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var simdPerComputeUnit: UInt32 {
            unsafe rawValue.simdPerComputeUnit
        }

        /// The `wavefrontsPerSimd` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var wavefrontsPerSimd: UInt32 {
            unsafe rawValue.wavefrontsPerSimd
        }

        /// The `wavefrontSize` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var wavefrontSize: UInt32 {
            unsafe rawValue.wavefrontSize
        }

        /// The `sgprsPerSimd` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var sgprsPerSimd: UInt32 {
            unsafe rawValue.sgprsPerSimd
        }

        /// The `minSgprAllocation` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var minSgprAllocation: UInt32 {
            unsafe rawValue.minSgprAllocation
        }

        /// The `maxSgprAllocation` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var maxSgprAllocation: UInt32 {
            unsafe rawValue.maxSgprAllocation
        }

        /// The `sgprAllocationGranularity` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var sgprAllocationGranularity: UInt32 {
            unsafe rawValue.sgprAllocationGranularity
        }

        /// The `vgprsPerSimd` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var vgprsPerSimd: UInt32 {
            unsafe rawValue.vgprsPerSimd
        }

        /// The `minVgprAllocation` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var minVgprAllocation: UInt32 {
            unsafe rawValue.minVgprAllocation
        }

        /// The `maxVgprAllocation` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var maxVgprAllocation: UInt32 {
            unsafe rawValue.maxVgprAllocation
        }

        /// The `vgprAllocationGranularity` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesAMD`.
        public var vgprAllocationGranularity: UInt32 {
            unsafe rawValue.vgprAllocationGranularity
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderCoreProperties2AMD.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCoreProperties2AMD.html)
    @safe
    public struct ShaderCoreProperties2_AMD {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderCoreProperties2AMD

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderCoreProperties2AMD) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderCoreFeatures` member of the Vulkan `VkPhysicalDeviceShaderCoreProperties2AMD`.
        public var shaderCoreFeatures: ShaderCorePropertiesFlagsAMD {
            unsafe ShaderCorePropertiesFlagsAMD(rawValue: rawValue.shaderCoreFeatures)
        }

        /// The `activeComputeUnitCount` member of the Vulkan `VkPhysicalDeviceShaderCoreProperties2AMD`.
        public var activeComputeUnitCount: UInt32 {
            unsafe rawValue.activeComputeUnitCount
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDescriptorIndexingProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorIndexingProperties.html)
    @safe
    public struct DescriptorIndexingProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDescriptorIndexingProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDescriptorIndexingProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxUpdateAfterBindDescriptorsInAllPools` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxUpdateAfterBindDescriptorsInAllPools: UInt32 {
            unsafe rawValue.maxUpdateAfterBindDescriptorsInAllPools
        }

        /// The `shaderUniformBufferArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var shaderUniformBufferArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderUniformBufferArrayNonUniformIndexingNative != 0
        }

        /// The `shaderSampledImageArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var shaderSampledImageArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderSampledImageArrayNonUniformIndexingNative != 0
        }

        /// The `shaderStorageBufferArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var shaderStorageBufferArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderStorageBufferArrayNonUniformIndexingNative != 0
        }

        /// The `shaderStorageImageArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var shaderStorageImageArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderStorageImageArrayNonUniformIndexingNative != 0
        }

        /// The `shaderInputAttachmentArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var shaderInputAttachmentArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderInputAttachmentArrayNonUniformIndexingNative != 0
        }

        /// The `robustBufferAccessUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var robustBufferAccessUpdateAfterBind: Bool {
            unsafe rawValue.robustBufferAccessUpdateAfterBind != 0
        }

        /// The `quadDivergentImplicitLod` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var quadDivergentImplicitLod: Bool {
            unsafe rawValue.quadDivergentImplicitLod != 0
        }

        /// The `maxPerStageDescriptorUpdateAfterBindSamplers` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxPerStageDescriptorUpdateAfterBindSamplers: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindSamplers
        }

        /// The `maxPerStageDescriptorUpdateAfterBindUniformBuffers` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxPerStageDescriptorUpdateAfterBindUniformBuffers: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindUniformBuffers
        }

        /// The `maxPerStageDescriptorUpdateAfterBindStorageBuffers` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxPerStageDescriptorUpdateAfterBindStorageBuffers: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindStorageBuffers
        }

        /// The `maxPerStageDescriptorUpdateAfterBindSampledImages` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxPerStageDescriptorUpdateAfterBindSampledImages: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindSampledImages
        }

        /// The `maxPerStageDescriptorUpdateAfterBindStorageImages` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxPerStageDescriptorUpdateAfterBindStorageImages: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindStorageImages
        }

        /// The `maxPerStageDescriptorUpdateAfterBindInputAttachments` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxPerStageDescriptorUpdateAfterBindInputAttachments: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindInputAttachments
        }

        /// The `maxPerStageUpdateAfterBindResources` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxPerStageUpdateAfterBindResources: UInt32 {
            unsafe rawValue.maxPerStageUpdateAfterBindResources
        }

        /// The `maxDescriptorSetUpdateAfterBindSamplers` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxDescriptorSetUpdateAfterBindSamplers: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindSamplers
        }

        /// The `maxDescriptorSetUpdateAfterBindUniformBuffers` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxDescriptorSetUpdateAfterBindUniformBuffers: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindUniformBuffers
        }

        /// The `maxDescriptorSetUpdateAfterBindUniformBuffersDynamic` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxDescriptorSetUpdateAfterBindUniformBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic
        }

        /// The `maxDescriptorSetUpdateAfterBindStorageBuffers` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxDescriptorSetUpdateAfterBindStorageBuffers: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindStorageBuffers
        }

        /// The `maxDescriptorSetUpdateAfterBindStorageBuffersDynamic` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxDescriptorSetUpdateAfterBindStorageBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic
        }

        /// The `maxDescriptorSetUpdateAfterBindSampledImages` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxDescriptorSetUpdateAfterBindSampledImages: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindSampledImages
        }

        /// The `maxDescriptorSetUpdateAfterBindStorageImages` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxDescriptorSetUpdateAfterBindStorageImages: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindStorageImages
        }

        /// The `maxDescriptorSetUpdateAfterBindInputAttachments` member of the Vulkan `VkPhysicalDeviceDescriptorIndexingProperties`.
        public var maxDescriptorSetUpdateAfterBindInputAttachments: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindInputAttachments
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTimelineSemaphoreProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTimelineSemaphoreProperties.html)
    @safe
    public struct TimelineSemaphoreProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTimelineSemaphoreProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTimelineSemaphoreProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxTimelineSemaphoreValueDifference` member of the Vulkan `VkPhysicalDeviceTimelineSemaphoreProperties`.
        public var maxTimelineSemaphoreValueDifference: UInt64 {
            unsafe rawValue.maxTimelineSemaphoreValueDifference
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT.html)
    @safe
    public struct VertexAttributeDivisorProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxVertexAttribDivisor` member of the Vulkan `VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT`.
        public var maxVertexAttribDivisor: UInt32 {
            unsafe rawValue.maxVertexAttribDivisor
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVertexAttributeDivisorProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVertexAttributeDivisorProperties.html)
    @safe
    public struct VertexAttributeDivisorProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVertexAttributeDivisorProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVertexAttributeDivisorProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxVertexAttribDivisor` member of the Vulkan `VkPhysicalDeviceVertexAttributeDivisorProperties`.
        public var maxVertexAttribDivisor: UInt32 {
            unsafe rawValue.maxVertexAttribDivisor
        }

        /// The `supportsNonZeroFirstInstance` member of the Vulkan `VkPhysicalDeviceVertexAttributeDivisorProperties`.
        public var supportsNonZeroFirstInstance: Bool {
            unsafe rawValue.supportsNonZeroFirstInstance != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePCIBusInfoPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePCIBusInfoPropertiesEXT.html)
    @safe
    public struct PCIBusInfoProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePCIBusInfoPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePCIBusInfoPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `pciDomain` member of the Vulkan `VkPhysicalDevicePCIBusInfoPropertiesEXT`.
        public var pciDomain: UInt32 {
            unsafe rawValue.pciDomain
        }

        /// The `pciBus` member of the Vulkan `VkPhysicalDevicePCIBusInfoPropertiesEXT`.
        public var pciBus: UInt32 {
            unsafe rawValue.pciBus
        }

        /// The `pciDevice` member of the Vulkan `VkPhysicalDevicePCIBusInfoPropertiesEXT`.
        public var pciDevice: UInt32 {
            unsafe rawValue.pciDevice
        }

        /// The `pciFunction` member of the Vulkan `VkPhysicalDevicePCIBusInfoPropertiesEXT`.
        public var pciFunction: UInt32 {
            unsafe rawValue.pciFunction
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDepthStencilResolveProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDepthStencilResolveProperties.html)
    @safe
    public struct DepthStencilResolveProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDepthStencilResolveProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDepthStencilResolveProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `supportedDepthResolveModes` member of the Vulkan `VkPhysicalDeviceDepthStencilResolveProperties`.
        public var supportedDepthResolveModes: ResolveModeFlags {
            unsafe ResolveModeFlags(rawValue: rawValue.supportedDepthResolveModes)
        }

        /// The `supportedStencilResolveModes` member of the Vulkan `VkPhysicalDeviceDepthStencilResolveProperties`.
        public var supportedStencilResolveModes: ResolveModeFlags {
            unsafe ResolveModeFlags(rawValue: rawValue.supportedStencilResolveModes)
        }

        /// The `independentResolveNone` member of the Vulkan `VkPhysicalDeviceDepthStencilResolveProperties`.
        public var independentResolveNone: Bool {
            unsafe rawValue.independentResolveNone != 0
        }

        /// The `independentResolve` member of the Vulkan `VkPhysicalDeviceDepthStencilResolveProperties`.
        public var independentResolve: Bool {
            unsafe rawValue.independentResolve != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTransformFeedbackPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTransformFeedbackPropertiesEXT.html)
    @safe
    public struct TransformFeedbackProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTransformFeedbackPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTransformFeedbackPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxTransformFeedbackStreams` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var maxTransformFeedbackStreams: UInt32 {
            unsafe rawValue.maxTransformFeedbackStreams
        }

        /// The `maxTransformFeedbackBuffers` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var maxTransformFeedbackBuffers: UInt32 {
            unsafe rawValue.maxTransformFeedbackBuffers
        }

        /// The `maxTransformFeedbackBufferSize` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var maxTransformFeedbackBufferSize: VkDeviceSize {
            unsafe rawValue.maxTransformFeedbackBufferSize
        }

        /// The `maxTransformFeedbackStreamDataSize` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var maxTransformFeedbackStreamDataSize: UInt32 {
            unsafe rawValue.maxTransformFeedbackStreamDataSize
        }

        /// The `maxTransformFeedbackBufferDataSize` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var maxTransformFeedbackBufferDataSize: UInt32 {
            unsafe rawValue.maxTransformFeedbackBufferDataSize
        }

        /// The `maxTransformFeedbackBufferDataStride` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var maxTransformFeedbackBufferDataStride: UInt32 {
            unsafe rawValue.maxTransformFeedbackBufferDataStride
        }

        /// The `transformFeedbackQueries` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var transformFeedbackQueries: Bool {
            unsafe rawValue.transformFeedbackQueries != 0
        }

        /// The `transformFeedbackStreamsLinesTriangles` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var transformFeedbackStreamsLinesTriangles: Bool {
            unsafe rawValue.transformFeedbackStreamsLinesTriangles != 0
        }

        /// The `transformFeedbackRasterizationStreamSelect` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var transformFeedbackRasterizationStreamSelect: Bool {
            unsafe rawValue.transformFeedbackRasterizationStreamSelect != 0
        }

        /// The `transformFeedbackDraw` member of the Vulkan `VkPhysicalDeviceTransformFeedbackPropertiesEXT`.
        public var transformFeedbackDraw: Bool {
            unsafe rawValue.transformFeedbackDraw != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR.html)
    @safe
    public struct ComputeShaderDerivativesProperties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `meshAndTaskShaderDerivatives` member of the Vulkan `VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR`.
        public var meshAndTaskShaderDerivatives: Bool {
            unsafe rawValue.meshAndTaskShaderDerivatives != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCopyMemoryIndirectPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCopyMemoryIndirectPropertiesNV.html)
    @safe
    public struct CopyMemoryIndirectProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCopyMemoryIndirectPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCopyMemoryIndirectPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `supportedQueues` member of the Vulkan `VkPhysicalDeviceCopyMemoryIndirectPropertiesNV`.
        public var supportedQueues: QueueFlags {
            unsafe QueueFlags(rawValue: rawValue.supportedQueues)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMemoryDecompressionPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMemoryDecompressionPropertiesNV.html)
    @safe
    public struct MemoryDecompressionProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMemoryDecompressionPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMemoryDecompressionPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `decompressionMethods` member of the Vulkan `VkPhysicalDeviceMemoryDecompressionPropertiesNV`.
        public var decompressionMethods: MemoryDecompressionMethodFlagsNV {
            unsafe MemoryDecompressionMethodFlagsNV(rawValue: rawValue.decompressionMethods)
        }

        /// The `maxDecompressionIndirectCount` member of the Vulkan `VkPhysicalDeviceMemoryDecompressionPropertiesNV`.
        public var maxDecompressionIndirectCount: UInt64 {
            unsafe rawValue.maxDecompressionIndirectCount
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShadingRateImagePropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShadingRateImagePropertiesNV.html)
    @safe
    public struct ShadingRateImageProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShadingRateImagePropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShadingRateImagePropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `shadingRateTexelSize` member of the Vulkan `VkPhysicalDeviceShadingRateImagePropertiesNV`.
        public var shadingRateTexelSize: VkExtent2D {
            unsafe rawValue.shadingRateTexelSize
        }

        /// The `shadingRatePaletteSize` member of the Vulkan `VkPhysicalDeviceShadingRateImagePropertiesNV`.
        public var shadingRatePaletteSize: UInt32 {
            unsafe rawValue.shadingRatePaletteSize
        }

        /// The `shadingRateMaxCoarseSamples` member of the Vulkan `VkPhysicalDeviceShadingRateImagePropertiesNV`.
        public var shadingRateMaxCoarseSamples: UInt32 {
            unsafe rawValue.shadingRateMaxCoarseSamples
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMeshShaderPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMeshShaderPropertiesNV.html)
    @safe
    public struct MeshShaderProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMeshShaderPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMeshShaderPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxDrawMeshTasksCount` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxDrawMeshTasksCount: UInt32 {
            unsafe rawValue.maxDrawMeshTasksCount
        }

        /// The `maxTaskWorkGroupInvocations` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxTaskWorkGroupInvocations: UInt32 {
            unsafe rawValue.maxTaskWorkGroupInvocations
        }

        /// The `maxTaskWorkGroupSize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxTaskWorkGroupSize: (UInt32, UInt32, UInt32) {
            unsafe rawValue.maxTaskWorkGroupSize
        }

        /// The `maxTaskTotalMemorySize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxTaskTotalMemorySize: UInt32 {
            unsafe rawValue.maxTaskTotalMemorySize
        }

        /// The `maxTaskOutputCount` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxTaskOutputCount: UInt32 {
            unsafe rawValue.maxTaskOutputCount
        }

        /// The `maxMeshWorkGroupInvocations` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxMeshWorkGroupInvocations: UInt32 {
            unsafe rawValue.maxMeshWorkGroupInvocations
        }

        /// The `maxMeshWorkGroupSize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxMeshWorkGroupSize: (UInt32, UInt32, UInt32) {
            unsafe rawValue.maxMeshWorkGroupSize
        }

        /// The `maxMeshTotalMemorySize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxMeshTotalMemorySize: UInt32 {
            unsafe rawValue.maxMeshTotalMemorySize
        }

        /// The `maxMeshOutputVertices` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxMeshOutputVertices: UInt32 {
            unsafe rawValue.maxMeshOutputVertices
        }

        /// The `maxMeshOutputPrimitives` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxMeshOutputPrimitives: UInt32 {
            unsafe rawValue.maxMeshOutputPrimitives
        }

        /// The `maxMeshMultiviewViewCount` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var maxMeshMultiviewViewCount: UInt32 {
            unsafe rawValue.maxMeshMultiviewViewCount
        }

        /// The `meshOutputPerVertexGranularity` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var meshOutputPerVertexGranularity: UInt32 {
            unsafe rawValue.meshOutputPerVertexGranularity
        }

        /// The `meshOutputPerPrimitiveGranularity` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesNV`.
        public var meshOutputPerPrimitiveGranularity: UInt32 {
            unsafe rawValue.meshOutputPerPrimitiveGranularity
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMeshShaderPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMeshShaderPropertiesEXT.html)
    @safe
    public struct MeshShaderProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMeshShaderPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMeshShaderPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxTaskWorkGroupTotalCount` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxTaskWorkGroupTotalCount: UInt32 {
            unsafe rawValue.maxTaskWorkGroupTotalCount
        }

        /// The `maxTaskWorkGroupCount` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxTaskWorkGroupCount: (UInt32, UInt32, UInt32) {
            unsafe rawValue.maxTaskWorkGroupCount
        }

        /// The `maxTaskWorkGroupInvocations` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxTaskWorkGroupInvocations: UInt32 {
            unsafe rawValue.maxTaskWorkGroupInvocations
        }

        /// The `maxTaskWorkGroupSize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxTaskWorkGroupSize: (UInt32, UInt32, UInt32) {
            unsafe rawValue.maxTaskWorkGroupSize
        }

        /// The `maxTaskPayloadSize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxTaskPayloadSize: UInt32 {
            unsafe rawValue.maxTaskPayloadSize
        }

        /// The `maxTaskSharedMemorySize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxTaskSharedMemorySize: UInt32 {
            unsafe rawValue.maxTaskSharedMemorySize
        }

        /// The `maxTaskPayloadAndSharedMemorySize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxTaskPayloadAndSharedMemorySize: UInt32 {
            unsafe rawValue.maxTaskPayloadAndSharedMemorySize
        }

        /// The `maxMeshWorkGroupTotalCount` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshWorkGroupTotalCount: UInt32 {
            unsafe rawValue.maxMeshWorkGroupTotalCount
        }

        /// The `maxMeshWorkGroupCount` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshWorkGroupCount: (UInt32, UInt32, UInt32) {
            unsafe rawValue.maxMeshWorkGroupCount
        }

        /// The `maxMeshWorkGroupInvocations` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshWorkGroupInvocations: UInt32 {
            unsafe rawValue.maxMeshWorkGroupInvocations
        }

        /// The `maxMeshWorkGroupSize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshWorkGroupSize: (UInt32, UInt32, UInt32) {
            unsafe rawValue.maxMeshWorkGroupSize
        }

        /// The `maxMeshSharedMemorySize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshSharedMemorySize: UInt32 {
            unsafe rawValue.maxMeshSharedMemorySize
        }

        /// The `maxMeshPayloadAndSharedMemorySize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshPayloadAndSharedMemorySize: UInt32 {
            unsafe rawValue.maxMeshPayloadAndSharedMemorySize
        }

        /// The `maxMeshOutputMemorySize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshOutputMemorySize: UInt32 {
            unsafe rawValue.maxMeshOutputMemorySize
        }

        /// The `maxMeshPayloadAndOutputMemorySize` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshPayloadAndOutputMemorySize: UInt32 {
            unsafe rawValue.maxMeshPayloadAndOutputMemorySize
        }

        /// The `maxMeshOutputComponents` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshOutputComponents: UInt32 {
            unsafe rawValue.maxMeshOutputComponents
        }

        /// The `maxMeshOutputVertices` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshOutputVertices: UInt32 {
            unsafe rawValue.maxMeshOutputVertices
        }

        /// The `maxMeshOutputPrimitives` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshOutputPrimitives: UInt32 {
            unsafe rawValue.maxMeshOutputPrimitives
        }

        /// The `maxMeshOutputLayers` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshOutputLayers: UInt32 {
            unsafe rawValue.maxMeshOutputLayers
        }

        /// The `maxMeshMultiviewViewCount` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxMeshMultiviewViewCount: UInt32 {
            unsafe rawValue.maxMeshMultiviewViewCount
        }

        /// The `meshOutputPerVertexGranularity` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var meshOutputPerVertexGranularity: UInt32 {
            unsafe rawValue.meshOutputPerVertexGranularity
        }

        /// The `meshOutputPerPrimitiveGranularity` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var meshOutputPerPrimitiveGranularity: UInt32 {
            unsafe rawValue.meshOutputPerPrimitiveGranularity
        }

        /// The `maxPreferredTaskWorkGroupInvocations` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxPreferredTaskWorkGroupInvocations: UInt32 {
            unsafe rawValue.maxPreferredTaskWorkGroupInvocations
        }

        /// The `maxPreferredMeshWorkGroupInvocations` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var maxPreferredMeshWorkGroupInvocations: UInt32 {
            unsafe rawValue.maxPreferredMeshWorkGroupInvocations
        }

        /// The `prefersLocalInvocationVertexOutput` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var prefersLocalInvocationVertexOutput: Bool {
            unsafe rawValue.prefersLocalInvocationVertexOutput != 0
        }

        /// The `prefersLocalInvocationPrimitiveOutput` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var prefersLocalInvocationPrimitiveOutput: Bool {
            unsafe rawValue.prefersLocalInvocationPrimitiveOutput != 0
        }

        /// The `prefersCompactVertexOutput` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var prefersCompactVertexOutput: Bool {
            unsafe rawValue.prefersCompactVertexOutput != 0
        }

        /// The `prefersCompactPrimitiveOutput` member of the Vulkan `VkPhysicalDeviceMeshShaderPropertiesEXT`.
        public var prefersCompactPrimitiveOutput: Bool {
            unsafe rawValue.prefersCompactPrimitiveOutput != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceAccelerationStructurePropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceAccelerationStructurePropertiesKHR.html)
    @safe
    public struct AccelerationStructureProperties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceAccelerationStructurePropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceAccelerationStructurePropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxGeometryCount` member of the Vulkan `VkPhysicalDeviceAccelerationStructurePropertiesKHR`.
        public var maxGeometryCount: UInt64 {
            unsafe rawValue.maxGeometryCount
        }

        /// The `maxInstanceCount` member of the Vulkan `VkPhysicalDeviceAccelerationStructurePropertiesKHR`.
        public var maxInstanceCount: UInt64 {
            unsafe rawValue.maxInstanceCount
        }

        /// The `maxPrimitiveCount` member of the Vulkan `VkPhysicalDeviceAccelerationStructurePropertiesKHR`.
        public var maxPrimitiveCount: UInt64 {
            unsafe rawValue.maxPrimitiveCount
        }

        /// The `maxPerStageDescriptorAccelerationStructures` member of the Vulkan `VkPhysicalDeviceAccelerationStructurePropertiesKHR`.
        public var maxPerStageDescriptorAccelerationStructures: UInt32 {
            unsafe rawValue.maxPerStageDescriptorAccelerationStructures
        }

        /// The `maxPerStageDescriptorUpdateAfterBindAccelerationStructures` member of the Vulkan `VkPhysicalDeviceAccelerationStructurePropertiesKHR`.
        public var maxPerStageDescriptorUpdateAfterBindAccelerationStructures: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindAccelerationStructures
        }

        /// The `maxDescriptorSetAccelerationStructures` member of the Vulkan `VkPhysicalDeviceAccelerationStructurePropertiesKHR`.
        public var maxDescriptorSetAccelerationStructures: UInt32 {
            unsafe rawValue.maxDescriptorSetAccelerationStructures
        }

        /// The `maxDescriptorSetUpdateAfterBindAccelerationStructures` member of the Vulkan `VkPhysicalDeviceAccelerationStructurePropertiesKHR`.
        public var maxDescriptorSetUpdateAfterBindAccelerationStructures: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindAccelerationStructures
        }

        /// The `minAccelerationStructureScratchOffsetAlignment` member of the Vulkan `VkPhysicalDeviceAccelerationStructurePropertiesKHR`.
        public var minAccelerationStructureScratchOffsetAlignment: UInt32 {
            unsafe rawValue.minAccelerationStructureScratchOffsetAlignment
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingPipelinePropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingPipelinePropertiesKHR.html)
    @safe
    public struct RayTracingPipelineProperties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingPipelinePropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingPipelinePropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderGroupHandleSize` member of the Vulkan `VkPhysicalDeviceRayTracingPipelinePropertiesKHR`.
        public var shaderGroupHandleSize: UInt32 {
            unsafe rawValue.shaderGroupHandleSize
        }

        /// The `maxRayRecursionDepth` member of the Vulkan `VkPhysicalDeviceRayTracingPipelinePropertiesKHR`.
        public var maxRayRecursionDepth: UInt32 {
            unsafe rawValue.maxRayRecursionDepth
        }

        /// The `maxShaderGroupStride` member of the Vulkan `VkPhysicalDeviceRayTracingPipelinePropertiesKHR`.
        public var maxShaderGroupStride: UInt32 {
            unsafe rawValue.maxShaderGroupStride
        }

        /// The `shaderGroupBaseAlignment` member of the Vulkan `VkPhysicalDeviceRayTracingPipelinePropertiesKHR`.
        public var shaderGroupBaseAlignment: UInt32 {
            unsafe rawValue.shaderGroupBaseAlignment
        }

        /// The `shaderGroupHandleCaptureReplaySize` member of the Vulkan `VkPhysicalDeviceRayTracingPipelinePropertiesKHR`.
        public var shaderGroupHandleCaptureReplaySize: UInt32 {
            unsafe rawValue.shaderGroupHandleCaptureReplaySize
        }

        /// The `maxRayDispatchInvocationCount` member of the Vulkan `VkPhysicalDeviceRayTracingPipelinePropertiesKHR`.
        public var maxRayDispatchInvocationCount: UInt32 {
            unsafe rawValue.maxRayDispatchInvocationCount
        }

        /// The `shaderGroupHandleAlignment` member of the Vulkan `VkPhysicalDeviceRayTracingPipelinePropertiesKHR`.
        public var shaderGroupHandleAlignment: UInt32 {
            unsafe rawValue.shaderGroupHandleAlignment
        }

        /// The `maxRayHitAttributeSize` member of the Vulkan `VkPhysicalDeviceRayTracingPipelinePropertiesKHR`.
        public var maxRayHitAttributeSize: UInt32 {
            unsafe rawValue.maxRayHitAttributeSize
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingPropertiesNV.html)
    @safe
    public struct RayTracingProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderGroupHandleSize` member of the Vulkan `VkPhysicalDeviceRayTracingPropertiesNV`.
        public var shaderGroupHandleSize: UInt32 {
            unsafe rawValue.shaderGroupHandleSize
        }

        /// The `maxRecursionDepth` member of the Vulkan `VkPhysicalDeviceRayTracingPropertiesNV`.
        public var maxRecursionDepth: UInt32 {
            unsafe rawValue.maxRecursionDepth
        }

        /// The `maxShaderGroupStride` member of the Vulkan `VkPhysicalDeviceRayTracingPropertiesNV`.
        public var maxShaderGroupStride: UInt32 {
            unsafe rawValue.maxShaderGroupStride
        }

        /// The `shaderGroupBaseAlignment` member of the Vulkan `VkPhysicalDeviceRayTracingPropertiesNV`.
        public var shaderGroupBaseAlignment: UInt32 {
            unsafe rawValue.shaderGroupBaseAlignment
        }

        /// The `maxGeometryCount` member of the Vulkan `VkPhysicalDeviceRayTracingPropertiesNV`.
        public var maxGeometryCount: UInt64 {
            unsafe rawValue.maxGeometryCount
        }

        /// The `maxInstanceCount` member of the Vulkan `VkPhysicalDeviceRayTracingPropertiesNV`.
        public var maxInstanceCount: UInt64 {
            unsafe rawValue.maxInstanceCount
        }

        /// The `maxTriangleCount` member of the Vulkan `VkPhysicalDeviceRayTracingPropertiesNV`.
        public var maxTriangleCount: UInt64 {
            unsafe rawValue.maxTriangleCount
        }

        /// The `maxDescriptorSetAccelerationStructures` member of the Vulkan `VkPhysicalDeviceRayTracingPropertiesNV`.
        public var maxDescriptorSetAccelerationStructures: UInt32 {
            unsafe rawValue.maxDescriptorSetAccelerationStructures
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentDensityMapPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapPropertiesEXT.html)
    @safe
    public struct FragmentDensityMapProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentDensityMapPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentDensityMapPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `minFragmentDensityTexelSize` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapPropertiesEXT`.
        public var minFragmentDensityTexelSize: VkExtent2D {
            unsafe rawValue.minFragmentDensityTexelSize
        }

        /// The `maxFragmentDensityTexelSize` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapPropertiesEXT`.
        public var maxFragmentDensityTexelSize: VkExtent2D {
            unsafe rawValue.maxFragmentDensityTexelSize
        }

        /// The `fragmentDensityInvocations` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapPropertiesEXT`.
        public var fragmentDensityInvocations: Bool {
            unsafe rawValue.fragmentDensityInvocations != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentDensityMap2PropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMap2PropertiesEXT.html)
    @safe
    public struct FragmentDensityMap2Properties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentDensityMap2PropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentDensityMap2PropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `subsampledLoads` member of the Vulkan `VkPhysicalDeviceFragmentDensityMap2PropertiesEXT`.
        public var subsampledLoads: Bool {
            unsafe rawValue.subsampledLoads != 0
        }

        /// The `subsampledCoarseReconstructionEarlyAccess` member of the Vulkan `VkPhysicalDeviceFragmentDensityMap2PropertiesEXT`.
        public var subsampledCoarseReconstructionEarlyAccess: Bool {
            unsafe rawValue.subsampledCoarseReconstructionEarlyAccess != 0
        }

        /// The `maxSubsampledArrayLayers` member of the Vulkan `VkPhysicalDeviceFragmentDensityMap2PropertiesEXT`.
        public var maxSubsampledArrayLayers: UInt32 {
            unsafe rawValue.maxSubsampledArrayLayers
        }

        /// The `maxDescriptorSetSubsampledSamplers` member of the Vulkan `VkPhysicalDeviceFragmentDensityMap2PropertiesEXT`.
        public var maxDescriptorSetSubsampledSamplers: UInt32 {
            unsafe rawValue.maxDescriptorSetSubsampledSamplers
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT.html)
    @safe
    public struct FragmentDensityMapOffsetProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `fragmentDensityOffsetGranularity` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT`.
        public var fragmentDensityOffsetGranularity: VkExtent2D {
            unsafe rawValue.fragmentDensityOffsetGranularity
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCooperativeMatrixPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrixPropertiesNV.html)
    @safe
    public struct CooperativeMatrixProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCooperativeMatrixPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCooperativeMatrixPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `cooperativeMatrixSupportedStages` member of the Vulkan `VkPhysicalDeviceCooperativeMatrixPropertiesNV`.
        public var cooperativeMatrixSupportedStages: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.cooperativeMatrixSupportedStages)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePerformanceQueryPropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePerformanceQueryPropertiesKHR.html)
    @safe
    public struct PerformanceQueryProperties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePerformanceQueryPropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePerformanceQueryPropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `allowCommandBufferQueryCopies` member of the Vulkan `VkPhysicalDevicePerformanceQueryPropertiesKHR`.
        public var allowCommandBufferQueryCopies: Bool {
            unsafe rawValue.allowCommandBufferQueryCopies != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderSMBuiltinsPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderSMBuiltinsPropertiesNV.html)
    @safe
    public struct ShaderSMBuiltinsProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderSMBuiltinsPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderSMBuiltinsPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderSMCount` member of the Vulkan `VkPhysicalDeviceShaderSMBuiltinsPropertiesNV`.
        public var shaderSMCount: UInt32 {
            unsafe rawValue.shaderSMCount
        }

        /// The `shaderWarpsPerSM` member of the Vulkan `VkPhysicalDeviceShaderSMBuiltinsPropertiesNV`.
        public var shaderWarpsPerSM: UInt32 {
            unsafe rawValue.shaderWarpsPerSM
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTexelBufferAlignmentProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTexelBufferAlignmentProperties.html)
    @safe
    public struct TexelBufferAlignmentProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTexelBufferAlignmentProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTexelBufferAlignmentProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `storageTexelBufferOffsetAlignmentBytes` member of the Vulkan `VkPhysicalDeviceTexelBufferAlignmentProperties`.
        public var storageTexelBufferOffsetAlignmentBytes: VkDeviceSize {
            unsafe rawValue.storageTexelBufferOffsetAlignmentBytes
        }

        /// The `storageTexelBufferOffsetSingleTexelAlignment` member of the Vulkan `VkPhysicalDeviceTexelBufferAlignmentProperties`.
        public var storageTexelBufferOffsetSingleTexelAlignment: Bool {
            unsafe rawValue.storageTexelBufferOffsetSingleTexelAlignment != 0
        }

        /// The `uniformTexelBufferOffsetAlignmentBytes` member of the Vulkan `VkPhysicalDeviceTexelBufferAlignmentProperties`.
        public var uniformTexelBufferOffsetAlignmentBytes: VkDeviceSize {
            unsafe rawValue.uniformTexelBufferOffsetAlignmentBytes
        }

        /// The `uniformTexelBufferOffsetSingleTexelAlignment` member of the Vulkan `VkPhysicalDeviceTexelBufferAlignmentProperties`.
        public var uniformTexelBufferOffsetSingleTexelAlignment: Bool {
            unsafe rawValue.uniformTexelBufferOffsetSingleTexelAlignment != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSubgroupSizeControlProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubgroupSizeControlProperties.html)
    @safe
    public struct SubgroupSizeControlProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSubgroupSizeControlProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSubgroupSizeControlProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `minSubgroupSize` member of the Vulkan `VkPhysicalDeviceSubgroupSizeControlProperties`.
        public var minSubgroupSize: UInt32 {
            unsafe rawValue.minSubgroupSize
        }

        /// The `maxSubgroupSize` member of the Vulkan `VkPhysicalDeviceSubgroupSizeControlProperties`.
        public var maxSubgroupSize: UInt32 {
            unsafe rawValue.maxSubgroupSize
        }

        /// The `maxComputeWorkgroupSubgroups` member of the Vulkan `VkPhysicalDeviceSubgroupSizeControlProperties`.
        public var maxComputeWorkgroupSubgroups: UInt32 {
            unsafe rawValue.maxComputeWorkgroupSubgroups
        }

        /// The `requiredSubgroupSizeStages` member of the Vulkan `VkPhysicalDeviceSubgroupSizeControlProperties`.
        public var requiredSubgroupSizeStages: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.requiredSubgroupSizeStages)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceSubpassShadingPropertiesHUAWEI.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSubpassShadingPropertiesHUAWEI.html)
    @safe
    public struct SubpassShadingProperties_HUAWEI {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSubpassShadingPropertiesHUAWEI

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSubpassShadingPropertiesHUAWEI) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxSubpassShadingWorkgroupSizeAspectRatio` member of the Vulkan `VkPhysicalDeviceSubpassShadingPropertiesHUAWEI`.
        public var maxSubpassShadingWorkgroupSizeAspectRatio: UInt32 {
            unsafe rawValue.maxSubpassShadingWorkgroupSizeAspectRatio
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI.html)
    @safe
    public struct ClusterCullingShaderProperties_HUAWEI {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxWorkGroupCount` member of the Vulkan `VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI`.
        public var maxWorkGroupCount: (UInt32, UInt32, UInt32) {
            unsafe rawValue.maxWorkGroupCount
        }

        /// The `maxWorkGroupSize` member of the Vulkan `VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI`.
        public var maxWorkGroupSize: (UInt32, UInt32, UInt32) {
            unsafe rawValue.maxWorkGroupSize
        }

        /// The `maxOutputClusterCount` member of the Vulkan `VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI`.
        public var maxOutputClusterCount: UInt32 {
            unsafe rawValue.maxOutputClusterCount
        }

        /// The `indirectBufferOffsetAlignment` member of the Vulkan `VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI`.
        public var indirectBufferOffsetAlignment: VkDeviceSize {
            unsafe rawValue.indirectBufferOffsetAlignment
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceLineRasterizationProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLineRasterizationProperties.html)
    @safe
    public struct LineRasterizationProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceLineRasterizationProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceLineRasterizationProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `lineSubPixelPrecisionBits` member of the Vulkan `VkPhysicalDeviceLineRasterizationProperties`.
        public var lineSubPixelPrecisionBits: UInt32 {
            unsafe rawValue.lineSubPixelPrecisionBits
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVulkan11Properties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan11Properties.html)
    @safe
    public struct Vulkan11Properties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVulkan11Properties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVulkan11Properties) {
            unsafe self.rawValue = rawValue
        }

        /// The `deviceUUID` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var deviceUUID:
            (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
        {
            unsafe rawValue.deviceUUID
        }

        /// The `driverUUID` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var driverUUID:
            (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
        {
            unsafe rawValue.driverUUID
        }

        /// The `deviceLUID` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8) {
            unsafe rawValue.deviceLUID
        }

        /// The `deviceNodeMask` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var deviceNodeMask: UInt32 {
            unsafe rawValue.deviceNodeMask
        }

        /// The `deviceLUIDValid` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var deviceLUIDValid: Bool {
            unsafe rawValue.deviceLUIDValid != 0
        }

        /// The `subgroupSize` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var subgroupSize: UInt32 {
            unsafe rawValue.subgroupSize
        }

        /// The `subgroupSupportedStages` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var subgroupSupportedStages: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.subgroupSupportedStages)
        }

        /// The `subgroupSupportedOperations` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var subgroupSupportedOperations: SubgroupFeatureFlags {
            unsafe SubgroupFeatureFlags(rawValue: rawValue.subgroupSupportedOperations)
        }

        /// The `subgroupQuadOperationsInAllStages` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var subgroupQuadOperationsInAllStages: Bool {
            unsafe rawValue.subgroupQuadOperationsInAllStages != 0
        }

        /// The `pointClippingBehavior` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var pointClippingBehavior: PointClippingBehavior? {
            unsafe PointClippingBehavior(rawValue: rawValue.pointClippingBehavior.rawValue)
        }

        /// The `maxMultiviewViewCount` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var maxMultiviewViewCount: UInt32 {
            unsafe rawValue.maxMultiviewViewCount
        }

        /// The `maxMultiviewInstanceIndex` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var maxMultiviewInstanceIndex: UInt32 {
            unsafe rawValue.maxMultiviewInstanceIndex
        }

        /// The `protectedNoFault` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var protectedNoFault: Bool {
            unsafe rawValue.protectedNoFault != 0
        }

        /// The `maxPerSetDescriptors` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var maxPerSetDescriptors: UInt32 {
            unsafe rawValue.maxPerSetDescriptors
        }

        /// The `maxMemoryAllocationSize` member of the Vulkan `VkPhysicalDeviceVulkan11Properties`.
        public var maxMemoryAllocationSize: VkDeviceSize {
            unsafe rawValue.maxMemoryAllocationSize
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVulkan12Properties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan12Properties.html)
    @safe
    public struct Vulkan12Properties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVulkan12Properties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVulkan12Properties) {
            unsafe self.rawValue = rawValue
        }

        /// The `driverID` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var driverID: DriverId? {
            unsafe DriverId(rawValue: rawValue.driverID.rawValue)
        }

        /// The `driverName` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var driverName:
            (
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar
            )
        {
            unsafe rawValue.driverName
        }

        /// The `driverInfo` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var driverInfo:
            (
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar,
                CChar
            )
        {
            unsafe rawValue.driverInfo
        }

        /// The `conformanceVersion` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var conformanceVersion: VkConformanceVersion {
            unsafe rawValue.conformanceVersion
        }

        /// The `denormBehaviorIndependence` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var denormBehaviorIndependence: ShaderFloatControlsIndependence? {
            unsafe ShaderFloatControlsIndependence(rawValue: rawValue.denormBehaviorIndependence.rawValue)
        }

        /// The `roundingModeIndependence` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var roundingModeIndependence: ShaderFloatControlsIndependence? {
            unsafe ShaderFloatControlsIndependence(rawValue: rawValue.roundingModeIndependence.rawValue)
        }

        /// The `shaderSignedZeroInfNanPreserveFloat16` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderSignedZeroInfNanPreserveFloat16: Bool {
            unsafe rawValue.shaderSignedZeroInfNanPreserveFloat16 != 0
        }

        /// The `shaderSignedZeroInfNanPreserveFloat32` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderSignedZeroInfNanPreserveFloat32: Bool {
            unsafe rawValue.shaderSignedZeroInfNanPreserveFloat32 != 0
        }

        /// The `shaderSignedZeroInfNanPreserveFloat64` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderSignedZeroInfNanPreserveFloat64: Bool {
            unsafe rawValue.shaderSignedZeroInfNanPreserveFloat64 != 0
        }

        /// The `shaderDenormPreserveFloat16` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderDenormPreserveFloat16: Bool {
            unsafe rawValue.shaderDenormPreserveFloat16 != 0
        }

        /// The `shaderDenormPreserveFloat32` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderDenormPreserveFloat32: Bool {
            unsafe rawValue.shaderDenormPreserveFloat32 != 0
        }

        /// The `shaderDenormPreserveFloat64` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderDenormPreserveFloat64: Bool {
            unsafe rawValue.shaderDenormPreserveFloat64 != 0
        }

        /// The `shaderDenormFlushToZeroFloat16` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderDenormFlushToZeroFloat16: Bool {
            unsafe rawValue.shaderDenormFlushToZeroFloat16 != 0
        }

        /// The `shaderDenormFlushToZeroFloat32` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderDenormFlushToZeroFloat32: Bool {
            unsafe rawValue.shaderDenormFlushToZeroFloat32 != 0
        }

        /// The `shaderDenormFlushToZeroFloat64` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderDenormFlushToZeroFloat64: Bool {
            unsafe rawValue.shaderDenormFlushToZeroFloat64 != 0
        }

        /// The `shaderRoundingModeRTEFloat16` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderRoundingModeRTEFloat16: Bool {
            unsafe rawValue.shaderRoundingModeRTEFloat16 != 0
        }

        /// The `shaderRoundingModeRTEFloat32` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderRoundingModeRTEFloat32: Bool {
            unsafe rawValue.shaderRoundingModeRTEFloat32 != 0
        }

        /// The `shaderRoundingModeRTEFloat64` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderRoundingModeRTEFloat64: Bool {
            unsafe rawValue.shaderRoundingModeRTEFloat64 != 0
        }

        /// The `shaderRoundingModeRTZFloat16` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderRoundingModeRTZFloat16: Bool {
            unsafe rawValue.shaderRoundingModeRTZFloat16 != 0
        }

        /// The `shaderRoundingModeRTZFloat32` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderRoundingModeRTZFloat32: Bool {
            unsafe rawValue.shaderRoundingModeRTZFloat32 != 0
        }

        /// The `shaderRoundingModeRTZFloat64` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderRoundingModeRTZFloat64: Bool {
            unsafe rawValue.shaderRoundingModeRTZFloat64 != 0
        }

        /// The `maxUpdateAfterBindDescriptorsInAllPools` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxUpdateAfterBindDescriptorsInAllPools: UInt32 {
            unsafe rawValue.maxUpdateAfterBindDescriptorsInAllPools
        }

        /// The `shaderUniformBufferArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderUniformBufferArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderUniformBufferArrayNonUniformIndexingNative != 0
        }

        /// The `shaderSampledImageArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderSampledImageArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderSampledImageArrayNonUniformIndexingNative != 0
        }

        /// The `shaderStorageBufferArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderStorageBufferArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderStorageBufferArrayNonUniformIndexingNative != 0
        }

        /// The `shaderStorageImageArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderStorageImageArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderStorageImageArrayNonUniformIndexingNative != 0
        }

        /// The `shaderInputAttachmentArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var shaderInputAttachmentArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderInputAttachmentArrayNonUniformIndexingNative != 0
        }

        /// The `robustBufferAccessUpdateAfterBind` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var robustBufferAccessUpdateAfterBind: Bool {
            unsafe rawValue.robustBufferAccessUpdateAfterBind != 0
        }

        /// The `quadDivergentImplicitLod` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var quadDivergentImplicitLod: Bool {
            unsafe rawValue.quadDivergentImplicitLod != 0
        }

        /// The `maxPerStageDescriptorUpdateAfterBindSamplers` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxPerStageDescriptorUpdateAfterBindSamplers: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindSamplers
        }

        /// The `maxPerStageDescriptorUpdateAfterBindUniformBuffers` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxPerStageDescriptorUpdateAfterBindUniformBuffers: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindUniformBuffers
        }

        /// The `maxPerStageDescriptorUpdateAfterBindStorageBuffers` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxPerStageDescriptorUpdateAfterBindStorageBuffers: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindStorageBuffers
        }

        /// The `maxPerStageDescriptorUpdateAfterBindSampledImages` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxPerStageDescriptorUpdateAfterBindSampledImages: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindSampledImages
        }

        /// The `maxPerStageDescriptorUpdateAfterBindStorageImages` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxPerStageDescriptorUpdateAfterBindStorageImages: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindStorageImages
        }

        /// The `maxPerStageDescriptorUpdateAfterBindInputAttachments` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxPerStageDescriptorUpdateAfterBindInputAttachments: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindInputAttachments
        }

        /// The `maxPerStageUpdateAfterBindResources` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxPerStageUpdateAfterBindResources: UInt32 {
            unsafe rawValue.maxPerStageUpdateAfterBindResources
        }

        /// The `maxDescriptorSetUpdateAfterBindSamplers` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxDescriptorSetUpdateAfterBindSamplers: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindSamplers
        }

        /// The `maxDescriptorSetUpdateAfterBindUniformBuffers` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxDescriptorSetUpdateAfterBindUniformBuffers: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindUniformBuffers
        }

        /// The `maxDescriptorSetUpdateAfterBindUniformBuffersDynamic` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxDescriptorSetUpdateAfterBindUniformBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic
        }

        /// The `maxDescriptorSetUpdateAfterBindStorageBuffers` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxDescriptorSetUpdateAfterBindStorageBuffers: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindStorageBuffers
        }

        /// The `maxDescriptorSetUpdateAfterBindStorageBuffersDynamic` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxDescriptorSetUpdateAfterBindStorageBuffersDynamic: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic
        }

        /// The `maxDescriptorSetUpdateAfterBindSampledImages` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxDescriptorSetUpdateAfterBindSampledImages: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindSampledImages
        }

        /// The `maxDescriptorSetUpdateAfterBindStorageImages` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxDescriptorSetUpdateAfterBindStorageImages: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindStorageImages
        }

        /// The `maxDescriptorSetUpdateAfterBindInputAttachments` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxDescriptorSetUpdateAfterBindInputAttachments: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindInputAttachments
        }

        /// The `supportedDepthResolveModes` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var supportedDepthResolveModes: ResolveModeFlags {
            unsafe ResolveModeFlags(rawValue: rawValue.supportedDepthResolveModes)
        }

        /// The `supportedStencilResolveModes` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var supportedStencilResolveModes: ResolveModeFlags {
            unsafe ResolveModeFlags(rawValue: rawValue.supportedStencilResolveModes)
        }

        /// The `independentResolveNone` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var independentResolveNone: Bool {
            unsafe rawValue.independentResolveNone != 0
        }

        /// The `independentResolve` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var independentResolve: Bool {
            unsafe rawValue.independentResolve != 0
        }

        /// The `filterMinmaxSingleComponentFormats` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var filterMinmaxSingleComponentFormats: Bool {
            unsafe rawValue.filterMinmaxSingleComponentFormats != 0
        }

        /// The `filterMinmaxImageComponentMapping` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var filterMinmaxImageComponentMapping: Bool {
            unsafe rawValue.filterMinmaxImageComponentMapping != 0
        }

        /// The `maxTimelineSemaphoreValueDifference` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var maxTimelineSemaphoreValueDifference: UInt64 {
            unsafe rawValue.maxTimelineSemaphoreValueDifference
        }

        /// The `framebufferIntegerColorSampleCounts` member of the Vulkan `VkPhysicalDeviceVulkan12Properties`.
        public var framebufferIntegerColorSampleCounts: SampleCountFlags {
            unsafe SampleCountFlags(rawValue: rawValue.framebufferIntegerColorSampleCounts)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVulkan13Properties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan13Properties.html)
    @safe
    public struct Vulkan13Properties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVulkan13Properties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVulkan13Properties) {
            unsafe self.rawValue = rawValue
        }

        /// The `minSubgroupSize` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var minSubgroupSize: UInt32 {
            unsafe rawValue.minSubgroupSize
        }

        /// The `maxSubgroupSize` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var maxSubgroupSize: UInt32 {
            unsafe rawValue.maxSubgroupSize
        }

        /// The `maxComputeWorkgroupSubgroups` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var maxComputeWorkgroupSubgroups: UInt32 {
            unsafe rawValue.maxComputeWorkgroupSubgroups
        }

        /// The `requiredSubgroupSizeStages` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var requiredSubgroupSizeStages: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.requiredSubgroupSizeStages)
        }

        /// The `maxInlineUniformBlockSize` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var maxInlineUniformBlockSize: UInt32 {
            unsafe rawValue.maxInlineUniformBlockSize
        }

        /// The `maxPerStageDescriptorInlineUniformBlocks` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var maxPerStageDescriptorInlineUniformBlocks: UInt32 {
            unsafe rawValue.maxPerStageDescriptorInlineUniformBlocks
        }

        /// The `maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks
        }

        /// The `maxDescriptorSetInlineUniformBlocks` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var maxDescriptorSetInlineUniformBlocks: UInt32 {
            unsafe rawValue.maxDescriptorSetInlineUniformBlocks
        }

        /// The `maxDescriptorSetUpdateAfterBindInlineUniformBlocks` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var maxDescriptorSetUpdateAfterBindInlineUniformBlocks: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindInlineUniformBlocks
        }

        /// The `maxInlineUniformTotalSize` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var maxInlineUniformTotalSize: UInt32 {
            unsafe rawValue.maxInlineUniformTotalSize
        }

        /// The `integerDotProduct8BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct8BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct8BitUnsignedAccelerated != 0
        }

        /// The `integerDotProduct8BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct8BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct8BitSignedAccelerated != 0
        }

        /// The `integerDotProduct8BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct8BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct8BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProduct4x8BitPackedUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct4x8BitPackedUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct4x8BitPackedUnsignedAccelerated != 0
        }

        /// The `integerDotProduct4x8BitPackedSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct4x8BitPackedSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct4x8BitPackedSignedAccelerated != 0
        }

        /// The `integerDotProduct4x8BitPackedMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct4x8BitPackedMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct4x8BitPackedMixedSignednessAccelerated != 0
        }

        /// The `integerDotProduct16BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct16BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct16BitUnsignedAccelerated != 0
        }

        /// The `integerDotProduct16BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct16BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct16BitSignedAccelerated != 0
        }

        /// The `integerDotProduct16BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct16BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct16BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProduct32BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct32BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct32BitUnsignedAccelerated != 0
        }

        /// The `integerDotProduct32BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct32BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct32BitSignedAccelerated != 0
        }

        /// The `integerDotProduct32BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct32BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct32BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProduct64BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct64BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct64BitUnsignedAccelerated != 0
        }

        /// The `integerDotProduct64BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct64BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct64BitSignedAccelerated != 0
        }

        /// The `integerDotProduct64BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProduct64BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct64BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating8BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating8BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating8BitUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating8BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating8BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating8BitSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating16BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating16BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating16BitUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating16BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating16BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating16BitSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating32BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating32BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating32BitUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating32BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating32BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating32BitSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating64BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating64BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating64BitUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating64BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating64BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating64BitSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated != 0
        }

        /// The `storageTexelBufferOffsetAlignmentBytes` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var storageTexelBufferOffsetAlignmentBytes: VkDeviceSize {
            unsafe rawValue.storageTexelBufferOffsetAlignmentBytes
        }

        /// The `storageTexelBufferOffsetSingleTexelAlignment` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var storageTexelBufferOffsetSingleTexelAlignment: Bool {
            unsafe rawValue.storageTexelBufferOffsetSingleTexelAlignment != 0
        }

        /// The `uniformTexelBufferOffsetAlignmentBytes` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var uniformTexelBufferOffsetAlignmentBytes: VkDeviceSize {
            unsafe rawValue.uniformTexelBufferOffsetAlignmentBytes
        }

        /// The `uniformTexelBufferOffsetSingleTexelAlignment` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var uniformTexelBufferOffsetSingleTexelAlignment: Bool {
            unsafe rawValue.uniformTexelBufferOffsetSingleTexelAlignment != 0
        }

        /// The `maxBufferSize` member of the Vulkan `VkPhysicalDeviceVulkan13Properties`.
        public var maxBufferSize: VkDeviceSize {
            unsafe rawValue.maxBufferSize
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceVulkan14Properties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceVulkan14Properties.html)
    @safe
    public struct Vulkan14Properties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceVulkan14Properties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceVulkan14Properties) {
            unsafe self.rawValue = rawValue
        }

        /// The `lineSubPixelPrecisionBits` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var lineSubPixelPrecisionBits: UInt32 {
            unsafe rawValue.lineSubPixelPrecisionBits
        }

        /// The `maxVertexAttribDivisor` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var maxVertexAttribDivisor: UInt32 {
            unsafe rawValue.maxVertexAttribDivisor
        }

        /// The `supportsNonZeroFirstInstance` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var supportsNonZeroFirstInstance: Bool {
            unsafe rawValue.supportsNonZeroFirstInstance != 0
        }

        /// The `maxPushDescriptors` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var maxPushDescriptors: UInt32 {
            unsafe rawValue.maxPushDescriptors
        }

        /// The `dynamicRenderingLocalReadDepthStencilAttachments` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var dynamicRenderingLocalReadDepthStencilAttachments: Bool {
            unsafe rawValue.dynamicRenderingLocalReadDepthStencilAttachments != 0
        }

        /// The `dynamicRenderingLocalReadMultisampledAttachments` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var dynamicRenderingLocalReadMultisampledAttachments: Bool {
            unsafe rawValue.dynamicRenderingLocalReadMultisampledAttachments != 0
        }

        /// The `earlyFragmentMultisampleCoverageAfterSampleCounting` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var earlyFragmentMultisampleCoverageAfterSampleCounting: Bool {
            unsafe rawValue.earlyFragmentMultisampleCoverageAfterSampleCounting != 0
        }

        /// The `earlyFragmentSampleMaskTestBeforeSampleCounting` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var earlyFragmentSampleMaskTestBeforeSampleCounting: Bool {
            unsafe rawValue.earlyFragmentSampleMaskTestBeforeSampleCounting != 0
        }

        /// The `depthStencilSwizzleOneSupport` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var depthStencilSwizzleOneSupport: Bool {
            unsafe rawValue.depthStencilSwizzleOneSupport != 0
        }

        /// The `polygonModePointSize` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var polygonModePointSize: Bool {
            unsafe rawValue.polygonModePointSize != 0
        }

        /// The `nonStrictSinglePixelWideLinesUseParallelogram` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var nonStrictSinglePixelWideLinesUseParallelogram: Bool {
            unsafe rawValue.nonStrictSinglePixelWideLinesUseParallelogram != 0
        }

        /// The `nonStrictWideLinesUseParallelogram` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var nonStrictWideLinesUseParallelogram: Bool {
            unsafe rawValue.nonStrictWideLinesUseParallelogram != 0
        }

        /// The `blockTexelViewCompatibleMultipleLayers` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var blockTexelViewCompatibleMultipleLayers: Bool {
            unsafe rawValue.blockTexelViewCompatibleMultipleLayers != 0
        }

        /// The `maxCombinedImageSamplerDescriptorCount` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var maxCombinedImageSamplerDescriptorCount: UInt32 {
            unsafe rawValue.maxCombinedImageSamplerDescriptorCount
        }

        /// The `fragmentShadingRateClampCombinerInputs` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var fragmentShadingRateClampCombinerInputs: Bool {
            unsafe rawValue.fragmentShadingRateClampCombinerInputs != 0
        }

        /// The `defaultRobustnessStorageBuffers` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var defaultRobustnessStorageBuffers: PipelineRobustnessBufferBehavior? {
            unsafe PipelineRobustnessBufferBehavior(rawValue: rawValue.defaultRobustnessStorageBuffers.rawValue)
        }

        /// The `defaultRobustnessUniformBuffers` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var defaultRobustnessUniformBuffers: PipelineRobustnessBufferBehavior? {
            unsafe PipelineRobustnessBufferBehavior(rawValue: rawValue.defaultRobustnessUniformBuffers.rawValue)
        }

        /// The `defaultRobustnessVertexInputs` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var defaultRobustnessVertexInputs: PipelineRobustnessBufferBehavior? {
            unsafe PipelineRobustnessBufferBehavior(rawValue: rawValue.defaultRobustnessVertexInputs.rawValue)
        }

        /// The `defaultRobustnessImages` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var defaultRobustnessImages: PipelineRobustnessImageBehavior? {
            unsafe PipelineRobustnessImageBehavior(rawValue: rawValue.defaultRobustnessImages.rawValue)
        }

        /// The `pCopySrcLayouts` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var pCopySrcLayouts: UnsafeBufferPointer<VkImageLayout> {
            unsafe UnsafeBufferPointer(start: rawValue.pCopySrcLayouts, count: Int(rawValue.copySrcLayoutCount))
        }

        /// The `pCopyDstLayouts` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var pCopyDstLayouts: UnsafeBufferPointer<VkImageLayout> {
            unsafe UnsafeBufferPointer(start: rawValue.pCopyDstLayouts, count: Int(rawValue.copyDstLayoutCount))
        }

        /// The `optimalTilingLayoutUUID` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var optimalTilingLayoutUUID:
            (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
        {
            unsafe rawValue.optimalTilingLayoutUUID
        }

        /// The `identicalMemoryTypeRequirements` member of the Vulkan `VkPhysicalDeviceVulkan14Properties`.
        public var identicalMemoryTypeRequirements: Bool {
            unsafe rawValue.identicalMemoryTypeRequirements != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCustomBorderColorPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCustomBorderColorPropertiesEXT.html)
    @safe
    public struct CustomBorderColorProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCustomBorderColorPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCustomBorderColorPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxCustomBorderColorSamplers` member of the Vulkan `VkPhysicalDeviceCustomBorderColorPropertiesEXT`.
        public var maxCustomBorderColorSamplers: UInt32 {
            unsafe rawValue.maxCustomBorderColorSamplers
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExtendedDynamicState3PropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedDynamicState3PropertiesEXT.html)
    @safe
    public struct ExtendedDynamicState3Properties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExtendedDynamicState3PropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExtendedDynamicState3PropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `dynamicPrimitiveTopologyUnrestricted` member of the Vulkan `VkPhysicalDeviceExtendedDynamicState3PropertiesEXT`.
        public var dynamicPrimitiveTopologyUnrestricted: Bool {
            unsafe rawValue.dynamicPrimitiveTopologyUnrestricted != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV.html)
    @safe
    public struct PartitionedAccelerationStructureProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxPartitionCount` member of the Vulkan `VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV`.
        public var maxPartitionCount: UInt32 {
            unsafe rawValue.maxPartitionCount
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRobustness2PropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRobustness2PropertiesKHR.html)
    @safe
    public struct Robustness2Properties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRobustness2PropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRobustness2PropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `robustStorageBufferAccessSizeAlignment` member of the Vulkan `VkPhysicalDeviceRobustness2PropertiesKHR`.
        public var robustStorageBufferAccessSizeAlignment: VkDeviceSize {
            unsafe rawValue.robustStorageBufferAccessSizeAlignment
        }

        /// The `robustUniformBufferAccessSizeAlignment` member of the Vulkan `VkPhysicalDeviceRobustness2PropertiesKHR`.
        public var robustUniformBufferAccessSizeAlignment: VkDeviceSize {
            unsafe rawValue.robustUniformBufferAccessSizeAlignment
        }
    }

    #if EnableProvisional
        /// Wrapper around the Vulkan VkPhysicalDevicePortabilitySubsetPropertiesKHR.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePortabilitySubsetPropertiesKHR.html)
        @safe
        public struct PortabilitySubsetProperties_KHR {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDevicePortabilitySubsetPropertiesKHR

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDevicePortabilitySubsetPropertiesKHR) {
                unsafe self.rawValue = rawValue
            }

            /// The `minVertexInputBindingStrideAlignment` member of the Vulkan `VkPhysicalDevicePortabilitySubsetPropertiesKHR`.
            public var minVertexInputBindingStrideAlignment: UInt32 {
                unsafe rawValue.minVertexInputBindingStrideAlignment
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public struct PortabilitySubsetProperties_KHR {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentShadingRatePropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShadingRatePropertiesKHR.html)
    @safe
    public struct FragmentShadingRateProperties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentShadingRatePropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentShadingRatePropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `minFragmentShadingRateAttachmentTexelSize` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var minFragmentShadingRateAttachmentTexelSize: VkExtent2D {
            unsafe rawValue.minFragmentShadingRateAttachmentTexelSize
        }

        /// The `maxFragmentShadingRateAttachmentTexelSize` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var maxFragmentShadingRateAttachmentTexelSize: VkExtent2D {
            unsafe rawValue.maxFragmentShadingRateAttachmentTexelSize
        }

        /// The `maxFragmentShadingRateAttachmentTexelSizeAspectRatio` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var maxFragmentShadingRateAttachmentTexelSizeAspectRatio: UInt32 {
            unsafe rawValue.maxFragmentShadingRateAttachmentTexelSizeAspectRatio
        }

        /// The `primitiveFragmentShadingRateWithMultipleViewports` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var primitiveFragmentShadingRateWithMultipleViewports: Bool {
            unsafe rawValue.primitiveFragmentShadingRateWithMultipleViewports != 0
        }

        /// The `layeredShadingRateAttachments` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var layeredShadingRateAttachments: Bool {
            unsafe rawValue.layeredShadingRateAttachments != 0
        }

        /// The `fragmentShadingRateNonTrivialCombinerOps` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var fragmentShadingRateNonTrivialCombinerOps: Bool {
            unsafe rawValue.fragmentShadingRateNonTrivialCombinerOps != 0
        }

        /// The `maxFragmentSize` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var maxFragmentSize: VkExtent2D {
            unsafe rawValue.maxFragmentSize
        }

        /// The `maxFragmentSizeAspectRatio` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var maxFragmentSizeAspectRatio: UInt32 {
            unsafe rawValue.maxFragmentSizeAspectRatio
        }

        /// The `maxFragmentShadingRateCoverageSamples` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var maxFragmentShadingRateCoverageSamples: UInt32 {
            unsafe rawValue.maxFragmentShadingRateCoverageSamples
        }

        /// The `maxFragmentShadingRateRasterizationSamples` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var maxFragmentShadingRateRasterizationSamples: SampleCountFlags {
            unsafe SampleCountFlags(rawValue: rawValue.maxFragmentShadingRateRasterizationSamples.rawValue)
        }

        /// The `fragmentShadingRateWithShaderDepthStencilWrites` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var fragmentShadingRateWithShaderDepthStencilWrites: Bool {
            unsafe rawValue.fragmentShadingRateWithShaderDepthStencilWrites != 0
        }

        /// The `fragmentShadingRateWithSampleMask` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var fragmentShadingRateWithSampleMask: Bool {
            unsafe rawValue.fragmentShadingRateWithSampleMask != 0
        }

        /// The `fragmentShadingRateWithShaderSampleMask` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var fragmentShadingRateWithShaderSampleMask: Bool {
            unsafe rawValue.fragmentShadingRateWithShaderSampleMask != 0
        }

        /// The `fragmentShadingRateWithConservativeRasterization` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var fragmentShadingRateWithConservativeRasterization: Bool {
            unsafe rawValue.fragmentShadingRateWithConservativeRasterization != 0
        }

        /// The `fragmentShadingRateWithFragmentShaderInterlock` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var fragmentShadingRateWithFragmentShaderInterlock: Bool {
            unsafe rawValue.fragmentShadingRateWithFragmentShaderInterlock != 0
        }

        /// The `fragmentShadingRateWithCustomSampleLocations` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var fragmentShadingRateWithCustomSampleLocations: Bool {
            unsafe rawValue.fragmentShadingRateWithCustomSampleLocations != 0
        }

        /// The `fragmentShadingRateStrictMultiplyCombiner` member of the Vulkan `VkPhysicalDeviceFragmentShadingRatePropertiesKHR`.
        public var fragmentShadingRateStrictMultiplyCombiner: Bool {
            unsafe rawValue.fragmentShadingRateStrictMultiplyCombiner != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV.html)
    @safe
    public struct FragmentShadingRateEnumsProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxFragmentShadingRateInvocationCount` member of the Vulkan `VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV`.
        public var maxFragmentShadingRateInvocationCount: SampleCountFlags {
            unsafe SampleCountFlags(rawValue: rawValue.maxFragmentShadingRateInvocationCount.rawValue)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT.html)
    @safe
    public struct LegacyVertexAttributesProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `nativeUnalignedPerformance` member of the Vulkan `VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT`.
        public var nativeUnalignedPerformance: Bool {
            unsafe rawValue.nativeUnalignedPerformance != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT.html)
    @safe
    public struct DeviceGeneratedCommandsProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxIndirectPipelineCount` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var maxIndirectPipelineCount: UInt32 {
            unsafe rawValue.maxIndirectPipelineCount
        }

        /// The `maxIndirectShaderObjectCount` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var maxIndirectShaderObjectCount: UInt32 {
            unsafe rawValue.maxIndirectShaderObjectCount
        }

        /// The `maxIndirectSequenceCount` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var maxIndirectSequenceCount: UInt32 {
            unsafe rawValue.maxIndirectSequenceCount
        }

        /// The `maxIndirectCommandsTokenCount` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var maxIndirectCommandsTokenCount: UInt32 {
            unsafe rawValue.maxIndirectCommandsTokenCount
        }

        /// The `maxIndirectCommandsTokenOffset` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var maxIndirectCommandsTokenOffset: UInt32 {
            unsafe rawValue.maxIndirectCommandsTokenOffset
        }

        /// The `maxIndirectCommandsIndirectStride` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var maxIndirectCommandsIndirectStride: UInt32 {
            unsafe rawValue.maxIndirectCommandsIndirectStride
        }

        /// The `supportedIndirectCommandsInputModes` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var supportedIndirectCommandsInputModes: IndirectCommandsInputModeFlagsEXT {
            unsafe IndirectCommandsInputModeFlagsEXT(rawValue: rawValue.supportedIndirectCommandsInputModes)
        }

        /// The `supportedIndirectCommandsShaderStages` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var supportedIndirectCommandsShaderStages: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.supportedIndirectCommandsShaderStages)
        }

        /// The `supportedIndirectCommandsShaderStagesPipelineBinding` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var supportedIndirectCommandsShaderStagesPipelineBinding: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.supportedIndirectCommandsShaderStagesPipelineBinding)
        }

        /// The `supportedIndirectCommandsShaderStagesShaderBinding` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var supportedIndirectCommandsShaderStagesShaderBinding: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.supportedIndirectCommandsShaderStagesShaderBinding)
        }

        /// The `deviceGeneratedCommandsTransformFeedback` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var deviceGeneratedCommandsTransformFeedback: Bool {
            unsafe rawValue.deviceGeneratedCommandsTransformFeedback != 0
        }

        /// The `deviceGeneratedCommandsMultiDrawIndirectCount` member of the Vulkan `VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT`.
        public var deviceGeneratedCommandsMultiDrawIndirectCount: Bool {
            unsafe rawValue.deviceGeneratedCommandsMultiDrawIndirectCount != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceHostImageCopyProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceHostImageCopyProperties.html)
    @safe
    public struct HostImageCopyProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceHostImageCopyProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceHostImageCopyProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `pCopySrcLayouts` member of the Vulkan `VkPhysicalDeviceHostImageCopyProperties`.
        public var pCopySrcLayouts: UnsafeBufferPointer<VkImageLayout> {
            unsafe UnsafeBufferPointer(start: rawValue.pCopySrcLayouts, count: Int(rawValue.copySrcLayoutCount))
        }

        /// The `pCopyDstLayouts` member of the Vulkan `VkPhysicalDeviceHostImageCopyProperties`.
        public var pCopyDstLayouts: UnsafeBufferPointer<VkImageLayout> {
            unsafe UnsafeBufferPointer(start: rawValue.pCopyDstLayouts, count: Int(rawValue.copyDstLayoutCount))
        }

        /// The `optimalTilingLayoutUUID` member of the Vulkan `VkPhysicalDeviceHostImageCopyProperties`.
        public var optimalTilingLayoutUUID:
            (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
        {
            unsafe rawValue.optimalTilingLayoutUUID
        }

        /// The `identicalMemoryTypeRequirements` member of the Vulkan `VkPhysicalDeviceHostImageCopyProperties`.
        public var identicalMemoryTypeRequirements: Bool {
            unsafe rawValue.identicalMemoryTypeRequirements != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceProvokingVertexPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceProvokingVertexPropertiesEXT.html)
    @safe
    public struct ProvokingVertexProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceProvokingVertexPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceProvokingVertexPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `provokingVertexModePerPipeline` member of the Vulkan `VkPhysicalDeviceProvokingVertexPropertiesEXT`.
        public var provokingVertexModePerPipeline: Bool {
            unsafe rawValue.provokingVertexModePerPipeline != 0
        }

        /// The `transformFeedbackPreservesTriangleFanProvokingVertex` member of the Vulkan `VkPhysicalDeviceProvokingVertexPropertiesEXT`.
        public var transformFeedbackPreservesTriangleFanProvokingVertex: Bool {
            unsafe rawValue.transformFeedbackPreservesTriangleFanProvokingVertex != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDescriptorBufferPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferPropertiesEXT.html)
    @safe
    public struct DescriptorBufferProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDescriptorBufferPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDescriptorBufferPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `combinedImageSamplerDescriptorSingleArray` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var combinedImageSamplerDescriptorSingleArray: Bool {
            unsafe rawValue.combinedImageSamplerDescriptorSingleArray != 0
        }

        /// The `bufferlessPushDescriptors` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var bufferlessPushDescriptors: Bool {
            unsafe rawValue.bufferlessPushDescriptors != 0
        }

        /// The `allowSamplerImageViewPostSubmitCreation` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var allowSamplerImageViewPostSubmitCreation: Bool {
            unsafe rawValue.allowSamplerImageViewPostSubmitCreation != 0
        }

        /// The `descriptorBufferOffsetAlignment` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var descriptorBufferOffsetAlignment: VkDeviceSize {
            unsafe rawValue.descriptorBufferOffsetAlignment
        }

        /// The `maxDescriptorBufferBindings` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var maxDescriptorBufferBindings: UInt32 {
            unsafe rawValue.maxDescriptorBufferBindings
        }

        /// The `maxResourceDescriptorBufferBindings` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var maxResourceDescriptorBufferBindings: UInt32 {
            unsafe rawValue.maxResourceDescriptorBufferBindings
        }

        /// The `maxSamplerDescriptorBufferBindings` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var maxSamplerDescriptorBufferBindings: UInt32 {
            unsafe rawValue.maxSamplerDescriptorBufferBindings
        }

        /// The `maxEmbeddedImmutableSamplerBindings` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var maxEmbeddedImmutableSamplerBindings: UInt32 {
            unsafe rawValue.maxEmbeddedImmutableSamplerBindings
        }

        /// The `maxEmbeddedImmutableSamplers` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var maxEmbeddedImmutableSamplers: UInt32 {
            unsafe rawValue.maxEmbeddedImmutableSamplers
        }

        /// The `bufferCaptureReplayDescriptorDataSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var bufferCaptureReplayDescriptorDataSize: Int {
            unsafe rawValue.bufferCaptureReplayDescriptorDataSize
        }

        /// The `imageCaptureReplayDescriptorDataSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var imageCaptureReplayDescriptorDataSize: Int {
            unsafe rawValue.imageCaptureReplayDescriptorDataSize
        }

        /// The `imageViewCaptureReplayDescriptorDataSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var imageViewCaptureReplayDescriptorDataSize: Int {
            unsafe rawValue.imageViewCaptureReplayDescriptorDataSize
        }

        /// The `samplerCaptureReplayDescriptorDataSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var samplerCaptureReplayDescriptorDataSize: Int {
            unsafe rawValue.samplerCaptureReplayDescriptorDataSize
        }

        /// The `accelerationStructureCaptureReplayDescriptorDataSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var accelerationStructureCaptureReplayDescriptorDataSize: Int {
            unsafe rawValue.accelerationStructureCaptureReplayDescriptorDataSize
        }

        /// The `samplerDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var samplerDescriptorSize: Int {
            unsafe rawValue.samplerDescriptorSize
        }

        /// The `combinedImageSamplerDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var combinedImageSamplerDescriptorSize: Int {
            unsafe rawValue.combinedImageSamplerDescriptorSize
        }

        /// The `sampledImageDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var sampledImageDescriptorSize: Int {
            unsafe rawValue.sampledImageDescriptorSize
        }

        /// The `storageImageDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var storageImageDescriptorSize: Int {
            unsafe rawValue.storageImageDescriptorSize
        }

        /// The `uniformTexelBufferDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var uniformTexelBufferDescriptorSize: Int {
            unsafe rawValue.uniformTexelBufferDescriptorSize
        }

        /// The `robustUniformTexelBufferDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var robustUniformTexelBufferDescriptorSize: Int {
            unsafe rawValue.robustUniformTexelBufferDescriptorSize
        }

        /// The `storageTexelBufferDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var storageTexelBufferDescriptorSize: Int {
            unsafe rawValue.storageTexelBufferDescriptorSize
        }

        /// The `robustStorageTexelBufferDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var robustStorageTexelBufferDescriptorSize: Int {
            unsafe rawValue.robustStorageTexelBufferDescriptorSize
        }

        /// The `uniformBufferDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var uniformBufferDescriptorSize: Int {
            unsafe rawValue.uniformBufferDescriptorSize
        }

        /// The `robustUniformBufferDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var robustUniformBufferDescriptorSize: Int {
            unsafe rawValue.robustUniformBufferDescriptorSize
        }

        /// The `storageBufferDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var storageBufferDescriptorSize: Int {
            unsafe rawValue.storageBufferDescriptorSize
        }

        /// The `robustStorageBufferDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var robustStorageBufferDescriptorSize: Int {
            unsafe rawValue.robustStorageBufferDescriptorSize
        }

        /// The `inputAttachmentDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var inputAttachmentDescriptorSize: Int {
            unsafe rawValue.inputAttachmentDescriptorSize
        }

        /// The `accelerationStructureDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var accelerationStructureDescriptorSize: Int {
            unsafe rawValue.accelerationStructureDescriptorSize
        }

        /// The `maxSamplerDescriptorBufferRange` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var maxSamplerDescriptorBufferRange: VkDeviceSize {
            unsafe rawValue.maxSamplerDescriptorBufferRange
        }

        /// The `maxResourceDescriptorBufferRange` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var maxResourceDescriptorBufferRange: VkDeviceSize {
            unsafe rawValue.maxResourceDescriptorBufferRange
        }

        /// The `samplerDescriptorBufferAddressSpaceSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var samplerDescriptorBufferAddressSpaceSize: VkDeviceSize {
            unsafe rawValue.samplerDescriptorBufferAddressSpaceSize
        }

        /// The `resourceDescriptorBufferAddressSpaceSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var resourceDescriptorBufferAddressSpaceSize: VkDeviceSize {
            unsafe rawValue.resourceDescriptorBufferAddressSpaceSize
        }

        /// The `descriptorBufferAddressSpaceSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferPropertiesEXT`.
        public var descriptorBufferAddressSpaceSize: VkDeviceSize {
            unsafe rawValue.descriptorBufferAddressSpaceSize
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT.html)
    @safe
    public struct DescriptorBufferDensityMapProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `combinedImageSamplerDensityMapDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT`.
        public var combinedImageSamplerDensityMapDescriptorSize: Int {
            unsafe rawValue.combinedImageSamplerDensityMapDescriptorSize
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderIntegerDotProductProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderIntegerDotProductProperties.html)
    @safe
    public struct ShaderIntegerDotProductProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderIntegerDotProductProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderIntegerDotProductProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `integerDotProduct8BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct8BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct8BitUnsignedAccelerated != 0
        }

        /// The `integerDotProduct8BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct8BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct8BitSignedAccelerated != 0
        }

        /// The `integerDotProduct8BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct8BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct8BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProduct4x8BitPackedUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct4x8BitPackedUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct4x8BitPackedUnsignedAccelerated != 0
        }

        /// The `integerDotProduct4x8BitPackedSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct4x8BitPackedSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct4x8BitPackedSignedAccelerated != 0
        }

        /// The `integerDotProduct4x8BitPackedMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct4x8BitPackedMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct4x8BitPackedMixedSignednessAccelerated != 0
        }

        /// The `integerDotProduct16BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct16BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct16BitUnsignedAccelerated != 0
        }

        /// The `integerDotProduct16BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct16BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct16BitSignedAccelerated != 0
        }

        /// The `integerDotProduct16BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct16BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct16BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProduct32BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct32BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct32BitUnsignedAccelerated != 0
        }

        /// The `integerDotProduct32BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct32BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct32BitSignedAccelerated != 0
        }

        /// The `integerDotProduct32BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct32BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct32BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProduct64BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct64BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct64BitUnsignedAccelerated != 0
        }

        /// The `integerDotProduct64BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct64BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProduct64BitSignedAccelerated != 0
        }

        /// The `integerDotProduct64BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProduct64BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProduct64BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating8BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating8BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating8BitUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating8BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating8BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating8BitSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating16BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating16BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating16BitUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating16BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating16BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating16BitSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating32BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating32BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating32BitUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating32BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating32BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating32BitSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating64BitUnsignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating64BitUnsignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating64BitUnsignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating64BitSignedAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating64BitSignedAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating64BitSignedAccelerated != 0
        }

        /// The `integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated` member of the Vulkan `VkPhysicalDeviceShaderIntegerDotProductProperties`.
        public var integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated: Bool {
            unsafe rawValue.integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDrmPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDrmPropertiesEXT.html)
    @safe
    public struct DrmProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDrmPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDrmPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `hasPrimary` member of the Vulkan `VkPhysicalDeviceDrmPropertiesEXT`.
        public var hasPrimary: Bool {
            unsafe rawValue.hasPrimary != 0
        }

        /// The `hasRender` member of the Vulkan `VkPhysicalDeviceDrmPropertiesEXT`.
        public var hasRender: Bool {
            unsafe rawValue.hasRender != 0
        }

        /// The `primaryMajor` member of the Vulkan `VkPhysicalDeviceDrmPropertiesEXT`.
        public var primaryMajor: Int64 {
            unsafe rawValue.primaryMajor
        }

        /// The `primaryMinor` member of the Vulkan `VkPhysicalDeviceDrmPropertiesEXT`.
        public var primaryMinor: Int64 {
            unsafe rawValue.primaryMinor
        }

        /// The `renderMajor` member of the Vulkan `VkPhysicalDeviceDrmPropertiesEXT`.
        public var renderMajor: Int64 {
            unsafe rawValue.renderMajor
        }

        /// The `renderMinor` member of the Vulkan `VkPhysicalDeviceDrmPropertiesEXT`.
        public var renderMinor: Int64 {
            unsafe rawValue.renderMinor
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR.html)
    @safe
    public struct FragmentShaderBarycentricProperties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `triStripVertexOrderIndependentOfProvokingVertex` member of the Vulkan `VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR`.
        public var triStripVertexOrderIndependentOfProvokingVertex: Bool {
            unsafe rawValue.triStripVertexOrderIndependentOfProvokingVertex != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDevicePipelineBinaryPropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineBinaryPropertiesKHR.html)
    @safe
    public struct PipelineBinaryProperties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelineBinaryPropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelineBinaryPropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `pipelineBinaryInternalCache` member of the Vulkan `VkPhysicalDevicePipelineBinaryPropertiesKHR`.
        public var pipelineBinaryInternalCache: Bool {
            unsafe rawValue.pipelineBinaryInternalCache != 0
        }

        /// The `pipelineBinaryInternalCacheControl` member of the Vulkan `VkPhysicalDevicePipelineBinaryPropertiesKHR`.
        public var pipelineBinaryInternalCacheControl: Bool {
            unsafe rawValue.pipelineBinaryInternalCacheControl != 0
        }

        /// The `pipelineBinaryPrefersInternalCache` member of the Vulkan `VkPhysicalDevicePipelineBinaryPropertiesKHR`.
        public var pipelineBinaryPrefersInternalCache: Bool {
            unsafe rawValue.pipelineBinaryPrefersInternalCache != 0
        }

        /// The `pipelineBinaryPrecompiledInternalCache` member of the Vulkan `VkPhysicalDevicePipelineBinaryPropertiesKHR`.
        public var pipelineBinaryPrecompiledInternalCache: Bool {
            unsafe rawValue.pipelineBinaryPrecompiledInternalCache != 0
        }

        /// The `pipelineBinaryCompressedData` member of the Vulkan `VkPhysicalDevicePipelineBinaryPropertiesKHR`.
        public var pipelineBinaryCompressedData: Bool {
            unsafe rawValue.pipelineBinaryCompressedData != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT.html)
    @safe
    public struct GraphicsPipelineLibraryProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `graphicsPipelineLibraryFastLinking` member of the Vulkan `VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT`.
        public var graphicsPipelineLibraryFastLinking: Bool {
            unsafe rawValue.graphicsPipelineLibraryFastLinking != 0
        }

        /// The `graphicsPipelineLibraryIndependentInterpolationDecoration` member of the Vulkan `VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT`.
        public var graphicsPipelineLibraryIndependentInterpolationDecoration: Bool {
            unsafe rawValue.graphicsPipelineLibraryIndependentInterpolationDecoration != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceNestedCommandBufferPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceNestedCommandBufferPropertiesEXT.html)
    @safe
    public struct NestedCommandBufferProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceNestedCommandBufferPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceNestedCommandBufferPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxCommandBufferNestingLevel` member of the Vulkan `VkPhysicalDeviceNestedCommandBufferPropertiesEXT`.
        public var maxCommandBufferNestingLevel: UInt32 {
            unsafe rawValue.maxCommandBufferNestingLevel
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT.html)
    @safe
    public struct ShaderModuleIdentifierProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderModuleIdentifierAlgorithmUUID` member of the Vulkan `VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT`.
        public var shaderModuleIdentifierAlgorithmUUID:
            (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
        {
            unsafe rawValue.shaderModuleIdentifierAlgorithmUUID
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceOpacityMicromapPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceOpacityMicromapPropertiesEXT.html)
    @safe
    public struct OpacityMicromapProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceOpacityMicromapPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceOpacityMicromapPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxOpacity2StateSubdivisionLevel` member of the Vulkan `VkPhysicalDeviceOpacityMicromapPropertiesEXT`.
        public var maxOpacity2StateSubdivisionLevel: UInt32 {
            unsafe rawValue.maxOpacity2StateSubdivisionLevel
        }

        /// The `maxOpacity4StateSubdivisionLevel` member of the Vulkan `VkPhysicalDeviceOpacityMicromapPropertiesEXT`.
        public var maxOpacity4StateSubdivisionLevel: UInt32 {
            unsafe rawValue.maxOpacity4StateSubdivisionLevel
        }
    }

    #if EnableProvisional
        /// Wrapper around the Vulkan VkPhysicalDeviceDisplacementMicromapPropertiesNV.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDisplacementMicromapPropertiesNV.html)
        @safe
        public struct DisplacementMicromapProperties_NV {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDeviceDisplacementMicromapPropertiesNV

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDeviceDisplacementMicromapPropertiesNV) {
                unsafe self.rawValue = rawValue
            }

            /// The `maxDisplacementMicromapSubdivisionLevel` member of the Vulkan `VkPhysicalDeviceDisplacementMicromapPropertiesNV`.
            public var maxDisplacementMicromapSubdivisionLevel: UInt32 {
                unsafe rawValue.maxDisplacementMicromapSubdivisionLevel
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public struct DisplacementMicromapProperties_NV {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDevicePipelineRobustnessProperties.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDevicePipelineRobustnessProperties.html)
    @safe
    public struct PipelineRobustnessProperties {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDevicePipelineRobustnessProperties

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDevicePipelineRobustnessProperties) {
            unsafe self.rawValue = rawValue
        }

        /// The `defaultRobustnessStorageBuffers` member of the Vulkan `VkPhysicalDevicePipelineRobustnessProperties`.
        public var defaultRobustnessStorageBuffers: PipelineRobustnessBufferBehavior? {
            unsafe PipelineRobustnessBufferBehavior(rawValue: rawValue.defaultRobustnessStorageBuffers.rawValue)
        }

        /// The `defaultRobustnessUniformBuffers` member of the Vulkan `VkPhysicalDevicePipelineRobustnessProperties`.
        public var defaultRobustnessUniformBuffers: PipelineRobustnessBufferBehavior? {
            unsafe PipelineRobustnessBufferBehavior(rawValue: rawValue.defaultRobustnessUniformBuffers.rawValue)
        }

        /// The `defaultRobustnessVertexInputs` member of the Vulkan `VkPhysicalDevicePipelineRobustnessProperties`.
        public var defaultRobustnessVertexInputs: PipelineRobustnessBufferBehavior? {
            unsafe PipelineRobustnessBufferBehavior(rawValue: rawValue.defaultRobustnessVertexInputs.rawValue)
        }

        /// The `defaultRobustnessImages` member of the Vulkan `VkPhysicalDevicePipelineRobustnessProperties`.
        public var defaultRobustnessImages: PipelineRobustnessImageBehavior? {
            unsafe PipelineRobustnessImageBehavior(rawValue: rawValue.defaultRobustnessImages.rawValue)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageProcessingPropertiesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageProcessingPropertiesQCOM.html)
    @safe
    public struct ImageProcessingProperties_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageProcessingPropertiesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageProcessingPropertiesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxWeightFilterPhases` member of the Vulkan `VkPhysicalDeviceImageProcessingPropertiesQCOM`.
        public var maxWeightFilterPhases: UInt32 {
            unsafe rawValue.maxWeightFilterPhases
        }

        /// The `maxWeightFilterDimension` member of the Vulkan `VkPhysicalDeviceImageProcessingPropertiesQCOM`.
        public var maxWeightFilterDimension: VkExtent2D {
            unsafe rawValue.maxWeightFilterDimension
        }

        /// The `maxBlockMatchRegion` member of the Vulkan `VkPhysicalDeviceImageProcessingPropertiesQCOM`.
        public var maxBlockMatchRegion: VkExtent2D {
            unsafe rawValue.maxBlockMatchRegion
        }

        /// The `maxBoxFilterBlockSize` member of the Vulkan `VkPhysicalDeviceImageProcessingPropertiesQCOM`.
        public var maxBoxFilterBlockSize: VkExtent2D {
            unsafe rawValue.maxBoxFilterBlockSize
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceOpticalFlowPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceOpticalFlowPropertiesNV.html)
    @safe
    public struct OpticalFlowProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceOpticalFlowPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceOpticalFlowPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `supportedOutputGridSizes` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var supportedOutputGridSizes: OpticalFlowGridSizeFlagsNV {
            unsafe OpticalFlowGridSizeFlagsNV(rawValue: rawValue.supportedOutputGridSizes)
        }

        /// The `supportedHintGridSizes` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var supportedHintGridSizes: OpticalFlowGridSizeFlagsNV {
            unsafe OpticalFlowGridSizeFlagsNV(rawValue: rawValue.supportedHintGridSizes)
        }

        /// The `hintSupported` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var hintSupported: Bool {
            unsafe rawValue.hintSupported != 0
        }

        /// The `costSupported` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var costSupported: Bool {
            unsafe rawValue.costSupported != 0
        }

        /// The `bidirectionalFlowSupported` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var bidirectionalFlowSupported: Bool {
            unsafe rawValue.bidirectionalFlowSupported != 0
        }

        /// The `globalFlowSupported` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var globalFlowSupported: Bool {
            unsafe rawValue.globalFlowSupported != 0
        }

        /// The `minWidth` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var minWidth: UInt32 {
            unsafe rawValue.minWidth
        }

        /// The `minHeight` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var minHeight: UInt32 {
            unsafe rawValue.minHeight
        }

        /// The `maxWidth` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var maxWidth: UInt32 {
            unsafe rawValue.maxWidth
        }

        /// The `maxHeight` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var maxHeight: UInt32 {
            unsafe rawValue.maxHeight
        }

        /// The `maxNumRegionsOfInterest` member of the Vulkan `VkPhysicalDeviceOpticalFlowPropertiesNV`.
        public var maxNumRegionsOfInterest: UInt32 {
            unsafe rawValue.maxNumRegionsOfInterest
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM.html)
    @safe
    public struct ShaderCoreBuiltinsProperties_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderCoreMask` member of the Vulkan `VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM`.
        public var shaderCoreMask: UInt64 {
            unsafe rawValue.shaderCoreMask
        }

        /// The `shaderCoreCount` member of the Vulkan `VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM`.
        public var shaderCoreCount: UInt32 {
            unsafe rawValue.shaderCoreCount
        }

        /// The `shaderWarpsPerCore` member of the Vulkan `VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM`.
        public var shaderWarpsPerCore: UInt32 {
            unsafe rawValue.shaderWarpsPerCore
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV.html)
    @safe
    public struct RayTracingInvocationReorderProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `rayTracingInvocationReorderReorderingHint` member of the Vulkan `VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV`.
        public var rayTracingInvocationReorderReorderingHint: RayTracingInvocationReorderModeNV? {
            unsafe RayTracingInvocationReorderModeNV(rawValue: rawValue.rayTracingInvocationReorderReorderingHint.rawValue)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV.html)
    @safe
    public struct ExtendedSparseAddressSpaceProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `extendedSparseAddressSpaceSize` member of the Vulkan `VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV`.
        public var extendedSparseAddressSpaceSize: VkDeviceSize {
            unsafe rawValue.extendedSparseAddressSpaceSize
        }

        /// The `extendedSparseImageUsageFlags` member of the Vulkan `VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV`.
        public var extendedSparseImageUsageFlags: ImageUsageFlags {
            unsafe ImageUsageFlags(rawValue: rawValue.extendedSparseImageUsageFlags)
        }

        /// The `extendedSparseBufferUsageFlags` member of the Vulkan `VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV`.
        public var extendedSparseBufferUsageFlags: BufferUsageFlags {
            unsafe BufferUsageFlags(rawValue: rawValue.extendedSparseBufferUsageFlags)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderCorePropertiesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderCorePropertiesARM.html)
    @safe
    public struct ShaderCoreProperties_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderCorePropertiesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderCorePropertiesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `pixelRate` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesARM`.
        public var pixelRate: UInt32 {
            unsafe rawValue.pixelRate
        }

        /// The `texelRate` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesARM`.
        public var texelRate: UInt32 {
            unsafe rawValue.texelRate
        }

        /// The `fmaRate` member of the Vulkan `VkPhysicalDeviceShaderCorePropertiesARM`.
        public var fmaRate: UInt32 {
            unsafe rawValue.fmaRate
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderObjectPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderObjectPropertiesEXT.html)
    @safe
    public struct ShaderObjectProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderObjectPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderObjectPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderBinaryUUID` member of the Vulkan `VkPhysicalDeviceShaderObjectPropertiesEXT`.
        public var shaderBinaryUUID:
            (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
        {
            unsafe rawValue.shaderBinaryUUID
        }

        /// The `shaderBinaryVersion` member of the Vulkan `VkPhysicalDeviceShaderObjectPropertiesEXT`.
        public var shaderBinaryVersion: UInt32 {
            unsafe rawValue.shaderBinaryVersion
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceShaderTileImagePropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderTileImagePropertiesEXT.html)
    @safe
    public struct ShaderTileImageProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceShaderTileImagePropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceShaderTileImagePropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `shaderTileImageCoherentReadAccelerated` member of the Vulkan `VkPhysicalDeviceShaderTileImagePropertiesEXT`.
        public var shaderTileImageCoherentReadAccelerated: Bool {
            unsafe rawValue.shaderTileImageCoherentReadAccelerated != 0
        }

        /// The `shaderTileImageReadSampleFromPixelRateInvocation` member of the Vulkan `VkPhysicalDeviceShaderTileImagePropertiesEXT`.
        public var shaderTileImageReadSampleFromPixelRateInvocation: Bool {
            unsafe rawValue.shaderTileImageReadSampleFromPixelRateInvocation != 0
        }

        /// The `shaderTileImageReadFromHelperInvocation` member of the Vulkan `VkPhysicalDeviceShaderTileImagePropertiesEXT`.
        public var shaderTileImageReadFromHelperInvocation: Bool {
            unsafe rawValue.shaderTileImageReadFromHelperInvocation != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCooperativeMatrixPropertiesKHR.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrixPropertiesKHR.html)
    @safe
    public struct CooperativeMatrixProperties_KHR {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCooperativeMatrixPropertiesKHR

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCooperativeMatrixPropertiesKHR) {
            unsafe self.rawValue = rawValue
        }

        /// The `cooperativeMatrixSupportedStages` member of the Vulkan `VkPhysicalDeviceCooperativeMatrixPropertiesKHR`.
        public var cooperativeMatrixSupportedStages: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.cooperativeMatrixSupportedStages)
        }
    }

    #if EnableProvisional
        /// Wrapper around the Vulkan VkPhysicalDeviceShaderEnqueuePropertiesAMDX.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceShaderEnqueuePropertiesAMDX.html)
        @safe
        public struct ShaderEnqueueProperties_AMDX {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDeviceShaderEnqueuePropertiesAMDX

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDeviceShaderEnqueuePropertiesAMDX) {
                unsafe self.rawValue = rawValue
            }

            /// The `maxExecutionGraphDepth` member of the Vulkan `VkPhysicalDeviceShaderEnqueuePropertiesAMDX`.
            public var maxExecutionGraphDepth: UInt32 {
                unsafe rawValue.maxExecutionGraphDepth
            }

            /// The `maxExecutionGraphShaderOutputNodes` member of the Vulkan `VkPhysicalDeviceShaderEnqueuePropertiesAMDX`.
            public var maxExecutionGraphShaderOutputNodes: UInt32 {
                unsafe rawValue.maxExecutionGraphShaderOutputNodes
            }

            /// The `maxExecutionGraphShaderPayloadSize` member of the Vulkan `VkPhysicalDeviceShaderEnqueuePropertiesAMDX`.
            public var maxExecutionGraphShaderPayloadSize: UInt32 {
                unsafe rawValue.maxExecutionGraphShaderPayloadSize
            }

            /// The `maxExecutionGraphShaderPayloadCount` member of the Vulkan `VkPhysicalDeviceShaderEnqueuePropertiesAMDX`.
            public var maxExecutionGraphShaderPayloadCount: UInt32 {
                unsafe rawValue.maxExecutionGraphShaderPayloadCount
            }

            /// The `executionGraphDispatchAddressAlignment` member of the Vulkan `VkPhysicalDeviceShaderEnqueuePropertiesAMDX`.
            public var executionGraphDispatchAddressAlignment: UInt32 {
                unsafe rawValue.executionGraphDispatchAddressAlignment
            }

            /// The `maxExecutionGraphWorkgroupCount` member of the Vulkan `VkPhysicalDeviceShaderEnqueuePropertiesAMDX`.
            public var maxExecutionGraphWorkgroupCount: (UInt32, UInt32, UInt32) {
                unsafe rawValue.maxExecutionGraphWorkgroupCount
            }

            /// The `maxExecutionGraphWorkgroups` member of the Vulkan `VkPhysicalDeviceShaderEnqueuePropertiesAMDX`.
            public var maxExecutionGraphWorkgroups: UInt32 {
                unsafe rawValue.maxExecutionGraphWorkgroups
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public struct ShaderEnqueueProperties_AMDX {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDeviceTileMemoryHeapPropertiesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTileMemoryHeapPropertiesQCOM.html)
    @safe
    public struct TileMemoryHeapProperties_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTileMemoryHeapPropertiesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTileMemoryHeapPropertiesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `queueSubmitBoundary` member of the Vulkan `VkPhysicalDeviceTileMemoryHeapPropertiesQCOM`.
        public var queueSubmitBoundary: Bool {
            unsafe rawValue.queueSubmitBoundary != 0
        }

        /// The `tileBufferTransfers` member of the Vulkan `VkPhysicalDeviceTileMemoryHeapPropertiesQCOM`.
        public var tileBufferTransfers: Bool {
            unsafe rawValue.tileBufferTransfers != 0
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageProcessing2PropertiesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageProcessing2PropertiesQCOM.html)
    @safe
    public struct ImageProcessing2Properties_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageProcessing2PropertiesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageProcessing2PropertiesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxBlockMatchWindow` member of the Vulkan `VkPhysicalDeviceImageProcessing2PropertiesQCOM`.
        public var maxBlockMatchWindow: VkExtent2D {
            unsafe rawValue.maxBlockMatchWindow
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceLayeredDriverPropertiesMSFT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceLayeredDriverPropertiesMSFT.html)
    @safe
    public struct LayeredDriverProperties_MSFT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceLayeredDriverPropertiesMSFT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceLayeredDriverPropertiesMSFT) {
            unsafe self.rawValue = rawValue
        }

        /// The `underlyingAPI` member of the Vulkan `VkPhysicalDeviceLayeredDriverPropertiesMSFT`.
        public var underlyingAPI: LayeredDriverUnderlyingApiMSFT? {
            unsafe LayeredDriverUnderlyingApiMSFT(rawValue: rawValue.underlyingAPI.rawValue)
        }
    }

    #if PlatformAndroid
        /// Wrapper around the Vulkan VkPhysicalDeviceExternalFormatResolvePropertiesANDROID.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalFormatResolvePropertiesANDROID.html)
        @safe
        public struct ExternalFormatResolveProperties_ANDROID {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDeviceExternalFormatResolvePropertiesANDROID

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDeviceExternalFormatResolvePropertiesANDROID) {
                unsafe self.rawValue = rawValue
            }

            /// The `nullColorAttachmentWithExternalFormatResolve` member of the Vulkan `VkPhysicalDeviceExternalFormatResolvePropertiesANDROID`.
            public var nullColorAttachmentWithExternalFormatResolve: Bool {
                unsafe rawValue.nullColorAttachmentWithExternalFormatResolve != 0
            }

            /// The `externalFormatResolveChromaOffsetX` member of the Vulkan `VkPhysicalDeviceExternalFormatResolvePropertiesANDROID`.
            public var externalFormatResolveChromaOffsetX: ChromaLocation? {
                unsafe ChromaLocation(rawValue: rawValue.externalFormatResolveChromaOffsetX.rawValue)
            }

            /// The `externalFormatResolveChromaOffsetY` member of the Vulkan `VkPhysicalDeviceExternalFormatResolvePropertiesANDROID`.
            public var externalFormatResolveChromaOffsetY: ChromaLocation? {
                unsafe ChromaLocation(rawValue: rawValue.externalFormatResolveChromaOffsetY.rawValue)
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'PlatformAndroid' trait to be enabled")
        public struct ExternalFormatResolveProperties_ANDROID {}
    #endif

    #if EnableProvisional
        /// Wrapper around the Vulkan VkPhysicalDeviceCudaKernelLaunchPropertiesNV.
        /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCudaKernelLaunchPropertiesNV.html)
        @safe
        public struct CudaKernelLaunchProperties_NV {
            /// The raw Vulkan structure.
            @unsafe
            private var rawValue: VkPhysicalDeviceCudaKernelLaunchPropertiesNV

            /// Creates a new instance with the given raw value.
            /// - Parameter rawValue: The raw Vulkan structure.
            @unsafe
            internal init(rawValue: VkPhysicalDeviceCudaKernelLaunchPropertiesNV) {
                unsafe self.rawValue = rawValue
            }

            /// The `computeCapabilityMinor` member of the Vulkan `VkPhysicalDeviceCudaKernelLaunchPropertiesNV`.
            public var computeCapabilityMinor: UInt32 {
                unsafe rawValue.computeCapabilityMinor
            }

            /// The `computeCapabilityMajor` member of the Vulkan `VkPhysicalDeviceCudaKernelLaunchPropertiesNV`.
            public var computeCapabilityMajor: UInt32 {
                unsafe rawValue.computeCapabilityMajor
            }
        }
    #else
        @available(*, unavailable, message: "This set of properties requires the 'EnableProvisional' trait to be enabled")
        public struct CudaKernelLaunchProperties_NV {}
    #endif

    /// Wrapper around the Vulkan VkPhysicalDeviceSchedulingControlsPropertiesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceSchedulingControlsPropertiesARM.html)
    @safe
    public struct SchedulingControlsProperties_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceSchedulingControlsPropertiesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceSchedulingControlsPropertiesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `schedulingControlsFlags` member of the Vulkan `VkPhysicalDeviceSchedulingControlsPropertiesARM`.
        public var schedulingControlsFlags: PhysicalDeviceSchedulingControlsFlagsARM {
            unsafe PhysicalDeviceSchedulingControlsFlagsARM(rawValue: rawValue.schedulingControlsFlags)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceRenderPassStripedPropertiesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceRenderPassStripedPropertiesARM.html)
    @safe
    public struct RenderPassStripedProperties_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceRenderPassStripedPropertiesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceRenderPassStripedPropertiesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `renderPassStripeGranularity` member of the Vulkan `VkPhysicalDeviceRenderPassStripedPropertiesARM`.
        public var renderPassStripeGranularity: VkExtent2D {
            unsafe rawValue.renderPassStripeGranularity
        }

        /// The `maxRenderPassStripes` member of the Vulkan `VkPhysicalDeviceRenderPassStripedPropertiesARM`.
        public var maxRenderPassStripes: UInt32 {
            unsafe rawValue.maxRenderPassStripes
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceMapMemoryPlacedPropertiesEXT.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceMapMemoryPlacedPropertiesEXT.html)
    @safe
    public struct MapMemoryPlacedProperties_EXT {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceMapMemoryPlacedPropertiesEXT

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceMapMemoryPlacedPropertiesEXT) {
            unsafe self.rawValue = rawValue
        }

        /// The `minPlacedMemoryMapAlignment` member of the Vulkan `VkPhysicalDeviceMapMemoryPlacedPropertiesEXT`.
        public var minPlacedMemoryMapAlignment: VkDeviceSize {
            unsafe rawValue.minPlacedMemoryMapAlignment
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceImageAlignmentControlPropertiesMESA.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceImageAlignmentControlPropertiesMESA.html)
    @safe
    public struct ImageAlignmentControlProperties_MESA {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceImageAlignmentControlPropertiesMESA

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceImageAlignmentControlPropertiesMESA) {
            unsafe self.rawValue = rawValue
        }

        /// The `supportedImageAlignmentMask` member of the Vulkan `VkPhysicalDeviceImageAlignmentControlPropertiesMESA`.
        public var supportedImageAlignmentMask: UInt32 {
            unsafe rawValue.supportedImageAlignmentMask
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCooperativeMatrix2PropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeMatrix2PropertiesNV.html)
    @safe
    public struct CooperativeMatrix2Properties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCooperativeMatrix2PropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCooperativeMatrix2PropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `cooperativeMatrixWorkgroupScopeMaxWorkgroupSize` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2PropertiesNV`.
        public var cooperativeMatrixWorkgroupScopeMaxWorkgroupSize: UInt32 {
            unsafe rawValue.cooperativeMatrixWorkgroupScopeMaxWorkgroupSize
        }

        /// The `cooperativeMatrixFlexibleDimensionsMaxDimension` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2PropertiesNV`.
        public var cooperativeMatrixFlexibleDimensionsMaxDimension: UInt32 {
            unsafe rawValue.cooperativeMatrixFlexibleDimensionsMaxDimension
        }

        /// The `cooperativeMatrixWorkgroupScopeReservedSharedMemory` member of the Vulkan `VkPhysicalDeviceCooperativeMatrix2PropertiesNV`.
        public var cooperativeMatrixWorkgroupScopeReservedSharedMemory: UInt32 {
            unsafe rawValue.cooperativeMatrixWorkgroupScopeReservedSharedMemory
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceCooperativeVectorPropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceCooperativeVectorPropertiesNV.html)
    @safe
    public struct CooperativeVectorProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceCooperativeVectorPropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceCooperativeVectorPropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `cooperativeVectorSupportedStages` member of the Vulkan `VkPhysicalDeviceCooperativeVectorPropertiesNV`.
        public var cooperativeVectorSupportedStages: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.cooperativeVectorSupportedStages)
        }

        /// The `cooperativeVectorTrainingFloat16Accumulation` member of the Vulkan `VkPhysicalDeviceCooperativeVectorPropertiesNV`.
        public var cooperativeVectorTrainingFloat16Accumulation: Bool {
            unsafe rawValue.cooperativeVectorTrainingFloat16Accumulation != 0
        }

        /// The `cooperativeVectorTrainingFloat32Accumulation` member of the Vulkan `VkPhysicalDeviceCooperativeVectorPropertiesNV`.
        public var cooperativeVectorTrainingFloat32Accumulation: Bool {
            unsafe rawValue.cooperativeVectorTrainingFloat32Accumulation != 0
        }

        /// The `maxCooperativeVectorComponents` member of the Vulkan `VkPhysicalDeviceCooperativeVectorPropertiesNV`.
        public var maxCooperativeVectorComponents: UInt32 {
            unsafe rawValue.maxCooperativeVectorComponents
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTileShadingPropertiesQCOM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTileShadingPropertiesQCOM.html)
    @safe
    public struct TileShadingProperties_QCOM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTileShadingPropertiesQCOM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTileShadingPropertiesQCOM) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxApronSize` member of the Vulkan `VkPhysicalDeviceTileShadingPropertiesQCOM`.
        public var maxApronSize: UInt32 {
            unsafe rawValue.maxApronSize
        }

        /// The `preferNonCoherent` member of the Vulkan `VkPhysicalDeviceTileShadingPropertiesQCOM`.
        public var preferNonCoherent: Bool {
            unsafe rawValue.preferNonCoherent != 0
        }

        /// The `tileGranularity` member of the Vulkan `VkPhysicalDeviceTileShadingPropertiesQCOM`.
        public var tileGranularity: VkExtent2D {
            unsafe rawValue.tileGranularity
        }

        /// The `maxTileShadingRate` member of the Vulkan `VkPhysicalDeviceTileShadingPropertiesQCOM`.
        public var maxTileShadingRate: VkExtent2D {
            unsafe rawValue.maxTileShadingRate
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE.html)
    @safe
    public struct FragmentDensityMapLayeredProperties_VALVE {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxFragmentDensityMapLayers` member of the Vulkan `VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE`.
        public var maxFragmentDensityMapLayers: UInt32 {
            unsafe rawValue.maxFragmentDensityMapLayers
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceExternalComputeQueuePropertiesNV.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceExternalComputeQueuePropertiesNV.html)
    @safe
    public struct ExternalComputeQueueProperties_NV {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceExternalComputeQueuePropertiesNV

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceExternalComputeQueuePropertiesNV) {
            unsafe self.rawValue = rawValue
        }

        /// The `externalDataSize` member of the Vulkan `VkPhysicalDeviceExternalComputeQueuePropertiesNV`.
        public var externalDataSize: UInt32 {
            unsafe rawValue.externalDataSize
        }

        /// The `maxExternalQueues` member of the Vulkan `VkPhysicalDeviceExternalComputeQueuePropertiesNV`.
        public var maxExternalQueues: UInt32 {
            unsafe rawValue.maxExternalQueues
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceTensorPropertiesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceTensorPropertiesARM.html)
    @safe
    public struct TensorProperties_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceTensorPropertiesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceTensorPropertiesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `maxTensorDimensionCount` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxTensorDimensionCount: UInt32 {
            unsafe rawValue.maxTensorDimensionCount
        }

        /// The `maxTensorElements` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxTensorElements: UInt64 {
            unsafe rawValue.maxTensorElements
        }

        /// The `maxPerDimensionTensorElements` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxPerDimensionTensorElements: UInt64 {
            unsafe rawValue.maxPerDimensionTensorElements
        }

        /// The `maxTensorStride` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxTensorStride: Int64 {
            unsafe rawValue.maxTensorStride
        }

        /// The `maxTensorSize` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxTensorSize: UInt64 {
            unsafe rawValue.maxTensorSize
        }

        /// The `maxTensorShaderAccessArrayLength` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxTensorShaderAccessArrayLength: UInt32 {
            unsafe rawValue.maxTensorShaderAccessArrayLength
        }

        /// The `maxTensorShaderAccessSize` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxTensorShaderAccessSize: UInt32 {
            unsafe rawValue.maxTensorShaderAccessSize
        }

        /// The `maxDescriptorSetStorageTensors` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxDescriptorSetStorageTensors: UInt32 {
            unsafe rawValue.maxDescriptorSetStorageTensors
        }

        /// The `maxPerStageDescriptorSetStorageTensors` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxPerStageDescriptorSetStorageTensors: UInt32 {
            unsafe rawValue.maxPerStageDescriptorSetStorageTensors
        }

        /// The `maxDescriptorSetUpdateAfterBindStorageTensors` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxDescriptorSetUpdateAfterBindStorageTensors: UInt32 {
            unsafe rawValue.maxDescriptorSetUpdateAfterBindStorageTensors
        }

        /// The `maxPerStageDescriptorUpdateAfterBindStorageTensors` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var maxPerStageDescriptorUpdateAfterBindStorageTensors: UInt32 {
            unsafe rawValue.maxPerStageDescriptorUpdateAfterBindStorageTensors
        }

        /// The `shaderStorageTensorArrayNonUniformIndexingNative` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var shaderStorageTensorArrayNonUniformIndexingNative: Bool {
            unsafe rawValue.shaderStorageTensorArrayNonUniformIndexingNative != 0
        }

        /// The `shaderTensorSupportedStages` member of the Vulkan `VkPhysicalDeviceTensorPropertiesARM`.
        public var shaderTensorSupportedStages: ShaderStageFlags {
            unsafe ShaderStageFlags(rawValue: rawValue.shaderTensorSupportedStages)
        }
    }

    /// Wrapper around the Vulkan VkPhysicalDeviceDescriptorBufferTensorPropertiesARM.
    /// - SeeAlso: [Vulkan Specification](https://registry.khronos.org/vulkan/specs/latest/man/html/VkPhysicalDeviceDescriptorBufferTensorPropertiesARM.html)
    @safe
    public struct DescriptorBufferTensorProperties_ARM {
        /// The raw Vulkan structure.
        @unsafe
        private var rawValue: VkPhysicalDeviceDescriptorBufferTensorPropertiesARM

        /// Creates a new instance with the given raw value.
        /// - Parameter rawValue: The raw Vulkan structure.
        @unsafe
        internal init(rawValue: VkPhysicalDeviceDescriptorBufferTensorPropertiesARM) {
            unsafe self.rawValue = rawValue
        }

        /// The `tensorCaptureReplayDescriptorDataSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferTensorPropertiesARM`.
        public var tensorCaptureReplayDescriptorDataSize: Int {
            unsafe rawValue.tensorCaptureReplayDescriptorDataSize
        }

        /// The `tensorViewCaptureReplayDescriptorDataSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferTensorPropertiesARM`.
        public var tensorViewCaptureReplayDescriptorDataSize: Int {
            unsafe rawValue.tensorViewCaptureReplayDescriptorDataSize
        }

        /// The `tensorDescriptorSize` member of the Vulkan `VkPhysicalDeviceDescriptorBufferTensorPropertiesARM`.
        public var tensorDescriptorSize: Int {
            unsafe rawValue.tensorDescriptorSize
        }
    }

    // END_GENERATE_PHYSICAL_DEVICE_PROPERTIES_EXTENDS
}
