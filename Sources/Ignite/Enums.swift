/**
 * Enums.swift
 * Ignite
 *
 * Created by Hunter Baker on 5/26/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

// This file contains the enum definitions for Vulkan.
// These are automatically generated from the Vulkan specification.

// BEGIN_GENERATE_ENUMS
// Generated using header version: 315


public enum AccelerationStructureBuildTypeKHR: CVulkan.VkAccelerationStructureBuildTypeKHR.RawValue {

    case host_KHR = 0


    case device_KHR = 1


    case hostOrDevice_KHR = 2
}


public enum AccelerationStructureCompatibilityKHR: CVulkan.VkAccelerationStructureCompatibilityKHR.RawValue {

    case compatible_KHR = 0


    case incompatible_KHR = 1
}


public enum AccelerationStructureMemoryRequirementsTypeNV: CVulkan.VkAccelerationStructureMemoryRequirementsTypeNV.RawValue {

    case object_NV = 0


    case buildScratch_NV = 1


    case updateScratch_NV = 2
}


public enum AccelerationStructureMotionInstanceTypeNV: CVulkan.VkAccelerationStructureMotionInstanceTypeNV.RawValue {

    case static_NV = 0


    case matrixMotion_NV = 1


    case srtMotion_NV = 2
}


public enum AccelerationStructureTypeKHR: CVulkan.VkAccelerationStructureTypeKHR.RawValue {

    case topLevel_KHR = 0


    case bottomLevel_KHR = 1


    case generic_KHR = 2


    @inlinable
    public static var topLevel_NV: AccelerationStructureTypeKHR { self.topLevel_KHR }


    @inlinable
    public static var bottomLevel_NV: AccelerationStructureTypeKHR { self.bottomLevel_KHR }
}


public enum AntiLagModeAMD: CVulkan.VkAntiLagModeAMD.RawValue {

    case driverControl_AMD = 0


    case on_AMD = 1


    case off_AMD = 2
}


public enum AntiLagStageAMD: CVulkan.VkAntiLagStageAMD.RawValue {

    case input_AMD = 0


    case present_AMD = 1
}


public enum AttachmentLoadOp: CVulkan.VkAttachmentLoadOp.RawValue {

    case load = 0


    case clear = 1


    case dontCare = 2


    case none = 1_000_400_000


    @inlinable
    public static var none_EXT: AttachmentLoadOp { self.none }


    @inlinable
    public static var none_KHR: AttachmentLoadOp { self.none }
}


public enum AttachmentStoreOp: CVulkan.VkAttachmentStoreOp.RawValue {

    case store = 0


    case dontCare = 1


    case none = 1_000_301_000


    @inlinable
    public static var none_KHR: AttachmentStoreOp { self.none }


    @inlinable
    public static var none_QCOM: AttachmentStoreOp { self.none }


    @inlinable
    public static var none_EXT: AttachmentStoreOp { self.none }
}


public enum BlendFactor: CVulkan.VkBlendFactor.RawValue {

    case zero = 0


    case one = 1


    case srcColor = 2


    case oneMinusSrcColor = 3


    case dstColor = 4


    case oneMinusDstColor = 5


    case srcAlpha = 6


    case oneMinusSrcAlpha = 7


    case dstAlpha = 8


    case oneMinusDstAlpha = 9


    case constantColor = 10


    case oneMinusConstantColor = 11


    case constantAlpha = 12


    case oneMinusConstantAlpha = 13


    case srcAlphaSaturate = 14


    case src1Color = 15


    case oneMinusSrc1Color = 16


    case src1Alpha = 17


    case oneMinusSrc1Alpha = 18
}


public enum BlendOp: CVulkan.VkBlendOp.RawValue {

    case add = 0


    case subtract = 1


    case reverseSubtract = 2


    case min = 3


    case max = 4


    case zero_EXT = 1_000_148_000


    case src_EXT = 1_000_148_001


    case dst_EXT = 1_000_148_002


    case srcOver_EXT = 1_000_148_003


    case dstOver_EXT = 1_000_148_004


    case srcIn_EXT = 1_000_148_005


    case dstIn_EXT = 1_000_148_006


    case srcOut_EXT = 1_000_148_007


    case dstOut_EXT = 1_000_148_008


    case srcAtop_EXT = 1_000_148_009


    case dstAtop_EXT = 1_000_148_010


    case xor_EXT = 1_000_148_011


    case multiply_EXT = 1_000_148_012


    case screen_EXT = 1_000_148_013


    case overlay_EXT = 1_000_148_014


    case darken_EXT = 1_000_148_015


    case lighten_EXT = 1_000_148_016


    case colordodge_EXT = 1_000_148_017


    case colorburn_EXT = 1_000_148_018


    case hardlight_EXT = 1_000_148_019


    case softlight_EXT = 1_000_148_020


    case difference_EXT = 1_000_148_021


    case exclusion_EXT = 1_000_148_022


    case invert_EXT = 1_000_148_023


    case invertRgb_EXT = 1_000_148_024


    case lineardodge_EXT = 1_000_148_025


    case linearburn_EXT = 1_000_148_026


    case vividlight_EXT = 1_000_148_027


    case linearlight_EXT = 1_000_148_028


    case pinlight_EXT = 1_000_148_029


    case hardmix_EXT = 1_000_148_030


    case hslHue_EXT = 1_000_148_031


    case hslSaturation_EXT = 1_000_148_032


    case hslColor_EXT = 1_000_148_033


    case hslLuminosity_EXT = 1_000_148_034


    case plus_EXT = 1_000_148_035


    case plusClamped_EXT = 1_000_148_036


    case plusClampedAlpha_EXT = 1_000_148_037


    case plusDarker_EXT = 1_000_148_038


    case minus_EXT = 1_000_148_039


    case minusClamped_EXT = 1_000_148_040


    case contrast_EXT = 1_000_148_041


    case invertOvg_EXT = 1_000_148_042


    case red_EXT = 1_000_148_043


    case green_EXT = 1_000_148_044


    case blue_EXT = 1_000_148_045
}


public enum BlendOverlapEXT: CVulkan.VkBlendOverlapEXT.RawValue {

    case uncorrelated_EXT = 0


    case disjoint_EXT = 1


    case conjoint_EXT = 2
}


public enum BlockMatchWindowCompareModeQCOM: CVulkan.VkBlockMatchWindowCompareModeQCOM.RawValue {

    case min_QCOM = 0


    case max_QCOM = 1
}


public enum BorderColor: CVulkan.VkBorderColor.RawValue {

    case floatTransparentBlack = 0


    case intTransparentBlack = 1


    case floatOpaqueBlack = 2


    case intOpaqueBlack = 3


    case floatOpaqueWhite = 4


    case intOpaqueWhite = 5


    case floatCustom_EXT = 1_000_287_003


    case intCustom_EXT = 1_000_287_004
}


public enum BuildAccelerationStructureModeKHR: CVulkan.VkBuildAccelerationStructureModeKHR.RawValue {

    case build_KHR = 0


    case update_KHR = 1
}


public enum BuildMicromapModeEXT: CVulkan.VkBuildMicromapModeEXT.RawValue {

    case build_EXT = 0
}


public enum ChromaLocation: CVulkan.VkChromaLocation.RawValue {

    case cositedEven = 0


    case midpoint = 1


    @inlinable
    public static var cositedEven_KHR: ChromaLocation { self.cositedEven }


    @inlinable
    public static var midpoint_KHR: ChromaLocation { self.midpoint }
}


public enum ClusterAccelerationStructureOpModeNV: CVulkan.VkClusterAccelerationStructureOpModeNV.RawValue {

    case implicitDestinations_NV = 0


    case explicitDestinations_NV = 1


    case computeSizes_NV = 2
}


public enum ClusterAccelerationStructureOpTypeNV: CVulkan.VkClusterAccelerationStructureOpTypeNV.RawValue {

    case moveObjects_NV = 0


    case buildClustersBottomLevel_NV = 1


    case buildTriangleCluster_NV = 2


    case buildTriangleClusterTemplate_NV = 3


    case instantiateTriangleCluster_NV = 4
}


public enum ClusterAccelerationStructureTypeNV: CVulkan.VkClusterAccelerationStructureTypeNV.RawValue {

    case clustersBottomLevel_NV = 0


    case triangleCluster_NV = 1


    case triangleClusterTemplate_NV = 2
}


public enum CoarseSampleOrderTypeNV: CVulkan.VkCoarseSampleOrderTypeNV.RawValue {

    case default_NV = 0


    case custom_NV = 1


    case pixelMajor_NV = 2


    case sampleMajor_NV = 3
}


public enum ColorSpaceKHR: CVulkan.VkColorSpaceKHR.RawValue {

    case srgbNonlinear_KHR = 0


    case displayP3Nonlinear_EXT = 1_000_104_001


    case extendedSrgbLinear_EXT = 1_000_104_002


    case displayP3Linear_EXT = 1_000_104_003


    case dciP3Nonlinear_EXT = 1_000_104_004


    case bt709Linear_EXT = 1_000_104_005


    case bt709Nonlinear_EXT = 1_000_104_006


    case bt2020Linear_EXT = 1_000_104_007


    case hdr10St2084_EXT = 1_000_104_008


    case dolbyvision_EXT = 1_000_104_009


    case hdr10Hlg_EXT = 1_000_104_010


    case adobergbLinear_EXT = 1_000_104_011


    case adobergbNonlinear_EXT = 1_000_104_012


    case passThrough_EXT = 1_000_104_013


    case extendedSrgbNonlinear_EXT = 1_000_104_014


    case displayNative_AMD = 1_000_213_000


    @inlinable
    public static var spaceSrgbNonlinear_KHR: ColorSpaceKHR { self.srgbNonlinear_KHR }


    @inlinable
    public static var dciP3Linear_EXT: ColorSpaceKHR { self.displayP3Linear_EXT }
}


public enum CommandBufferLevel: CVulkan.VkCommandBufferLevel.RawValue {

    case primary = 0


    case secondary = 1
}


public enum CompareOp: CVulkan.VkCompareOp.RawValue {

    case never = 0


    case less = 1


    case equal = 2


    case lessOrEqual = 3


    case greater = 4


    case notEqual = 5


    case greaterOrEqual = 6


    case always = 7
}


public enum ComponentSwizzle: CVulkan.VkComponentSwizzle.RawValue {

    case identity = 0


    case zero = 1


    case one = 2


    case r = 3


    case g = 4


    case b = 5


    case a = 6
}


public enum ComponentTypeKHR: CVulkan.VkComponentTypeKHR.RawValue {

    case float16_KHR = 0


    case float32_KHR = 1


    case float64_KHR = 2


    case sint8_KHR = 3


    case sint16_KHR = 4


    case sint32_KHR = 5


    case sint64_KHR = 6


    case uint8_KHR = 7


    case uint16_KHR = 8


    case uint32_KHR = 9


    case uint64_KHR = 10


    case bfloat16_KHR = 1_000_141_000


    case sint8Packed_NV = 1_000_491_000


    case uint8Packed_NV = 1_000_491_001


    case floatE4m3_NV = 1_000_491_002


    case floatE5m2_NV = 1_000_491_003


    @inlinable
    public static var float16_NV: ComponentTypeKHR { self.float16_KHR }


    @inlinable
    public static var float32_NV: ComponentTypeKHR { self.float32_KHR }


    @inlinable
    public static var float64_NV: ComponentTypeKHR { self.float64_KHR }


    @inlinable
    public static var sint8_NV: ComponentTypeKHR { self.sint8_KHR }


    @inlinable
    public static var sint16_NV: ComponentTypeKHR { self.sint16_KHR }


    @inlinable
    public static var sint32_NV: ComponentTypeKHR { self.sint32_KHR }


    @inlinable
    public static var sint64_NV: ComponentTypeKHR { self.sint64_KHR }


    @inlinable
    public static var uint8_NV: ComponentTypeKHR { self.uint8_KHR }


    @inlinable
    public static var uint16_NV: ComponentTypeKHR { self.uint16_KHR }


    @inlinable
    public static var uint32_NV: ComponentTypeKHR { self.uint32_KHR }


    @inlinable
    public static var uint64_NV: ComponentTypeKHR { self.uint64_KHR }
}


public enum ConservativeRasterizationModeEXT: CVulkan.VkConservativeRasterizationModeEXT.RawValue {

    case disabled_EXT = 0


    case overestimate_EXT = 1


    case underestimate_EXT = 2
}


public enum CooperativeVectorMatrixLayoutNV: CVulkan.VkCooperativeVectorMatrixLayoutNV.RawValue {

    case rowMajor_NV = 0


    case columnMajor_NV = 1


    case inferencingOptimal_NV = 2


    case trainingOptimal_NV = 3
}


public enum CopyAccelerationStructureModeKHR: CVulkan.VkCopyAccelerationStructureModeKHR.RawValue {

    case clone_KHR = 0


    case compact_KHR = 1


    case serialize_KHR = 2


    case deserialize_KHR = 3


    @inlinable
    public static var clone_NV: CopyAccelerationStructureModeKHR { self.clone_KHR }


    @inlinable
    public static var compact_NV: CopyAccelerationStructureModeKHR { self.compact_KHR }
}


public enum CopyMicromapModeEXT: CVulkan.VkCopyMicromapModeEXT.RawValue {

    case clone_EXT = 0


    case serialize_EXT = 1


    case deserialize_EXT = 2


    case compact_EXT = 3
}


public enum CoverageModulationModeNV: CVulkan.VkCoverageModulationModeNV.RawValue {

    case none_NV = 0


    case rgb_NV = 1


    case alpha_NV = 2


    case rgba_NV = 3
}


public enum CoverageReductionModeNV: CVulkan.VkCoverageReductionModeNV.RawValue {

    case merge_NV = 0


    case truncate_NV = 1
}


public enum CubicFilterWeightsQCOM: CVulkan.VkCubicFilterWeightsQCOM.RawValue {

    case catmullRom_QCOM = 0


    case zeroTangentCardinal_QCOM = 1


    case bSpline_QCOM = 2


    case mitchellNetravali_QCOM = 3
}


public enum DebugReportObjectTypeEXT: CVulkan.VkDebugReportObjectTypeEXT.RawValue {

    case unknown_EXT = 0


    case instance_EXT = 1


    case physicalDevice_EXT = 2


    case device_EXT = 3


    case queue_EXT = 4


    case semaphore_EXT = 5


    case commandBuffer_EXT = 6


    case fence_EXT = 7


    case deviceMemory_EXT = 8


    case buffer_EXT = 9


    case image_EXT = 10


    case event_EXT = 11


    case queryPool_EXT = 12


    case bufferView_EXT = 13


    case imageView_EXT = 14


    case shaderModule_EXT = 15


    case pipelineCache_EXT = 16


    case pipelineLayout_EXT = 17


    case renderPass_EXT = 18


    case pipeline_EXT = 19


    case descriptorSetLayout_EXT = 20


    case sampler_EXT = 21


    case descriptorPool_EXT = 22


    case descriptorSet_EXT = 23


    case framebuffer_EXT = 24


    case commandPool_EXT = 25


    case surfaceKhr_EXT = 26


    case swapchainKhr_EXT = 27


    case debugReportCallbackExt_EXT = 28


    case displayKhr_EXT = 29


    case displayModeKhr_EXT = 30


    case validationCacheExt_EXT = 33


    case samplerYcbcrConversion_EXT = 1_000_156_000


    case descriptorUpdateTemplate_EXT = 1_000_085_000


    case cuModuleNvx_EXT = 1_000_029_000


    case cuFunctionNvx_EXT = 1_000_029_001


    case accelerationStructureKhr_EXT = 1_000_150_000


    case accelerationStructureNv_EXT = 1_000_165_000


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case cudaModuleNv_EXT = 1_000_307_000


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case cudaFunctionNv_EXT = 1_000_307_001


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case bufferCollectionFuchsia_EXT = 1_000_366_000


    @inlinable
    public static var debugReport_EXT: DebugReportObjectTypeEXT { self.debugReportCallbackExt_EXT }


    @inlinable
    public static var validationCache_EXT: DebugReportObjectTypeEXT { self.validationCacheExt_EXT }


    @inlinable
    public static var descriptorUpdateTemplateKhr_EXT: DebugReportObjectTypeEXT { self.descriptorUpdateTemplate_EXT }


    @inlinable
    public static var samplerYcbcrConversionKhr_EXT: DebugReportObjectTypeEXT { self.samplerYcbcrConversion_EXT }
}


public enum DepthBiasRepresentationEXT: CVulkan.VkDepthBiasRepresentationEXT.RawValue {

    case leastRepresentableValueFormat_EXT = 0


    case leastRepresentableValueForceUnorm_EXT = 1


    case float_EXT = 2
}


public enum DepthClampModeEXT: CVulkan.VkDepthClampModeEXT.RawValue {

    case viewportRange_EXT = 0


    case userDefinedRange_EXT = 1
}


public enum DescriptorType: CVulkan.VkDescriptorType.RawValue {

    case sampler = 0


    case combinedImageSampler = 1


    case sampledImage = 2


    case storageImage = 3


    case uniformTexelBuffer = 4


    case storageTexelBuffer = 5


    case uniformBuffer = 6


    case storageBuffer = 7


    case uniformBufferDynamic = 8


    case storageBufferDynamic = 9


    case inputAttachment = 10


    case inlineUniformBlock = 1_000_138_000


    case accelerationStructure_KHR = 1_000_150_000


    case accelerationStructure_NV = 1_000_165_000


    case sampleWeightImage_QCOM = 1_000_440_000


    case blockMatchImage_QCOM = 1_000_440_001


    case mutable_EXT = 1_000_351_000


    case partitionedAccelerationStructure_NV = 1_000_570_000


    @inlinable
    public static var inlineUniformBlock_EXT: DescriptorType { self.inlineUniformBlock }


    @inlinable
    public static var mutable_VALVE: DescriptorType { self.mutable_EXT }
}


public enum DescriptorUpdateTemplateType: CVulkan.VkDescriptorUpdateTemplateType.RawValue {

    case descriptorSet = 0


    case pushDescriptors = 1


    @inlinable
    public static var pushDescriptors_KHR: DescriptorUpdateTemplateType { self.pushDescriptors }


    @inlinable
    public static var descriptorSet_KHR: DescriptorUpdateTemplateType { self.descriptorSet }
}


public enum DeviceAddressBindingTypeEXT: CVulkan.VkDeviceAddressBindingTypeEXT.RawValue {

    case bind_EXT = 0


    case unbind_EXT = 1
}


public enum DeviceEventTypeEXT: CVulkan.VkDeviceEventTypeEXT.RawValue {

    case displayHotplug_EXT = 0
}


public enum DeviceFaultAddressTypeEXT: CVulkan.VkDeviceFaultAddressTypeEXT.RawValue {

    case none_EXT = 0


    case readInvalid_EXT = 1


    case writeInvalid_EXT = 2


    case executeInvalid_EXT = 3


    case instructionPointerUnknown_EXT = 4


    case instructionPointerInvalid_EXT = 5


    case instructionPointerFault_EXT = 6
}


public enum DeviceFaultVendorBinaryHeaderVersionEXT: CVulkan.VkDeviceFaultVendorBinaryHeaderVersionEXT.RawValue {

    case one_EXT = 1
}


public enum DeviceMemoryReportEventTypeEXT: CVulkan.VkDeviceMemoryReportEventTypeEXT.RawValue {

    case allocate_EXT = 0


    case free_EXT = 1


    case import_EXT = 2


    case unimport_EXT = 3


    case allocationFailed_EXT = 4
}


public enum DirectDriverLoadingModeLUNARG: CVulkan.VkDirectDriverLoadingModeLUNARG.RawValue {

    case exclusive_LUNARG = 0


    case inclusive_LUNARG = 1
}


public enum DiscardRectangleModeEXT: CVulkan.VkDiscardRectangleModeEXT.RawValue {

    case inclusive_EXT = 0


    case exclusive_EXT = 1
}


#if EnableProvisional
    public enum DisplacementMicromapFormatNV: CVulkan.VkDisplacementMicromapFormatNV.RawValue {

        case `64Triangles64Bytes_NV` = 1


        case `256Triangles128Bytes_NV` = 2


        case `1024Triangles128Bytes_NV` = 3
    }
#else
    @available(*, unavailable, message: "This case requires the following trait: EnableProvisional.")
    public enum DisplacementMicromapFormatNV {}
#endif


public enum DisplayEventTypeEXT: CVulkan.VkDisplayEventTypeEXT.RawValue {

    case firstPixelOut_EXT = 0
}


public enum DisplayPowerStateEXT: CVulkan.VkDisplayPowerStateEXT.RawValue {

    case off_EXT = 0


    case suspend_EXT = 1


    case on_EXT = 2
}


public enum DisplaySurfaceStereoTypeNV: CVulkan.VkDisplaySurfaceStereoTypeNV.RawValue {

    case none_NV = 0


    case onboardDin_NV = 1


    case hdmi3d_NV = 2


    case inbandDisplayport_NV = 3
}


public enum DriverId: CVulkan.VkDriverId.RawValue {

    case amdProprietary = 1


    case amdOpenSource = 2


    case mesaRadv = 3


    case nvidiaProprietary = 4


    case intelProprietaryWindows = 5


    case intelOpenSource_MESA = 6


    case imaginationProprietary = 7


    case qualcommProprietary = 8


    case armProprietary = 9


    case googleSwiftshader = 10


    case ggpProprietary = 11


    case broadcomProprietary = 12


    case mesaLlvmpipe = 13


    case moltenvk = 14


    case coreaviProprietary = 15


    case juiceProprietary = 16


    case verisiliconProprietary = 17


    case mesaTurnip = 18


    case mesaV3dv = 19


    case mesaPanvk = 20


    case samsungProprietary = 21


    case mesaVenus = 22


    case mesaDozen = 23


    case mesaNvk = 24


    case imaginationOpenSource_MESA = 25


    case mesaHoneykrisp = 26


    case vulkanScEmulationOnVulkan = 27


    @inlinable
    public static var amdProprietary_KHR: DriverId { self.amdProprietary }


    @inlinable
    public static var amdOpenSource_KHR: DriverId { self.amdOpenSource }


    @inlinable
    public static var mesaRadv_KHR: DriverId { self.mesaRadv }


    @inlinable
    public static var nvidiaProprietary_KHR: DriverId { self.nvidiaProprietary }


    @inlinable
    public static var intelProprietaryWindows_KHR: DriverId { self.intelProprietaryWindows }


    @inlinable
    public static var intelOpenSourceMesa_KHR: DriverId { self.intelOpenSource_MESA }


    @inlinable
    public static var imaginationProprietary_KHR: DriverId { self.imaginationProprietary }


    @inlinable
    public static var qualcommProprietary_KHR: DriverId { self.qualcommProprietary }


    @inlinable
    public static var armProprietary_KHR: DriverId { self.armProprietary }


    @inlinable
    public static var googleSwiftshader_KHR: DriverId { self.googleSwiftshader }


    @inlinable
    public static var ggpProprietary_KHR: DriverId { self.ggpProprietary }


    @inlinable
    public static var broadcomProprietary_KHR: DriverId { self.broadcomProprietary }
}


public enum DynamicState: CVulkan.VkDynamicState.RawValue {

    case viewport = 0


    case scissor = 1


    case lineWidth = 2


    case depthBias = 3


    case blendConstants = 4


    case depthBounds = 5


    case stencilCompareMask = 6


    case stencilWriteMask = 7


    case stencilReference = 8


    case cullMode = 1_000_267_000


    case frontFace = 1_000_267_001


    case primitiveTopology = 1_000_267_002


    case viewportWithCount = 1_000_267_003


    case scissorWithCount = 1_000_267_004


    case vertexInputBindingStride = 1_000_267_005


    case depthTestEnable = 1_000_267_006


    case depthWriteEnable = 1_000_267_007


    case depthCompareOp = 1_000_267_008


    case depthBoundsTestEnable = 1_000_267_009


    case stencilTestEnable = 1_000_267_010


    case stencilOp = 1_000_267_011


    case rasterizerDiscardEnable = 1_000_377_001


    case depthBiasEnable = 1_000_377_002


    case primitiveRestartEnable = 1_000_377_004


    case lineStipple = 1_000_259_000


    case viewportWScaling_NV = 1_000_087_000


    case discardRectangle_EXT = 1_000_099_000


    case discardRectangleEnable_EXT = 1_000_099_001


    case discardRectangleMode_EXT = 1_000_099_002


    case sampleLocations_EXT = 1_000_143_000


    case rayTracingPipelineStackSize_KHR = 1_000_347_000


    case viewportShadingRatePalette_NV = 1_000_164_004


    case viewportCoarseSampleOrder_NV = 1_000_164_006


    case exclusiveScissorEnable_NV = 1_000_205_000


    case exclusiveScissor_NV = 1_000_205_001


    case fragmentShadingRate_KHR = 1_000_226_000


    case vertexInput_EXT = 1_000_352_000


    case patchControlPoints_EXT = 1_000_377_000


    case logicOp_EXT = 1_000_377_003


    case colorWriteEnable_EXT = 1_000_381_000


    case depthClampEnable_EXT = 1_000_455_003


    case polygonMode_EXT = 1_000_455_004


    case rasterizationSamples_EXT = 1_000_455_005


    case sampleMask_EXT = 1_000_455_006


    case alphaToCoverageEnable_EXT = 1_000_455_007


    case alphaToOneEnable_EXT = 1_000_455_008


    case logicOpEnable_EXT = 1_000_455_009


    case colorBlendEnable_EXT = 1_000_455_010


    case colorBlendEquation_EXT = 1_000_455_011


    case colorWriteMask_EXT = 1_000_455_012


    case tessellationDomainOrigin_EXT = 1_000_455_002


    case rasterizationStream_EXT = 1_000_455_013


    case conservativeRasterizationMode_EXT = 1_000_455_014


    case extraPrimitiveOverestimationSize_EXT = 1_000_455_015


    case depthClipEnable_EXT = 1_000_455_016


    case sampleLocationsEnable_EXT = 1_000_455_017


    case colorBlendAdvanced_EXT = 1_000_455_018


    case provokingVertexMode_EXT = 1_000_455_019


    case lineRasterizationMode_EXT = 1_000_455_020


    case lineStippleEnable_EXT = 1_000_455_021


    case depthClipNegativeOneToOne_EXT = 1_000_455_022


    case viewportWScalingEnable_NV = 1_000_455_023


    case viewportSwizzle_NV = 1_000_455_024


    case coverageToColorEnable_NV = 1_000_455_025


    case coverageToColorLocation_NV = 1_000_455_026


    case coverageModulationMode_NV = 1_000_455_027


    case coverageModulationTableEnable_NV = 1_000_455_028


    case coverageModulationTable_NV = 1_000_455_029


    case shadingRateImageEnable_NV = 1_000_455_030


    case representativeFragmentTestEnable_NV = 1_000_455_031


    case coverageReductionMode_NV = 1_000_455_032


    case attachmentFeedbackLoopEnable_EXT = 1_000_524_000


    case depthClampRange_EXT = 1_000_582_000


    @inlinable
    public static var lineStipple_EXT: DynamicState { self.lineStipple }


    @inlinable
    public static var cullMode_EXT: DynamicState { self.cullMode }


    @inlinable
    public static var frontFace_EXT: DynamicState { self.frontFace }


    @inlinable
    public static var primitiveTopology_EXT: DynamicState { self.primitiveTopology }


    @inlinable
    public static var viewportWithCount_EXT: DynamicState { self.viewportWithCount }


    @inlinable
    public static var scissorWithCount_EXT: DynamicState { self.scissorWithCount }


    @inlinable
    public static var vertexInputBindingStride_EXT: DynamicState { self.vertexInputBindingStride }


    @inlinable
    public static var depthTestEnable_EXT: DynamicState { self.depthTestEnable }


    @inlinable
    public static var depthWriteEnable_EXT: DynamicState { self.depthWriteEnable }


    @inlinable
    public static var depthCompareOp_EXT: DynamicState { self.depthCompareOp }


    @inlinable
    public static var depthBoundsTestEnable_EXT: DynamicState { self.depthBoundsTestEnable }


    @inlinable
    public static var stencilTestEnable_EXT: DynamicState { self.stencilTestEnable }


    @inlinable
    public static var stencilOp_EXT: DynamicState { self.stencilOp }


    @inlinable
    public static var rasterizerDiscardEnable_EXT: DynamicState { self.rasterizerDiscardEnable }


    @inlinable
    public static var depthBiasEnable_EXT: DynamicState { self.depthBiasEnable }


    @inlinable
    public static var primitiveRestartEnable_EXT: DynamicState { self.primitiveRestartEnable }


    @inlinable
    public static var lineStipple_KHR: DynamicState { self.lineStipple }
}


public enum Filter: CVulkan.VkFilter.RawValue {

    case nearest = 0


    case linear = 1


    case cubic_EXT = 1_000_015_000


    @inlinable
    public static var cubic_IMG: Filter { self.cubic_EXT }
}


public enum Format: CVulkan.VkFormat.RawValue {

    case undefined = 0


    case r4g4UnormPack8 = 1


    case r4g4b4a4UnormPack16 = 2


    case b4g4r4a4UnormPack16 = 3


    case r5g6b5UnormPack16 = 4


    case b5g6r5UnormPack16 = 5


    case r5g5b5a1UnormPack16 = 6


    case b5g5r5a1UnormPack16 = 7


    case a1r5g5b5UnormPack16 = 8


    case r8Unorm = 9


    case r8Snorm = 10


    case r8Uscaled = 11


    case r8Sscaled = 12


    case r8Uint = 13


    case r8Sint = 14


    case r8Srgb = 15


    case r8g8Unorm = 16


    case r8g8Snorm = 17


    case r8g8Uscaled = 18


    case r8g8Sscaled = 19


    case r8g8Uint = 20


    case r8g8Sint = 21


    case r8g8Srgb = 22


    case r8g8b8Unorm = 23


    case r8g8b8Snorm = 24


    case r8g8b8Uscaled = 25


    case r8g8b8Sscaled = 26


    case r8g8b8Uint = 27


    case r8g8b8Sint = 28


    case r8g8b8Srgb = 29


    case b8g8r8Unorm = 30


    case b8g8r8Snorm = 31


    case b8g8r8Uscaled = 32


    case b8g8r8Sscaled = 33


    case b8g8r8Uint = 34


    case b8g8r8Sint = 35


    case b8g8r8Srgb = 36


    case r8g8b8a8Unorm = 37


    case r8g8b8a8Snorm = 38


    case r8g8b8a8Uscaled = 39


    case r8g8b8a8Sscaled = 40


    case r8g8b8a8Uint = 41


    case r8g8b8a8Sint = 42


    case r8g8b8a8Srgb = 43


    case b8g8r8a8Unorm = 44


    case b8g8r8a8Snorm = 45


    case b8g8r8a8Uscaled = 46


    case b8g8r8a8Sscaled = 47


    case b8g8r8a8Uint = 48


    case b8g8r8a8Sint = 49


    case b8g8r8a8Srgb = 50


    case a8b8g8r8UnormPack32 = 51


    case a8b8g8r8SnormPack32 = 52


    case a8b8g8r8UscaledPack32 = 53


    case a8b8g8r8SscaledPack32 = 54


    case a8b8g8r8UintPack32 = 55


    case a8b8g8r8SintPack32 = 56


    case a8b8g8r8SrgbPack32 = 57


    case a2r10g10b10UnormPack32 = 58


    case a2r10g10b10SnormPack32 = 59


    case a2r10g10b10UscaledPack32 = 60


    case a2r10g10b10SscaledPack32 = 61


    case a2r10g10b10UintPack32 = 62


    case a2r10g10b10SintPack32 = 63


    case a2b10g10r10UnormPack32 = 64


    case a2b10g10r10SnormPack32 = 65


    case a2b10g10r10UscaledPack32 = 66


    case a2b10g10r10SscaledPack32 = 67


    case a2b10g10r10UintPack32 = 68


    case a2b10g10r10SintPack32 = 69


    case r16Unorm = 70


    case r16Snorm = 71


    case r16Uscaled = 72


    case r16Sscaled = 73


    case r16Uint = 74


    case r16Sint = 75


    case r16Sfloat = 76


    case r16g16Unorm = 77


    case r16g16Snorm = 78


    case r16g16Uscaled = 79


    case r16g16Sscaled = 80


    case r16g16Uint = 81


    case r16g16Sint = 82


    case r16g16Sfloat = 83


    case r16g16b16Unorm = 84


    case r16g16b16Snorm = 85


    case r16g16b16Uscaled = 86


    case r16g16b16Sscaled = 87


    case r16g16b16Uint = 88


    case r16g16b16Sint = 89


    case r16g16b16Sfloat = 90


    case r16g16b16a16Unorm = 91


    case r16g16b16a16Snorm = 92


    case r16g16b16a16Uscaled = 93


    case r16g16b16a16Sscaled = 94


    case r16g16b16a16Uint = 95


    case r16g16b16a16Sint = 96


    case r16g16b16a16Sfloat = 97


    case r32Uint = 98


    case r32Sint = 99


    case r32Sfloat = 100


    case r32g32Uint = 101


    case r32g32Sint = 102


    case r32g32Sfloat = 103


    case r32g32b32Uint = 104


    case r32g32b32Sint = 105


    case r32g32b32Sfloat = 106


    case r32g32b32a32Uint = 107


    case r32g32b32a32Sint = 108


    case r32g32b32a32Sfloat = 109


    case r64Uint = 110


    case r64Sint = 111


    case r64Sfloat = 112


    case r64g64Uint = 113


    case r64g64Sint = 114


    case r64g64Sfloat = 115


    case r64g64b64Uint = 116


    case r64g64b64Sint = 117


    case r64g64b64Sfloat = 118


    case r64g64b64a64Uint = 119


    case r64g64b64a64Sint = 120


    case r64g64b64a64Sfloat = 121


    case b10g11r11UfloatPack32 = 122


    case e5b9g9r9UfloatPack32 = 123


    case d16Unorm = 124


    case x8D24UnormPack32 = 125


    case d32Sfloat = 126


    case s8Uint = 127


    case d16UnormS8Uint = 128


    case d24UnormS8Uint = 129


    case d32SfloatS8Uint = 130


    case bc1RgbUnormBlock = 131


    case bc1RgbSrgbBlock = 132


    case bc1RgbaUnormBlock = 133


    case bc1RgbaSrgbBlock = 134


    case bc2UnormBlock = 135


    case bc2SrgbBlock = 136


    case bc3UnormBlock = 137


    case bc3SrgbBlock = 138


    case bc4UnormBlock = 139


    case bc4SnormBlock = 140


    case bc5UnormBlock = 141


    case bc5SnormBlock = 142


    case bc6hUfloatBlock = 143


    case bc6hSfloatBlock = 144


    case bc7UnormBlock = 145


    case bc7SrgbBlock = 146


    case etc2R8g8b8UnormBlock = 147


    case etc2R8g8b8SrgbBlock = 148


    case etc2R8g8b8a1UnormBlock = 149


    case etc2R8g8b8a1SrgbBlock = 150


    case etc2R8g8b8a8UnormBlock = 151


    case etc2R8g8b8a8SrgbBlock = 152


    case eacR11UnormBlock = 153


    case eacR11SnormBlock = 154


    case eacR11g11UnormBlock = 155


    case eacR11g11SnormBlock = 156


    case astc4x4UnormBlock = 157


    case astc4x4SrgbBlock = 158


    case astc5x4UnormBlock = 159


    case astc5x4SrgbBlock = 160


    case astc5x5UnormBlock = 161


    case astc5x5SrgbBlock = 162


    case astc6x5UnormBlock = 163


    case astc6x5SrgbBlock = 164


    case astc6x6UnormBlock = 165


    case astc6x6SrgbBlock = 166


    case astc8x5UnormBlock = 167


    case astc8x5SrgbBlock = 168


    case astc8x6UnormBlock = 169


    case astc8x6SrgbBlock = 170


    case astc8x8UnormBlock = 171


    case astc8x8SrgbBlock = 172


    case astc10x5UnormBlock = 173


    case astc10x5SrgbBlock = 174


    case astc10x6UnormBlock = 175


    case astc10x6SrgbBlock = 176


    case astc10x8UnormBlock = 177


    case astc10x8SrgbBlock = 178


    case astc10x10UnormBlock = 179


    case astc10x10SrgbBlock = 180


    case astc12x10UnormBlock = 181


    case astc12x10SrgbBlock = 182


    case astc12x12UnormBlock = 183


    case astc12x12SrgbBlock = 184


    case g8b8g8r8422Unorm = 1_000_156_000


    case b8g8r8g8422Unorm = 1_000_156_001


    case g8B8R83plane420Unorm = 1_000_156_002


    case g8B8r82plane420Unorm = 1_000_156_003


    case g8B8R83plane422Unorm = 1_000_156_004


    case g8B8r82plane422Unorm = 1_000_156_005


    case g8B8R83plane444Unorm = 1_000_156_006


    case r10x6UnormPack16 = 1_000_156_007


    case r10x6g10x6Unorm2pack16 = 1_000_156_008


    case r10x6g10x6b10x6a10x6Unorm4pack16 = 1_000_156_009


    case g10x6b10x6g10x6r10x6422Unorm4pack16 = 1_000_156_010


    case b10x6g10x6r10x6g10x6422Unorm4pack16 = 1_000_156_011


    case g10x6B10x6R10x63plane420Unorm3pack16 = 1_000_156_012


    case g10x6B10x6r10x62plane420Unorm3pack16 = 1_000_156_013


    case g10x6B10x6R10x63plane422Unorm3pack16 = 1_000_156_014


    case g10x6B10x6r10x62plane422Unorm3pack16 = 1_000_156_015


    case g10x6B10x6R10x63plane444Unorm3pack16 = 1_000_156_016


    case r12x4UnormPack16 = 1_000_156_017


    case r12x4g12x4Unorm2pack16 = 1_000_156_018


    case r12x4g12x4b12x4a12x4Unorm4pack16 = 1_000_156_019


    case g12x4b12x4g12x4r12x4422Unorm4pack16 = 1_000_156_020


    case b12x4g12x4r12x4g12x4422Unorm4pack16 = 1_000_156_021


    case g12x4B12x4R12x43plane420Unorm3pack16 = 1_000_156_022


    case g12x4B12x4r12x42plane420Unorm3pack16 = 1_000_156_023


    case g12x4B12x4R12x43plane422Unorm3pack16 = 1_000_156_024


    case g12x4B12x4r12x42plane422Unorm3pack16 = 1_000_156_025


    case g12x4B12x4R12x43plane444Unorm3pack16 = 1_000_156_026


    case g16b16g16r16422Unorm = 1_000_156_027


    case b16g16r16g16422Unorm = 1_000_156_028


    case g16B16R163plane420Unorm = 1_000_156_029


    case g16B16r162plane420Unorm = 1_000_156_030


    case g16B16R163plane422Unorm = 1_000_156_031


    case g16B16r162plane422Unorm = 1_000_156_032


    case g16B16R163plane444Unorm = 1_000_156_033


    case g8B8r82plane444Unorm = 1_000_330_000


    case g10x6B10x6r10x62plane444Unorm3pack16 = 1_000_330_001


    case g12x4B12x4r12x42plane444Unorm3pack16 = 1_000_330_002


    case g16B16r162plane444Unorm = 1_000_330_003


    case a4r4g4b4UnormPack16 = 1_000_340_000


    case a4b4g4r4UnormPack16 = 1_000_340_001


    case astc4x4SfloatBlock = 1_000_066_000


    case astc5x4SfloatBlock = 1_000_066_001


    case astc5x5SfloatBlock = 1_000_066_002


    case astc6x5SfloatBlock = 1_000_066_003


    case astc6x6SfloatBlock = 1_000_066_004


    case astc8x5SfloatBlock = 1_000_066_005


    case astc8x6SfloatBlock = 1_000_066_006


    case astc8x8SfloatBlock = 1_000_066_007


    case astc10x5SfloatBlock = 1_000_066_008


    case astc10x6SfloatBlock = 1_000_066_009


    case astc10x8SfloatBlock = 1_000_066_010


    case astc10x10SfloatBlock = 1_000_066_011


    case astc12x10SfloatBlock = 1_000_066_012


    case astc12x12SfloatBlock = 1_000_066_013


    case a1b5g5r5UnormPack16 = 1_000_470_000


    case a8Unorm = 1_000_470_001


    case pvrtc12bppUnormBlock_IMG = 1_000_054_000


    case pvrtc14bppUnormBlock_IMG = 1_000_054_001


    case pvrtc22bppUnormBlock_IMG = 1_000_054_002


    case pvrtc24bppUnormBlock_IMG = 1_000_054_003


    case pvrtc12bppSrgbBlock_IMG = 1_000_054_004


    case pvrtc14bppSrgbBlock_IMG = 1_000_054_005


    case pvrtc22bppSrgbBlock_IMG = 1_000_054_006


    case pvrtc24bppSrgbBlock_IMG = 1_000_054_007


    case r16g16Sfixed5_NV = 1_000_464_000


    @inlinable
    public static var astc4x4SfloatBlock_EXT: Format { self.astc4x4SfloatBlock }


    @inlinable
    public static var astc5x4SfloatBlock_EXT: Format { self.astc5x4SfloatBlock }


    @inlinable
    public static var astc5x5SfloatBlock_EXT: Format { self.astc5x5SfloatBlock }


    @inlinable
    public static var astc6x5SfloatBlock_EXT: Format { self.astc6x5SfloatBlock }


    @inlinable
    public static var astc6x6SfloatBlock_EXT: Format { self.astc6x6SfloatBlock }


    @inlinable
    public static var astc8x5SfloatBlock_EXT: Format { self.astc8x5SfloatBlock }


    @inlinable
    public static var astc8x6SfloatBlock_EXT: Format { self.astc8x6SfloatBlock }


    @inlinable
    public static var astc8x8SfloatBlock_EXT: Format { self.astc8x8SfloatBlock }


    @inlinable
    public static var astc10x5SfloatBlock_EXT: Format { self.astc10x5SfloatBlock }


    @inlinable
    public static var astc10x6SfloatBlock_EXT: Format { self.astc10x6SfloatBlock }


    @inlinable
    public static var astc10x8SfloatBlock_EXT: Format { self.astc10x8SfloatBlock }


    @inlinable
    public static var astc10x10SfloatBlock_EXT: Format { self.astc10x10SfloatBlock }


    @inlinable
    public static var astc12x10SfloatBlock_EXT: Format { self.astc12x10SfloatBlock }


    @inlinable
    public static var astc12x12SfloatBlock_EXT: Format { self.astc12x12SfloatBlock }


    @inlinable
    public static var g8b8g8r8422Unorm_KHR: Format { self.g8b8g8r8422Unorm }


    @inlinable
    public static var b8g8r8g8422Unorm_KHR: Format { self.b8g8r8g8422Unorm }


    @inlinable
    public static var g8B8R83plane420Unorm_KHR: Format { self.g8B8R83plane420Unorm }


    @inlinable
    public static var g8B8r82plane420Unorm_KHR: Format { self.g8B8r82plane420Unorm }


    @inlinable
    public static var g8B8R83plane422Unorm_KHR: Format { self.g8B8R83plane422Unorm }


    @inlinable
    public static var g8B8r82plane422Unorm_KHR: Format { self.g8B8r82plane422Unorm }


    @inlinable
    public static var g8B8R83plane444Unorm_KHR: Format { self.g8B8R83plane444Unorm }


    @inlinable
    public static var r10x6UnormPack16_KHR: Format { self.r10x6UnormPack16 }


    @inlinable
    public static var r10x6g10x6Unorm2pack16_KHR: Format { self.r10x6g10x6Unorm2pack16 }


    @inlinable
    public static var r10x6g10x6b10x6a10x6Unorm4pack16_KHR: Format { self.r10x6g10x6b10x6a10x6Unorm4pack16 }


    @inlinable
    public static var g10x6b10x6g10x6r10x6422Unorm4pack16_KHR: Format { self.g10x6b10x6g10x6r10x6422Unorm4pack16 }


    @inlinable
    public static var b10x6g10x6r10x6g10x6422Unorm4pack16_KHR: Format { self.b10x6g10x6r10x6g10x6422Unorm4pack16 }


    @inlinable
    public static var g10x6B10x6R10x63plane420Unorm3pack16_KHR: Format { self.g10x6B10x6R10x63plane420Unorm3pack16 }


    @inlinable
    public static var g10x6B10x6r10x62plane420Unorm3pack16_KHR: Format { self.g10x6B10x6r10x62plane420Unorm3pack16 }


    @inlinable
    public static var g10x6B10x6R10x63plane422Unorm3pack16_KHR: Format { self.g10x6B10x6R10x63plane422Unorm3pack16 }


    @inlinable
    public static var g10x6B10x6r10x62plane422Unorm3pack16_KHR: Format { self.g10x6B10x6r10x62plane422Unorm3pack16 }


    @inlinable
    public static var g10x6B10x6R10x63plane444Unorm3pack16_KHR: Format { self.g10x6B10x6R10x63plane444Unorm3pack16 }


    @inlinable
    public static var r12x4UnormPack16_KHR: Format { self.r12x4UnormPack16 }


    @inlinable
    public static var r12x4g12x4Unorm2pack16_KHR: Format { self.r12x4g12x4Unorm2pack16 }


    @inlinable
    public static var r12x4g12x4b12x4a12x4Unorm4pack16_KHR: Format { self.r12x4g12x4b12x4a12x4Unorm4pack16 }


    @inlinable
    public static var g12x4b12x4g12x4r12x4422Unorm4pack16_KHR: Format { self.g12x4b12x4g12x4r12x4422Unorm4pack16 }


    @inlinable
    public static var b12x4g12x4r12x4g12x4422Unorm4pack16_KHR: Format { self.b12x4g12x4r12x4g12x4422Unorm4pack16 }


    @inlinable
    public static var g12x4B12x4R12x43plane420Unorm3pack16_KHR: Format { self.g12x4B12x4R12x43plane420Unorm3pack16 }


    @inlinable
    public static var g12x4B12x4r12x42plane420Unorm3pack16_KHR: Format { self.g12x4B12x4r12x42plane420Unorm3pack16 }


    @inlinable
    public static var g12x4B12x4R12x43plane422Unorm3pack16_KHR: Format { self.g12x4B12x4R12x43plane422Unorm3pack16 }


    @inlinable
    public static var g12x4B12x4r12x42plane422Unorm3pack16_KHR: Format { self.g12x4B12x4r12x42plane422Unorm3pack16 }


    @inlinable
    public static var g12x4B12x4R12x43plane444Unorm3pack16_KHR: Format { self.g12x4B12x4R12x43plane444Unorm3pack16 }


    @inlinable
    public static var g16b16g16r16422Unorm_KHR: Format { self.g16b16g16r16422Unorm }


    @inlinable
    public static var b16g16r16g16422Unorm_KHR: Format { self.b16g16r16g16422Unorm }


    @inlinable
    public static var g16B16R163plane420Unorm_KHR: Format { self.g16B16R163plane420Unorm }


    @inlinable
    public static var g16B16r162plane420Unorm_KHR: Format { self.g16B16r162plane420Unorm }


    @inlinable
    public static var g16B16R163plane422Unorm_KHR: Format { self.g16B16R163plane422Unorm }


    @inlinable
    public static var g16B16r162plane422Unorm_KHR: Format { self.g16B16r162plane422Unorm }


    @inlinable
    public static var g16B16R163plane444Unorm_KHR: Format { self.g16B16R163plane444Unorm }


    @inlinable
    public static var g8B8r82plane444Unorm_EXT: Format { self.g8B8r82plane444Unorm }


    @inlinable
    public static var g10x6B10x6r10x62plane444Unorm3pack16_EXT: Format { self.g10x6B10x6r10x62plane444Unorm3pack16 }


    @inlinable
    public static var g12x4B12x4r12x42plane444Unorm3pack16_EXT: Format { self.g12x4B12x4r12x42plane444Unorm3pack16 }


    @inlinable
    public static var g16B16r162plane444Unorm_EXT: Format { self.g16B16r162plane444Unorm }


    @inlinable
    public static var a4r4g4b4UnormPack16_EXT: Format { self.a4r4g4b4UnormPack16 }


    @inlinable
    public static var a4b4g4r4UnormPack16_EXT: Format { self.a4b4g4r4UnormPack16 }


    @inlinable
    public static var r16g16S105_NV: Format { self.r16g16Sfixed5_NV }


    @inlinable
    public static var a1b5g5r5UnormPack16_KHR: Format { self.a1b5g5r5UnormPack16 }


    @inlinable
    public static var a8Unorm_KHR: Format { self.a8Unorm }
}


public enum FragmentShadingRateCombinerOpKHR: CVulkan.VkFragmentShadingRateCombinerOpKHR.RawValue {

    case keep_KHR = 0


    case replace_KHR = 1


    case min_KHR = 2


    case max_KHR = 3


    case mul_KHR = 4
}


public enum FragmentShadingRateNV: CVulkan.VkFragmentShadingRateNV.RawValue {

    case `1InvocationPerPixel_NV` = 0


    case `1InvocationPer1x2Pixels_NV` = 1


    case `1InvocationPer2x1Pixels_NV` = 4


    case `1InvocationPer2x2Pixels_NV` = 5


    case `1InvocationPer2x4Pixels_NV` = 6


    case `1InvocationPer4x2Pixels_NV` = 9


    case `1InvocationPer4x4Pixels_NV` = 10


    case `2InvocationsPerPixel_NV` = 11


    case `4InvocationsPerPixel_NV` = 12


    case `8InvocationsPerPixel_NV` = 13


    case `16InvocationsPerPixel_NV` = 14


    case noInvocations_NV = 15
}


public enum FragmentShadingRateTypeNV: CVulkan.VkFragmentShadingRateTypeNV.RawValue {

    case fragmentSize_NV = 0


    case enums_NV = 1
}


public enum FrontFace: CVulkan.VkFrontFace.RawValue {

    case counterClockwise = 0


    case clockwise = 1
}


#if PlatformWin32
    public enum FullScreenExclusiveEXT: CVulkan.VkFullScreenExclusiveEXT.RawValue {

        case default_EXT = 0


        case allowed_EXT = 1


        case disallowed_EXT = 2


        case applicationControlled_EXT = 3
    }
#else
    @available(*, unavailable, message: "This case requires the following trait: PlatformWin32.")
    public enum FullScreenExclusiveEXT {}
#endif


public enum GeometryTypeKHR: CVulkan.VkGeometryTypeKHR.RawValue {

    case triangles_KHR = 0


    case aabbs_KHR = 1


    case instances_KHR = 2


    case spheres_NV = 1_000_429_004


    case linearSweptSpheres_NV = 1_000_429_005


    @inlinable
    public static var triangles_NV: GeometryTypeKHR { self.triangles_KHR }


    @inlinable
    public static var aabbs_NV: GeometryTypeKHR { self.aabbs_KHR }
}


public enum ImageLayout: CVulkan.VkImageLayout.RawValue {

    case undefined = 0


    case general = 1


    case colorAttachmentOptimal = 2


    case depthStencilAttachmentOptimal = 3


    case depthStencilReadOnlyOptimal = 4


    case shaderReadOnlyOptimal = 5


    case transferSrcOptimal = 6


    case transferDstOptimal = 7


    case preinitialized = 8


    case depthReadOnlyStencilAttachmentOptimal = 1_000_117_000


    case depthAttachmentStencilReadOnlyOptimal = 1_000_117_001


    case depthAttachmentOptimal = 1_000_241_000


    case depthReadOnlyOptimal = 1_000_241_001


    case stencilAttachmentOptimal = 1_000_241_002


    case stencilReadOnlyOptimal = 1_000_241_003


    case readOnlyOptimal = 1_000_314_000


    case attachmentOptimal = 1_000_314_001


    case renderingLocalRead = 1_000_232_000


    case presentSrc_KHR = 1_000_001_002


    case videoDecodeDst_KHR = 1_000_024_000


    case videoDecodeSrc_KHR = 1_000_024_001


    case videoDecodeDpb_KHR = 1_000_024_002


    case sharedPresent_KHR = 1_000_111_000


    case fragmentDensityMapOptimal_EXT = 1_000_218_000


    case fragmentShadingRateAttachmentOptimal_KHR = 1_000_164_003


    case videoEncodeDst_KHR = 1_000_299_000


    case videoEncodeSrc_KHR = 1_000_299_001


    case videoEncodeDpb_KHR = 1_000_299_002


    case attachmentFeedbackLoopOptimal_EXT = 1_000_339_000


    case videoEncodeQuantizationMap_KHR = 1_000_553_000


    case zeroInitialized_EXT = 1_000_620_000


    @inlinable
    public static var depthReadOnlyStencilAttachmentOptimal_KHR: ImageLayout { self.depthReadOnlyStencilAttachmentOptimal }


    @inlinable
    public static var depthAttachmentStencilReadOnlyOptimal_KHR: ImageLayout { self.depthAttachmentStencilReadOnlyOptimal }


    @inlinable
    public static var shadingRateOptimal_NV: ImageLayout { self.fragmentShadingRateAttachmentOptimal_KHR }


    @inlinable
    public static var renderingLocalRead_KHR: ImageLayout { self.renderingLocalRead }


    @inlinable
    public static var depthAttachmentOptimal_KHR: ImageLayout { self.depthAttachmentOptimal }


    @inlinable
    public static var depthReadOnlyOptimal_KHR: ImageLayout { self.depthReadOnlyOptimal }


    @inlinable
    public static var stencilAttachmentOptimal_KHR: ImageLayout { self.stencilAttachmentOptimal }


    @inlinable
    public static var stencilReadOnlyOptimal_KHR: ImageLayout { self.stencilReadOnlyOptimal }


    @inlinable
    public static var readOnlyOptimal_KHR: ImageLayout { self.readOnlyOptimal }


    @inlinable
    public static var attachmentOptimal_KHR: ImageLayout { self.attachmentOptimal }
}


public enum ImageTiling: CVulkan.VkImageTiling.RawValue {

    case optimal = 0


    case linear = 1


    case drmFormatModifier_EXT = 1_000_158_000
}


public enum ImageType: CVulkan.VkImageType.RawValue {

    case `1d` = 0


    case `2d` = 1


    case `3d` = 2
}


public enum ImageViewType: CVulkan.VkImageViewType.RawValue {

    case `1d` = 0


    case `2d` = 1


    case `3d` = 2


    case cube = 3


    case `1dArray` = 4


    case `2dArray` = 5


    case cubeArray = 6
}


public enum IndexType: CVulkan.VkIndexType.RawValue {

    case uint16 = 0


    case uint32 = 1


    case uint8 = 1_000_265_000


    case none_KHR = 1_000_165_000


    @inlinable
    public static var none_NV: IndexType { self.none_KHR }


    @inlinable
    public static var uint8_EXT: IndexType { self.uint8 }


    @inlinable
    public static var uint8_KHR: IndexType { self.uint8 }
}


public enum IndirectCommandsTokenTypeEXT: CVulkan.VkIndirectCommandsTokenTypeEXT.RawValue {

    case executionSet_EXT = 0


    case pushConstant_EXT = 1


    case sequenceIndex_EXT = 2


    case indexBuffer_EXT = 3


    case vertexBuffer_EXT = 4


    case drawIndexed_EXT = 5


    case draw_EXT = 6


    case drawIndexedCount_EXT = 7


    case drawCount_EXT = 8


    case dispatch_EXT = 9


    case drawMeshTasksNv_EXT = 1_000_202_002


    case drawMeshTasksCountNv_EXT = 1_000_202_003


    case drawMeshTasks_EXT = 1_000_328_000


    case drawMeshTasksCount_EXT = 1_000_328_001


    case traceRays2_EXT = 1_000_386_004
}


public enum IndirectCommandsTokenTypeNV: CVulkan.VkIndirectCommandsTokenTypeNV.RawValue {

    case shaderGroup_NV = 0


    case stateFlags_NV = 1


    case indexBuffer_NV = 2


    case vertexBuffer_NV = 3


    case pushConstant_NV = 4


    case drawIndexed_NV = 5


    case draw_NV = 6


    case drawTasks_NV = 7


    case drawMeshTasks_NV = 1_000_328_000


    case pipeline_NV = 1_000_428_003


    case dispatch_NV = 1_000_428_004
}


public enum IndirectExecutionSetInfoTypeEXT: CVulkan.VkIndirectExecutionSetInfoTypeEXT.RawValue {

    case pipelines_EXT = 0


    case shaderObjects_EXT = 1
}


public enum InternalAllocationType: CVulkan.VkInternalAllocationType.RawValue {

    case executable = 0
}


public enum LatencyMarkerNV: CVulkan.VkLatencyMarkerNV.RawValue {

    case simulationStart_NV = 0


    case simulationEnd_NV = 1


    case rendersubmitStart_NV = 2


    case rendersubmitEnd_NV = 3


    case presentStart_NV = 4


    case presentEnd_NV = 5


    case inputSample_NV = 6


    case triggerFlash_NV = 7


    case outOfBandRendersubmitStart_NV = 8


    case outOfBandRendersubmitEnd_NV = 9


    case outOfBandPresentStart_NV = 10


    case outOfBandPresentEnd_NV = 11
}


public enum LayerSettingTypeEXT: CVulkan.VkLayerSettingTypeEXT.RawValue {

    case bool32_EXT = 0


    case int32_EXT = 1


    case int64_EXT = 2


    case uint32_EXT = 3


    case uint64_EXT = 4


    case float32_EXT = 5


    case float64_EXT = 6


    case string_EXT = 7
}


public enum LayeredDriverUnderlyingApiMSFT: CVulkan.VkLayeredDriverUnderlyingApiMSFT.RawValue {

    case none_MSFT = 0


    case d3d12_MSFT = 1
}


public enum LineRasterizationMode: CVulkan.VkLineRasterizationMode.RawValue {

    case `default` = 0


    case rectangular = 1


    case bresenham = 2


    case rectangularSmooth = 3


    @inlinable
    public static var default_EXT: LineRasterizationMode { self.`default` }


    @inlinable
    public static var rectangular_EXT: LineRasterizationMode { self.rectangular }


    @inlinable
    public static var bresenham_EXT: LineRasterizationMode { self.bresenham }


    @inlinable
    public static var rectangularSmooth_EXT: LineRasterizationMode { self.rectangularSmooth }


    @inlinable
    public static var default_KHR: LineRasterizationMode { self.`default` }


    @inlinable
    public static var rectangular_KHR: LineRasterizationMode { self.rectangular }


    @inlinable
    public static var bresenham_KHR: LineRasterizationMode { self.bresenham }


    @inlinable
    public static var rectangularSmooth_KHR: LineRasterizationMode { self.rectangularSmooth }
}


public enum LogicOp: CVulkan.VkLogicOp.RawValue {

    case clear = 0


    case and = 1


    case andReverse = 2


    case copy = 3


    case andInverted = 4


    case noOp = 5


    case xor = 6


    case or = 7


    case nor = 8


    case equivalent = 9


    case invert = 10


    case orReverse = 11


    case copyInverted = 12


    case orInverted = 13


    case nand = 14


    case set = 15
}


public enum MemoryOverallocationBehaviorAMD: CVulkan.VkMemoryOverallocationBehaviorAMD.RawValue {

    case default_AMD = 0


    case allowed_AMD = 1


    case disallowed_AMD = 2
}


public enum MicromapTypeEXT: CVulkan.VkMicromapTypeEXT.RawValue {

    case opacityMicromap_EXT = 0


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case displacementMicromap_NV = 1_000_397_000
}


public enum ObjectType: CVulkan.VkObjectType.RawValue {

    case unknown = 0


    case instance = 1


    case physicalDevice = 2


    case device = 3


    case queue = 4


    case semaphore = 5


    case commandBuffer = 6


    case fence = 7


    case deviceMemory = 8


    case buffer = 9


    case image = 10


    case event = 11


    case queryPool = 12


    case bufferView = 13


    case imageView = 14


    case shaderModule = 15


    case pipelineCache = 16


    case pipelineLayout = 17


    case renderPass = 18


    case pipeline = 19


    case descriptorSetLayout = 20


    case sampler = 21


    case descriptorPool = 22


    case descriptorSet = 23


    case framebuffer = 24


    case commandPool = 25


    case samplerYcbcrConversion = 1_000_156_000


    case descriptorUpdateTemplate = 1_000_085_000


    case privateDataSlot = 1_000_295_000


    case surface_KHR = 1_000_000_000


    case swapchain_KHR = 1_000_001_000


    case display_KHR = 1_000_002_000


    case displayMode_KHR = 1_000_002_001


    case debugReportCallback_EXT = 1_000_011_000


    case videoSession_KHR = 1_000_023_000


    case videoSessionParameters_KHR = 1_000_023_001


    case cuModule_NVX = 1_000_029_000


    case cuFunction_NVX = 1_000_029_001


    case debugUtilsMessenger_EXT = 1_000_128_000


    case accelerationStructure_KHR = 1_000_150_000


    case validationCache_EXT = 1_000_160_000


    case accelerationStructure_NV = 1_000_165_000


    case performanceConfiguration_INTEL = 1_000_210_000


    case deferredOperation_KHR = 1_000_268_000


    case indirectCommandsLayout_NV = 1_000_277_000


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case cudaModule_NV = 1_000_307_000


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case cudaFunction_NV = 1_000_307_001


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case bufferCollection_FUCHSIA = 1_000_366_000


    case micromap_EXT = 1_000_396_000


    case opticalFlowSession_NV = 1_000_464_000


    case shader_EXT = 1_000_482_000


    case pipelineBinary_KHR = 1_000_483_000


    case externalComputeQueue_NV = 1_000_556_000


    case indirectCommandsLayout_EXT = 1_000_572_000


    case indirectExecutionSet_EXT = 1_000_572_001


    @inlinable
    public static var descriptorUpdateTemplate_KHR: ObjectType { self.descriptorUpdateTemplate }


    @inlinable
    public static var samplerYcbcrConversion_KHR: ObjectType { self.samplerYcbcrConversion }


    @inlinable
    public static var privateDataSlot_EXT: ObjectType { self.privateDataSlot }
}


public enum OpacityMicromapFormatEXT: CVulkan.VkOpacityMicromapFormatEXT.RawValue {

    case `2State_EXT` = 1


    case `4State_EXT` = 2
}


public enum OpacityMicromapSpecialIndexEXT: CVulkan.VkOpacityMicromapSpecialIndexEXT.RawValue {

    case fullyTransparent_EXT = -1


    case fullyOpaque_EXT = -2


    case fullyUnknownTransparent_EXT = -3


    case fullyUnknownOpaque_EXT = -4


    case clusterGeometryDisableOpacityMicromap_NV = -5
}


public enum OpticalFlowPerformanceLevelNV: CVulkan.VkOpticalFlowPerformanceLevelNV.RawValue {

    case unknown_NV = 0


    case slow_NV = 1


    case medium_NV = 2


    case fast_NV = 3
}


public enum OpticalFlowSessionBindingPointNV: CVulkan.VkOpticalFlowSessionBindingPointNV.RawValue {

    case unknown_NV = 0


    case input_NV = 1


    case reference_NV = 2


    case hint_NV = 3


    case flowVector_NV = 4


    case backwardFlowVector_NV = 5


    case cost_NV = 6


    case backwardCost_NV = 7


    case globalFlow_NV = 8
}


public enum OutOfBandQueueTypeNV: CVulkan.VkOutOfBandQueueTypeNV.RawValue {

    case render_NV = 0


    case present_NV = 1
}


public enum PartitionedAccelerationStructureOpTypeNV: CVulkan.VkPartitionedAccelerationStructureOpTypeNV.RawValue {

    case writeInstance_NV = 0


    case updateInstance_NV = 1


    case writePartitionTranslation_NV = 2
}


public enum PerformanceConfigurationTypeINTEL: CVulkan.VkPerformanceConfigurationTypeINTEL.RawValue {

    case commandQueueMetricsDiscoveryActivated_INTEL = 0
}


public enum PerformanceCounterScopeKHR: CVulkan.VkPerformanceCounterScopeKHR.RawValue {

    case commandBuffer_KHR = 0


    case renderPass_KHR = 1


    case command_KHR = 2


    @inlinable
    public static var queryScopeCommandBuffer_KHR: PerformanceCounterScopeKHR { self.commandBuffer_KHR }


    @inlinable
    public static var queryScopeRenderPass_KHR: PerformanceCounterScopeKHR { self.renderPass_KHR }


    @inlinable
    public static var queryScopeCommand_KHR: PerformanceCounterScopeKHR { self.command_KHR }
}


public enum PerformanceCounterStorageKHR: CVulkan.VkPerformanceCounterStorageKHR.RawValue {

    case int32_KHR = 0


    case int64_KHR = 1


    case uint32_KHR = 2


    case uint64_KHR = 3


    case float32_KHR = 4


    case float64_KHR = 5
}


public enum PerformanceCounterUnitKHR: CVulkan.VkPerformanceCounterUnitKHR.RawValue {

    case generic_KHR = 0


    case percentage_KHR = 1


    case nanoseconds_KHR = 2


    case bytes_KHR = 3


    case bytesPerSecond_KHR = 4


    case kelvin_KHR = 5


    case watts_KHR = 6


    case volts_KHR = 7


    case amps_KHR = 8


    case hertz_KHR = 9


    case cycles_KHR = 10
}


public enum PerformanceOverrideTypeINTEL: CVulkan.VkPerformanceOverrideTypeINTEL.RawValue {

    case nullHardware_INTEL = 0


    case flushGpuCaches_INTEL = 1
}


public enum PerformanceParameterTypeINTEL: CVulkan.VkPerformanceParameterTypeINTEL.RawValue {

    case hwCountersSupported_INTEL = 0


    case streamMarkerValidBits_INTEL = 1
}


public enum PerformanceValueTypeINTEL: CVulkan.VkPerformanceValueTypeINTEL.RawValue {

    case uint32_INTEL = 0


    case uint64_INTEL = 1


    case float_INTEL = 2


    case bool_INTEL = 3


    case string_INTEL = 4
}


public enum PhysicalDeviceLayeredApiKHR: CVulkan.VkPhysicalDeviceLayeredApiKHR.RawValue {

    case vulkan_KHR = 0


    case d3d12_KHR = 1


    case metal_KHR = 2


    case opengl_KHR = 3


    case opengles_KHR = 4
}


public enum PhysicalDeviceType: CVulkan.VkPhysicalDeviceType.RawValue {

    case other = 0


    case integratedGpu = 1


    case discreteGpu = 2


    case virtualGpu = 3


    case cpu = 4
}


public enum PipelineBindPoint: CVulkan.VkPipelineBindPoint.RawValue {

    case graphics = 0


    case compute = 1


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case executionGraph_AMDX = 1_000_134_000


    case rayTracing_KHR = 1_000_165_000


    case subpassShading_HUAWEI = 1_000_369_003


    @inlinable
    public static var rayTracing_NV: PipelineBindPoint { self.rayTracing_KHR }
}


public enum PipelineCacheHeaderVersion: CVulkan.VkPipelineCacheHeaderVersion.RawValue {

    case one = 1
}


public enum PipelineExecutableStatisticFormatKHR: CVulkan.VkPipelineExecutableStatisticFormatKHR.RawValue {

    case bool32_KHR = 0


    case int64_KHR = 1


    case uint64_KHR = 2


    case float64_KHR = 3
}


public enum PipelineRobustnessBufferBehavior: CVulkan.VkPipelineRobustnessBufferBehavior.RawValue {

    case deviceDefault = 0


    case disabled = 1


    case robustBufferAccess = 2


    case robustBufferAccess2 = 3


    @inlinable
    public static var deviceDefault_EXT: PipelineRobustnessBufferBehavior { self.deviceDefault }


    @inlinable
    public static var disabled_EXT: PipelineRobustnessBufferBehavior { self.disabled }


    @inlinable
    public static var robustBufferAccess_EXT: PipelineRobustnessBufferBehavior { self.robustBufferAccess }


    @inlinable
    public static var robustBufferAccess2_EXT: PipelineRobustnessBufferBehavior { self.robustBufferAccess2 }
}


public enum PipelineRobustnessImageBehavior: CVulkan.VkPipelineRobustnessImageBehavior.RawValue {

    case deviceDefault = 0


    case disabled = 1


    case robustImageAccess = 2


    case robustImageAccess2 = 3


    @inlinable
    public static var deviceDefault_EXT: PipelineRobustnessImageBehavior { self.deviceDefault }


    @inlinable
    public static var disabled_EXT: PipelineRobustnessImageBehavior { self.disabled }


    @inlinable
    public static var robustImageAccess_EXT: PipelineRobustnessImageBehavior { self.robustImageAccess }


    @inlinable
    public static var robustImageAccess2_EXT: PipelineRobustnessImageBehavior { self.robustImageAccess2 }
}


public enum PointClippingBehavior: CVulkan.VkPointClippingBehavior.RawValue {

    case allClipPlanes = 0


    case userClipPlanesOnly = 1


    @inlinable
    public static var allClipPlanes_KHR: PointClippingBehavior { self.allClipPlanes }


    @inlinable
    public static var userClipPlanesOnly_KHR: PointClippingBehavior { self.userClipPlanesOnly }
}


public enum PolygonMode: CVulkan.VkPolygonMode.RawValue {

    case fill = 0


    case line = 1


    case point = 2


    case fillRectangle_NV = 1_000_153_000
}


public enum PresentModeKHR: CVulkan.VkPresentModeKHR.RawValue {

    case immediate_KHR = 0


    case mailbox_KHR = 1


    case fifo_KHR = 2


    case fifoRelaxed_KHR = 3


    case sharedDemandRefresh_KHR = 1_000_111_000


    case sharedContinuousRefresh_KHR = 1_000_111_001


    case fifoLatestReady_EXT = 1_000_361_000
}


public enum PrimitiveTopology: CVulkan.VkPrimitiveTopology.RawValue {

    case pointList = 0


    case lineList = 1


    case lineStrip = 2


    case triangleList = 3


    case triangleStrip = 4


    case triangleFan = 5


    case lineListWithAdjacency = 6


    case lineStripWithAdjacency = 7


    case triangleListWithAdjacency = 8


    case triangleStripWithAdjacency = 9


    case patchList = 10
}


public enum ProvokingVertexModeEXT: CVulkan.VkProvokingVertexModeEXT.RawValue {

    case firstVertex_EXT = 0


    case lastVertex_EXT = 1
}


public enum QueryPoolSamplingModeINTEL: CVulkan.VkQueryPoolSamplingModeINTEL.RawValue {

    case manual_INTEL = 0
}


public enum QueryResultStatusKHR: CVulkan.VkQueryResultStatusKHR.RawValue {

    case error_KHR = -1


    case notReady_KHR = 0


    case complete_KHR = 1


    case insufficientBitstreamBufferRange_KHR = -1_000_299_000
}


public enum QueryType: CVulkan.VkQueryType.RawValue {

    case occlusion = 0


    case pipelineStatistics = 1


    case timestamp = 2


    case resultStatusOnly_KHR = 1_000_023_000


    case transformFeedbackStream_EXT = 1_000_028_004


    case performanceQuery_KHR = 1_000_116_000


    case accelerationStructureCompactedSize_KHR = 1_000_150_000


    case accelerationStructureSerializationSize_KHR = 1_000_150_001


    case accelerationStructureCompactedSize_NV = 1_000_165_000


    case performanceQuery_INTEL = 1_000_210_000


    case videoEncodeFeedback_KHR = 1_000_299_000


    case meshPrimitivesGenerated_EXT = 1_000_328_000


    case primitivesGenerated_EXT = 1_000_382_000


    case accelerationStructureSerializationBottomLevelPointers_KHR = 1_000_386_000


    case accelerationStructureSize_KHR = 1_000_386_001


    case micromapSerializationSize_EXT = 1_000_396_000


    case micromapCompactedSize_EXT = 1_000_396_001
}


public enum QueueGlobalPriority: CVulkan.VkQueueGlobalPriority.RawValue {

    case low = 128


    case medium = 256


    case high = 512


    case realtime = 1024


    @inlinable
    public static var low_EXT: QueueGlobalPriority { self.low }


    @inlinable
    public static var medium_EXT: QueueGlobalPriority { self.medium }


    @inlinable
    public static var high_EXT: QueueGlobalPriority { self.high }


    @inlinable
    public static var realtime_EXT: QueueGlobalPriority { self.realtime }


    @inlinable
    public static var low_KHR: QueueGlobalPriority { self.low }


    @inlinable
    public static var medium_KHR: QueueGlobalPriority { self.medium }


    @inlinable
    public static var high_KHR: QueueGlobalPriority { self.high }


    @inlinable
    public static var realtime_KHR: QueueGlobalPriority { self.realtime }
}


public enum RasterizationOrderAMD: CVulkan.VkRasterizationOrderAMD.RawValue {

    case strict_AMD = 0


    case relaxed_AMD = 1
}


public enum RayTracingInvocationReorderModeNV: CVulkan.VkRayTracingInvocationReorderModeNV.RawValue {

    case none_NV = 0


    case reorder_NV = 1
}


public enum RayTracingLssIndexingModeNV: CVulkan.VkRayTracingLssIndexingModeNV.RawValue {

    case list_NV = 0


    case successive_NV = 1
}


public enum RayTracingLssPrimitiveEndCapsModeNV: CVulkan.VkRayTracingLssPrimitiveEndCapsModeNV.RawValue {

    case none_NV = 0


    case chained_NV = 1
}


public enum RayTracingShaderGroupTypeKHR: CVulkan.VkRayTracingShaderGroupTypeKHR.RawValue {

    case general_KHR = 0


    case trianglesHitGroup_KHR = 1


    case proceduralHitGroup_KHR = 2


    @inlinable
    public static var general_NV: RayTracingShaderGroupTypeKHR { self.general_KHR }


    @inlinable
    public static var trianglesHitGroup_NV: RayTracingShaderGroupTypeKHR { self.trianglesHitGroup_KHR }


    @inlinable
    public static var proceduralHitGroup_NV: RayTracingShaderGroupTypeKHR { self.proceduralHitGroup_KHR }
}


public enum Result: CVulkan.VkResult.RawValue {

    case success = 0


    case notReady = 1


    case timeout = 2


    case eventSet = 3


    case eventReset = 4


    case incomplete = 5


    case errorOutOfHostMemory = -1


    case errorOutOfDeviceMemory = -2


    case errorInitializationFailed = -3


    case errorDeviceLost = -4


    case errorMemoryMapFailed = -5


    case errorLayerNotPresent = -6


    case errorExtensionNotPresent = -7


    case errorFeatureNotPresent = -8


    case errorIncompatibleDriver = -9


    case errorTooManyObjects = -10


    case errorFormatNotSupported = -11


    case errorFragmentedPool = -12


    case errorUnknown = -13


    case errorOutOfPoolMemory = -1_000_069_000


    case errorInvalidExternalHandle = -1_000_072_003


    case errorFragmentation = -1_000_161_000


    case errorInvalidOpaqueCaptureAddress = -1_000_257_000


    case pipelineCompileRequired = 1_000_297_000


    case errorNotPermitted = -1_000_174_001


    case errorSurfaceLost_KHR = -1_000_000_000


    case errorNativeWindowInUse_KHR = -1_000_000_001


    case suboptimal_KHR = 1_000_001_003


    case errorOutOfDate_KHR = -1_000_001_004


    case errorIncompatibleDisplay_KHR = -1_000_003_001


    case errorValidationFailed_EXT = -1_000_011_001


    case errorInvalidShader_NV = -1_000_012_000


    case errorImageUsageNotSupported_KHR = -1_000_023_000


    case errorVideoPictureLayoutNotSupported_KHR = -1_000_023_001


    case errorVideoProfileOperationNotSupported_KHR = -1_000_023_002


    case errorVideoProfileFormatNotSupported_KHR = -1_000_023_003


    case errorVideoProfileCodecNotSupported_KHR = -1_000_023_004


    case errorVideoStdVersionNotSupported_KHR = -1_000_023_005


    case errorInvalidDrmFormatModifierPlaneLayout_EXT = -1_000_158_000


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case errorFullScreenExclusiveModeLost_EXT = -1_000_255_000


    case threadIdle_KHR = 1_000_268_000


    case threadDone_KHR = 1_000_268_001


    case operationDeferred_KHR = 1_000_268_002


    case operationNotDeferred_KHR = 1_000_268_003


    case errorInvalidVideoStdParameters_KHR = -1_000_299_000


    case errorCompressionExhausted_EXT = -1_000_338_000


    case incompatibleShaderBinary_EXT = 1_000_482_000


    case pipelineBinaryMissing_KHR = 1_000_483_000


    case errorNotEnoughSpace_KHR = -1_000_483_000


    @inlinable
    public static var errorOutOfPoolMemory_KHR: Result { self.errorOutOfPoolMemory }


    @inlinable
    public static var errorInvalidExternalHandle_KHR: Result { self.errorInvalidExternalHandle }


    @inlinable
    public static var errorFragmentation_EXT: Result { self.errorFragmentation }


    @inlinable
    public static var errorNotPermitted_EXT: Result { self.errorNotPermitted }


    @inlinable
    public static var errorNotPermitted_KHR: Result { self.errorNotPermitted }


    @inlinable
    public static var errorInvalidDeviceAddress_EXT: Result { self.errorInvalidOpaqueCaptureAddress }


    @inlinable
    public static var errorInvalidOpaqueCaptureAddress_KHR: Result { self.errorInvalidOpaqueCaptureAddress }


    @inlinable
    public static var pipelineCompileRequired_EXT: Result { self.pipelineCompileRequired }


    @inlinable
    public static var errorPipelineCompileRequired_EXT: Result { self.pipelineCompileRequired }


    @inlinable
    public static var errorIncompatibleShaderBinary_EXT: Result { self.incompatibleShaderBinary_EXT }
}


public enum SamplerAddressMode: CVulkan.VkSamplerAddressMode.RawValue {

    case `repeat` = 0


    case mirroredRepeat = 1


    case clampToEdge = 2


    case clampToBorder = 3


    case mirrorClampToEdge = 4


    @inlinable
    public static var mirrorClampToEdge_KHR: SamplerAddressMode { self.mirrorClampToEdge }
}


public enum SamplerMipmapMode: CVulkan.VkSamplerMipmapMode.RawValue {

    case nearest = 0


    case linear = 1
}


public enum SamplerReductionMode: CVulkan.VkSamplerReductionMode.RawValue {

    case weightedAverage = 0


    case min = 1


    case max = 2


    case weightedAverageRangeclamp_QCOM = 1_000_521_000


    @inlinable
    public static var weightedAverage_EXT: SamplerReductionMode { self.weightedAverage }


    @inlinable
    public static var min_EXT: SamplerReductionMode { self.min }


    @inlinable
    public static var max_EXT: SamplerReductionMode { self.max }
}


public enum SamplerYcbcrModelConversion: CVulkan.VkSamplerYcbcrModelConversion.RawValue {

    case rgbIdentity = 0


    case ycbcrIdentity = 1


    case ycbcr709 = 2


    case ycbcr601 = 3


    case ycbcr2020 = 4


    @inlinable
    public static var rgbIdentity_KHR: SamplerYcbcrModelConversion { self.rgbIdentity }


    @inlinable
    public static var ycbcrIdentity_KHR: SamplerYcbcrModelConversion { self.ycbcrIdentity }


    @inlinable
    public static var ycbcr709_KHR: SamplerYcbcrModelConversion { self.ycbcr709 }


    @inlinable
    public static var ycbcr601_KHR: SamplerYcbcrModelConversion { self.ycbcr601 }


    @inlinable
    public static var ycbcr2020_KHR: SamplerYcbcrModelConversion { self.ycbcr2020 }
}


public enum SamplerYcbcrRange: CVulkan.VkSamplerYcbcrRange.RawValue {

    case ituFull = 0


    case ituNarrow = 1


    @inlinable
    public static var ituFull_KHR: SamplerYcbcrRange { self.ituFull }


    @inlinable
    public static var ituNarrow_KHR: SamplerYcbcrRange { self.ituNarrow }
}


public enum ScopeKHR: CVulkan.VkScopeKHR.RawValue {

    case device_KHR = 1


    case workgroup_KHR = 2


    case subgroup_KHR = 3


    case queueFamily_KHR = 5


    @inlinable
    public static var device_NV: ScopeKHR { self.device_KHR }


    @inlinable
    public static var workgroup_NV: ScopeKHR { self.workgroup_KHR }


    @inlinable
    public static var subgroup_NV: ScopeKHR { self.subgroup_KHR }


    @inlinable
    public static var queueFamily_NV: ScopeKHR { self.queueFamily_KHR }
}


public enum SemaphoreType: CVulkan.VkSemaphoreType.RawValue {

    case binary = 0


    case timeline = 1


    @inlinable
    public static var binary_KHR: SemaphoreType { self.binary }


    @inlinable
    public static var timeline_KHR: SemaphoreType { self.timeline }
}


public enum ShaderCodeTypeEXT: CVulkan.VkShaderCodeTypeEXT.RawValue {

    case binary_EXT = 0


    case spirv_EXT = 1
}


public enum ShaderFloatControlsIndependence: CVulkan.VkShaderFloatControlsIndependence.RawValue {

    case `32BitOnly` = 0


    case all = 1


    case none = 2


    @inlinable
    public static var `32BitOnly_KHR`: ShaderFloatControlsIndependence { self.`32BitOnly` }


    @inlinable
    public static var all_KHR: ShaderFloatControlsIndependence { self.all }


    @inlinable
    public static var none_KHR: ShaderFloatControlsIndependence { self.none }
}


public enum ShaderGroupShaderKHR: CVulkan.VkShaderGroupShaderKHR.RawValue {

    case general_KHR = 0


    case closestHit_KHR = 1


    case anyHit_KHR = 2


    case intersection_KHR = 3
}


public enum ShaderInfoTypeAMD: CVulkan.VkShaderInfoTypeAMD.RawValue {

    case statistics_AMD = 0


    case binary_AMD = 1


    case disassembly_AMD = 2
}


public enum ShadingRatePaletteEntryNV: CVulkan.VkShadingRatePaletteEntryNV.RawValue {

    case noInvocations_NV = 0


    case `16InvocationsPerPixel_NV` = 1


    case `8InvocationsPerPixel_NV` = 2


    case `4InvocationsPerPixel_NV` = 3


    case `2InvocationsPerPixel_NV` = 4


    case `1InvocationPerPixel_NV` = 5


    case `1InvocationPer2x1Pixels_NV` = 6


    case `1InvocationPer1x2Pixels_NV` = 7


    case `1InvocationPer2x2Pixels_NV` = 8


    case `1InvocationPer4x2Pixels_NV` = 9


    case `1InvocationPer2x4Pixels_NV` = 10


    case `1InvocationPer4x4Pixels_NV` = 11
}


public enum SharingMode: CVulkan.VkSharingMode.RawValue {

    case exclusive = 0


    case concurrent = 1
}


public enum StencilOp: CVulkan.VkStencilOp.RawValue {

    case keep = 0


    case zero = 1


    case replace = 2


    case incrementAndClamp = 3


    case decrementAndClamp = 4


    case invert = 5


    case incrementAndWrap = 6


    case decrementAndWrap = 7
}


public enum StructureType: CVulkan.VkStructureType.RawValue {

    case applicationInfo = 0


    case instanceCreateInfo = 1


    case deviceQueueCreateInfo = 2


    case deviceCreateInfo = 3


    case submitInfo = 4


    case memoryAllocateInfo = 5


    case mappedMemoryRange = 6


    case bindSparseInfo = 7


    case fenceCreateInfo = 8


    case semaphoreCreateInfo = 9


    case eventCreateInfo = 10


    case queryPoolCreateInfo = 11


    case bufferCreateInfo = 12


    case bufferViewCreateInfo = 13


    case imageCreateInfo = 14


    case imageViewCreateInfo = 15


    case shaderModuleCreateInfo = 16


    case pipelineCacheCreateInfo = 17


    case pipelineShaderStageCreateInfo = 18


    case pipelineVertexInputStateCreateInfo = 19


    case pipelineInputAssemblyStateCreateInfo = 20


    case pipelineTessellationStateCreateInfo = 21


    case pipelineViewportStateCreateInfo = 22


    case pipelineRasterizationStateCreateInfo = 23


    case pipelineMultisampleStateCreateInfo = 24


    case pipelineDepthStencilStateCreateInfo = 25


    case pipelineColorBlendStateCreateInfo = 26


    case pipelineDynamicStateCreateInfo = 27


    case graphicsPipelineCreateInfo = 28


    case computePipelineCreateInfo = 29


    case pipelineLayoutCreateInfo = 30


    case samplerCreateInfo = 31


    case descriptorSetLayoutCreateInfo = 32


    case descriptorPoolCreateInfo = 33


    case descriptorSetAllocateInfo = 34


    case writeDescriptorSet = 35


    case copyDescriptorSet = 36


    case framebufferCreateInfo = 37


    case renderPassCreateInfo = 38


    case commandPoolCreateInfo = 39


    case commandBufferAllocateInfo = 40


    case commandBufferInheritanceInfo = 41


    case commandBufferBeginInfo = 42


    case renderPassBeginInfo = 43


    case bufferMemoryBarrier = 44


    case imageMemoryBarrier = 45


    case memoryBarrier = 46


    case loaderInstanceCreateInfo = 47


    case loaderDeviceCreateInfo = 48


    case physicalDeviceSubgroupProperties = 1_000_094_000


    case bindBufferMemoryInfo = 1_000_157_000


    case bindImageMemoryInfo = 1_000_157_001


    case physicalDevice16bitStorageFeatures = 1_000_083_000


    case memoryDedicatedRequirements = 1_000_127_000


    case memoryDedicatedAllocateInfo = 1_000_127_001


    case memoryAllocateFlagsInfo = 1_000_060_000


    case deviceGroupRenderPassBeginInfo = 1_000_060_003


    case deviceGroupCommandBufferBeginInfo = 1_000_060_004


    case deviceGroupSubmitInfo = 1_000_060_005


    case deviceGroupBindSparseInfo = 1_000_060_006


    case bindBufferMemoryDeviceGroupInfo = 1_000_060_013


    case bindImageMemoryDeviceGroupInfo = 1_000_060_014


    case physicalDeviceGroupProperties = 1_000_070_000


    case deviceGroupDeviceCreateInfo = 1_000_070_001


    case bufferMemoryRequirementsInfo2 = 1_000_146_000


    case imageMemoryRequirementsInfo2 = 1_000_146_001


    case imageSparseMemoryRequirementsInfo2 = 1_000_146_002


    case memoryRequirements2 = 1_000_146_003


    case sparseImageMemoryRequirements2 = 1_000_146_004


    case physicalDeviceFeatures2 = 1_000_059_000


    case physicalDeviceProperties2 = 1_000_059_001


    case formatProperties2 = 1_000_059_002


    case imageFormatProperties2 = 1_000_059_003


    case physicalDeviceImageFormatInfo2 = 1_000_059_004


    case queueFamilyProperties2 = 1_000_059_005


    case physicalDeviceMemoryProperties2 = 1_000_059_006


    case sparseImageFormatProperties2 = 1_000_059_007


    case physicalDeviceSparseImageFormatInfo2 = 1_000_059_008


    case physicalDevicePointClippingProperties = 1_000_117_000


    case renderPassInputAttachmentAspectCreateInfo = 1_000_117_001


    case imageViewUsageCreateInfo = 1_000_117_002


    case pipelineTessellationDomainOriginStateCreateInfo = 1_000_117_003


    case renderPassMultiviewCreateInfo = 1_000_053_000


    case physicalDeviceMultiviewFeatures = 1_000_053_001


    case physicalDeviceMultiviewProperties = 1_000_053_002


    case physicalDeviceVariablePointersFeatures = 1_000_120_000


    case protectedSubmitInfo = 1_000_145_000


    case physicalDeviceProtectedMemoryFeatures = 1_000_145_001


    case physicalDeviceProtectedMemoryProperties = 1_000_145_002


    case deviceQueueInfo2 = 1_000_145_003


    case samplerYcbcrConversionCreateInfo = 1_000_156_000


    case samplerYcbcrConversionInfo = 1_000_156_001


    case bindImagePlaneMemoryInfo = 1_000_156_002


    case imagePlaneMemoryRequirementsInfo = 1_000_156_003


    case physicalDeviceSamplerYcbcrConversionFeatures = 1_000_156_004


    case samplerYcbcrConversionImageFormatProperties = 1_000_156_005


    case descriptorUpdateTemplateCreateInfo = 1_000_085_000


    case physicalDeviceExternalImageFormatInfo = 1_000_071_000


    case externalImageFormatProperties = 1_000_071_001


    case physicalDeviceExternalBufferInfo = 1_000_071_002


    case externalBufferProperties = 1_000_071_003


    case physicalDeviceIdProperties = 1_000_071_004


    case externalMemoryBufferCreateInfo = 1_000_072_000


    case externalMemoryImageCreateInfo = 1_000_072_001


    case exportMemoryAllocateInfo = 1_000_072_002


    case physicalDeviceExternalFenceInfo = 1_000_112_000


    case externalFenceProperties = 1_000_112_001


    case exportFenceCreateInfo = 1_000_113_000


    case exportSemaphoreCreateInfo = 1_000_077_000


    case physicalDeviceExternalSemaphoreInfo = 1_000_076_000


    case externalSemaphoreProperties = 1_000_076_001


    case physicalDeviceMaintenance3Properties = 1_000_168_000


    case descriptorSetLayoutSupport = 1_000_168_001


    case physicalDeviceShaderDrawParametersFeatures = 1_000_063_000


    case physicalDeviceVulkan11Features = 49


    case physicalDeviceVulkan11Properties = 50


    case physicalDeviceVulkan12Features = 51


    case physicalDeviceVulkan12Properties = 52


    case imageFormatListCreateInfo = 1_000_147_000


    case attachmentDescription2 = 1_000_109_000


    case attachmentReference2 = 1_000_109_001


    case subpassDescription2 = 1_000_109_002


    case subpassDependency2 = 1_000_109_003


    case renderPassCreateInfo2 = 1_000_109_004


    case subpassBeginInfo = 1_000_109_005


    case subpassEndInfo = 1_000_109_006


    case physicalDevice8bitStorageFeatures = 1_000_177_000


    case physicalDeviceDriverProperties = 1_000_196_000


    case physicalDeviceShaderAtomicInt64Features = 1_000_180_000


    case physicalDeviceShaderFloat16Int8Features = 1_000_082_000


    case physicalDeviceFloatControlsProperties = 1_000_197_000


    case descriptorSetLayoutBindingFlagsCreateInfo = 1_000_161_000


    case physicalDeviceDescriptorIndexingFeatures = 1_000_161_001


    case physicalDeviceDescriptorIndexingProperties = 1_000_161_002


    case descriptorSetVariableDescriptorCountAllocateInfo = 1_000_161_003


    case descriptorSetVariableDescriptorCountLayoutSupport = 1_000_161_004


    case physicalDeviceDepthStencilResolveProperties = 1_000_199_000


    case subpassDescriptionDepthStencilResolve = 1_000_199_001


    case physicalDeviceScalarBlockLayoutFeatures = 1_000_221_000


    case imageStencilUsageCreateInfo = 1_000_246_000


    case physicalDeviceSamplerFilterMinmaxProperties = 1_000_130_000


    case samplerReductionModeCreateInfo = 1_000_130_001


    case physicalDeviceVulkanMemoryModelFeatures = 1_000_211_000


    case physicalDeviceImagelessFramebufferFeatures = 1_000_108_000


    case framebufferAttachmentsCreateInfo = 1_000_108_001


    case framebufferAttachmentImageInfo = 1_000_108_002


    case renderPassAttachmentBeginInfo = 1_000_108_003


    case physicalDeviceUniformBufferStandardLayoutFeatures = 1_000_253_000


    case physicalDeviceShaderSubgroupExtendedTypesFeatures = 1_000_175_000


    case physicalDeviceSeparateDepthStencilLayoutsFeatures = 1_000_241_000


    case attachmentReferenceStencilLayout = 1_000_241_001


    case attachmentDescriptionStencilLayout = 1_000_241_002


    case physicalDeviceHostQueryResetFeatures = 1_000_261_000


    case physicalDeviceTimelineSemaphoreFeatures = 1_000_207_000


    case physicalDeviceTimelineSemaphoreProperties = 1_000_207_001


    case semaphoreTypeCreateInfo = 1_000_207_002


    case timelineSemaphoreSubmitInfo = 1_000_207_003


    case semaphoreWaitInfo = 1_000_207_004


    case semaphoreSignalInfo = 1_000_207_005


    case physicalDeviceBufferDeviceAddressFeatures = 1_000_257_000


    case bufferDeviceAddressInfo = 1_000_244_001


    case bufferOpaqueCaptureAddressCreateInfo = 1_000_257_002


    case memoryOpaqueCaptureAddressAllocateInfo = 1_000_257_003


    case deviceMemoryOpaqueCaptureAddressInfo = 1_000_257_004


    case physicalDeviceVulkan13Features = 53


    case physicalDeviceVulkan13Properties = 54


    case pipelineCreationFeedbackCreateInfo = 1_000_192_000


    case physicalDeviceShaderTerminateInvocationFeatures = 1_000_215_000


    case physicalDeviceToolProperties = 1_000_245_000


    case physicalDeviceShaderDemoteToHelperInvocationFeatures = 1_000_276_000


    case physicalDevicePrivateDataFeatures = 1_000_295_000


    case devicePrivateDataCreateInfo = 1_000_295_001


    case privateDataSlotCreateInfo = 1_000_295_002


    case physicalDevicePipelineCreationCacheControlFeatures = 1_000_297_000


    case memoryBarrier2 = 1_000_314_000


    case bufferMemoryBarrier2 = 1_000_314_001


    case imageMemoryBarrier2 = 1_000_314_002


    case dependencyInfo = 1_000_314_003


    case submitInfo2 = 1_000_314_004


    case semaphoreSubmitInfo = 1_000_314_005


    case commandBufferSubmitInfo = 1_000_314_006


    case physicalDeviceSynchronization2Features = 1_000_314_007


    case physicalDeviceZeroInitializeWorkgroupMemoryFeatures = 1_000_325_000


    case physicalDeviceImageRobustnessFeatures = 1_000_335_000


    case copyBufferInfo2 = 1_000_337_000


    case copyImageInfo2 = 1_000_337_001


    case copyBufferToImageInfo2 = 1_000_337_002


    case copyImageToBufferInfo2 = 1_000_337_003


    case blitImageInfo2 = 1_000_337_004


    case resolveImageInfo2 = 1_000_337_005


    case bufferCopy2 = 1_000_337_006


    case imageCopy2 = 1_000_337_007


    case imageBlit2 = 1_000_337_008


    case bufferImageCopy2 = 1_000_337_009


    case imageResolve2 = 1_000_337_010


    case physicalDeviceSubgroupSizeControlProperties = 1_000_225_000


    case pipelineShaderStageRequiredSubgroupSizeCreateInfo = 1_000_225_001


    case physicalDeviceSubgroupSizeControlFeatures = 1_000_225_002


    case physicalDeviceInlineUniformBlockFeatures = 1_000_138_000


    case physicalDeviceInlineUniformBlockProperties = 1_000_138_001


    case writeDescriptorSetInlineUniformBlock = 1_000_138_002


    case descriptorPoolInlineUniformBlockCreateInfo = 1_000_138_003


    case physicalDeviceTextureCompressionAstcHdrFeatures = 1_000_066_000


    case renderingInfo = 1_000_044_000


    case renderingAttachmentInfo = 1_000_044_001


    case pipelineRenderingCreateInfo = 1_000_044_002


    case physicalDeviceDynamicRenderingFeatures = 1_000_044_003


    case commandBufferInheritanceRenderingInfo = 1_000_044_004


    case physicalDeviceShaderIntegerDotProductFeatures = 1_000_280_000


    case physicalDeviceShaderIntegerDotProductProperties = 1_000_280_001


    case physicalDeviceTexelBufferAlignmentProperties = 1_000_281_001


    case formatProperties3 = 1_000_360_000


    case physicalDeviceMaintenance4Features = 1_000_413_000


    case physicalDeviceMaintenance4Properties = 1_000_413_001


    case deviceBufferMemoryRequirements = 1_000_413_002


    case deviceImageMemoryRequirements = 1_000_413_003


    case physicalDeviceVulkan14Features = 55


    case physicalDeviceVulkan14Properties = 56


    case deviceQueueGlobalPriorityCreateInfo = 1_000_174_000


    case physicalDeviceGlobalPriorityQueryFeatures = 1_000_388_000


    case queueFamilyGlobalPriorityProperties = 1_000_388_001


    case physicalDeviceShaderSubgroupRotateFeatures = 1_000_416_000


    case physicalDeviceShaderFloatControls2Features = 1_000_528_000


    case physicalDeviceShaderExpectAssumeFeatures = 1_000_544_000


    case physicalDeviceLineRasterizationFeatures = 1_000_259_000


    case pipelineRasterizationLineStateCreateInfo = 1_000_259_001


    case physicalDeviceLineRasterizationProperties = 1_000_259_002


    case physicalDeviceVertexAttributeDivisorProperties = 1_000_525_000


    case pipelineVertexInputDivisorStateCreateInfo = 1_000_190_001


    case physicalDeviceVertexAttributeDivisorFeatures = 1_000_190_002


    case physicalDeviceIndexTypeUint8Features = 1_000_265_000


    case memoryMapInfo = 1_000_271_000


    case memoryUnmapInfo = 1_000_271_001


    case physicalDeviceMaintenance5Features = 1_000_470_000


    case physicalDeviceMaintenance5Properties = 1_000_470_001


    case renderingAreaInfo = 1_000_470_003


    case deviceImageSubresourceInfo = 1_000_470_004


    case subresourceLayout2 = 1_000_338_002


    case imageSubresource2 = 1_000_338_003


    case pipelineCreateFlags2CreateInfo = 1_000_470_005


    case bufferUsageFlags2CreateInfo = 1_000_470_006


    case physicalDevicePushDescriptorProperties = 1_000_080_000


    case physicalDeviceDynamicRenderingLocalReadFeatures = 1_000_232_000


    case renderingAttachmentLocationInfo = 1_000_232_001


    case renderingInputAttachmentIndexInfo = 1_000_232_002


    case physicalDeviceMaintenance6Features = 1_000_545_000


    case physicalDeviceMaintenance6Properties = 1_000_545_001


    case bindMemoryStatus = 1_000_545_002


    case bindDescriptorSetsInfo = 1_000_545_003


    case pushConstantsInfo = 1_000_545_004


    case pushDescriptorSetInfo = 1_000_545_005


    case pushDescriptorSetWithTemplateInfo = 1_000_545_006


    case physicalDevicePipelineProtectedAccessFeatures = 1_000_466_000


    case pipelineRobustnessCreateInfo = 1_000_068_000


    case physicalDevicePipelineRobustnessFeatures = 1_000_068_001


    case physicalDevicePipelineRobustnessProperties = 1_000_068_002


    case physicalDeviceHostImageCopyFeatures = 1_000_270_000


    case physicalDeviceHostImageCopyProperties = 1_000_270_001


    case memoryToImageCopy = 1_000_270_002


    case imageToMemoryCopy = 1_000_270_003


    case copyImageToMemoryInfo = 1_000_270_004


    case copyMemoryToImageInfo = 1_000_270_005


    case hostImageLayoutTransitionInfo = 1_000_270_006


    case copyImageToImageInfo = 1_000_270_007


    case subresourceHostMemcpySize = 1_000_270_008


    case hostImageCopyDevicePerformanceQuery = 1_000_270_009


    case swapchainCreateInfo_KHR = 1_000_001_000


    case presentInfo_KHR = 1_000_001_001


    case deviceGroupPresentCapabilities_KHR = 1_000_060_007


    case imageSwapchainCreateInfo_KHR = 1_000_060_008


    case bindImageMemorySwapchainInfo_KHR = 1_000_060_009


    case acquireNextImageInfo_KHR = 1_000_060_010


    case deviceGroupPresentInfo_KHR = 1_000_060_011


    case deviceGroupSwapchainCreateInfo_KHR = 1_000_060_012


    case displayModeCreateInfo_KHR = 1_000_002_000


    case displaySurfaceCreateInfo_KHR = 1_000_002_001


    case displayPresentInfo_KHR = 1_000_003_000


    #if !PlatformXlib
        @available(*, unavailable, message: "This flag requires the following trait: PlatformXlib.")
    #endif
    case xlibSurfaceCreateInfo_KHR = 1_000_004_000


    #if !PlatformXcb
        @available(*, unavailable, message: "This flag requires the following trait: PlatformXcb.")
    #endif
    case xcbSurfaceCreateInfo_KHR = 1_000_005_000


    #if !PlatformWayland
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWayland.")
    #endif
    case waylandSurfaceCreateInfo_KHR = 1_000_006_000


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case androidSurfaceCreateInfo_KHR = 1_000_008_000


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case win32SurfaceCreateInfo_KHR = 1_000_009_000


    case debugReportCallbackCreateInfo_EXT = 1_000_011_000


    case pipelineRasterizationStateRasterizationOrder_AMD = 1_000_018_000


    case debugMarkerObjectNameInfo_EXT = 1_000_022_000


    case debugMarkerObjectTagInfo_EXT = 1_000_022_001


    case debugMarkerMarkerInfo_EXT = 1_000_022_002


    case videoProfileInfo_KHR = 1_000_023_000


    case videoCapabilities_KHR = 1_000_023_001


    case videoPictureResourceInfo_KHR = 1_000_023_002


    case videoSessionMemoryRequirements_KHR = 1_000_023_003


    case bindVideoSessionMemoryInfo_KHR = 1_000_023_004


    case videoSessionCreateInfo_KHR = 1_000_023_005


    case videoSessionParametersCreateInfo_KHR = 1_000_023_006


    case videoSessionParametersUpdateInfo_KHR = 1_000_023_007


    case videoBeginCodingInfo_KHR = 1_000_023_008


    case videoEndCodingInfo_KHR = 1_000_023_009


    case videoCodingControlInfo_KHR = 1_000_023_010


    case videoReferenceSlotInfo_KHR = 1_000_023_011


    case queueFamilyVideoProperties_KHR = 1_000_023_012


    case videoProfileListInfo_KHR = 1_000_023_013


    case physicalDeviceVideoFormatInfo_KHR = 1_000_023_014


    case videoFormatProperties_KHR = 1_000_023_015


    case queueFamilyQueryResultStatusProperties_KHR = 1_000_023_016


    case videoDecodeInfo_KHR = 1_000_024_000


    case videoDecodeCapabilities_KHR = 1_000_024_001


    case videoDecodeUsageInfo_KHR = 1_000_024_002


    case dedicatedAllocationImageCreateInfo_NV = 1_000_026_000


    case dedicatedAllocationBufferCreateInfo_NV = 1_000_026_001


    case dedicatedAllocationMemoryAllocateInfo_NV = 1_000_026_002


    case physicalDeviceTransformFeedbackFeatures_EXT = 1_000_028_000


    case physicalDeviceTransformFeedbackProperties_EXT = 1_000_028_001


    case pipelineRasterizationStateStreamCreateInfo_EXT = 1_000_028_002


    case cuModuleCreateInfo_NVX = 1_000_029_000


    case cuFunctionCreateInfo_NVX = 1_000_029_001


    case cuLaunchInfo_NVX = 1_000_029_002


    case cuModuleTexturingModeCreateInfo_NVX = 1_000_029_004


    case imageViewHandleInfo_NVX = 1_000_030_000


    case imageViewAddressProperties_NVX = 1_000_030_001


    case videoEncodeH264Capabilities_KHR = 1_000_038_000


    case videoEncodeH264SessionParametersCreateInfo_KHR = 1_000_038_001


    case videoEncodeH264SessionParametersAddInfo_KHR = 1_000_038_002


    case videoEncodeH264PictureInfo_KHR = 1_000_038_003


    case videoEncodeH264DpbSlotInfo_KHR = 1_000_038_004


    case videoEncodeH264NaluSliceInfo_KHR = 1_000_038_005


    case videoEncodeH264GopRemainingFrameInfo_KHR = 1_000_038_006


    case videoEncodeH264ProfileInfo_KHR = 1_000_038_007


    case videoEncodeH264RateControlInfo_KHR = 1_000_038_008


    case videoEncodeH264RateControlLayerInfo_KHR = 1_000_038_009


    case videoEncodeH264SessionCreateInfo_KHR = 1_000_038_010


    case videoEncodeH264QualityLevelProperties_KHR = 1_000_038_011


    case videoEncodeH264SessionParametersGetInfo_KHR = 1_000_038_012


    case videoEncodeH264SessionParametersFeedbackInfo_KHR = 1_000_038_013


    case videoEncodeH265Capabilities_KHR = 1_000_039_000


    case videoEncodeH265SessionParametersCreateInfo_KHR = 1_000_039_001


    case videoEncodeH265SessionParametersAddInfo_KHR = 1_000_039_002


    case videoEncodeH265PictureInfo_KHR = 1_000_039_003


    case videoEncodeH265DpbSlotInfo_KHR = 1_000_039_004


    case videoEncodeH265NaluSliceSegmentInfo_KHR = 1_000_039_005


    case videoEncodeH265GopRemainingFrameInfo_KHR = 1_000_039_006


    case videoEncodeH265ProfileInfo_KHR = 1_000_039_007


    case videoEncodeH265RateControlInfo_KHR = 1_000_039_009


    case videoEncodeH265RateControlLayerInfo_KHR = 1_000_039_010


    case videoEncodeH265SessionCreateInfo_KHR = 1_000_039_011


    case videoEncodeH265QualityLevelProperties_KHR = 1_000_039_012


    case videoEncodeH265SessionParametersGetInfo_KHR = 1_000_039_013


    case videoEncodeH265SessionParametersFeedbackInfo_KHR = 1_000_039_014


    case videoDecodeH264Capabilities_KHR = 1_000_040_000


    case videoDecodeH264PictureInfo_KHR = 1_000_040_001


    case videoDecodeH264ProfileInfo_KHR = 1_000_040_003


    case videoDecodeH264SessionParametersCreateInfo_KHR = 1_000_040_004


    case videoDecodeH264SessionParametersAddInfo_KHR = 1_000_040_005


    case videoDecodeH264DpbSlotInfo_KHR = 1_000_040_006


    case textureLodGatherFormatProperties_AMD = 1_000_041_000


    #if !PlatformGgp
        @available(*, unavailable, message: "This flag requires the following trait: PlatformGgp.")
    #endif
    case streamDescriptorSurfaceCreateInfo_GGP = 1_000_049_000


    case physicalDeviceCornerSampledImageFeatures_NV = 1_000_050_000


    case externalMemoryImageCreateInfo_NV = 1_000_056_000


    case exportMemoryAllocateInfo_NV = 1_000_056_001


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case importMemoryWin32HandleInfo_NV = 1_000_057_000


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case exportMemoryWin32HandleInfo_NV = 1_000_057_001


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case win32KeyedMutexAcquireReleaseInfo_NV = 1_000_058_000


    case validationFlags_EXT = 1_000_061_000


    #if !PlatformVi
        @available(*, unavailable, message: "This flag requires the following trait: PlatformVi.")
    #endif
    case viSurfaceCreateInfo_NN = 1_000_062_000


    case imageViewAstcDecodeMode_EXT = 1_000_067_000


    case physicalDeviceAstcDecodeFeatures_EXT = 1_000_067_001


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case importMemoryWin32HandleInfo_KHR = 1_000_073_000


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case exportMemoryWin32HandleInfo_KHR = 1_000_073_001


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case memoryWin32HandleProperties_KHR = 1_000_073_002


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case memoryGetWin32HandleInfo_KHR = 1_000_073_003


    case importMemoryFdInfo_KHR = 1_000_074_000


    case memoryFdProperties_KHR = 1_000_074_001


    case memoryGetFdInfo_KHR = 1_000_074_002


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case win32KeyedMutexAcquireReleaseInfo_KHR = 1_000_075_000


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case importSemaphoreWin32HandleInfo_KHR = 1_000_078_000


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case exportSemaphoreWin32HandleInfo_KHR = 1_000_078_001


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case d3d12FenceSubmitInfo_KHR = 1_000_078_002


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case semaphoreGetWin32HandleInfo_KHR = 1_000_078_003


    case importSemaphoreFdInfo_KHR = 1_000_079_000


    case semaphoreGetFdInfo_KHR = 1_000_079_001


    case commandBufferInheritanceConditionalRenderingInfo_EXT = 1_000_081_000


    case physicalDeviceConditionalRenderingFeatures_EXT = 1_000_081_001


    case conditionalRenderingBeginInfo_EXT = 1_000_081_002


    case presentRegions_KHR = 1_000_084_000


    case pipelineViewportWScalingStateCreateInfo_NV = 1_000_087_000


    case surfaceCapabilities2_EXT = 1_000_090_000


    case displayPowerInfo_EXT = 1_000_091_000


    case deviceEventInfo_EXT = 1_000_091_001


    case displayEventInfo_EXT = 1_000_091_002


    case swapchainCounterCreateInfo_EXT = 1_000_091_003


    case presentTimesInfo_GOOGLE = 1_000_092_000


    case physicalDeviceMultiviewPerViewAttributesProperties_NVX = 1_000_097_000


    case multiviewPerViewAttributesInfo_NVX = 1_000_044_009


    case pipelineViewportSwizzleStateCreateInfo_NV = 1_000_098_000


    case physicalDeviceDiscardRectangleProperties_EXT = 1_000_099_000


    case pipelineDiscardRectangleStateCreateInfo_EXT = 1_000_099_001


    case physicalDeviceConservativeRasterizationProperties_EXT = 1_000_101_000


    case pipelineRasterizationConservativeStateCreateInfo_EXT = 1_000_101_001


    case physicalDeviceDepthClipEnableFeatures_EXT = 1_000_102_000


    case pipelineRasterizationDepthClipStateCreateInfo_EXT = 1_000_102_001


    case hdrMetadata_EXT = 1_000_105_000


    case physicalDeviceRelaxedLineRasterizationFeatures_IMG = 1_000_110_000


    case sharedPresentSurfaceCapabilities_KHR = 1_000_111_000


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case importFenceWin32HandleInfo_KHR = 1_000_114_000


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case exportFenceWin32HandleInfo_KHR = 1_000_114_001


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case fenceGetWin32HandleInfo_KHR = 1_000_114_002


    case importFenceFdInfo_KHR = 1_000_115_000


    case fenceGetFdInfo_KHR = 1_000_115_001


    case physicalDevicePerformanceQueryFeatures_KHR = 1_000_116_000


    case physicalDevicePerformanceQueryProperties_KHR = 1_000_116_001


    case queryPoolPerformanceCreateInfo_KHR = 1_000_116_002


    case performanceQuerySubmitInfo_KHR = 1_000_116_003


    case acquireProfilingLockInfo_KHR = 1_000_116_004


    case performanceCounter_KHR = 1_000_116_005


    case performanceCounterDescription_KHR = 1_000_116_006


    case physicalDeviceSurfaceInfo2_KHR = 1_000_119_000


    case surfaceCapabilities2_KHR = 1_000_119_001


    case surfaceFormat2_KHR = 1_000_119_002


    case displayProperties2_KHR = 1_000_121_000


    case displayPlaneProperties2_KHR = 1_000_121_001


    case displayModeProperties2_KHR = 1_000_121_002


    case displayPlaneInfo2_KHR = 1_000_121_003


    case displayPlaneCapabilities2_KHR = 1_000_121_004


    #if !PlatformIos
        @available(*, unavailable, message: "This flag requires the following trait: PlatformIos.")
    #endif
    case iosSurfaceCreateInfo_MVK = 1_000_122_000


    #if !PlatformMacos
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMacos.")
    #endif
    case macosSurfaceCreateInfo_MVK = 1_000_123_000


    case debugUtilsObjectNameInfo_EXT = 1_000_128_000


    case debugUtilsObjectTagInfo_EXT = 1_000_128_001


    case debugUtilsLabel_EXT = 1_000_128_002


    case debugUtilsMessengerCallbackData_EXT = 1_000_128_003


    case debugUtilsMessengerCreateInfo_EXT = 1_000_128_004


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case androidHardwareBufferUsage_ANDROID = 1_000_129_000


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case androidHardwareBufferProperties_ANDROID = 1_000_129_001


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case androidHardwareBufferFormatProperties_ANDROID = 1_000_129_002


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case importAndroidHardwareBufferInfo_ANDROID = 1_000_129_003


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case memoryGetAndroidHardwareBufferInfo_ANDROID = 1_000_129_004


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case externalFormat_ANDROID = 1_000_129_005


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case androidHardwareBufferFormatProperties2_ANDROID = 1_000_129_006


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case physicalDeviceShaderEnqueueFeatures_AMDX = 1_000_134_000


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case physicalDeviceShaderEnqueueProperties_AMDX = 1_000_134_001


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case executionGraphPipelineScratchSize_AMDX = 1_000_134_002


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case executionGraphPipelineCreateInfo_AMDX = 1_000_134_003


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case pipelineShaderStageNodeCreateInfo_AMDX = 1_000_134_004


    case attachmentSampleCountInfo_AMD = 1_000_044_008


    case physicalDeviceShaderBfloat16Features_KHR = 1_000_141_000


    case sampleLocationsInfo_EXT = 1_000_143_000


    case renderPassSampleLocationsBeginInfo_EXT = 1_000_143_001


    case pipelineSampleLocationsStateCreateInfo_EXT = 1_000_143_002


    case physicalDeviceSampleLocationsProperties_EXT = 1_000_143_003


    case multisampleProperties_EXT = 1_000_143_004


    case physicalDeviceBlendOperationAdvancedFeatures_EXT = 1_000_148_000


    case physicalDeviceBlendOperationAdvancedProperties_EXT = 1_000_148_001


    case pipelineColorBlendAdvancedStateCreateInfo_EXT = 1_000_148_002


    case pipelineCoverageToColorStateCreateInfo_NV = 1_000_149_000


    case writeDescriptorSetAccelerationStructure_KHR = 1_000_150_007


    case accelerationStructureBuildGeometryInfo_KHR = 1_000_150_000


    case accelerationStructureDeviceAddressInfo_KHR = 1_000_150_002


    case accelerationStructureGeometryAabbsData_KHR = 1_000_150_003


    case accelerationStructureGeometryInstancesData_KHR = 1_000_150_004


    case accelerationStructureGeometryTrianglesData_KHR = 1_000_150_005


    case accelerationStructureGeometry_KHR = 1_000_150_006


    case accelerationStructureVersionInfo_KHR = 1_000_150_009


    case copyAccelerationStructureInfo_KHR = 1_000_150_010


    case copyAccelerationStructureToMemoryInfo_KHR = 1_000_150_011


    case copyMemoryToAccelerationStructureInfo_KHR = 1_000_150_012


    case physicalDeviceAccelerationStructureFeatures_KHR = 1_000_150_013


    case physicalDeviceAccelerationStructureProperties_KHR = 1_000_150_014


    case accelerationStructureCreateInfo_KHR = 1_000_150_017


    case accelerationStructureBuildSizesInfo_KHR = 1_000_150_020


    case physicalDeviceRayTracingPipelineFeatures_KHR = 1_000_347_000


    case physicalDeviceRayTracingPipelineProperties_KHR = 1_000_347_001


    case rayTracingPipelineCreateInfo_KHR = 1_000_150_015


    case rayTracingShaderGroupCreateInfo_KHR = 1_000_150_016


    case rayTracingPipelineInterfaceCreateInfo_KHR = 1_000_150_018


    case physicalDeviceRayQueryFeatures_KHR = 1_000_348_013


    case pipelineCoverageModulationStateCreateInfo_NV = 1_000_152_000


    case physicalDeviceShaderSmBuiltinsFeatures_NV = 1_000_154_000


    case physicalDeviceShaderSmBuiltinsProperties_NV = 1_000_154_001


    case drmFormatModifierPropertiesList_EXT = 1_000_158_000


    case physicalDeviceImageDrmFormatModifierInfo_EXT = 1_000_158_002


    case imageDrmFormatModifierListCreateInfo_EXT = 1_000_158_003


    case imageDrmFormatModifierExplicitCreateInfo_EXT = 1_000_158_004


    case imageDrmFormatModifierProperties_EXT = 1_000_158_005


    case drmFormatModifierPropertiesList2_EXT = 1_000_158_006


    case validationCacheCreateInfo_EXT = 1_000_160_000


    case shaderModuleValidationCacheCreateInfo_EXT = 1_000_160_001


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case physicalDevicePortabilitySubsetFeatures_KHR = 1_000_163_000


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case physicalDevicePortabilitySubsetProperties_KHR = 1_000_163_001


    case pipelineViewportShadingRateImageStateCreateInfo_NV = 1_000_164_000


    case physicalDeviceShadingRateImageFeatures_NV = 1_000_164_001


    case physicalDeviceShadingRateImageProperties_NV = 1_000_164_002


    case pipelineViewportCoarseSampleOrderStateCreateInfo_NV = 1_000_164_005


    case rayTracingPipelineCreateInfo_NV = 1_000_165_000


    case accelerationStructureCreateInfo_NV = 1_000_165_001


    case geometry_NV = 1_000_165_003


    case geometryTriangles_NV = 1_000_165_004


    case geometryAabb_NV = 1_000_165_005


    case bindAccelerationStructureMemoryInfo_NV = 1_000_165_006


    case writeDescriptorSetAccelerationStructure_NV = 1_000_165_007


    case accelerationStructureMemoryRequirementsInfo_NV = 1_000_165_008


    case physicalDeviceRayTracingProperties_NV = 1_000_165_009


    case rayTracingShaderGroupCreateInfo_NV = 1_000_165_011


    case accelerationStructureInfo_NV = 1_000_165_012


    case physicalDeviceRepresentativeFragmentTestFeatures_NV = 1_000_166_000


    case pipelineRepresentativeFragmentTestStateCreateInfo_NV = 1_000_166_001


    case physicalDeviceImageViewImageFormatInfo_EXT = 1_000_170_000


    case filterCubicImageViewImageFormatProperties_EXT = 1_000_170_001


    case importMemoryHostPointerInfo_EXT = 1_000_178_000


    case memoryHostPointerProperties_EXT = 1_000_178_001


    case physicalDeviceExternalMemoryHostProperties_EXT = 1_000_178_002


    case physicalDeviceShaderClockFeatures_KHR = 1_000_181_000


    case pipelineCompilerControlCreateInfo_AMD = 1_000_183_000


    case physicalDeviceShaderCoreProperties_AMD = 1_000_185_000


    case videoDecodeH265Capabilities_KHR = 1_000_187_000


    case videoDecodeH265SessionParametersCreateInfo_KHR = 1_000_187_001


    case videoDecodeH265SessionParametersAddInfo_KHR = 1_000_187_002


    case videoDecodeH265ProfileInfo_KHR = 1_000_187_003


    case videoDecodeH265PictureInfo_KHR = 1_000_187_004


    case videoDecodeH265DpbSlotInfo_KHR = 1_000_187_005


    case deviceMemoryOverallocationCreateInfo_AMD = 1_000_189_000


    case physicalDeviceVertexAttributeDivisorProperties_EXT = 1_000_190_000


    #if !PlatformGgp
        @available(*, unavailable, message: "This flag requires the following trait: PlatformGgp.")
    #endif
    case presentFrameToken_GGP = 1_000_191_000


    case physicalDeviceMeshShaderFeatures_NV = 1_000_202_000


    case physicalDeviceMeshShaderProperties_NV = 1_000_202_001


    case physicalDeviceShaderImageFootprintFeatures_NV = 1_000_204_000


    case pipelineViewportExclusiveScissorStateCreateInfo_NV = 1_000_205_000


    case physicalDeviceExclusiveScissorFeatures_NV = 1_000_205_002


    case checkpointData_NV = 1_000_206_000


    case queueFamilyCheckpointProperties_NV = 1_000_206_001


    case queueFamilyCheckpointProperties2_NV = 1_000_314_008


    case checkpointData2_NV = 1_000_314_009


    case physicalDeviceShaderIntegerFunctions2Features_INTEL = 1_000_209_000


    case queryPoolPerformanceQueryCreateInfo_INTEL = 1_000_210_000


    case initializePerformanceApiInfo_INTEL = 1_000_210_001


    case performanceMarkerInfo_INTEL = 1_000_210_002


    case performanceStreamMarkerInfo_INTEL = 1_000_210_003


    case performanceOverrideInfo_INTEL = 1_000_210_004


    case performanceConfigurationAcquireInfo_INTEL = 1_000_210_005


    case physicalDevicePciBusInfoProperties_EXT = 1_000_212_000


    case displayNativeHdrSurfaceCapabilities_AMD = 1_000_213_000


    case swapchainDisplayNativeHdrCreateInfo_AMD = 1_000_213_001


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case imagepipeSurfaceCreateInfo_FUCHSIA = 1_000_214_000


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case metalSurfaceCreateInfo_EXT = 1_000_217_000


    case physicalDeviceFragmentDensityMapFeatures_EXT = 1_000_218_000


    case physicalDeviceFragmentDensityMapProperties_EXT = 1_000_218_001


    case renderPassFragmentDensityMapCreateInfo_EXT = 1_000_218_002


    case renderingFragmentDensityMapAttachmentInfo_EXT = 1_000_044_007


    case fragmentShadingRateAttachmentInfo_KHR = 1_000_226_000


    case pipelineFragmentShadingRateStateCreateInfo_KHR = 1_000_226_001


    case physicalDeviceFragmentShadingRateProperties_KHR = 1_000_226_002


    case physicalDeviceFragmentShadingRateFeatures_KHR = 1_000_226_003


    case physicalDeviceFragmentShadingRate_KHR = 1_000_226_004


    case renderingFragmentShadingRateAttachmentInfo_KHR = 1_000_044_006


    case physicalDeviceShaderCoreProperties2_AMD = 1_000_227_000


    case physicalDeviceCoherentMemoryFeatures_AMD = 1_000_229_000


    case physicalDeviceShaderImageAtomicInt64Features_EXT = 1_000_234_000


    case physicalDeviceShaderQuadControlFeatures_KHR = 1_000_235_000


    case physicalDeviceMemoryBudgetProperties_EXT = 1_000_237_000


    case physicalDeviceMemoryPriorityFeatures_EXT = 1_000_238_000


    case memoryPriorityAllocateInfo_EXT = 1_000_238_001


    case surfaceProtectedCapabilities_KHR = 1_000_239_000


    case physicalDeviceDedicatedAllocationImageAliasingFeatures_NV = 1_000_240_000


    case physicalDeviceBufferDeviceAddressFeatures_EXT = 1_000_244_000


    case bufferDeviceAddressCreateInfo_EXT = 1_000_244_002


    case validationFeatures_EXT = 1_000_247_000


    case physicalDevicePresentWaitFeatures_KHR = 1_000_248_000


    case physicalDeviceCooperativeMatrixFeatures_NV = 1_000_249_000


    case cooperativeMatrixProperties_NV = 1_000_249_001


    case physicalDeviceCooperativeMatrixProperties_NV = 1_000_249_002


    case physicalDeviceCoverageReductionModeFeatures_NV = 1_000_250_000


    case pipelineCoverageReductionStateCreateInfo_NV = 1_000_250_001


    case framebufferMixedSamplesCombination_NV = 1_000_250_002


    case physicalDeviceFragmentShaderInterlockFeatures_EXT = 1_000_251_000


    case physicalDeviceYcbcrImageArraysFeatures_EXT = 1_000_252_000


    case physicalDeviceProvokingVertexFeatures_EXT = 1_000_254_000


    case pipelineRasterizationProvokingVertexStateCreateInfo_EXT = 1_000_254_001


    case physicalDeviceProvokingVertexProperties_EXT = 1_000_254_002


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case surfaceFullScreenExclusiveInfo_EXT = 1_000_255_000


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case surfaceCapabilitiesFullScreenExclusive_EXT = 1_000_255_002


    #if !PlatformWin32
        @available(*, unavailable, message: "This flag requires the following trait: PlatformWin32.")
    #endif
    case surfaceFullScreenExclusiveWin32Info_EXT = 1_000_255_001


    case headlessSurfaceCreateInfo_EXT = 1_000_256_000


    case physicalDeviceShaderAtomicFloatFeatures_EXT = 1_000_260_000


    case physicalDeviceExtendedDynamicStateFeatures_EXT = 1_000_267_000


    case physicalDevicePipelineExecutablePropertiesFeatures_KHR = 1_000_269_000


    case pipelineInfo_KHR = 1_000_269_001


    case pipelineExecutableProperties_KHR = 1_000_269_002


    case pipelineExecutableInfo_KHR = 1_000_269_003


    case pipelineExecutableStatistic_KHR = 1_000_269_004


    case pipelineExecutableInternalRepresentation_KHR = 1_000_269_005


    case physicalDeviceMapMemoryPlacedFeatures_EXT = 1_000_272_000


    case physicalDeviceMapMemoryPlacedProperties_EXT = 1_000_272_001


    case memoryMapPlacedInfo_EXT = 1_000_272_002


    case physicalDeviceShaderAtomicFloat2Features_EXT = 1_000_273_000


    case surfacePresentMode_EXT = 1_000_274_000


    case surfacePresentScalingCapabilities_EXT = 1_000_274_001


    case surfacePresentModeCompatibility_EXT = 1_000_274_002


    case physicalDeviceSwapchainMaintenance1Features_EXT = 1_000_275_000


    case swapchainPresentFenceInfo_EXT = 1_000_275_001


    case swapchainPresentModesCreateInfo_EXT = 1_000_275_002


    case swapchainPresentModeInfo_EXT = 1_000_275_003


    case swapchainPresentScalingCreateInfo_EXT = 1_000_275_004


    case releaseSwapchainImagesInfo_EXT = 1_000_275_005


    case physicalDeviceDeviceGeneratedCommandsProperties_NV = 1_000_277_000


    case graphicsShaderGroupCreateInfo_NV = 1_000_277_001


    case graphicsPipelineShaderGroupsCreateInfo_NV = 1_000_277_002


    case indirectCommandsLayoutToken_NV = 1_000_277_003


    case indirectCommandsLayoutCreateInfo_NV = 1_000_277_004


    case generatedCommandsInfo_NV = 1_000_277_005


    case generatedCommandsMemoryRequirementsInfo_NV = 1_000_277_006


    case physicalDeviceDeviceGeneratedCommandsFeatures_NV = 1_000_277_007


    case physicalDeviceInheritedViewportScissorFeatures_NV = 1_000_278_000


    case commandBufferInheritanceViewportScissorInfo_NV = 1_000_278_001


    case physicalDeviceTexelBufferAlignmentFeatures_EXT = 1_000_281_000


    case commandBufferInheritanceRenderPassTransformInfo_QCOM = 1_000_282_000


    case renderPassTransformBeginInfo_QCOM = 1_000_282_001


    case physicalDeviceDepthBiasControlFeatures_EXT = 1_000_283_000


    case depthBiasInfo_EXT = 1_000_283_001


    case depthBiasRepresentationInfo_EXT = 1_000_283_002


    case physicalDeviceDeviceMemoryReportFeatures_EXT = 1_000_284_000


    case deviceDeviceMemoryReportCreateInfo_EXT = 1_000_284_001


    case deviceMemoryReportCallbackData_EXT = 1_000_284_002


    case samplerCustomBorderColorCreateInfo_EXT = 1_000_287_000


    case physicalDeviceCustomBorderColorProperties_EXT = 1_000_287_001


    case physicalDeviceCustomBorderColorFeatures_EXT = 1_000_287_002


    case pipelineLibraryCreateInfo_KHR = 1_000_290_000


    case physicalDevicePresentBarrierFeatures_NV = 1_000_292_000


    case surfaceCapabilitiesPresentBarrier_NV = 1_000_292_001


    case swapchainPresentBarrierCreateInfo_NV = 1_000_292_002


    case presentId_KHR = 1_000_294_000


    case physicalDevicePresentIdFeatures_KHR = 1_000_294_001


    case videoEncodeInfo_KHR = 1_000_299_000


    case videoEncodeRateControlInfo_KHR = 1_000_299_001


    case videoEncodeRateControlLayerInfo_KHR = 1_000_299_002


    case videoEncodeCapabilities_KHR = 1_000_299_003


    case videoEncodeUsageInfo_KHR = 1_000_299_004


    case queryPoolVideoEncodeFeedbackCreateInfo_KHR = 1_000_299_005


    case physicalDeviceVideoEncodeQualityLevelInfo_KHR = 1_000_299_006


    case videoEncodeQualityLevelProperties_KHR = 1_000_299_007


    case videoEncodeQualityLevelInfo_KHR = 1_000_299_008


    case videoEncodeSessionParametersGetInfo_KHR = 1_000_299_009


    case videoEncodeSessionParametersFeedbackInfo_KHR = 1_000_299_010


    case physicalDeviceDiagnosticsConfigFeatures_NV = 1_000_300_000


    case deviceDiagnosticsConfigCreateInfo_NV = 1_000_300_001


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case cudaModuleCreateInfo_NV = 1_000_307_000


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case cudaFunctionCreateInfo_NV = 1_000_307_001


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case cudaLaunchInfo_NV = 1_000_307_002


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case physicalDeviceCudaKernelLaunchFeatures_NV = 1_000_307_003


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case physicalDeviceCudaKernelLaunchProperties_NV = 1_000_307_004


    case physicalDeviceTileShadingFeatures_QCOM = 1_000_309_000


    case physicalDeviceTileShadingProperties_QCOM = 1_000_309_001


    case renderPassTileShadingCreateInfo_QCOM = 1_000_309_002


    case perTileBeginInfo_QCOM = 1_000_309_003


    case perTileEndInfo_QCOM = 1_000_309_004


    case dispatchTileInfo_QCOM = 1_000_309_005


    case queryLowLatencySupport_NV = 1_000_310_000


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case exportMetalObjectCreateInfo_EXT = 1_000_311_000


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case exportMetalObjectsInfo_EXT = 1_000_311_001


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case exportMetalDeviceInfo_EXT = 1_000_311_002


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case exportMetalCommandQueueInfo_EXT = 1_000_311_003


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case exportMetalBufferInfo_EXT = 1_000_311_004


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case importMetalBufferInfo_EXT = 1_000_311_005


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case exportMetalTextureInfo_EXT = 1_000_311_006


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case importMetalTextureInfo_EXT = 1_000_311_007


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case exportMetalIoSurfaceInfo_EXT = 1_000_311_008


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case importMetalIoSurfaceInfo_EXT = 1_000_311_009


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case exportMetalSharedEventInfo_EXT = 1_000_311_010


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case importMetalSharedEventInfo_EXT = 1_000_311_011


    case physicalDeviceDescriptorBufferProperties_EXT = 1_000_316_000


    case physicalDeviceDescriptorBufferDensityMapProperties_EXT = 1_000_316_001


    case physicalDeviceDescriptorBufferFeatures_EXT = 1_000_316_002


    case descriptorAddressInfo_EXT = 1_000_316_003


    case descriptorGetInfo_EXT = 1_000_316_004


    case bufferCaptureDescriptorDataInfo_EXT = 1_000_316_005


    case imageCaptureDescriptorDataInfo_EXT = 1_000_316_006


    case imageViewCaptureDescriptorDataInfo_EXT = 1_000_316_007


    case samplerCaptureDescriptorDataInfo_EXT = 1_000_316_008


    case opaqueCaptureDescriptorDataCreateInfo_EXT = 1_000_316_010


    case descriptorBufferBindingInfo_EXT = 1_000_316_011


    case descriptorBufferBindingPushDescriptorBufferHandle_EXT = 1_000_316_012


    case accelerationStructureCaptureDescriptorDataInfo_EXT = 1_000_316_009


    case physicalDeviceGraphicsPipelineLibraryFeatures_EXT = 1_000_320_000


    case physicalDeviceGraphicsPipelineLibraryProperties_EXT = 1_000_320_001


    case graphicsPipelineLibraryCreateInfo_EXT = 1_000_320_002


    case physicalDeviceShaderEarlyAndLateFragmentTestsFeatures_AMD = 1_000_321_000


    case physicalDeviceFragmentShaderBarycentricFeatures_KHR = 1_000_203_000


    case physicalDeviceFragmentShaderBarycentricProperties_KHR = 1_000_322_000


    case physicalDeviceShaderSubgroupUniformControlFlowFeatures_KHR = 1_000_323_000


    case physicalDeviceFragmentShadingRateEnumsProperties_NV = 1_000_326_000


    case physicalDeviceFragmentShadingRateEnumsFeatures_NV = 1_000_326_001


    case pipelineFragmentShadingRateEnumStateCreateInfo_NV = 1_000_326_002


    case accelerationStructureGeometryMotionTrianglesData_NV = 1_000_327_000


    case physicalDeviceRayTracingMotionBlurFeatures_NV = 1_000_327_001


    case accelerationStructureMotionInfo_NV = 1_000_327_002


    case physicalDeviceMeshShaderFeatures_EXT = 1_000_328_000


    case physicalDeviceMeshShaderProperties_EXT = 1_000_328_001


    case physicalDeviceYcbcr2Plane444FormatsFeatures_EXT = 1_000_330_000


    case physicalDeviceFragmentDensityMap2Features_EXT = 1_000_332_000


    case physicalDeviceFragmentDensityMap2Properties_EXT = 1_000_332_001


    case copyCommandTransformInfo_QCOM = 1_000_333_000


    case physicalDeviceWorkgroupMemoryExplicitLayoutFeatures_KHR = 1_000_336_000


    case physicalDeviceImageCompressionControlFeatures_EXT = 1_000_338_000


    case imageCompressionControl_EXT = 1_000_338_001


    case imageCompressionProperties_EXT = 1_000_338_004


    case physicalDeviceAttachmentFeedbackLoopLayoutFeatures_EXT = 1_000_339_000


    case physicalDevice4444FormatsFeatures_EXT = 1_000_340_000


    case physicalDeviceFaultFeatures_EXT = 1_000_341_000


    case deviceFaultCounts_EXT = 1_000_341_001


    case deviceFaultInfo_EXT = 1_000_341_002


    case physicalDeviceRgba10x6FormatsFeatures_EXT = 1_000_344_000


    #if !PlatformDirectfb
        @available(*, unavailable, message: "This flag requires the following trait: PlatformDirectfb.")
    #endif
    case directfbSurfaceCreateInfo_EXT = 1_000_346_000


    case physicalDeviceVertexInputDynamicStateFeatures_EXT = 1_000_352_000


    case vertexInputBindingDescription2_EXT = 1_000_352_001


    case vertexInputAttributeDescription2_EXT = 1_000_352_002


    case physicalDeviceDrmProperties_EXT = 1_000_353_000


    case physicalDeviceAddressBindingReportFeatures_EXT = 1_000_354_000


    case deviceAddressBindingCallbackData_EXT = 1_000_354_001


    case physicalDeviceDepthClipControlFeatures_EXT = 1_000_355_000


    case pipelineViewportDepthClipControlCreateInfo_EXT = 1_000_355_001


    case physicalDevicePrimitiveTopologyListRestartFeatures_EXT = 1_000_356_000


    case physicalDevicePresentModeFifoLatestReadyFeatures_EXT = 1_000_361_000


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case importMemoryZirconHandleInfo_FUCHSIA = 1_000_364_000


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case memoryZirconHandleProperties_FUCHSIA = 1_000_364_001


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case memoryGetZirconHandleInfo_FUCHSIA = 1_000_364_002


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case importSemaphoreZirconHandleInfo_FUCHSIA = 1_000_365_000


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case semaphoreGetZirconHandleInfo_FUCHSIA = 1_000_365_001


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case bufferCollectionCreateInfo_FUCHSIA = 1_000_366_000


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case importMemoryBufferCollection_FUCHSIA = 1_000_366_001


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case bufferCollectionImageCreateInfo_FUCHSIA = 1_000_366_002


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case bufferCollectionProperties_FUCHSIA = 1_000_366_003


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case bufferConstraintsInfo_FUCHSIA = 1_000_366_004


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case bufferCollectionBufferCreateInfo_FUCHSIA = 1_000_366_005


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case imageConstraintsInfo_FUCHSIA = 1_000_366_006


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case imageFormatConstraintsInfo_FUCHSIA = 1_000_366_007


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case sysmemColorSpace_FUCHSIA = 1_000_366_008


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    case bufferCollectionConstraintsInfo_FUCHSIA = 1_000_366_009


    case subpassShadingPipelineCreateInfo_HUAWEI = 1_000_369_000


    case physicalDeviceSubpassShadingFeatures_HUAWEI = 1_000_369_001


    case physicalDeviceSubpassShadingProperties_HUAWEI = 1_000_369_002


    case physicalDeviceInvocationMaskFeatures_HUAWEI = 1_000_370_000


    case memoryGetRemoteAddressInfo_NV = 1_000_371_000


    case physicalDeviceExternalMemoryRdmaFeatures_NV = 1_000_371_001


    case pipelinePropertiesIdentifier_EXT = 1_000_372_000


    case physicalDevicePipelinePropertiesFeatures_EXT = 1_000_372_001


    case physicalDeviceFrameBoundaryFeatures_EXT = 1_000_375_000


    case frameBoundary_EXT = 1_000_375_001


    case physicalDeviceMultisampledRenderToSingleSampledFeatures_EXT = 1_000_376_000


    case subpassResolvePerformanceQuery_EXT = 1_000_376_001


    case multisampledRenderToSingleSampledInfo_EXT = 1_000_376_002


    case physicalDeviceExtendedDynamicState2Features_EXT = 1_000_377_000


    #if !PlatformScreen
        @available(*, unavailable, message: "This flag requires the following trait: PlatformScreen.")
    #endif
    case screenSurfaceCreateInfo_QNX = 1_000_378_000


    case physicalDeviceColorWriteEnableFeatures_EXT = 1_000_381_000


    case pipelineColorWriteCreateInfo_EXT = 1_000_381_001


    case physicalDevicePrimitivesGeneratedQueryFeatures_EXT = 1_000_382_000


    case physicalDeviceRayTracingMaintenance1Features_KHR = 1_000_386_000


    case physicalDeviceImageViewMinLodFeatures_EXT = 1_000_391_000


    case imageViewMinLodCreateInfo_EXT = 1_000_391_001


    case physicalDeviceMultiDrawFeatures_EXT = 1_000_392_000


    case physicalDeviceMultiDrawProperties_EXT = 1_000_392_001


    case physicalDeviceImage2dViewOf3dFeatures_EXT = 1_000_393_000


    case physicalDeviceShaderTileImageFeatures_EXT = 1_000_395_000


    case physicalDeviceShaderTileImageProperties_EXT = 1_000_395_001


    case micromapBuildInfo_EXT = 1_000_396_000


    case micromapVersionInfo_EXT = 1_000_396_001


    case copyMicromapInfo_EXT = 1_000_396_002


    case copyMicromapToMemoryInfo_EXT = 1_000_396_003


    case copyMemoryToMicromapInfo_EXT = 1_000_396_004


    case physicalDeviceOpacityMicromapFeatures_EXT = 1_000_396_005


    case physicalDeviceOpacityMicromapProperties_EXT = 1_000_396_006


    case micromapCreateInfo_EXT = 1_000_396_007


    case micromapBuildSizesInfo_EXT = 1_000_396_008


    case accelerationStructureTrianglesOpacityMicromap_EXT = 1_000_396_009


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case physicalDeviceDisplacementMicromapFeatures_NV = 1_000_397_000


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case physicalDeviceDisplacementMicromapProperties_NV = 1_000_397_001


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case accelerationStructureTrianglesDisplacementMicromap_NV = 1_000_397_002


    case physicalDeviceClusterCullingShaderFeatures_HUAWEI = 1_000_404_000


    case physicalDeviceClusterCullingShaderProperties_HUAWEI = 1_000_404_001


    case physicalDeviceClusterCullingShaderVrsFeatures_HUAWEI = 1_000_404_002


    case physicalDeviceBorderColorSwizzleFeatures_EXT = 1_000_411_000


    case samplerBorderColorComponentMappingCreateInfo_EXT = 1_000_411_001


    case physicalDevicePageableDeviceLocalMemoryFeatures_EXT = 1_000_412_000


    case physicalDeviceShaderCoreProperties_ARM = 1_000_415_000


    case deviceQueueShaderCoreControlCreateInfo_ARM = 1_000_417_000


    case physicalDeviceSchedulingControlsFeatures_ARM = 1_000_417_001


    case physicalDeviceSchedulingControlsProperties_ARM = 1_000_417_002


    case physicalDeviceImageSlicedViewOf3dFeatures_EXT = 1_000_418_000


    case imageViewSlicedCreateInfo_EXT = 1_000_418_001


    case physicalDeviceDescriptorSetHostMappingFeatures_VALVE = 1_000_420_000


    case descriptorSetBindingReference_VALVE = 1_000_420_001


    case descriptorSetLayoutHostMappingInfo_VALVE = 1_000_420_002


    case physicalDeviceNonSeamlessCubeMapFeatures_EXT = 1_000_422_000


    case physicalDeviceRenderPassStripedFeatures_ARM = 1_000_424_000


    case physicalDeviceRenderPassStripedProperties_ARM = 1_000_424_001


    case renderPassStripeBeginInfo_ARM = 1_000_424_002


    case renderPassStripeInfo_ARM = 1_000_424_003


    case renderPassStripeSubmitInfo_ARM = 1_000_424_004


    case physicalDeviceCopyMemoryIndirectFeatures_NV = 1_000_426_000


    case physicalDeviceCopyMemoryIndirectProperties_NV = 1_000_426_001


    case physicalDeviceMemoryDecompressionFeatures_NV = 1_000_427_000


    case physicalDeviceMemoryDecompressionProperties_NV = 1_000_427_001


    case physicalDeviceDeviceGeneratedCommandsComputeFeatures_NV = 1_000_428_000


    case computePipelineIndirectBufferInfo_NV = 1_000_428_001


    case pipelineIndirectDeviceAddressInfo_NV = 1_000_428_002


    case physicalDeviceRayTracingLinearSweptSpheresFeatures_NV = 1_000_429_008


    case accelerationStructureGeometryLinearSweptSpheresData_NV = 1_000_429_009


    case accelerationStructureGeometrySpheresData_NV = 1_000_429_010


    case physicalDeviceLinearColorAttachmentFeatures_NV = 1_000_430_000


    case physicalDeviceShaderMaximalReconvergenceFeatures_KHR = 1_000_434_000


    case physicalDeviceImageCompressionControlSwapchainFeatures_EXT = 1_000_437_000


    case physicalDeviceImageProcessingFeatures_QCOM = 1_000_440_000


    case physicalDeviceImageProcessingProperties_QCOM = 1_000_440_001


    case imageViewSampleWeightCreateInfo_QCOM = 1_000_440_002


    case physicalDeviceNestedCommandBufferFeatures_EXT = 1_000_451_000


    case physicalDeviceNestedCommandBufferProperties_EXT = 1_000_451_001


    case externalMemoryAcquireUnmodified_EXT = 1_000_453_000


    case physicalDeviceExtendedDynamicState3Features_EXT = 1_000_455_000


    case physicalDeviceExtendedDynamicState3Properties_EXT = 1_000_455_001


    case physicalDeviceSubpassMergeFeedbackFeatures_EXT = 1_000_458_000


    case renderPassCreationControl_EXT = 1_000_458_001


    case renderPassCreationFeedbackCreateInfo_EXT = 1_000_458_002


    case renderPassSubpassFeedbackCreateInfo_EXT = 1_000_458_003


    case directDriverLoadingInfo_LUNARG = 1_000_459_000


    case directDriverLoadingList_LUNARG = 1_000_459_001


    case physicalDeviceShaderModuleIdentifierFeatures_EXT = 1_000_462_000


    case physicalDeviceShaderModuleIdentifierProperties_EXT = 1_000_462_001


    case pipelineShaderStageModuleIdentifierCreateInfo_EXT = 1_000_462_002


    case shaderModuleIdentifier_EXT = 1_000_462_003


    case physicalDeviceRasterizationOrderAttachmentAccessFeatures_EXT = 1_000_342_000


    case physicalDeviceOpticalFlowFeatures_NV = 1_000_464_000


    case physicalDeviceOpticalFlowProperties_NV = 1_000_464_001


    case opticalFlowImageFormatInfo_NV = 1_000_464_002


    case opticalFlowImageFormatProperties_NV = 1_000_464_003


    case opticalFlowSessionCreateInfo_NV = 1_000_464_004


    case opticalFlowExecuteInfo_NV = 1_000_464_005


    case opticalFlowSessionCreatePrivateDataInfo_NV = 1_000_464_010


    case physicalDeviceLegacyDitheringFeatures_EXT = 1_000_465_000


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case physicalDeviceExternalFormatResolveFeatures_ANDROID = 1_000_468_000


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case physicalDeviceExternalFormatResolveProperties_ANDROID = 1_000_468_001


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    case androidHardwareBufferFormatResolveProperties_ANDROID = 1_000_468_002


    case physicalDeviceAntiLagFeatures_AMD = 1_000_476_000


    case antiLagData_AMD = 1_000_476_001


    case antiLagPresentationInfo_AMD = 1_000_476_002


    case physicalDeviceRayTracingPositionFetchFeatures_KHR = 1_000_481_000


    case physicalDeviceShaderObjectFeatures_EXT = 1_000_482_000


    case physicalDeviceShaderObjectProperties_EXT = 1_000_482_001


    case shaderCreateInfo_EXT = 1_000_482_002


    case physicalDevicePipelineBinaryFeatures_KHR = 1_000_483_000


    case pipelineBinaryCreateInfo_KHR = 1_000_483_001


    case pipelineBinaryInfo_KHR = 1_000_483_002


    case pipelineBinaryKey_KHR = 1_000_483_003


    case physicalDevicePipelineBinaryProperties_KHR = 1_000_483_004


    case releaseCapturedPipelineDataInfo_KHR = 1_000_483_005


    case pipelineBinaryDataInfo_KHR = 1_000_483_006


    case pipelineCreateInfo_KHR = 1_000_483_007


    case devicePipelineBinaryInternalCacheControl_KHR = 1_000_483_008


    case pipelineBinaryHandlesInfo_KHR = 1_000_483_009


    case physicalDeviceTilePropertiesFeatures_QCOM = 1_000_484_000


    case tileProperties_QCOM = 1_000_484_001


    case physicalDeviceAmigoProfilingFeatures_SEC = 1_000_485_000


    case amigoProfilingSubmitInfo_SEC = 1_000_485_001


    case physicalDeviceMultiviewPerViewViewportsFeatures_QCOM = 1_000_488_000


    case physicalDeviceRayTracingInvocationReorderFeatures_NV = 1_000_490_000


    case physicalDeviceRayTracingInvocationReorderProperties_NV = 1_000_490_001


    case physicalDeviceCooperativeVectorFeatures_NV = 1_000_491_000


    case physicalDeviceCooperativeVectorProperties_NV = 1_000_491_001


    case cooperativeVectorProperties_NV = 1_000_491_002


    case convertCooperativeVectorMatrixInfo_NV = 1_000_491_004


    case physicalDeviceExtendedSparseAddressSpaceFeatures_NV = 1_000_492_000


    case physicalDeviceExtendedSparseAddressSpaceProperties_NV = 1_000_492_001


    case physicalDeviceMutableDescriptorTypeFeatures_EXT = 1_000_351_000


    case mutableDescriptorTypeCreateInfo_EXT = 1_000_351_002


    case physicalDeviceLegacyVertexAttributesFeatures_EXT = 1_000_495_000


    case physicalDeviceLegacyVertexAttributesProperties_EXT = 1_000_495_001


    case layerSettingsCreateInfo_EXT = 1_000_496_000


    case physicalDeviceShaderCoreBuiltinsFeatures_ARM = 1_000_497_000


    case physicalDeviceShaderCoreBuiltinsProperties_ARM = 1_000_497_001


    case physicalDevicePipelineLibraryGroupHandlesFeatures_EXT = 1_000_498_000


    case physicalDeviceDynamicRenderingUnusedAttachmentsFeatures_EXT = 1_000_499_000


    case latencySleepModeInfo_NV = 1_000_505_000


    case latencySleepInfo_NV = 1_000_505_001


    case setLatencyMarkerInfo_NV = 1_000_505_002


    case getLatencyMarkerInfo_NV = 1_000_505_003


    case latencyTimingsFrameReport_NV = 1_000_505_004


    case latencySubmissionPresentId_NV = 1_000_505_005


    case outOfBandQueueTypeInfo_NV = 1_000_505_006


    case swapchainLatencyCreateInfo_NV = 1_000_505_007


    case latencySurfaceCapabilities_NV = 1_000_505_008


    case physicalDeviceCooperativeMatrixFeatures_KHR = 1_000_506_000


    case cooperativeMatrixProperties_KHR = 1_000_506_001


    case physicalDeviceCooperativeMatrixProperties_KHR = 1_000_506_002


    case physicalDeviceMultiviewPerViewRenderAreasFeatures_QCOM = 1_000_510_000


    case multiviewPerViewRenderAreasRenderPassBeginInfo_QCOM = 1_000_510_001


    case physicalDeviceComputeShaderDerivativesFeatures_KHR = 1_000_201_000


    case physicalDeviceComputeShaderDerivativesProperties_KHR = 1_000_511_000


    case videoDecodeAv1Capabilities_KHR = 1_000_512_000


    case videoDecodeAv1PictureInfo_KHR = 1_000_512_001


    case videoDecodeAv1ProfileInfo_KHR = 1_000_512_003


    case videoDecodeAv1SessionParametersCreateInfo_KHR = 1_000_512_004


    case videoDecodeAv1DpbSlotInfo_KHR = 1_000_512_005


    case videoEncodeAv1Capabilities_KHR = 1_000_513_000


    case videoEncodeAv1SessionParametersCreateInfo_KHR = 1_000_513_001


    case videoEncodeAv1PictureInfo_KHR = 1_000_513_002


    case videoEncodeAv1DpbSlotInfo_KHR = 1_000_513_003


    case physicalDeviceVideoEncodeAv1Features_KHR = 1_000_513_004


    case videoEncodeAv1ProfileInfo_KHR = 1_000_513_005


    case videoEncodeAv1RateControlInfo_KHR = 1_000_513_006


    case videoEncodeAv1RateControlLayerInfo_KHR = 1_000_513_007


    case videoEncodeAv1QualityLevelProperties_KHR = 1_000_513_008


    case videoEncodeAv1SessionCreateInfo_KHR = 1_000_513_009


    case videoEncodeAv1GopRemainingFrameInfo_KHR = 1_000_513_010


    case physicalDeviceVideoMaintenance1Features_KHR = 1_000_515_000


    case videoInlineQueryInfo_KHR = 1_000_515_001


    case physicalDevicePerStageDescriptorSetFeatures_NV = 1_000_516_000


    case physicalDeviceImageProcessing2Features_QCOM = 1_000_518_000


    case physicalDeviceImageProcessing2Properties_QCOM = 1_000_518_001


    case samplerBlockMatchWindowCreateInfo_QCOM = 1_000_518_002


    case samplerCubicWeightsCreateInfo_QCOM = 1_000_519_000


    case physicalDeviceCubicWeightsFeatures_QCOM = 1_000_519_001


    case blitImageCubicWeightsInfo_QCOM = 1_000_519_002


    case physicalDeviceYcbcrDegammaFeatures_QCOM = 1_000_520_000


    case samplerYcbcrConversionYcbcrDegammaCreateInfo_QCOM = 1_000_520_001


    case physicalDeviceCubicClampFeatures_QCOM = 1_000_521_000


    case physicalDeviceAttachmentFeedbackLoopDynamicStateFeatures_EXT = 1_000_524_000


    #if !PlatformScreen
        @available(*, unavailable, message: "This flag requires the following trait: PlatformScreen.")
    #endif
    case screenBufferProperties_QNX = 1_000_529_000


    #if !PlatformScreen
        @available(*, unavailable, message: "This flag requires the following trait: PlatformScreen.")
    #endif
    case screenBufferFormatProperties_QNX = 1_000_529_001


    #if !PlatformScreen
        @available(*, unavailable, message: "This flag requires the following trait: PlatformScreen.")
    #endif
    case importScreenBufferInfo_QNX = 1_000_529_002


    #if !PlatformScreen
        @available(*, unavailable, message: "This flag requires the following trait: PlatformScreen.")
    #endif
    case externalFormat_QNX = 1_000_529_003


    #if !PlatformScreen
        @available(*, unavailable, message: "This flag requires the following trait: PlatformScreen.")
    #endif
    case physicalDeviceExternalMemoryScreenBufferFeatures_QNX = 1_000_529_004


    case physicalDeviceLayeredDriverProperties_MSFT = 1_000_530_000


    case calibratedTimestampInfo_KHR = 1_000_184_000


    case setDescriptorBufferOffsetsInfo_EXT = 1_000_545_007


    case bindDescriptorBufferEmbeddedSamplersInfo_EXT = 1_000_545_008


    case physicalDeviceDescriptorPoolOverallocationFeatures_NV = 1_000_546_000


    case physicalDeviceTileMemoryHeapFeatures_QCOM = 1_000_547_000


    case physicalDeviceTileMemoryHeapProperties_QCOM = 1_000_547_001


    case tileMemoryRequirements_QCOM = 1_000_547_002


    case tileMemoryBindInfo_QCOM = 1_000_547_003


    case tileMemorySizeInfo_QCOM = 1_000_547_004


    case displaySurfaceStereoCreateInfo_NV = 1_000_551_000


    case displayModeStereoProperties_NV = 1_000_551_001


    case videoEncodeQuantizationMapCapabilities_KHR = 1_000_553_000


    case videoFormatQuantizationMapProperties_KHR = 1_000_553_001


    case videoEncodeQuantizationMapInfo_KHR = 1_000_553_002


    case videoEncodeQuantizationMapSessionParametersCreateInfo_KHR = 1_000_553_005


    case physicalDeviceVideoEncodeQuantizationMapFeatures_KHR = 1_000_553_009


    case videoEncodeH264QuantizationMapCapabilities_KHR = 1_000_553_003


    case videoEncodeH265QuantizationMapCapabilities_KHR = 1_000_553_004


    case videoFormatH265QuantizationMapProperties_KHR = 1_000_553_006


    case videoEncodeAv1QuantizationMapCapabilities_KHR = 1_000_553_007


    case videoFormatAv1QuantizationMapProperties_KHR = 1_000_553_008


    case physicalDeviceRawAccessChainsFeatures_NV = 1_000_555_000


    case externalComputeQueueDeviceCreateInfo_NV = 1_000_556_000


    case externalComputeQueueCreateInfo_NV = 1_000_556_001


    case externalComputeQueueDataParams_NV = 1_000_556_002


    case physicalDeviceExternalComputeQueueProperties_NV = 1_000_556_003


    case physicalDeviceShaderRelaxedExtendedInstructionFeatures_KHR = 1_000_558_000


    case physicalDeviceCommandBufferInheritanceFeatures_NV = 1_000_559_000


    case physicalDeviceMaintenance7Features_KHR = 1_000_562_000


    case physicalDeviceMaintenance7Properties_KHR = 1_000_562_001


    case physicalDeviceLayeredApiPropertiesList_KHR = 1_000_562_002


    case physicalDeviceLayeredApiProperties_KHR = 1_000_562_003


    case physicalDeviceLayeredApiVulkanProperties_KHR = 1_000_562_004


    case physicalDeviceShaderAtomicFloat16VectorFeatures_NV = 1_000_563_000


    case physicalDeviceShaderReplicatedCompositesFeatures_EXT = 1_000_564_000


    case physicalDeviceRayTracingValidationFeatures_NV = 1_000_568_000


    case physicalDeviceClusterAccelerationStructureFeatures_NV = 1_000_569_000


    case physicalDeviceClusterAccelerationStructureProperties_NV = 1_000_569_001


    case clusterAccelerationStructureClustersBottomLevelInput_NV = 1_000_569_002


    case clusterAccelerationStructureTriangleClusterInput_NV = 1_000_569_003


    case clusterAccelerationStructureMoveObjectsInput_NV = 1_000_569_004


    case clusterAccelerationStructureInputInfo_NV = 1_000_569_005


    case clusterAccelerationStructureCommandsInfo_NV = 1_000_569_006


    case rayTracingPipelineClusterAccelerationStructureCreateInfo_NV = 1_000_569_007


    case physicalDevicePartitionedAccelerationStructureFeatures_NV = 1_000_570_000


    case physicalDevicePartitionedAccelerationStructureProperties_NV = 1_000_570_001


    case writeDescriptorSetPartitionedAccelerationStructure_NV = 1_000_570_002


    case partitionedAccelerationStructureInstancesInput_NV = 1_000_570_003


    case buildPartitionedAccelerationStructureInfo_NV = 1_000_570_004


    case partitionedAccelerationStructureFlags_NV = 1_000_570_005


    case physicalDeviceDeviceGeneratedCommandsFeatures_EXT = 1_000_572_000


    case physicalDeviceDeviceGeneratedCommandsProperties_EXT = 1_000_572_001


    case generatedCommandsMemoryRequirementsInfo_EXT = 1_000_572_002


    case indirectExecutionSetCreateInfo_EXT = 1_000_572_003


    case generatedCommandsInfo_EXT = 1_000_572_004


    case indirectCommandsLayoutCreateInfo_EXT = 1_000_572_006


    case indirectCommandsLayoutToken_EXT = 1_000_572_007


    case writeIndirectExecutionSetPipeline_EXT = 1_000_572_008


    case writeIndirectExecutionSetShader_EXT = 1_000_572_009


    case indirectExecutionSetPipelineInfo_EXT = 1_000_572_010


    case indirectExecutionSetShaderInfo_EXT = 1_000_572_011


    case indirectExecutionSetShaderLayoutInfo_EXT = 1_000_572_012


    case generatedCommandsPipelineInfo_EXT = 1_000_572_013


    case generatedCommandsShaderInfo_EXT = 1_000_572_014


    case physicalDeviceMaintenance8Features_KHR = 1_000_574_000


    case memoryBarrierAccessFlags3_KHR = 1_000_574_002


    case physicalDeviceImageAlignmentControlFeatures_MESA = 1_000_575_000


    case physicalDeviceImageAlignmentControlProperties_MESA = 1_000_575_001


    case imageAlignmentControlCreateInfo_MESA = 1_000_575_002


    case physicalDeviceDepthClampControlFeatures_EXT = 1_000_582_000


    case pipelineViewportDepthClampControlCreateInfo_EXT = 1_000_582_001


    case physicalDeviceVideoMaintenance2Features_KHR = 1_000_586_000


    case videoDecodeH264InlineSessionParametersInfo_KHR = 1_000_586_001


    case videoDecodeH265InlineSessionParametersInfo_KHR = 1_000_586_002


    case videoDecodeAv1InlineSessionParametersInfo_KHR = 1_000_586_003


    case physicalDeviceHdrVividFeatures_HUAWEI = 1_000_590_000


    case hdrVividDynamicMetadata_HUAWEI = 1_000_590_001


    case physicalDeviceCooperativeMatrix2Features_NV = 1_000_593_000


    case cooperativeMatrixFlexibleDimensionsProperties_NV = 1_000_593_001


    case physicalDeviceCooperativeMatrix2Properties_NV = 1_000_593_002


    case physicalDevicePipelineOpacityMicromapFeatures_ARM = 1_000_596_000


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case importMemoryMetalHandleInfo_EXT = 1_000_602_000


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case memoryMetalHandleProperties_EXT = 1_000_602_001


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    case memoryGetMetalHandleInfo_EXT = 1_000_602_002


    case physicalDeviceDepthClampZeroOneFeatures_KHR = 1_000_421_000


    case physicalDeviceVertexAttributeRobustnessFeatures_EXT = 1_000_608_000


    case physicalDeviceRobustness2Features_KHR = 1_000_286_000


    case physicalDeviceRobustness2Properties_KHR = 1_000_286_001


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case setPresentConfig_NV = 1_000_613_000


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    case physicalDevicePresentMeteringFeatures_NV = 1_000_613_001


    case physicalDeviceFragmentDensityMapOffsetFeatures_EXT = 1_000_425_000


    case physicalDeviceFragmentDensityMapOffsetProperties_EXT = 1_000_425_001


    case renderPassFragmentDensityMapOffsetEndInfo_EXT = 1_000_425_002


    case renderingEndInfo_EXT = 1_000_619_003


    case physicalDeviceZeroInitializeDeviceMemoryFeatures_EXT = 1_000_620_000


    @inlinable
    public static var physicalDeviceVariablePointerFeatures: StructureType { self.physicalDeviceVariablePointersFeatures }


    @inlinable
    public static var physicalDeviceShaderDrawParameterFeatures: StructureType {
        self.physicalDeviceShaderDrawParametersFeatures
    }


    @inlinable
    public static var debugReportCreateInfo_EXT: StructureType { self.debugReportCallbackCreateInfo_EXT }


    @inlinable
    public static var renderingInfo_KHR: StructureType { self.renderingInfo }


    @inlinable
    public static var renderingAttachmentInfo_KHR: StructureType { self.renderingAttachmentInfo }


    @inlinable
    public static var pipelineRenderingCreateInfo_KHR: StructureType { self.pipelineRenderingCreateInfo }


    @inlinable
    public static var physicalDeviceDynamicRenderingFeatures_KHR: StructureType {
        self.physicalDeviceDynamicRenderingFeatures
    }


    @inlinable
    public static var commandBufferInheritanceRenderingInfo_KHR: StructureType { self.commandBufferInheritanceRenderingInfo }


    @inlinable
    public static var renderPassMultiviewCreateInfo_KHR: StructureType { self.renderPassMultiviewCreateInfo }


    @inlinable
    public static var physicalDeviceMultiviewFeatures_KHR: StructureType { self.physicalDeviceMultiviewFeatures }


    @inlinable
    public static var physicalDeviceMultiviewProperties_KHR: StructureType { self.physicalDeviceMultiviewProperties }


    @inlinable
    public static var physicalDeviceFeatures2_KHR: StructureType { self.physicalDeviceFeatures2 }


    @inlinable
    public static var physicalDeviceProperties2_KHR: StructureType { self.physicalDeviceProperties2 }


    @inlinable
    public static var formatProperties2_KHR: StructureType { self.formatProperties2 }


    @inlinable
    public static var imageFormatProperties2_KHR: StructureType { self.imageFormatProperties2 }


    @inlinable
    public static var physicalDeviceImageFormatInfo2_KHR: StructureType { self.physicalDeviceImageFormatInfo2 }


    @inlinable
    public static var queueFamilyProperties2_KHR: StructureType { self.queueFamilyProperties2 }


    @inlinable
    public static var physicalDeviceMemoryProperties2_KHR: StructureType { self.physicalDeviceMemoryProperties2 }


    @inlinable
    public static var sparseImageFormatProperties2_KHR: StructureType { self.sparseImageFormatProperties2 }


    @inlinable
    public static var physicalDeviceSparseImageFormatInfo2_KHR: StructureType { self.physicalDeviceSparseImageFormatInfo2 }


    @inlinable
    public static var memoryAllocateFlagsInfo_KHR: StructureType { self.memoryAllocateFlagsInfo }


    @inlinable
    public static var deviceGroupRenderPassBeginInfo_KHR: StructureType { self.deviceGroupRenderPassBeginInfo }


    @inlinable
    public static var deviceGroupCommandBufferBeginInfo_KHR: StructureType { self.deviceGroupCommandBufferBeginInfo }


    @inlinable
    public static var deviceGroupSubmitInfo_KHR: StructureType { self.deviceGroupSubmitInfo }


    @inlinable
    public static var deviceGroupBindSparseInfo_KHR: StructureType { self.deviceGroupBindSparseInfo }


    @inlinable
    public static var bindBufferMemoryDeviceGroupInfo_KHR: StructureType { self.bindBufferMemoryDeviceGroupInfo }


    @inlinable
    public static var bindImageMemoryDeviceGroupInfo_KHR: StructureType { self.bindImageMemoryDeviceGroupInfo }


    @inlinable
    public static var physicalDeviceTextureCompressionAstcHdrFeatures_EXT: StructureType {
        self.physicalDeviceTextureCompressionAstcHdrFeatures
    }


    @inlinable
    public static var pipelineRobustnessCreateInfo_EXT: StructureType { self.pipelineRobustnessCreateInfo }


    @inlinable
    public static var physicalDevicePipelineRobustnessFeatures_EXT: StructureType {
        self.physicalDevicePipelineRobustnessFeatures
    }


    @inlinable
    public static var physicalDevicePipelineRobustnessProperties_EXT: StructureType {
        self.physicalDevicePipelineRobustnessProperties
    }


    @inlinable
    public static var physicalDeviceGroupProperties_KHR: StructureType { self.physicalDeviceGroupProperties }


    @inlinable
    public static var deviceGroupDeviceCreateInfo_KHR: StructureType { self.deviceGroupDeviceCreateInfo }


    @inlinable
    public static var physicalDeviceExternalImageFormatInfo_KHR: StructureType { self.physicalDeviceExternalImageFormatInfo }


    @inlinable
    public static var externalImageFormatProperties_KHR: StructureType { self.externalImageFormatProperties }


    @inlinable
    public static var physicalDeviceExternalBufferInfo_KHR: StructureType { self.physicalDeviceExternalBufferInfo }


    @inlinable
    public static var externalBufferProperties_KHR: StructureType { self.externalBufferProperties }


    @inlinable
    public static var physicalDeviceIdProperties_KHR: StructureType { self.physicalDeviceIdProperties }


    @inlinable
    public static var externalMemoryBufferCreateInfo_KHR: StructureType { self.externalMemoryBufferCreateInfo }


    @inlinable
    public static var externalMemoryImageCreateInfo_KHR: StructureType { self.externalMemoryImageCreateInfo }


    @inlinable
    public static var exportMemoryAllocateInfo_KHR: StructureType { self.exportMemoryAllocateInfo }


    @inlinable
    public static var physicalDeviceExternalSemaphoreInfo_KHR: StructureType { self.physicalDeviceExternalSemaphoreInfo }


    @inlinable
    public static var externalSemaphoreProperties_KHR: StructureType { self.externalSemaphoreProperties }


    @inlinable
    public static var exportSemaphoreCreateInfo_KHR: StructureType { self.exportSemaphoreCreateInfo }


    @inlinable
    public static var physicalDevicePushDescriptorProperties_KHR: StructureType {
        self.physicalDevicePushDescriptorProperties
    }


    @inlinable
    public static var physicalDeviceShaderFloat16Int8Features_KHR: StructureType {
        self.physicalDeviceShaderFloat16Int8Features
    }


    @inlinable
    public static var physicalDeviceFloat16Int8Features_KHR: StructureType { self.physicalDeviceShaderFloat16Int8Features }


    @inlinable
    public static var physicalDevice16bitStorageFeatures_KHR: StructureType { self.physicalDevice16bitStorageFeatures }


    @inlinable
    public static var descriptorUpdateTemplateCreateInfo_KHR: StructureType { self.descriptorUpdateTemplateCreateInfo }


    @inlinable
    public static var physicalDeviceImagelessFramebufferFeatures_KHR: StructureType {
        self.physicalDeviceImagelessFramebufferFeatures
    }


    @inlinable
    public static var framebufferAttachmentsCreateInfo_KHR: StructureType { self.framebufferAttachmentsCreateInfo }


    @inlinable
    public static var framebufferAttachmentImageInfo_KHR: StructureType { self.framebufferAttachmentImageInfo }


    @inlinable
    public static var renderPassAttachmentBeginInfo_KHR: StructureType { self.renderPassAttachmentBeginInfo }


    @inlinable
    public static var attachmentDescription2_KHR: StructureType { self.attachmentDescription2 }


    @inlinable
    public static var attachmentReference2_KHR: StructureType { self.attachmentReference2 }


    @inlinable
    public static var subpassDescription2_KHR: StructureType { self.subpassDescription2 }


    @inlinable
    public static var subpassDependency2_KHR: StructureType { self.subpassDependency2 }


    @inlinable
    public static var renderPassCreateInfo2_KHR: StructureType { self.renderPassCreateInfo2 }


    @inlinable
    public static var subpassBeginInfo_KHR: StructureType { self.subpassBeginInfo }


    @inlinable
    public static var subpassEndInfo_KHR: StructureType { self.subpassEndInfo }


    @inlinable
    public static var physicalDeviceExternalFenceInfo_KHR: StructureType { self.physicalDeviceExternalFenceInfo }


    @inlinable
    public static var externalFenceProperties_KHR: StructureType { self.externalFenceProperties }


    @inlinable
    public static var exportFenceCreateInfo_KHR: StructureType { self.exportFenceCreateInfo }


    @inlinable
    public static var physicalDevicePointClippingProperties_KHR: StructureType { self.physicalDevicePointClippingProperties }


    @inlinable
    public static var renderPassInputAttachmentAspectCreateInfo_KHR: StructureType {
        self.renderPassInputAttachmentAspectCreateInfo
    }


    @inlinable
    public static var imageViewUsageCreateInfo_KHR: StructureType { self.imageViewUsageCreateInfo }


    @inlinable
    public static var pipelineTessellationDomainOriginStateCreateInfo_KHR: StructureType {
        self.pipelineTessellationDomainOriginStateCreateInfo
    }


    @inlinable
    public static var physicalDeviceVariablePointersFeatures_KHR: StructureType {
        self.physicalDeviceVariablePointersFeatures
    }


    @inlinable
    public static var physicalDeviceVariablePointerFeatures_KHR: StructureType {
        self.physicalDeviceVariablePointersFeatures
    }


    @inlinable
    public static var memoryDedicatedRequirements_KHR: StructureType { self.memoryDedicatedRequirements }


    @inlinable
    public static var memoryDedicatedAllocateInfo_KHR: StructureType { self.memoryDedicatedAllocateInfo }


    @inlinable
    public static var physicalDeviceSamplerFilterMinmaxProperties_EXT: StructureType {
        self.physicalDeviceSamplerFilterMinmaxProperties
    }


    @inlinable
    public static var samplerReductionModeCreateInfo_EXT: StructureType { self.samplerReductionModeCreateInfo }


    @inlinable
    public static var physicalDeviceInlineUniformBlockFeatures_EXT: StructureType {
        self.physicalDeviceInlineUniformBlockFeatures
    }


    @inlinable
    public static var physicalDeviceInlineUniformBlockProperties_EXT: StructureType {
        self.physicalDeviceInlineUniformBlockProperties
    }


    @inlinable
    public static var writeDescriptorSetInlineUniformBlock_EXT: StructureType { self.writeDescriptorSetInlineUniformBlock }


    @inlinable
    public static var descriptorPoolInlineUniformBlockCreateInfo_EXT: StructureType {
        self.descriptorPoolInlineUniformBlockCreateInfo
    }


    @inlinable
    public static var bufferMemoryRequirementsInfo2_KHR: StructureType { self.bufferMemoryRequirementsInfo2 }


    @inlinable
    public static var imageMemoryRequirementsInfo2_KHR: StructureType { self.imageMemoryRequirementsInfo2 }


    @inlinable
    public static var imageSparseMemoryRequirementsInfo2_KHR: StructureType { self.imageSparseMemoryRequirementsInfo2 }


    @inlinable
    public static var memoryRequirements2_KHR: StructureType { self.memoryRequirements2 }


    @inlinable
    public static var sparseImageMemoryRequirements2_KHR: StructureType { self.sparseImageMemoryRequirements2 }


    @inlinable
    public static var imageFormatListCreateInfo_KHR: StructureType { self.imageFormatListCreateInfo }


    @inlinable
    public static var attachmentSampleCountInfo_NV: StructureType { self.attachmentSampleCountInfo_AMD }


    @inlinable
    public static var samplerYcbcrConversionCreateInfo_KHR: StructureType { self.samplerYcbcrConversionCreateInfo }


    @inlinable
    public static var samplerYcbcrConversionInfo_KHR: StructureType { self.samplerYcbcrConversionInfo }


    @inlinable
    public static var bindImagePlaneMemoryInfo_KHR: StructureType { self.bindImagePlaneMemoryInfo }


    @inlinable
    public static var imagePlaneMemoryRequirementsInfo_KHR: StructureType { self.imagePlaneMemoryRequirementsInfo }


    @inlinable
    public static var physicalDeviceSamplerYcbcrConversionFeatures_KHR: StructureType {
        self.physicalDeviceSamplerYcbcrConversionFeatures
    }


    @inlinable
    public static var samplerYcbcrConversionImageFormatProperties_KHR: StructureType {
        self.samplerYcbcrConversionImageFormatProperties
    }


    @inlinable
    public static var bindBufferMemoryInfo_KHR: StructureType { self.bindBufferMemoryInfo }


    @inlinable
    public static var bindImageMemoryInfo_KHR: StructureType { self.bindImageMemoryInfo }


    @inlinable
    public static var descriptorSetLayoutBindingFlagsCreateInfo_EXT: StructureType {
        self.descriptorSetLayoutBindingFlagsCreateInfo
    }


    @inlinable
    public static var physicalDeviceDescriptorIndexingFeatures_EXT: StructureType {
        self.physicalDeviceDescriptorIndexingFeatures
    }


    @inlinable
    public static var physicalDeviceDescriptorIndexingProperties_EXT: StructureType {
        self.physicalDeviceDescriptorIndexingProperties
    }


    @inlinable
    public static var descriptorSetVariableDescriptorCountAllocateInfo_EXT: StructureType {
        self.descriptorSetVariableDescriptorCountAllocateInfo
    }


    @inlinable
    public static var descriptorSetVariableDescriptorCountLayoutSupport_EXT: StructureType {
        self.descriptorSetVariableDescriptorCountLayoutSupport
    }


    @inlinable
    public static var physicalDeviceMaintenance3Properties_KHR: StructureType { self.physicalDeviceMaintenance3Properties }


    @inlinable
    public static var descriptorSetLayoutSupport_KHR: StructureType { self.descriptorSetLayoutSupport }


    @inlinable
    public static var deviceQueueGlobalPriorityCreateInfo_EXT: StructureType { self.deviceQueueGlobalPriorityCreateInfo }


    @inlinable
    public static var physicalDeviceShaderSubgroupExtendedTypesFeatures_KHR: StructureType {
        self.physicalDeviceShaderSubgroupExtendedTypesFeatures
    }


    @inlinable
    public static var physicalDevice8bitStorageFeatures_KHR: StructureType { self.physicalDevice8bitStorageFeatures }


    @inlinable
    public static var physicalDeviceShaderAtomicInt64Features_KHR: StructureType {
        self.physicalDeviceShaderAtomicInt64Features
    }


    @inlinable
    public static var calibratedTimestampInfo_EXT: StructureType { self.calibratedTimestampInfo_KHR }


    @inlinable
    public static var deviceQueueGlobalPriorityCreateInfo_KHR: StructureType { self.deviceQueueGlobalPriorityCreateInfo }


    @inlinable
    public static var physicalDeviceGlobalPriorityQueryFeatures_KHR: StructureType {
        self.physicalDeviceGlobalPriorityQueryFeatures
    }


    @inlinable
    public static var queueFamilyGlobalPriorityProperties_KHR: StructureType { self.queueFamilyGlobalPriorityProperties }


    @inlinable
    public static var pipelineVertexInputDivisorStateCreateInfo_EXT: StructureType {
        self.pipelineVertexInputDivisorStateCreateInfo
    }


    @inlinable
    public static var physicalDeviceVertexAttributeDivisorFeatures_EXT: StructureType {
        self.physicalDeviceVertexAttributeDivisorFeatures
    }


    @inlinable
    public static var pipelineCreationFeedbackCreateInfo_EXT: StructureType { self.pipelineCreationFeedbackCreateInfo }


    @inlinable
    public static var physicalDeviceDriverProperties_KHR: StructureType { self.physicalDeviceDriverProperties }


    @inlinable
    public static var physicalDeviceFloatControlsProperties_KHR: StructureType { self.physicalDeviceFloatControlsProperties }


    @inlinable
    public static var physicalDeviceDepthStencilResolveProperties_KHR: StructureType {
        self.physicalDeviceDepthStencilResolveProperties
    }


    @inlinable
    public static var subpassDescriptionDepthStencilResolve_KHR: StructureType { self.subpassDescriptionDepthStencilResolve }


    @inlinable
    public static var physicalDeviceComputeShaderDerivativesFeatures_NV: StructureType {
        self.physicalDeviceComputeShaderDerivativesFeatures_KHR
    }


    @inlinable
    public static var physicalDeviceFragmentShaderBarycentricFeatures_NV: StructureType {
        self.physicalDeviceFragmentShaderBarycentricFeatures_KHR
    }


    @inlinable
    public static var physicalDeviceTimelineSemaphoreFeatures_KHR: StructureType {
        self.physicalDeviceTimelineSemaphoreFeatures
    }


    @inlinable
    public static var physicalDeviceTimelineSemaphoreProperties_KHR: StructureType {
        self.physicalDeviceTimelineSemaphoreProperties
    }


    @inlinable
    public static var semaphoreTypeCreateInfo_KHR: StructureType { self.semaphoreTypeCreateInfo }


    @inlinable
    public static var timelineSemaphoreSubmitInfo_KHR: StructureType { self.timelineSemaphoreSubmitInfo }


    @inlinable
    public static var semaphoreWaitInfo_KHR: StructureType { self.semaphoreWaitInfo }


    @inlinable
    public static var semaphoreSignalInfo_KHR: StructureType { self.semaphoreSignalInfo }


    @inlinable
    public static var queryPoolCreateInfo_INTEL: StructureType { self.queryPoolPerformanceQueryCreateInfo_INTEL }


    @inlinable
    public static var physicalDeviceVulkanMemoryModelFeatures_KHR: StructureType {
        self.physicalDeviceVulkanMemoryModelFeatures
    }


    @inlinable
    public static var physicalDeviceShaderTerminateInvocationFeatures_KHR: StructureType {
        self.physicalDeviceShaderTerminateInvocationFeatures
    }


    @inlinable
    public static var physicalDeviceScalarBlockLayoutFeatures_EXT: StructureType {
        self.physicalDeviceScalarBlockLayoutFeatures
    }


    @inlinable
    public static var physicalDeviceSubgroupSizeControlProperties_EXT: StructureType {
        self.physicalDeviceSubgroupSizeControlProperties
    }


    @inlinable
    public static var pipelineShaderStageRequiredSubgroupSizeCreateInfo_EXT: StructureType {
        self.pipelineShaderStageRequiredSubgroupSizeCreateInfo
    }


    @inlinable
    public static var physicalDeviceSubgroupSizeControlFeatures_EXT: StructureType {
        self.physicalDeviceSubgroupSizeControlFeatures
    }


    @inlinable
    public static var physicalDeviceDynamicRenderingLocalReadFeatures_KHR: StructureType {
        self.physicalDeviceDynamicRenderingLocalReadFeatures
    }


    @inlinable
    public static var renderingAttachmentLocationInfo_KHR: StructureType { self.renderingAttachmentLocationInfo }


    @inlinable
    public static var renderingInputAttachmentIndexInfo_KHR: StructureType { self.renderingInputAttachmentIndexInfo }


    @inlinable
    public static var physicalDeviceSeparateDepthStencilLayoutsFeatures_KHR: StructureType {
        self.physicalDeviceSeparateDepthStencilLayoutsFeatures
    }


    @inlinable
    public static var attachmentReferenceStencilLayout_KHR: StructureType { self.attachmentReferenceStencilLayout }


    @inlinable
    public static var attachmentDescriptionStencilLayout_KHR: StructureType { self.attachmentDescriptionStencilLayout }


    @inlinable
    public static var physicalDeviceBufferAddressFeatures_EXT: StructureType {
        self.physicalDeviceBufferDeviceAddressFeatures_EXT
    }


    @inlinable
    public static var bufferDeviceAddressInfo_EXT: StructureType { self.bufferDeviceAddressInfo }


    @inlinable
    public static var physicalDeviceToolProperties_EXT: StructureType { self.physicalDeviceToolProperties }


    @inlinable
    public static var imageStencilUsageCreateInfo_EXT: StructureType { self.imageStencilUsageCreateInfo }


    @inlinable
    public static var physicalDeviceUniformBufferStandardLayoutFeatures_KHR: StructureType {
        self.physicalDeviceUniformBufferStandardLayoutFeatures
    }


    @inlinable
    public static var physicalDeviceBufferDeviceAddressFeatures_KHR: StructureType {
        self.physicalDeviceBufferDeviceAddressFeatures
    }


    @inlinable
    public static var bufferDeviceAddressInfo_KHR: StructureType { self.bufferDeviceAddressInfo }


    @inlinable
    public static var bufferOpaqueCaptureAddressCreateInfo_KHR: StructureType { self.bufferOpaqueCaptureAddressCreateInfo }


    @inlinable
    public static var memoryOpaqueCaptureAddressAllocateInfo_KHR: StructureType {
        self.memoryOpaqueCaptureAddressAllocateInfo
    }


    @inlinable
    public static var deviceMemoryOpaqueCaptureAddressInfo_KHR: StructureType { self.deviceMemoryOpaqueCaptureAddressInfo }


    @inlinable
    public static var physicalDeviceLineRasterizationFeatures_EXT: StructureType {
        self.physicalDeviceLineRasterizationFeatures
    }


    @inlinable
    public static var pipelineRasterizationLineStateCreateInfo_EXT: StructureType {
        self.pipelineRasterizationLineStateCreateInfo
    }


    @inlinable
    public static var physicalDeviceLineRasterizationProperties_EXT: StructureType {
        self.physicalDeviceLineRasterizationProperties
    }


    @inlinable
    public static var physicalDeviceHostQueryResetFeatures_EXT: StructureType { self.physicalDeviceHostQueryResetFeatures }


    @inlinable
    public static var physicalDeviceIndexTypeUint8Features_EXT: StructureType { self.physicalDeviceIndexTypeUint8Features }


    @inlinable
    public static var physicalDeviceHostImageCopyFeatures_EXT: StructureType { self.physicalDeviceHostImageCopyFeatures }


    @inlinable
    public static var physicalDeviceHostImageCopyProperties_EXT: StructureType { self.physicalDeviceHostImageCopyProperties }


    @inlinable
    public static var memoryToImageCopy_EXT: StructureType { self.memoryToImageCopy }


    @inlinable
    public static var imageToMemoryCopy_EXT: StructureType { self.imageToMemoryCopy }


    @inlinable
    public static var copyImageToMemoryInfo_EXT: StructureType { self.copyImageToMemoryInfo }


    @inlinable
    public static var copyMemoryToImageInfo_EXT: StructureType { self.copyMemoryToImageInfo }


    @inlinable
    public static var hostImageLayoutTransitionInfo_EXT: StructureType { self.hostImageLayoutTransitionInfo }


    @inlinable
    public static var copyImageToImageInfo_EXT: StructureType { self.copyImageToImageInfo }


    @inlinable
    public static var subresourceHostMemcpySize_EXT: StructureType { self.subresourceHostMemcpySize }


    @inlinable
    public static var hostImageCopyDevicePerformanceQuery_EXT: StructureType { self.hostImageCopyDevicePerformanceQuery }


    @inlinable
    public static var memoryMapInfo_KHR: StructureType { self.memoryMapInfo }


    @inlinable
    public static var memoryUnmapInfo_KHR: StructureType { self.memoryUnmapInfo }


    @inlinable
    public static var physicalDeviceShaderDemoteToHelperInvocationFeatures_EXT: StructureType {
        self.physicalDeviceShaderDemoteToHelperInvocationFeatures
    }


    @inlinable
    public static var physicalDeviceShaderIntegerDotProductFeatures_KHR: StructureType {
        self.physicalDeviceShaderIntegerDotProductFeatures
    }


    @inlinable
    public static var physicalDeviceShaderIntegerDotProductProperties_KHR: StructureType {
        self.physicalDeviceShaderIntegerDotProductProperties
    }


    @inlinable
    public static var physicalDeviceTexelBufferAlignmentProperties_EXT: StructureType {
        self.physicalDeviceTexelBufferAlignmentProperties
    }


    @inlinable
    public static var physicalDeviceRobustness2Features_EXT: StructureType { self.physicalDeviceRobustness2Features_KHR }


    @inlinable
    public static var physicalDeviceRobustness2Properties_EXT: StructureType { self.physicalDeviceRobustness2Properties_KHR }


    @inlinable
    public static var physicalDevicePrivateDataFeatures_EXT: StructureType { self.physicalDevicePrivateDataFeatures }


    @inlinable
    public static var devicePrivateDataCreateInfo_EXT: StructureType { self.devicePrivateDataCreateInfo }


    @inlinable
    public static var privateDataSlotCreateInfo_EXT: StructureType { self.privateDataSlotCreateInfo }


    @inlinable
    public static var physicalDevicePipelineCreationCacheControlFeatures_EXT: StructureType {
        self.physicalDevicePipelineCreationCacheControlFeatures
    }


    @inlinable
    public static var memoryBarrier2_KHR: StructureType { self.memoryBarrier2 }


    @inlinable
    public static var bufferMemoryBarrier2_KHR: StructureType { self.bufferMemoryBarrier2 }


    @inlinable
    public static var imageMemoryBarrier2_KHR: StructureType { self.imageMemoryBarrier2 }


    @inlinable
    public static var dependencyInfo_KHR: StructureType { self.dependencyInfo }


    @inlinable
    public static var submitInfo2_KHR: StructureType { self.submitInfo2 }


    @inlinable
    public static var semaphoreSubmitInfo_KHR: StructureType { self.semaphoreSubmitInfo }


    @inlinable
    public static var commandBufferSubmitInfo_KHR: StructureType { self.commandBufferSubmitInfo }


    @inlinable
    public static var physicalDeviceSynchronization2Features_KHR: StructureType {
        self.physicalDeviceSynchronization2Features
    }


    @inlinable
    public static var physicalDeviceZeroInitializeWorkgroupMemoryFeatures_KHR: StructureType {
        self.physicalDeviceZeroInitializeWorkgroupMemoryFeatures
    }


    @inlinable
    public static var physicalDeviceImageRobustnessFeatures_EXT: StructureType { self.physicalDeviceImageRobustnessFeatures }


    @inlinable
    public static var copyBufferInfo2_KHR: StructureType { self.copyBufferInfo2 }


    @inlinable
    public static var copyImageInfo2_KHR: StructureType { self.copyImageInfo2 }


    @inlinable
    public static var copyBufferToImageInfo2_KHR: StructureType { self.copyBufferToImageInfo2 }


    @inlinable
    public static var copyImageToBufferInfo2_KHR: StructureType { self.copyImageToBufferInfo2 }


    @inlinable
    public static var blitImageInfo2_KHR: StructureType { self.blitImageInfo2 }


    @inlinable
    public static var resolveImageInfo2_KHR: StructureType { self.resolveImageInfo2 }


    @inlinable
    public static var bufferCopy2_KHR: StructureType { self.bufferCopy2 }


    @inlinable
    public static var imageCopy2_KHR: StructureType { self.imageCopy2 }


    @inlinable
    public static var imageBlit2_KHR: StructureType { self.imageBlit2 }


    @inlinable
    public static var bufferImageCopy2_KHR: StructureType { self.bufferImageCopy2 }


    @inlinable
    public static var imageResolve2_KHR: StructureType { self.imageResolve2 }


    @inlinable
    public static var subresourceLayout2_EXT: StructureType { self.subresourceLayout2 }


    @inlinable
    public static var imageSubresource2_EXT: StructureType { self.imageSubresource2 }


    @inlinable
    public static var physicalDeviceRasterizationOrderAttachmentAccessFeatures_ARM: StructureType {
        self.physicalDeviceRasterizationOrderAttachmentAccessFeatures_EXT
    }


    @inlinable
    public static var physicalDeviceMutableDescriptorTypeFeatures_VALVE: StructureType {
        self.physicalDeviceMutableDescriptorTypeFeatures_EXT
    }


    @inlinable
    public static var mutableDescriptorTypeCreateInfo_VALVE: StructureType { self.mutableDescriptorTypeCreateInfo_EXT }


    @inlinable
    public static var formatProperties3_KHR: StructureType { self.formatProperties3 }


    @inlinable
    public static var pipelineInfo_EXT: StructureType { self.pipelineInfo_KHR }


    @inlinable
    public static var physicalDeviceGlobalPriorityQueryFeatures_EXT: StructureType {
        self.physicalDeviceGlobalPriorityQueryFeatures
    }


    @inlinable
    public static var queueFamilyGlobalPriorityProperties_EXT: StructureType { self.queueFamilyGlobalPriorityProperties }


    @inlinable
    public static var physicalDeviceMaintenance4Features_KHR: StructureType { self.physicalDeviceMaintenance4Features }


    @inlinable
    public static var physicalDeviceMaintenance4Properties_KHR: StructureType { self.physicalDeviceMaintenance4Properties }


    @inlinable
    public static var deviceBufferMemoryRequirements_KHR: StructureType { self.deviceBufferMemoryRequirements }


    @inlinable
    public static var deviceImageMemoryRequirements_KHR: StructureType { self.deviceImageMemoryRequirements }


    @inlinable
    public static var physicalDeviceShaderSubgroupRotateFeatures_KHR: StructureType {
        self.physicalDeviceShaderSubgroupRotateFeatures
    }


    @inlinable
    public static var physicalDeviceDepthClampZeroOneFeatures_EXT: StructureType {
        self.physicalDeviceDepthClampZeroOneFeatures_KHR
    }


    @inlinable
    public static var physicalDeviceFragmentDensityMapOffsetFeatures_QCOM: StructureType {
        self.physicalDeviceFragmentDensityMapOffsetFeatures_EXT
    }


    @inlinable
    public static var physicalDeviceFragmentDensityMapOffsetProperties_QCOM: StructureType {
        self.physicalDeviceFragmentDensityMapOffsetProperties_EXT
    }


    @inlinable
    public static var subpassFragmentDensityMapOffsetEndInfo_QCOM: StructureType {
        self.renderPassFragmentDensityMapOffsetEndInfo_EXT
    }


    @inlinable
    public static var physicalDevicePipelineProtectedAccessFeatures_EXT: StructureType {
        self.physicalDevicePipelineProtectedAccessFeatures
    }


    @inlinable
    public static var physicalDeviceMaintenance5Features_KHR: StructureType { self.physicalDeviceMaintenance5Features }


    @inlinable
    public static var physicalDeviceMaintenance5Properties_KHR: StructureType { self.physicalDeviceMaintenance5Properties }


    @inlinable
    public static var renderingAreaInfo_KHR: StructureType { self.renderingAreaInfo }


    @inlinable
    public static var deviceImageSubresourceInfo_KHR: StructureType { self.deviceImageSubresourceInfo }


    @inlinable
    public static var subresourceLayout2_KHR: StructureType { self.subresourceLayout2 }


    @inlinable
    public static var imageSubresource2_KHR: StructureType { self.imageSubresource2 }


    @inlinable
    public static var pipelineCreateFlags2CreateInfo_KHR: StructureType { self.pipelineCreateFlags2CreateInfo }


    @inlinable
    public static var bufferUsageFlags2CreateInfo_KHR: StructureType { self.bufferUsageFlags2CreateInfo }


    @inlinable
    public static var shaderRequiredSubgroupSizeCreateInfo_EXT: StructureType {
        self.pipelineShaderStageRequiredSubgroupSizeCreateInfo
    }


    @inlinable
    public static var physicalDeviceVertexAttributeDivisorProperties_KHR: StructureType {
        self.physicalDeviceVertexAttributeDivisorProperties
    }


    @inlinable
    public static var pipelineVertexInputDivisorStateCreateInfo_KHR: StructureType {
        self.pipelineVertexInputDivisorStateCreateInfo
    }


    @inlinable
    public static var physicalDeviceVertexAttributeDivisorFeatures_KHR: StructureType {
        self.physicalDeviceVertexAttributeDivisorFeatures
    }


    @inlinable
    public static var physicalDeviceShaderFloatControls2Features_KHR: StructureType {
        self.physicalDeviceShaderFloatControls2Features
    }


    @inlinable
    public static var physicalDeviceIndexTypeUint8Features_KHR: StructureType { self.physicalDeviceIndexTypeUint8Features }


    @inlinable
    public static var physicalDeviceLineRasterizationFeatures_KHR: StructureType {
        self.physicalDeviceLineRasterizationFeatures
    }


    @inlinable
    public static var pipelineRasterizationLineStateCreateInfo_KHR: StructureType {
        self.pipelineRasterizationLineStateCreateInfo
    }


    @inlinable
    public static var physicalDeviceLineRasterizationProperties_KHR: StructureType {
        self.physicalDeviceLineRasterizationProperties
    }


    @inlinable
    public static var physicalDeviceShaderExpectAssumeFeatures_KHR: StructureType {
        self.physicalDeviceShaderExpectAssumeFeatures
    }


    @inlinable
    public static var physicalDeviceMaintenance6Features_KHR: StructureType { self.physicalDeviceMaintenance6Features }


    @inlinable
    public static var physicalDeviceMaintenance6Properties_KHR: StructureType { self.physicalDeviceMaintenance6Properties }


    @inlinable
    public static var bindMemoryStatus_KHR: StructureType { self.bindMemoryStatus }


    @inlinable
    public static var bindDescriptorSetsInfo_KHR: StructureType { self.bindDescriptorSetsInfo }


    @inlinable
    public static var pushConstantsInfo_KHR: StructureType { self.pushConstantsInfo }


    @inlinable
    public static var pushDescriptorSetInfo_KHR: StructureType { self.pushDescriptorSetInfo }


    @inlinable
    public static var pushDescriptorSetWithTemplateInfo_KHR: StructureType { self.pushDescriptorSetWithTemplateInfo }
}


public enum SubpassContents: CVulkan.VkSubpassContents.RawValue {

    case inline = 0


    case secondaryCommandBuffers = 1


    case inlineAndSecondaryCommandBuffers_KHR = 1_000_451_000


    @inlinable
    public static var inlineAndSecondaryCommandBuffers_EXT: SubpassContents { self.inlineAndSecondaryCommandBuffers_KHR }
}


public enum SubpassMergeStatusEXT: CVulkan.VkSubpassMergeStatusEXT.RawValue {

    case merged_EXT = 0


    case disallowed_EXT = 1


    case notMergedSideEffects_EXT = 2


    case notMergedSamplesMismatch_EXT = 3


    case notMergedViewsMismatch_EXT = 4


    case notMergedAliasing_EXT = 5


    case notMergedDependencies_EXT = 6


    case notMergedIncompatibleInputAttachment_EXT = 7


    case notMergedTooManyAttachments_EXT = 8


    case notMergedInsufficientStorage_EXT = 9


    case notMergedDepthStencilCount_EXT = 10


    case notMergedResolveAttachmentReuse_EXT = 11


    case notMergedSingleSubpass_EXT = 12


    case notMergedUnspecified_EXT = 13
}


public enum SystemAllocationScope: CVulkan.VkSystemAllocationScope.RawValue {

    case command = 0


    case object = 1


    case cache = 2


    case device = 3


    case instance = 4
}


public enum TessellationDomainOrigin: CVulkan.VkTessellationDomainOrigin.RawValue {

    case upperLeft = 0


    case lowerLeft = 1


    @inlinable
    public static var upperLeft_KHR: TessellationDomainOrigin { self.upperLeft }


    @inlinable
    public static var lowerLeft_KHR: TessellationDomainOrigin { self.lowerLeft }
}


public enum TimeDomainKHR: CVulkan.VkTimeDomainKHR.RawValue {

    case device_KHR = 0


    case clockMonotonic_KHR = 1


    case clockMonotonicRaw_KHR = 2


    case queryPerformanceCounter_KHR = 3


    @inlinable
    public static var device_EXT: TimeDomainKHR { self.device_KHR }


    @inlinable
    public static var clockMonotonic_EXT: TimeDomainKHR { self.clockMonotonic_KHR }


    @inlinable
    public static var clockMonotonicRaw_EXT: TimeDomainKHR { self.clockMonotonicRaw_KHR }


    @inlinable
    public static var queryPerformanceCounter_EXT: TimeDomainKHR { self.queryPerformanceCounter_KHR }
}


public enum ValidationCacheHeaderVersionEXT: CVulkan.VkValidationCacheHeaderVersionEXT.RawValue {

    case one_EXT = 1
}


public enum ValidationCheckEXT: CVulkan.VkValidationCheckEXT.RawValue {

    case all_EXT = 0


    case shaders_EXT = 1
}


public enum ValidationFeatureDisableEXT: CVulkan.VkValidationFeatureDisableEXT.RawValue {

    case all_EXT = 0


    case shaders_EXT = 1


    case threadSafety_EXT = 2


    case apiParameters_EXT = 3


    case objectLifetimes_EXT = 4


    case coreChecks_EXT = 5


    case uniqueHandles_EXT = 6


    case shaderValidationCache_EXT = 7
}


public enum ValidationFeatureEnableEXT: CVulkan.VkValidationFeatureEnableEXT.RawValue {

    case gpuAssisted_EXT = 0


    case gpuAssistedReserveBindingSlot_EXT = 1


    case bestPractices_EXT = 2


    case debugPrintf_EXT = 3


    case synchronizationValidation_EXT = 4
}


public enum VendorId: CVulkan.VkVendorId.RawValue {

    case khronos = 0x10000


    case `_VIV` = 0x10001


    case `_VSI` = 0x10002


    case kazan = 0x10003


    case codeplay = 0x10004


    case `_MESA` = 0x10005


    case pocl = 0x10006


    case mobileye = 0x10007
}


public enum VertexInputRate: CVulkan.VkVertexInputRate.RawValue {

    case vertex = 0


    case instance = 1
}


public enum VideoEncodeAV1PredictionModeKHR: CVulkan.VkVideoEncodeAV1PredictionModeKHR.RawValue {

    case v1PredictionModeIntraOnly_KHR = 0


    case v1PredictionModeSingleReference_KHR = 1


    case v1PredictionModeUnidirectionalCompound_KHR = 2


    case v1PredictionModeBidirectionalCompound_KHR = 3
}


public enum VideoEncodeAV1RateControlGroupKHR: CVulkan.VkVideoEncodeAV1RateControlGroupKHR.RawValue {

    case v1RateControlGroupIntra_KHR = 0


    case v1RateControlGroupPredictive_KHR = 1


    case v1RateControlGroupBipredictive_KHR = 2
}


public enum VideoEncodeTuningModeKHR: CVulkan.VkVideoEncodeTuningModeKHR.RawValue {

    case default_KHR = 0


    case highQuality_KHR = 1


    case lowLatency_KHR = 2


    case ultraLowLatency_KHR = 3


    case lossless_KHR = 4
}


public enum ViewportCoordinateSwizzleNV: CVulkan.VkViewportCoordinateSwizzleNV.RawValue {

    case positiveX_NV = 0


    case negativeX_NV = 1


    case positiveY_NV = 2


    case negativeY_NV = 3


    case positiveZ_NV = 4


    case negativeZ_NV = 5


    case positiveW_NV = 6


    case negativeW_NV = 7
}

// END_GENERATE_ENUMS
