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
// Generated using header version: 318


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
    public static var topLevel_NV: AccelerationStructureTypeKHR {
        self.topLevel_KHR
    }


    @inlinable
    public static var bottomLevel_NV: AccelerationStructureTypeKHR {
        self.bottomLevel_KHR
    }
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
    public static var none_EXT: AttachmentLoadOp {
        self.none
    }


    @inlinable
    public static var none_KHR: AttachmentLoadOp {
        self.none
    }
}


public enum AttachmentStoreOp: CVulkan.VkAttachmentStoreOp.RawValue {

    case store = 0


    case dontCare = 1


    case none = 1_000_301_000


    @inlinable
    public static var none_KHR: AttachmentStoreOp {
        self.none
    }


    @inlinable
    public static var none_QCOM: AttachmentStoreOp {
        self.none
    }


    @inlinable
    public static var none_EXT: AttachmentStoreOp {
        self.none
    }
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
    public static var cositedEven_KHR: ChromaLocation {
        self.cositedEven
    }


    @inlinable
    public static var midpoint_KHR: ChromaLocation {
        self.midpoint
    }
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
    public static var spaceSrgbNonlinear_KHR: ColorSpaceKHR {
        self.srgbNonlinear_KHR
    }


    @inlinable
    public static var dciP3Linear_EXT: ColorSpaceKHR {
        self.displayP3Linear_EXT
    }
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


    case float8E4m3_EXT = 1_000_491_002


    case float8E5m2_EXT = 1_000_491_003


    @inlinable
    public static var float16_NV: ComponentTypeKHR {
        self.float16_KHR
    }


    @inlinable
    public static var float32_NV: ComponentTypeKHR {
        self.float32_KHR
    }


    @inlinable
    public static var float64_NV: ComponentTypeKHR {
        self.float64_KHR
    }


    @inlinable
    public static var sint8_NV: ComponentTypeKHR {
        self.sint8_KHR
    }


    @inlinable
    public static var sint16_NV: ComponentTypeKHR {
        self.sint16_KHR
    }


    @inlinable
    public static var sint32_NV: ComponentTypeKHR {
        self.sint32_KHR
    }


    @inlinable
    public static var sint64_NV: ComponentTypeKHR {
        self.sint64_KHR
    }


    @inlinable
    public static var uint8_NV: ComponentTypeKHR {
        self.uint8_KHR
    }


    @inlinable
    public static var uint16_NV: ComponentTypeKHR {
        self.uint16_KHR
    }


    @inlinable
    public static var uint32_NV: ComponentTypeKHR {
        self.uint32_KHR
    }


    @inlinable
    public static var uint64_NV: ComponentTypeKHR {
        self.uint64_KHR
    }


    @inlinable
    public static var floatE4m3_NV: ComponentTypeKHR {
        self.float8E4m3_EXT
    }


    @inlinable
    public static var floatE5m2_NV: ComponentTypeKHR {
        self.float8E5m2_EXT
    }
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
    public static var clone_NV: CopyAccelerationStructureModeKHR {
        self.clone_KHR
    }


    @inlinable
    public static var compact_NV: CopyAccelerationStructureModeKHR {
        self.compact_KHR
    }
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
    public static var debugReport_EXT: DebugReportObjectTypeEXT {
        self.debugReportCallbackExt_EXT
    }


    @inlinable
    public static var validationCache_EXT: DebugReportObjectTypeEXT {
        self.validationCacheExt_EXT
    }


    @inlinable
    public static var descriptorUpdateTemplateKhr_EXT: DebugReportObjectTypeEXT {
        self.descriptorUpdateTemplate_EXT
    }


    @inlinable
    public static var samplerYcbcrConversionKhr_EXT: DebugReportObjectTypeEXT {
        self.samplerYcbcrConversion_EXT
    }
}


public enum DefaultVertexAttributeValueKHR: CVulkan.VkDefaultVertexAttributeValueKHR.RawValue {

    case zeroZeroZeroZero_KHR = 0


    case zeroZeroZeroOne_KHR = 1
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


    case tensor_ARM = 1_000_460_000


    case mutable_EXT = 1_000_351_000


    case partitionedAccelerationStructure_NV = 1_000_570_000


    @inlinable
    public static var inlineUniformBlock_EXT: DescriptorType {
        self.inlineUniformBlock
    }


    @inlinable
    public static var mutable_VALVE: DescriptorType {
        self.mutable_EXT
    }
}


public enum DescriptorUpdateTemplateType: CVulkan.VkDescriptorUpdateTemplateType.RawValue {

    case descriptorSet = 0


    case pushDescriptors = 1


    @inlinable
    public static var pushDescriptors_KHR: DescriptorUpdateTemplateType {
        self.pushDescriptors
    }


    @inlinable
    public static var descriptorSet_KHR: DescriptorUpdateTemplateType {
        self.descriptorSet
    }
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
    public static var amdProprietary_KHR: DriverId {
        self.amdProprietary
    }


    @inlinable
    public static var amdOpenSource_KHR: DriverId {
        self.amdOpenSource
    }


    @inlinable
    public static var mesaRadv_KHR: DriverId {
        self.mesaRadv
    }


    @inlinable
    public static var nvidiaProprietary_KHR: DriverId {
        self.nvidiaProprietary
    }


    @inlinable
    public static var intelProprietaryWindows_KHR: DriverId {
        self.intelProprietaryWindows
    }


    @inlinable
    public static var intelOpenSourceMesa_KHR: DriverId {
        self.intelOpenSource_MESA
    }


    @inlinable
    public static var imaginationProprietary_KHR: DriverId {
        self.imaginationProprietary
    }


    @inlinable
    public static var qualcommProprietary_KHR: DriverId {
        self.qualcommProprietary
    }


    @inlinable
    public static var armProprietary_KHR: DriverId {
        self.armProprietary
    }


    @inlinable
    public static var googleSwiftshader_KHR: DriverId {
        self.googleSwiftshader
    }


    @inlinable
    public static var ggpProprietary_KHR: DriverId {
        self.ggpProprietary
    }


    @inlinable
    public static var broadcomProprietary_KHR: DriverId {
        self.broadcomProprietary
    }
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
    public static var lineStipple_EXT: DynamicState {
        self.lineStipple
    }


    @inlinable
    public static var cullMode_EXT: DynamicState {
        self.cullMode
    }


    @inlinable
    public static var frontFace_EXT: DynamicState {
        self.frontFace
    }


    @inlinable
    public static var primitiveTopology_EXT: DynamicState {
        self.primitiveTopology
    }


    @inlinable
    public static var viewportWithCount_EXT: DynamicState {
        self.viewportWithCount
    }


    @inlinable
    public static var scissorWithCount_EXT: DynamicState {
        self.scissorWithCount
    }


    @inlinable
    public static var vertexInputBindingStride_EXT: DynamicState {
        self.vertexInputBindingStride
    }


    @inlinable
    public static var depthTestEnable_EXT: DynamicState {
        self.depthTestEnable
    }


    @inlinable
    public static var depthWriteEnable_EXT: DynamicState {
        self.depthWriteEnable
    }


    @inlinable
    public static var depthCompareOp_EXT: DynamicState {
        self.depthCompareOp
    }


    @inlinable
    public static var depthBoundsTestEnable_EXT: DynamicState {
        self.depthBoundsTestEnable
    }


    @inlinable
    public static var stencilTestEnable_EXT: DynamicState {
        self.stencilTestEnable
    }


    @inlinable
    public static var stencilOp_EXT: DynamicState {
        self.stencilOp
    }


    @inlinable
    public static var rasterizerDiscardEnable_EXT: DynamicState {
        self.rasterizerDiscardEnable
    }


    @inlinable
    public static var depthBiasEnable_EXT: DynamicState {
        self.depthBiasEnable
    }


    @inlinable
    public static var primitiveRestartEnable_EXT: DynamicState {
        self.primitiveRestartEnable
    }


    @inlinable
    public static var lineStipple_KHR: DynamicState {
        self.lineStipple
    }
}


public enum Filter: CVulkan.VkFilter.RawValue {

    case nearest = 0


    case linear = 1


    case cubic_EXT = 1_000_015_000


    @inlinable
    public static var cubic_IMG: Filter {
        self.cubic_EXT
    }
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


    case r8Bool_ARM = 1_000_460_000


    case r16g16Sfixed5_NV = 1_000_464_000


    case r10x6UintPack16_ARM = 1_000_609_000


    case r10x6g10x6Uint2pack16_ARM = 1_000_609_001


    case r10x6g10x6b10x6a10x6Uint4pack16_ARM = 1_000_609_002


    case r12x4UintPack16_ARM = 1_000_609_003


    case r12x4g12x4Uint2pack16_ARM = 1_000_609_004


    case r12x4g12x4b12x4a12x4Uint4pack16_ARM = 1_000_609_005


    case r14x2UintPack16_ARM = 1_000_609_006


    case r14x2g14x2Uint2pack16_ARM = 1_000_609_007


    case r14x2g14x2b14x2a14x2Uint4pack16_ARM = 1_000_609_008


    case r14x2UnormPack16_ARM = 1_000_609_009


    case r14x2g14x2Unorm2pack16_ARM = 1_000_609_010


    case r14x2g14x2b14x2a14x2Unorm4pack16_ARM = 1_000_609_011


    case g14x2B14x2r14x22plane420Unorm3pack16_ARM = 1_000_609_012


    case g14x2B14x2r14x22plane422Unorm3pack16_ARM = 1_000_609_013


    @inlinable
    public static var astc4x4SfloatBlock_EXT: Format {
        self.astc4x4SfloatBlock
    }


    @inlinable
    public static var astc5x4SfloatBlock_EXT: Format {
        self.astc5x4SfloatBlock
    }


    @inlinable
    public static var astc5x5SfloatBlock_EXT: Format {
        self.astc5x5SfloatBlock
    }


    @inlinable
    public static var astc6x5SfloatBlock_EXT: Format {
        self.astc6x5SfloatBlock
    }


    @inlinable
    public static var astc6x6SfloatBlock_EXT: Format {
        self.astc6x6SfloatBlock
    }


    @inlinable
    public static var astc8x5SfloatBlock_EXT: Format {
        self.astc8x5SfloatBlock
    }


    @inlinable
    public static var astc8x6SfloatBlock_EXT: Format {
        self.astc8x6SfloatBlock
    }


    @inlinable
    public static var astc8x8SfloatBlock_EXT: Format {
        self.astc8x8SfloatBlock
    }


    @inlinable
    public static var astc10x5SfloatBlock_EXT: Format {
        self.astc10x5SfloatBlock
    }


    @inlinable
    public static var astc10x6SfloatBlock_EXT: Format {
        self.astc10x6SfloatBlock
    }


    @inlinable
    public static var astc10x8SfloatBlock_EXT: Format {
        self.astc10x8SfloatBlock
    }


    @inlinable
    public static var astc10x10SfloatBlock_EXT: Format {
        self.astc10x10SfloatBlock
    }


    @inlinable
    public static var astc12x10SfloatBlock_EXT: Format {
        self.astc12x10SfloatBlock
    }


    @inlinable
    public static var astc12x12SfloatBlock_EXT: Format {
        self.astc12x12SfloatBlock
    }


    @inlinable
    public static var g8b8g8r8422Unorm_KHR: Format {
        self.g8b8g8r8422Unorm
    }


    @inlinable
    public static var b8g8r8g8422Unorm_KHR: Format {
        self.b8g8r8g8422Unorm
    }


    @inlinable
    public static var g8B8R83plane420Unorm_KHR: Format {
        self.g8B8R83plane420Unorm
    }


    @inlinable
    public static var g8B8r82plane420Unorm_KHR: Format {
        self.g8B8r82plane420Unorm
    }


    @inlinable
    public static var g8B8R83plane422Unorm_KHR: Format {
        self.g8B8R83plane422Unorm
    }


    @inlinable
    public static var g8B8r82plane422Unorm_KHR: Format {
        self.g8B8r82plane422Unorm
    }


    @inlinable
    public static var g8B8R83plane444Unorm_KHR: Format {
        self.g8B8R83plane444Unorm
    }


    @inlinable
    public static var r10x6UnormPack16_KHR: Format {
        self.r10x6UnormPack16
    }


    @inlinable
    public static var r10x6g10x6Unorm2pack16_KHR: Format {
        self.r10x6g10x6Unorm2pack16
    }


    @inlinable
    public static var r10x6g10x6b10x6a10x6Unorm4pack16_KHR: Format {
        self.r10x6g10x6b10x6a10x6Unorm4pack16
    }


    @inlinable
    public static var g10x6b10x6g10x6r10x6422Unorm4pack16_KHR: Format {
        self.g10x6b10x6g10x6r10x6422Unorm4pack16
    }


    @inlinable
    public static var b10x6g10x6r10x6g10x6422Unorm4pack16_KHR: Format {
        self.b10x6g10x6r10x6g10x6422Unorm4pack16
    }


    @inlinable
    public static var g10x6B10x6R10x63plane420Unorm3pack16_KHR: Format {
        self.g10x6B10x6R10x63plane420Unorm3pack16
    }


    @inlinable
    public static var g10x6B10x6r10x62plane420Unorm3pack16_KHR: Format {
        self.g10x6B10x6r10x62plane420Unorm3pack16
    }


    @inlinable
    public static var g10x6B10x6R10x63plane422Unorm3pack16_KHR: Format {
        self.g10x6B10x6R10x63plane422Unorm3pack16
    }


    @inlinable
    public static var g10x6B10x6r10x62plane422Unorm3pack16_KHR: Format {
        self.g10x6B10x6r10x62plane422Unorm3pack16
    }


    @inlinable
    public static var g10x6B10x6R10x63plane444Unorm3pack16_KHR: Format {
        self.g10x6B10x6R10x63plane444Unorm3pack16
    }


    @inlinable
    public static var r12x4UnormPack16_KHR: Format {
        self.r12x4UnormPack16
    }


    @inlinable
    public static var r12x4g12x4Unorm2pack16_KHR: Format {
        self.r12x4g12x4Unorm2pack16
    }


    @inlinable
    public static var r12x4g12x4b12x4a12x4Unorm4pack16_KHR: Format {
        self.r12x4g12x4b12x4a12x4Unorm4pack16
    }


    @inlinable
    public static var g12x4b12x4g12x4r12x4422Unorm4pack16_KHR: Format {
        self.g12x4b12x4g12x4r12x4422Unorm4pack16
    }


    @inlinable
    public static var b12x4g12x4r12x4g12x4422Unorm4pack16_KHR: Format {
        self.b12x4g12x4r12x4g12x4422Unorm4pack16
    }


    @inlinable
    public static var g12x4B12x4R12x43plane420Unorm3pack16_KHR: Format {
        self.g12x4B12x4R12x43plane420Unorm3pack16
    }


    @inlinable
    public static var g12x4B12x4r12x42plane420Unorm3pack16_KHR: Format {
        self.g12x4B12x4r12x42plane420Unorm3pack16
    }


    @inlinable
    public static var g12x4B12x4R12x43plane422Unorm3pack16_KHR: Format {
        self.g12x4B12x4R12x43plane422Unorm3pack16
    }


    @inlinable
    public static var g12x4B12x4r12x42plane422Unorm3pack16_KHR: Format {
        self.g12x4B12x4r12x42plane422Unorm3pack16
    }


    @inlinable
    public static var g12x4B12x4R12x43plane444Unorm3pack16_KHR: Format {
        self.g12x4B12x4R12x43plane444Unorm3pack16
    }


    @inlinable
    public static var g16b16g16r16422Unorm_KHR: Format {
        self.g16b16g16r16422Unorm
    }


    @inlinable
    public static var b16g16r16g16422Unorm_KHR: Format {
        self.b16g16r16g16422Unorm
    }


    @inlinable
    public static var g16B16R163plane420Unorm_KHR: Format {
        self.g16B16R163plane420Unorm
    }


    @inlinable
    public static var g16B16r162plane420Unorm_KHR: Format {
        self.g16B16r162plane420Unorm
    }


    @inlinable
    public static var g16B16R163plane422Unorm_KHR: Format {
        self.g16B16R163plane422Unorm
    }


    @inlinable
    public static var g16B16r162plane422Unorm_KHR: Format {
        self.g16B16r162plane422Unorm
    }


    @inlinable
    public static var g16B16R163plane444Unorm_KHR: Format {
        self.g16B16R163plane444Unorm
    }


    @inlinable
    public static var g8B8r82plane444Unorm_EXT: Format {
        self.g8B8r82plane444Unorm
    }


    @inlinable
    public static var g10x6B10x6r10x62plane444Unorm3pack16_EXT: Format {
        self.g10x6B10x6r10x62plane444Unorm3pack16
    }


    @inlinable
    public static var g12x4B12x4r12x42plane444Unorm3pack16_EXT: Format {
        self.g12x4B12x4r12x42plane444Unorm3pack16
    }


    @inlinable
    public static var g16B16r162plane444Unorm_EXT: Format {
        self.g16B16r162plane444Unorm
    }


    @inlinable
    public static var a4r4g4b4UnormPack16_EXT: Format {
        self.a4r4g4b4UnormPack16
    }


    @inlinable
    public static var a4b4g4r4UnormPack16_EXT: Format {
        self.a4b4g4r4UnormPack16
    }


    @inlinable
    public static var r16g16S105_NV: Format {
        self.r16g16Sfixed5_NV
    }


    @inlinable
    public static var a1b5g5r5UnormPack16_KHR: Format {
        self.a1b5g5r5UnormPack16
    }


    @inlinable
    public static var a8Unorm_KHR: Format {
        self.a8Unorm
    }
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
    public static var triangles_NV: GeometryTypeKHR {
        self.triangles_KHR
    }


    @inlinable
    public static var aabbs_NV: GeometryTypeKHR {
        self.aabbs_KHR
    }
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


    case tensorAliasing_ARM = 1_000_460_000


    case videoEncodeQuantizationMap_KHR = 1_000_553_000


    case zeroInitialized_EXT = 1_000_620_000


    @inlinable
    public static var depthReadOnlyStencilAttachmentOptimal_KHR: ImageLayout {
        self.depthReadOnlyStencilAttachmentOptimal
    }


    @inlinable
    public static var depthAttachmentStencilReadOnlyOptimal_KHR: ImageLayout {
        self.depthAttachmentStencilReadOnlyOptimal
    }


    @inlinable
    public static var shadingRateOptimal_NV: ImageLayout {
        self.fragmentShadingRateAttachmentOptimal_KHR
    }


    @inlinable
    public static var renderingLocalRead_KHR: ImageLayout {
        self.renderingLocalRead
    }


    @inlinable
    public static var depthAttachmentOptimal_KHR: ImageLayout {
        self.depthAttachmentOptimal
    }


    @inlinable
    public static var depthReadOnlyOptimal_KHR: ImageLayout {
        self.depthReadOnlyOptimal
    }


    @inlinable
    public static var stencilAttachmentOptimal_KHR: ImageLayout {
        self.stencilAttachmentOptimal
    }


    @inlinable
    public static var stencilReadOnlyOptimal_KHR: ImageLayout {
        self.stencilReadOnlyOptimal
    }


    @inlinable
    public static var readOnlyOptimal_KHR: ImageLayout {
        self.readOnlyOptimal
    }


    @inlinable
    public static var attachmentOptimal_KHR: ImageLayout {
        self.attachmentOptimal
    }
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
    public static var none_NV: IndexType {
        self.none_KHR
    }


    @inlinable
    public static var uint8_EXT: IndexType {
        self.uint8
    }


    @inlinable
    public static var uint8_KHR: IndexType {
        self.uint8
    }
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
    public static var default_EXT: LineRasterizationMode {
        self.`default`
    }


    @inlinable
    public static var rectangular_EXT: LineRasterizationMode {
        self.rectangular
    }


    @inlinable
    public static var bresenham_EXT: LineRasterizationMode {
        self.bresenham
    }


    @inlinable
    public static var rectangularSmooth_EXT: LineRasterizationMode {
        self.rectangularSmooth
    }


    @inlinable
    public static var default_KHR: LineRasterizationMode {
        self.`default`
    }


    @inlinable
    public static var rectangular_KHR: LineRasterizationMode {
        self.rectangular
    }


    @inlinable
    public static var bresenham_KHR: LineRasterizationMode {
        self.bresenham
    }


    @inlinable
    public static var rectangularSmooth_KHR: LineRasterizationMode {
        self.rectangularSmooth
    }
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


    case tensor_ARM = 1_000_460_000


    case tensorView_ARM = 1_000_460_001


    case opticalFlowSession_NV = 1_000_464_000


    case shader_EXT = 1_000_482_000


    case pipelineBinary_KHR = 1_000_483_000


    case externalComputeQueue_NV = 1_000_556_000


    case indirectCommandsLayout_EXT = 1_000_572_000


    case indirectExecutionSet_EXT = 1_000_572_001


    @inlinable
    public static var descriptorUpdateTemplate_KHR: ObjectType {
        self.descriptorUpdateTemplate
    }


    @inlinable
    public static var samplerYcbcrConversion_KHR: ObjectType {
        self.samplerYcbcrConversion
    }


    @inlinable
    public static var privateDataSlot_EXT: ObjectType {
        self.privateDataSlot
    }
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
    public static var queryScopeCommandBuffer_KHR: PerformanceCounterScopeKHR {
        self.commandBuffer_KHR
    }


    @inlinable
    public static var queryScopeRenderPass_KHR: PerformanceCounterScopeKHR {
        self.renderPass_KHR
    }


    @inlinable
    public static var queryScopeCommand_KHR: PerformanceCounterScopeKHR {
        self.command_KHR
    }
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
    public static var rayTracing_NV: PipelineBindPoint {
        self.rayTracing_KHR
    }
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
    public static var deviceDefault_EXT: PipelineRobustnessBufferBehavior {
        self.deviceDefault
    }


    @inlinable
    public static var disabled_EXT: PipelineRobustnessBufferBehavior {
        self.disabled
    }


    @inlinable
    public static var robustBufferAccess_EXT: PipelineRobustnessBufferBehavior {
        self.robustBufferAccess
    }


    @inlinable
    public static var robustBufferAccess2_EXT: PipelineRobustnessBufferBehavior {
        self.robustBufferAccess2
    }
}


public enum PipelineRobustnessImageBehavior: CVulkan.VkPipelineRobustnessImageBehavior.RawValue {

    case deviceDefault = 0


    case disabled = 1


    case robustImageAccess = 2


    case robustImageAccess2 = 3


    @inlinable
    public static var deviceDefault_EXT: PipelineRobustnessImageBehavior {
        self.deviceDefault
    }


    @inlinable
    public static var disabled_EXT: PipelineRobustnessImageBehavior {
        self.disabled
    }


    @inlinable
    public static var robustImageAccess_EXT: PipelineRobustnessImageBehavior {
        self.robustImageAccess
    }


    @inlinable
    public static var robustImageAccess2_EXT: PipelineRobustnessImageBehavior {
        self.robustImageAccess2
    }
}


public enum PointClippingBehavior: CVulkan.VkPointClippingBehavior.RawValue {

    case allClipPlanes = 0


    case userClipPlanesOnly = 1


    @inlinable
    public static var allClipPlanes_KHR: PointClippingBehavior {
        self.allClipPlanes
    }


    @inlinable
    public static var userClipPlanesOnly_KHR: PointClippingBehavior {
        self.userClipPlanesOnly
    }
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
    public static var low_EXT: QueueGlobalPriority {
        self.low
    }


    @inlinable
    public static var medium_EXT: QueueGlobalPriority {
        self.medium
    }


    @inlinable
    public static var high_EXT: QueueGlobalPriority {
        self.high
    }


    @inlinable
    public static var realtime_EXT: QueueGlobalPriority {
        self.realtime
    }


    @inlinable
    public static var low_KHR: QueueGlobalPriority {
        self.low
    }


    @inlinable
    public static var medium_KHR: QueueGlobalPriority {
        self.medium
    }


    @inlinable
    public static var high_KHR: QueueGlobalPriority {
        self.high
    }


    @inlinable
    public static var realtime_KHR: QueueGlobalPriority {
        self.realtime
    }
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
    public static var general_NV: RayTracingShaderGroupTypeKHR {
        self.general_KHR
    }


    @inlinable
    public static var trianglesHitGroup_NV: RayTracingShaderGroupTypeKHR {
        self.trianglesHitGroup_KHR
    }


    @inlinable
    public static var proceduralHitGroup_NV: RayTracingShaderGroupTypeKHR {
        self.proceduralHitGroup_KHR
    }
}


public enum SamplerAddressMode: CVulkan.VkSamplerAddressMode.RawValue {

    case `repeat` = 0


    case mirroredRepeat = 1


    case clampToEdge = 2


    case clampToBorder = 3


    case mirrorClampToEdge = 4


    @inlinable
    public static var mirrorClampToEdge_KHR: SamplerAddressMode {
        self.mirrorClampToEdge
    }
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
    public static var weightedAverage_EXT: SamplerReductionMode {
        self.weightedAverage
    }


    @inlinable
    public static var min_EXT: SamplerReductionMode {
        self.min
    }


    @inlinable
    public static var max_EXT: SamplerReductionMode {
        self.max
    }
}


public enum SamplerYcbcrModelConversion: CVulkan.VkSamplerYcbcrModelConversion.RawValue {

    case rgbIdentity = 0


    case ycbcrIdentity = 1


    case ycbcr709 = 2


    case ycbcr601 = 3


    case ycbcr2020 = 4


    @inlinable
    public static var rgbIdentity_KHR: SamplerYcbcrModelConversion {
        self.rgbIdentity
    }


    @inlinable
    public static var ycbcrIdentity_KHR: SamplerYcbcrModelConversion {
        self.ycbcrIdentity
    }


    @inlinable
    public static var ycbcr709_KHR: SamplerYcbcrModelConversion {
        self.ycbcr709
    }


    @inlinable
    public static var ycbcr601_KHR: SamplerYcbcrModelConversion {
        self.ycbcr601
    }


    @inlinable
    public static var ycbcr2020_KHR: SamplerYcbcrModelConversion {
        self.ycbcr2020
    }
}


public enum SamplerYcbcrRange: CVulkan.VkSamplerYcbcrRange.RawValue {

    case ituFull = 0


    case ituNarrow = 1


    @inlinable
    public static var ituFull_KHR: SamplerYcbcrRange {
        self.ituFull
    }


    @inlinable
    public static var ituNarrow_KHR: SamplerYcbcrRange {
        self.ituNarrow
    }
}


public enum ScopeKHR: CVulkan.VkScopeKHR.RawValue {

    case device_KHR = 1


    case workgroup_KHR = 2


    case subgroup_KHR = 3


    case queueFamily_KHR = 5


    @inlinable
    public static var device_NV: ScopeKHR {
        self.device_KHR
    }


    @inlinable
    public static var workgroup_NV: ScopeKHR {
        self.workgroup_KHR
    }


    @inlinable
    public static var subgroup_NV: ScopeKHR {
        self.subgroup_KHR
    }


    @inlinable
    public static var queueFamily_NV: ScopeKHR {
        self.queueFamily_KHR
    }
}


public enum SemaphoreType: CVulkan.VkSemaphoreType.RawValue {

    case binary = 0


    case timeline = 1


    @inlinable
    public static var binary_KHR: SemaphoreType {
        self.binary
    }


    @inlinable
    public static var timeline_KHR: SemaphoreType {
        self.timeline
    }
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
    public static var `32BitOnly_KHR`: ShaderFloatControlsIndependence {
        self.`32BitOnly`
    }


    @inlinable
    public static var all_KHR: ShaderFloatControlsIndependence {
        self.all
    }


    @inlinable
    public static var none_KHR: ShaderFloatControlsIndependence {
        self.none
    }
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


public enum SubpassContents: CVulkan.VkSubpassContents.RawValue {

    case inline = 0


    case secondaryCommandBuffers = 1


    case inlineAndSecondaryCommandBuffers_KHR = 1_000_451_000


    @inlinable
    public static var inlineAndSecondaryCommandBuffers_EXT: SubpassContents {
        self.inlineAndSecondaryCommandBuffers_KHR
    }
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


public enum TensorTilingARM: CVulkan.VkTensorTilingARM.RawValue {

    case optimal_ARM = 0


    case linear_ARM = 1
}


public enum TessellationDomainOrigin: CVulkan.VkTessellationDomainOrigin.RawValue {

    case upperLeft = 0


    case lowerLeft = 1


    @inlinable
    public static var upperLeft_KHR: TessellationDomainOrigin {
        self.upperLeft
    }


    @inlinable
    public static var lowerLeft_KHR: TessellationDomainOrigin {
        self.lowerLeft
    }
}


public enum TimeDomainKHR: CVulkan.VkTimeDomainKHR.RawValue {

    case device_KHR = 0


    case clockMonotonic_KHR = 1


    case clockMonotonicRaw_KHR = 2


    case queryPerformanceCounter_KHR = 3


    @inlinable
    public static var device_EXT: TimeDomainKHR {
        self.device_KHR
    }


    @inlinable
    public static var clockMonotonic_EXT: TimeDomainKHR {
        self.clockMonotonic_KHR
    }


    @inlinable
    public static var clockMonotonicRaw_EXT: TimeDomainKHR {
        self.clockMonotonicRaw_KHR
    }


    @inlinable
    public static var queryPerformanceCounter_EXT: TimeDomainKHR {
        self.queryPerformanceCounter_KHR
    }
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
