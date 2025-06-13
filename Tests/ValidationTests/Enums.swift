/**
 * Enums.swift
 * ValidationTests
 *
 * Created by Hunter Baker on 5/26/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Testing

@testable import CVulkan
@testable import Ignite

// This file contains the enum validity tests for Vulkan.
// These are automatically generated from the Vulkan specification.

@Suite("Enums")
public struct EnumTests {
    // BEGIN_GENERATE_ENUM_TESTS
    // Generated using header version: 318

    /// Tests for the AccelerationStructureBuildTypeKHR enum.
    @Suite("AccelerationStructureBuildTypeKHR")
    public struct AccelerationStructureBuildTypeKHRTests {
        @Test("Validate host_KHR")
        public func validate_host_KHR() {
            #expect(
                Ignite.AccelerationStructureBuildTypeKHR.host_KHR.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR.rawValue
            )
        }

        @Test("Validate device_KHR")
        public func validate_device_KHR() {
            #expect(
                Ignite.AccelerationStructureBuildTypeKHR.device_KHR.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR.rawValue
            )
        }

        @Test("Validate hostOrDevice_KHR")
        public func validate_hostOrDevice_KHR() {
            #expect(
                Ignite.AccelerationStructureBuildTypeKHR.hostOrDevice_KHR.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR.rawValue
            )
        }
    }


    /// Tests for the AccelerationStructureCompatibilityKHR enum.
    @Suite("AccelerationStructureCompatibilityKHR")
    public struct AccelerationStructureCompatibilityKHRTests {
        @Test("Validate compatible_KHR")
        public func validate_compatible_KHR() {
            #expect(
                Ignite.AccelerationStructureCompatibilityKHR.compatible_KHR.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_COMPATIBILITY_COMPATIBLE_KHR.rawValue
            )
        }

        @Test("Validate incompatible_KHR")
        public func validate_incompatible_KHR() {
            #expect(
                Ignite.AccelerationStructureCompatibilityKHR.incompatible_KHR.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_COMPATIBILITY_INCOMPATIBLE_KHR.rawValue
            )
        }
    }


    /// Tests for the AccelerationStructureMemoryRequirementsTypeNV enum.
    @Suite("AccelerationStructureMemoryRequirementsTypeNV")
    public struct AccelerationStructureMemoryRequirementsTypeNVTests {
        @Test("Validate object_NV")
        public func validate_object_NV() {
            #expect(
                Ignite.AccelerationStructureMemoryRequirementsTypeNV.object_NV.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV.rawValue
            )
        }

        @Test("Validate buildScratch_NV")
        public func validate_buildScratch_NV() {
            #expect(
                Ignite.AccelerationStructureMemoryRequirementsTypeNV.buildScratch_NV.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV.rawValue
            )
        }

        @Test("Validate updateScratch_NV")
        public func validate_updateScratch_NV() {
            #expect(
                Ignite.AccelerationStructureMemoryRequirementsTypeNV.updateScratch_NV.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV.rawValue
            )
        }
    }


    /// Tests for the AccelerationStructureMotionInstanceTypeNV enum.
    @Suite("AccelerationStructureMotionInstanceTypeNV")
    public struct AccelerationStructureMotionInstanceTypeNVTests {
        @Test("Validate static_NV")
        public func validate_static_NV() {
            #expect(
                Ignite.AccelerationStructureMotionInstanceTypeNV.static_NV.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_STATIC_NV.rawValue
            )
        }

        @Test("Validate matrixMotion_NV")
        public func validate_matrixMotion_NV() {
            #expect(
                Ignite.AccelerationStructureMotionInstanceTypeNV.matrixMotion_NV.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MATRIX_MOTION_NV.rawValue
            )
        }

        @Test("Validate srtMotion_NV")
        public func validate_srtMotion_NV() {
            #expect(
                Ignite.AccelerationStructureMotionInstanceTypeNV.srtMotion_NV.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_SRT_MOTION_NV.rawValue
            )
        }
    }


    /// Tests for the AccelerationStructureTypeKHR enum.
    @Suite("AccelerationStructureTypeKHR")
    public struct AccelerationStructureTypeKHRTests {
        @Test("Validate topLevel_KHR")
        public func validate_topLevel_KHR() {
            #expect(
                Ignite.AccelerationStructureTypeKHR.topLevel_KHR.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR.rawValue
            )
        }

        @Test("Validate bottomLevel_KHR")
        public func validate_bottomLevel_KHR() {
            #expect(
                Ignite.AccelerationStructureTypeKHR.bottomLevel_KHR.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR.rawValue
            )
        }

        @Test("Validate generic_KHR")
        public func validate_generic_KHR() {
            #expect(
                Ignite.AccelerationStructureTypeKHR.generic_KHR.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR.rawValue
            )
        }

        @Test("Validate topLevel_NV")
        public func validate_topLevel_NV() {
            #expect(
                Ignite.AccelerationStructureTypeKHR.topLevel_NV.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_NV.rawValue
            )
        }

        @Test("Validate bottomLevel_NV")
        public func validate_bottomLevel_NV() {
            #expect(
                Ignite.AccelerationStructureTypeKHR.bottomLevel_NV.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_NV.rawValue
            )
        }
    }


    /// Tests for the AntiLagModeAMD enum.
    @Suite("AntiLagModeAMD")
    public struct AntiLagModeAMDTests {
        @Test("Validate driverControl_AMD")
        public func validate_driverControl_AMD() {
            #expect(
                Ignite.AntiLagModeAMD.driverControl_AMD.rawValue == CVulkan.VK_ANTI_LAG_MODE_DRIVER_CONTROL_AMD.rawValue
            )
        }

        @Test("Validate on_AMD")
        public func validate_on_AMD() {
            #expect(
                Ignite.AntiLagModeAMD.on_AMD.rawValue == CVulkan.VK_ANTI_LAG_MODE_ON_AMD.rawValue
            )
        }

        @Test("Validate off_AMD")
        public func validate_off_AMD() {
            #expect(
                Ignite.AntiLagModeAMD.off_AMD.rawValue == CVulkan.VK_ANTI_LAG_MODE_OFF_AMD.rawValue
            )
        }
    }


    /// Tests for the AntiLagStageAMD enum.
    @Suite("AntiLagStageAMD")
    public struct AntiLagStageAMDTests {
        @Test("Validate input_AMD")
        public func validate_input_AMD() {
            #expect(
                Ignite.AntiLagStageAMD.input_AMD.rawValue == CVulkan.VK_ANTI_LAG_STAGE_INPUT_AMD.rawValue
            )
        }

        @Test("Validate present_AMD")
        public func validate_present_AMD() {
            #expect(
                Ignite.AntiLagStageAMD.present_AMD.rawValue == CVulkan.VK_ANTI_LAG_STAGE_PRESENT_AMD.rawValue
            )
        }
    }


    /// Tests for the AttachmentLoadOp enum.
    @Suite("AttachmentLoadOp")
    public struct AttachmentLoadOpTests {
        @Test("Validate load")
        public func validate_load() {
            #expect(
                Ignite.AttachmentLoadOp.load.rawValue == CVulkan.VK_ATTACHMENT_LOAD_OP_LOAD.rawValue
            )
        }

        @Test("Validate clear")
        public func validate_clear() {
            #expect(
                Ignite.AttachmentLoadOp.clear.rawValue == CVulkan.VK_ATTACHMENT_LOAD_OP_CLEAR.rawValue
            )
        }

        @Test("Validate dontCare")
        public func validate_dontCare() {
            #expect(
                Ignite.AttachmentLoadOp.dontCare.rawValue == CVulkan.VK_ATTACHMENT_LOAD_OP_DONT_CARE.rawValue
            )
        }

        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.AttachmentLoadOp.none.rawValue == CVulkan.VK_ATTACHMENT_LOAD_OP_NONE.rawValue
            )
        }

        @Test("Validate none_EXT")
        public func validate_none_EXT() {
            #expect(
                Ignite.AttachmentLoadOp.none_EXT.rawValue == CVulkan.VK_ATTACHMENT_LOAD_OP_NONE_EXT.rawValue
            )
        }

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.AttachmentLoadOp.none_KHR.rawValue == CVulkan.VK_ATTACHMENT_LOAD_OP_NONE_KHR.rawValue
            )
        }
    }


    /// Tests for the AttachmentStoreOp enum.
    @Suite("AttachmentStoreOp")
    public struct AttachmentStoreOpTests {
        @Test("Validate store")
        public func validate_store() {
            #expect(
                Ignite.AttachmentStoreOp.store.rawValue == CVulkan.VK_ATTACHMENT_STORE_OP_STORE.rawValue
            )
        }

        @Test("Validate dontCare")
        public func validate_dontCare() {
            #expect(
                Ignite.AttachmentStoreOp.dontCare.rawValue == CVulkan.VK_ATTACHMENT_STORE_OP_DONT_CARE.rawValue
            )
        }

        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.AttachmentStoreOp.none.rawValue == CVulkan.VK_ATTACHMENT_STORE_OP_NONE.rawValue
            )
        }

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.AttachmentStoreOp.none_KHR.rawValue == CVulkan.VK_ATTACHMENT_STORE_OP_NONE_KHR.rawValue
            )
        }

        @Test("Validate none_QCOM")
        public func validate_none_QCOM() {
            #expect(
                Ignite.AttachmentStoreOp.none_QCOM.rawValue == CVulkan.VK_ATTACHMENT_STORE_OP_NONE_QCOM.rawValue
            )
        }

        @Test("Validate none_EXT")
        public func validate_none_EXT() {
            #expect(
                Ignite.AttachmentStoreOp.none_EXT.rawValue == CVulkan.VK_ATTACHMENT_STORE_OP_NONE_EXT.rawValue
            )
        }
    }


    /// Tests for the BlendFactor enum.
    @Suite("BlendFactor")
    public struct BlendFactorTests {
        @Test("Validate zero")
        public func validate_zero() {
            #expect(
                Ignite.BlendFactor.zero.rawValue == CVulkan.VK_BLEND_FACTOR_ZERO.rawValue
            )
        }

        @Test("Validate one")
        public func validate_one() {
            #expect(
                Ignite.BlendFactor.one.rawValue == CVulkan.VK_BLEND_FACTOR_ONE.rawValue
            )
        }

        @Test("Validate srcColor")
        public func validate_srcColor() {
            #expect(
                Ignite.BlendFactor.srcColor.rawValue == CVulkan.VK_BLEND_FACTOR_SRC_COLOR.rawValue
            )
        }

        @Test("Validate oneMinusSrcColor")
        public func validate_oneMinusSrcColor() {
            #expect(
                Ignite.BlendFactor.oneMinusSrcColor.rawValue == CVulkan.VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR.rawValue
            )
        }

        @Test("Validate dstColor")
        public func validate_dstColor() {
            #expect(
                Ignite.BlendFactor.dstColor.rawValue == CVulkan.VK_BLEND_FACTOR_DST_COLOR.rawValue
            )
        }

        @Test("Validate oneMinusDstColor")
        public func validate_oneMinusDstColor() {
            #expect(
                Ignite.BlendFactor.oneMinusDstColor.rawValue == CVulkan.VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR.rawValue
            )
        }

        @Test("Validate srcAlpha")
        public func validate_srcAlpha() {
            #expect(
                Ignite.BlendFactor.srcAlpha.rawValue == CVulkan.VK_BLEND_FACTOR_SRC_ALPHA.rawValue
            )
        }

        @Test("Validate oneMinusSrcAlpha")
        public func validate_oneMinusSrcAlpha() {
            #expect(
                Ignite.BlendFactor.oneMinusSrcAlpha.rawValue == CVulkan.VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA.rawValue
            )
        }

        @Test("Validate dstAlpha")
        public func validate_dstAlpha() {
            #expect(
                Ignite.BlendFactor.dstAlpha.rawValue == CVulkan.VK_BLEND_FACTOR_DST_ALPHA.rawValue
            )
        }

        @Test("Validate oneMinusDstAlpha")
        public func validate_oneMinusDstAlpha() {
            #expect(
                Ignite.BlendFactor.oneMinusDstAlpha.rawValue == CVulkan.VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA.rawValue
            )
        }

        @Test("Validate constantColor")
        public func validate_constantColor() {
            #expect(
                Ignite.BlendFactor.constantColor.rawValue == CVulkan.VK_BLEND_FACTOR_CONSTANT_COLOR.rawValue
            )
        }

        @Test("Validate oneMinusConstantColor")
        public func validate_oneMinusConstantColor() {
            #expect(
                Ignite.BlendFactor.oneMinusConstantColor.rawValue
                    == CVulkan.VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR.rawValue
            )
        }

        @Test("Validate constantAlpha")
        public func validate_constantAlpha() {
            #expect(
                Ignite.BlendFactor.constantAlpha.rawValue == CVulkan.VK_BLEND_FACTOR_CONSTANT_ALPHA.rawValue
            )
        }

        @Test("Validate oneMinusConstantAlpha")
        public func validate_oneMinusConstantAlpha() {
            #expect(
                Ignite.BlendFactor.oneMinusConstantAlpha.rawValue
                    == CVulkan.VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA.rawValue
            )
        }

        @Test("Validate srcAlphaSaturate")
        public func validate_srcAlphaSaturate() {
            #expect(
                Ignite.BlendFactor.srcAlphaSaturate.rawValue == CVulkan.VK_BLEND_FACTOR_SRC_ALPHA_SATURATE.rawValue
            )
        }

        @Test("Validate src1Color")
        public func validate_src1Color() {
            #expect(
                Ignite.BlendFactor.src1Color.rawValue == CVulkan.VK_BLEND_FACTOR_SRC1_COLOR.rawValue
            )
        }

        @Test("Validate oneMinusSrc1Color")
        public func validate_oneMinusSrc1Color() {
            #expect(
                Ignite.BlendFactor.oneMinusSrc1Color.rawValue == CVulkan.VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR.rawValue
            )
        }

        @Test("Validate src1Alpha")
        public func validate_src1Alpha() {
            #expect(
                Ignite.BlendFactor.src1Alpha.rawValue == CVulkan.VK_BLEND_FACTOR_SRC1_ALPHA.rawValue
            )
        }

        @Test("Validate oneMinusSrc1Alpha")
        public func validate_oneMinusSrc1Alpha() {
            #expect(
                Ignite.BlendFactor.oneMinusSrc1Alpha.rawValue == CVulkan.VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA.rawValue
            )
        }
    }


    /// Tests for the BlendOp enum.
    @Suite("BlendOp")
    public struct BlendOpTests {
        @Test("Validate add")
        public func validate_add() {
            #expect(
                Ignite.BlendOp.add.rawValue == CVulkan.VK_BLEND_OP_ADD.rawValue
            )
        }

        @Test("Validate subtract")
        public func validate_subtract() {
            #expect(
                Ignite.BlendOp.subtract.rawValue == CVulkan.VK_BLEND_OP_SUBTRACT.rawValue
            )
        }

        @Test("Validate reverseSubtract")
        public func validate_reverseSubtract() {
            #expect(
                Ignite.BlendOp.reverseSubtract.rawValue == CVulkan.VK_BLEND_OP_REVERSE_SUBTRACT.rawValue
            )
        }

        @Test("Validate min")
        public func validate_min() {
            #expect(
                Ignite.BlendOp.min.rawValue == CVulkan.VK_BLEND_OP_MIN.rawValue
            )
        }

        @Test("Validate max")
        public func validate_max() {
            #expect(
                Ignite.BlendOp.max.rawValue == CVulkan.VK_BLEND_OP_MAX.rawValue
            )
        }

        @Test("Validate zero_EXT")
        public func validate_zero_EXT() {
            #expect(
                Ignite.BlendOp.zero_EXT.rawValue == CVulkan.VK_BLEND_OP_ZERO_EXT.rawValue
            )
        }

        @Test("Validate src_EXT")
        public func validate_src_EXT() {
            #expect(
                Ignite.BlendOp.src_EXT.rawValue == CVulkan.VK_BLEND_OP_SRC_EXT.rawValue
            )
        }

        @Test("Validate dst_EXT")
        public func validate_dst_EXT() {
            #expect(
                Ignite.BlendOp.dst_EXT.rawValue == CVulkan.VK_BLEND_OP_DST_EXT.rawValue
            )
        }

        @Test("Validate srcOver_EXT")
        public func validate_srcOver_EXT() {
            #expect(
                Ignite.BlendOp.srcOver_EXT.rawValue == CVulkan.VK_BLEND_OP_SRC_OVER_EXT.rawValue
            )
        }

        @Test("Validate dstOver_EXT")
        public func validate_dstOver_EXT() {
            #expect(
                Ignite.BlendOp.dstOver_EXT.rawValue == CVulkan.VK_BLEND_OP_DST_OVER_EXT.rawValue
            )
        }

        @Test("Validate srcIn_EXT")
        public func validate_srcIn_EXT() {
            #expect(
                Ignite.BlendOp.srcIn_EXT.rawValue == CVulkan.VK_BLEND_OP_SRC_IN_EXT.rawValue
            )
        }

        @Test("Validate dstIn_EXT")
        public func validate_dstIn_EXT() {
            #expect(
                Ignite.BlendOp.dstIn_EXT.rawValue == CVulkan.VK_BLEND_OP_DST_IN_EXT.rawValue
            )
        }

        @Test("Validate srcOut_EXT")
        public func validate_srcOut_EXT() {
            #expect(
                Ignite.BlendOp.srcOut_EXT.rawValue == CVulkan.VK_BLEND_OP_SRC_OUT_EXT.rawValue
            )
        }

        @Test("Validate dstOut_EXT")
        public func validate_dstOut_EXT() {
            #expect(
                Ignite.BlendOp.dstOut_EXT.rawValue == CVulkan.VK_BLEND_OP_DST_OUT_EXT.rawValue
            )
        }

        @Test("Validate srcAtop_EXT")
        public func validate_srcAtop_EXT() {
            #expect(
                Ignite.BlendOp.srcAtop_EXT.rawValue == CVulkan.VK_BLEND_OP_SRC_ATOP_EXT.rawValue
            )
        }

        @Test("Validate dstAtop_EXT")
        public func validate_dstAtop_EXT() {
            #expect(
                Ignite.BlendOp.dstAtop_EXT.rawValue == CVulkan.VK_BLEND_OP_DST_ATOP_EXT.rawValue
            )
        }

        @Test("Validate xor_EXT")
        public func validate_xor_EXT() {
            #expect(
                Ignite.BlendOp.xor_EXT.rawValue == CVulkan.VK_BLEND_OP_XOR_EXT.rawValue
            )
        }

        @Test("Validate multiply_EXT")
        public func validate_multiply_EXT() {
            #expect(
                Ignite.BlendOp.multiply_EXT.rawValue == CVulkan.VK_BLEND_OP_MULTIPLY_EXT.rawValue
            )
        }

        @Test("Validate screen_EXT")
        public func validate_screen_EXT() {
            #expect(
                Ignite.BlendOp.screen_EXT.rawValue == CVulkan.VK_BLEND_OP_SCREEN_EXT.rawValue
            )
        }

        @Test("Validate overlay_EXT")
        public func validate_overlay_EXT() {
            #expect(
                Ignite.BlendOp.overlay_EXT.rawValue == CVulkan.VK_BLEND_OP_OVERLAY_EXT.rawValue
            )
        }

        @Test("Validate darken_EXT")
        public func validate_darken_EXT() {
            #expect(
                Ignite.BlendOp.darken_EXT.rawValue == CVulkan.VK_BLEND_OP_DARKEN_EXT.rawValue
            )
        }

        @Test("Validate lighten_EXT")
        public func validate_lighten_EXT() {
            #expect(
                Ignite.BlendOp.lighten_EXT.rawValue == CVulkan.VK_BLEND_OP_LIGHTEN_EXT.rawValue
            )
        }

        @Test("Validate colordodge_EXT")
        public func validate_colordodge_EXT() {
            #expect(
                Ignite.BlendOp.colordodge_EXT.rawValue == CVulkan.VK_BLEND_OP_COLORDODGE_EXT.rawValue
            )
        }

        @Test("Validate colorburn_EXT")
        public func validate_colorburn_EXT() {
            #expect(
                Ignite.BlendOp.colorburn_EXT.rawValue == CVulkan.VK_BLEND_OP_COLORBURN_EXT.rawValue
            )
        }

        @Test("Validate hardlight_EXT")
        public func validate_hardlight_EXT() {
            #expect(
                Ignite.BlendOp.hardlight_EXT.rawValue == CVulkan.VK_BLEND_OP_HARDLIGHT_EXT.rawValue
            )
        }

        @Test("Validate softlight_EXT")
        public func validate_softlight_EXT() {
            #expect(
                Ignite.BlendOp.softlight_EXT.rawValue == CVulkan.VK_BLEND_OP_SOFTLIGHT_EXT.rawValue
            )
        }

        @Test("Validate difference_EXT")
        public func validate_difference_EXT() {
            #expect(
                Ignite.BlendOp.difference_EXT.rawValue == CVulkan.VK_BLEND_OP_DIFFERENCE_EXT.rawValue
            )
        }

        @Test("Validate exclusion_EXT")
        public func validate_exclusion_EXT() {
            #expect(
                Ignite.BlendOp.exclusion_EXT.rawValue == CVulkan.VK_BLEND_OP_EXCLUSION_EXT.rawValue
            )
        }

        @Test("Validate invert_EXT")
        public func validate_invert_EXT() {
            #expect(
                Ignite.BlendOp.invert_EXT.rawValue == CVulkan.VK_BLEND_OP_INVERT_EXT.rawValue
            )
        }

        @Test("Validate invertRgb_EXT")
        public func validate_invertRgb_EXT() {
            #expect(
                Ignite.BlendOp.invertRgb_EXT.rawValue == CVulkan.VK_BLEND_OP_INVERT_RGB_EXT.rawValue
            )
        }

        @Test("Validate lineardodge_EXT")
        public func validate_lineardodge_EXT() {
            #expect(
                Ignite.BlendOp.lineardodge_EXT.rawValue == CVulkan.VK_BLEND_OP_LINEARDODGE_EXT.rawValue
            )
        }

        @Test("Validate linearburn_EXT")
        public func validate_linearburn_EXT() {
            #expect(
                Ignite.BlendOp.linearburn_EXT.rawValue == CVulkan.VK_BLEND_OP_LINEARBURN_EXT.rawValue
            )
        }

        @Test("Validate vividlight_EXT")
        public func validate_vividlight_EXT() {
            #expect(
                Ignite.BlendOp.vividlight_EXT.rawValue == CVulkan.VK_BLEND_OP_VIVIDLIGHT_EXT.rawValue
            )
        }

        @Test("Validate linearlight_EXT")
        public func validate_linearlight_EXT() {
            #expect(
                Ignite.BlendOp.linearlight_EXT.rawValue == CVulkan.VK_BLEND_OP_LINEARLIGHT_EXT.rawValue
            )
        }

        @Test("Validate pinlight_EXT")
        public func validate_pinlight_EXT() {
            #expect(
                Ignite.BlendOp.pinlight_EXT.rawValue == CVulkan.VK_BLEND_OP_PINLIGHT_EXT.rawValue
            )
        }

        @Test("Validate hardmix_EXT")
        public func validate_hardmix_EXT() {
            #expect(
                Ignite.BlendOp.hardmix_EXT.rawValue == CVulkan.VK_BLEND_OP_HARDMIX_EXT.rawValue
            )
        }

        @Test("Validate hslHue_EXT")
        public func validate_hslHue_EXT() {
            #expect(
                Ignite.BlendOp.hslHue_EXT.rawValue == CVulkan.VK_BLEND_OP_HSL_HUE_EXT.rawValue
            )
        }

        @Test("Validate hslSaturation_EXT")
        public func validate_hslSaturation_EXT() {
            #expect(
                Ignite.BlendOp.hslSaturation_EXT.rawValue == CVulkan.VK_BLEND_OP_HSL_SATURATION_EXT.rawValue
            )
        }

        @Test("Validate hslColor_EXT")
        public func validate_hslColor_EXT() {
            #expect(
                Ignite.BlendOp.hslColor_EXT.rawValue == CVulkan.VK_BLEND_OP_HSL_COLOR_EXT.rawValue
            )
        }

        @Test("Validate hslLuminosity_EXT")
        public func validate_hslLuminosity_EXT() {
            #expect(
                Ignite.BlendOp.hslLuminosity_EXT.rawValue == CVulkan.VK_BLEND_OP_HSL_LUMINOSITY_EXT.rawValue
            )
        }

        @Test("Validate plus_EXT")
        public func validate_plus_EXT() {
            #expect(
                Ignite.BlendOp.plus_EXT.rawValue == CVulkan.VK_BLEND_OP_PLUS_EXT.rawValue
            )
        }

        @Test("Validate plusClamped_EXT")
        public func validate_plusClamped_EXT() {
            #expect(
                Ignite.BlendOp.plusClamped_EXT.rawValue == CVulkan.VK_BLEND_OP_PLUS_CLAMPED_EXT.rawValue
            )
        }

        @Test("Validate plusClampedAlpha_EXT")
        public func validate_plusClampedAlpha_EXT() {
            #expect(
                Ignite.BlendOp.plusClampedAlpha_EXT.rawValue == CVulkan.VK_BLEND_OP_PLUS_CLAMPED_ALPHA_EXT.rawValue
            )
        }

        @Test("Validate plusDarker_EXT")
        public func validate_plusDarker_EXT() {
            #expect(
                Ignite.BlendOp.plusDarker_EXT.rawValue == CVulkan.VK_BLEND_OP_PLUS_DARKER_EXT.rawValue
            )
        }

        @Test("Validate minus_EXT")
        public func validate_minus_EXT() {
            #expect(
                Ignite.BlendOp.minus_EXT.rawValue == CVulkan.VK_BLEND_OP_MINUS_EXT.rawValue
            )
        }

        @Test("Validate minusClamped_EXT")
        public func validate_minusClamped_EXT() {
            #expect(
                Ignite.BlendOp.minusClamped_EXT.rawValue == CVulkan.VK_BLEND_OP_MINUS_CLAMPED_EXT.rawValue
            )
        }

        @Test("Validate contrast_EXT")
        public func validate_contrast_EXT() {
            #expect(
                Ignite.BlendOp.contrast_EXT.rawValue == CVulkan.VK_BLEND_OP_CONTRAST_EXT.rawValue
            )
        }

        @Test("Validate invertOvg_EXT")
        public func validate_invertOvg_EXT() {
            #expect(
                Ignite.BlendOp.invertOvg_EXT.rawValue == CVulkan.VK_BLEND_OP_INVERT_OVG_EXT.rawValue
            )
        }

        @Test("Validate red_EXT")
        public func validate_red_EXT() {
            #expect(
                Ignite.BlendOp.red_EXT.rawValue == CVulkan.VK_BLEND_OP_RED_EXT.rawValue
            )
        }

        @Test("Validate green_EXT")
        public func validate_green_EXT() {
            #expect(
                Ignite.BlendOp.green_EXT.rawValue == CVulkan.VK_BLEND_OP_GREEN_EXT.rawValue
            )
        }

        @Test("Validate blue_EXT")
        public func validate_blue_EXT() {
            #expect(
                Ignite.BlendOp.blue_EXT.rawValue == CVulkan.VK_BLEND_OP_BLUE_EXT.rawValue
            )
        }
    }


    /// Tests for the BlendOverlapEXT enum.
    @Suite("BlendOverlapEXT")
    public struct BlendOverlapEXTTests {
        @Test("Validate uncorrelated_EXT")
        public func validate_uncorrelated_EXT() {
            #expect(
                Ignite.BlendOverlapEXT.uncorrelated_EXT.rawValue == CVulkan.VK_BLEND_OVERLAP_UNCORRELATED_EXT.rawValue
            )
        }

        @Test("Validate disjoint_EXT")
        public func validate_disjoint_EXT() {
            #expect(
                Ignite.BlendOverlapEXT.disjoint_EXT.rawValue == CVulkan.VK_BLEND_OVERLAP_DISJOINT_EXT.rawValue
            )
        }

        @Test("Validate conjoint_EXT")
        public func validate_conjoint_EXT() {
            #expect(
                Ignite.BlendOverlapEXT.conjoint_EXT.rawValue == CVulkan.VK_BLEND_OVERLAP_CONJOINT_EXT.rawValue
            )
        }
    }


    /// Tests for the BlockMatchWindowCompareModeQCOM enum.
    @Suite("BlockMatchWindowCompareModeQCOM")
    public struct BlockMatchWindowCompareModeQCOMTests {
        @Test("Validate min_QCOM")
        public func validate_min_QCOM() {
            #expect(
                Ignite.BlockMatchWindowCompareModeQCOM.min_QCOM.rawValue
                    == CVulkan.VK_BLOCK_MATCH_WINDOW_COMPARE_MODE_MIN_QCOM.rawValue
            )
        }

        @Test("Validate max_QCOM")
        public func validate_max_QCOM() {
            #expect(
                Ignite.BlockMatchWindowCompareModeQCOM.max_QCOM.rawValue
                    == CVulkan.VK_BLOCK_MATCH_WINDOW_COMPARE_MODE_MAX_QCOM.rawValue
            )
        }
    }


    /// Tests for the BorderColor enum.
    @Suite("BorderColor")
    public struct BorderColorTests {
        @Test("Validate floatTransparentBlack")
        public func validate_floatTransparentBlack() {
            #expect(
                Ignite.BorderColor.floatTransparentBlack.rawValue == CVulkan.VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK.rawValue
            )
        }

        @Test("Validate intTransparentBlack")
        public func validate_intTransparentBlack() {
            #expect(
                Ignite.BorderColor.intTransparentBlack.rawValue == CVulkan.VK_BORDER_COLOR_INT_TRANSPARENT_BLACK.rawValue
            )
        }

        @Test("Validate floatOpaqueBlack")
        public func validate_floatOpaqueBlack() {
            #expect(
                Ignite.BorderColor.floatOpaqueBlack.rawValue == CVulkan.VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK.rawValue
            )
        }

        @Test("Validate intOpaqueBlack")
        public func validate_intOpaqueBlack() {
            #expect(
                Ignite.BorderColor.intOpaqueBlack.rawValue == CVulkan.VK_BORDER_COLOR_INT_OPAQUE_BLACK.rawValue
            )
        }

        @Test("Validate floatOpaqueWhite")
        public func validate_floatOpaqueWhite() {
            #expect(
                Ignite.BorderColor.floatOpaqueWhite.rawValue == CVulkan.VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE.rawValue
            )
        }

        @Test("Validate intOpaqueWhite")
        public func validate_intOpaqueWhite() {
            #expect(
                Ignite.BorderColor.intOpaqueWhite.rawValue == CVulkan.VK_BORDER_COLOR_INT_OPAQUE_WHITE.rawValue
            )
        }

        @Test("Validate floatCustom_EXT")
        public func validate_floatCustom_EXT() {
            #expect(
                Ignite.BorderColor.floatCustom_EXT.rawValue == CVulkan.VK_BORDER_COLOR_FLOAT_CUSTOM_EXT.rawValue
            )
        }

        @Test("Validate intCustom_EXT")
        public func validate_intCustom_EXT() {
            #expect(
                Ignite.BorderColor.intCustom_EXT.rawValue == CVulkan.VK_BORDER_COLOR_INT_CUSTOM_EXT.rawValue
            )
        }
    }


    /// Tests for the BuildAccelerationStructureModeKHR enum.
    @Suite("BuildAccelerationStructureModeKHR")
    public struct BuildAccelerationStructureModeKHRTests {
        @Test("Validate build_KHR")
        public func validate_build_KHR() {
            #expect(
                Ignite.BuildAccelerationStructureModeKHR.build_KHR.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR.rawValue
            )
        }

        @Test("Validate update_KHR")
        public func validate_update_KHR() {
            #expect(
                Ignite.BuildAccelerationStructureModeKHR.update_KHR.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR.rawValue
            )
        }
    }


    /// Tests for the BuildMicromapModeEXT enum.
    @Suite("BuildMicromapModeEXT")
    public struct BuildMicromapModeEXTTests {
        @Test("Validate build_EXT")
        public func validate_build_EXT() {
            #expect(
                Ignite.BuildMicromapModeEXT.build_EXT.rawValue == CVulkan.VK_BUILD_MICROMAP_MODE_BUILD_EXT.rawValue
            )
        }
    }


    /// Tests for the ChromaLocation enum.
    @Suite("ChromaLocation")
    public struct ChromaLocationTests {
        @Test("Validate cositedEven")
        public func validate_cositedEven() {
            #expect(
                Ignite.ChromaLocation.cositedEven.rawValue == CVulkan.VK_CHROMA_LOCATION_COSITED_EVEN.rawValue
            )
        }

        @Test("Validate midpoint")
        public func validate_midpoint() {
            #expect(
                Ignite.ChromaLocation.midpoint.rawValue == CVulkan.VK_CHROMA_LOCATION_MIDPOINT.rawValue
            )
        }

        @Test("Validate cositedEven_KHR")
        public func validate_cositedEven_KHR() {
            #expect(
                Ignite.ChromaLocation.cositedEven_KHR.rawValue == CVulkan.VK_CHROMA_LOCATION_COSITED_EVEN_KHR.rawValue
            )
        }

        @Test("Validate midpoint_KHR")
        public func validate_midpoint_KHR() {
            #expect(
                Ignite.ChromaLocation.midpoint_KHR.rawValue == CVulkan.VK_CHROMA_LOCATION_MIDPOINT_KHR.rawValue
            )
        }
    }


    /// Tests for the ClusterAccelerationStructureOpModeNV enum.
    @Suite("ClusterAccelerationStructureOpModeNV")
    public struct ClusterAccelerationStructureOpModeNVTests {
        @Test("Validate implicitDestinations_NV")
        public func validate_implicitDestinations_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureOpModeNV.implicitDestinations_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_OP_MODE_IMPLICIT_DESTINATIONS_NV.rawValue
            )
        }

        @Test("Validate explicitDestinations_NV")
        public func validate_explicitDestinations_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureOpModeNV.explicitDestinations_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_OP_MODE_EXPLICIT_DESTINATIONS_NV.rawValue
            )
        }

        @Test("Validate computeSizes_NV")
        public func validate_computeSizes_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureOpModeNV.computeSizes_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_OP_MODE_COMPUTE_SIZES_NV.rawValue
            )
        }
    }


    /// Tests for the ClusterAccelerationStructureOpTypeNV enum.
    @Suite("ClusterAccelerationStructureOpTypeNV")
    public struct ClusterAccelerationStructureOpTypeNVTests {
        @Test("Validate moveObjects_NV")
        public func validate_moveObjects_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureOpTypeNV.moveObjects_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_OP_TYPE_MOVE_OBJECTS_NV.rawValue
            )
        }

        @Test("Validate buildClustersBottomLevel_NV")
        public func validate_buildClustersBottomLevel_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureOpTypeNV.buildClustersBottomLevel_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_OP_TYPE_BUILD_CLUSTERS_BOTTOM_LEVEL_NV.rawValue
            )
        }

        @Test("Validate buildTriangleCluster_NV")
        public func validate_buildTriangleCluster_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureOpTypeNV.buildTriangleCluster_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_OP_TYPE_BUILD_TRIANGLE_CLUSTER_NV.rawValue
            )
        }

        @Test("Validate buildTriangleClusterTemplate_NV")
        public func validate_buildTriangleClusterTemplate_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureOpTypeNV.buildTriangleClusterTemplate_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_OP_TYPE_BUILD_TRIANGLE_CLUSTER_TEMPLATE_NV.rawValue
            )
        }

        @Test("Validate instantiateTriangleCluster_NV")
        public func validate_instantiateTriangleCluster_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureOpTypeNV.instantiateTriangleCluster_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_OP_TYPE_INSTANTIATE_TRIANGLE_CLUSTER_NV.rawValue
            )
        }
    }


    /// Tests for the ClusterAccelerationStructureTypeNV enum.
    @Suite("ClusterAccelerationStructureTypeNV")
    public struct ClusterAccelerationStructureTypeNVTests {
        @Test("Validate clustersBottomLevel_NV")
        public func validate_clustersBottomLevel_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureTypeNV.clustersBottomLevel_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_TYPE_CLUSTERS_BOTTOM_LEVEL_NV.rawValue
            )
        }

        @Test("Validate triangleCluster_NV")
        public func validate_triangleCluster_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureTypeNV.triangleCluster_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_TYPE_TRIANGLE_CLUSTER_NV.rawValue
            )
        }

        @Test("Validate triangleClusterTemplate_NV")
        public func validate_triangleClusterTemplate_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureTypeNV.triangleClusterTemplate_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_TYPE_TRIANGLE_CLUSTER_TEMPLATE_NV.rawValue
            )
        }
    }


    /// Tests for the CoarseSampleOrderTypeNV enum.
    @Suite("CoarseSampleOrderTypeNV")
    public struct CoarseSampleOrderTypeNVTests {
        @Test("Validate default_NV")
        public func validate_default_NV() {
            #expect(
                Ignite.CoarseSampleOrderTypeNV.default_NV.rawValue == CVulkan.VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV.rawValue
            )
        }

        @Test("Validate custom_NV")
        public func validate_custom_NV() {
            #expect(
                Ignite.CoarseSampleOrderTypeNV.custom_NV.rawValue == CVulkan.VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV.rawValue
            )
        }

        @Test("Validate pixelMajor_NV")
        public func validate_pixelMajor_NV() {
            #expect(
                Ignite.CoarseSampleOrderTypeNV.pixelMajor_NV.rawValue
                    == CVulkan.VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV.rawValue
            )
        }

        @Test("Validate sampleMajor_NV")
        public func validate_sampleMajor_NV() {
            #expect(
                Ignite.CoarseSampleOrderTypeNV.sampleMajor_NV.rawValue
                    == CVulkan.VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV.rawValue
            )
        }
    }


    /// Tests for the ColorSpaceKHR enum.
    @Suite("ColorSpaceKHR")
    public struct ColorSpaceKHRTests {
        @Test("Validate srgbNonlinear_KHR")
        public func validate_srgbNonlinear_KHR() {
            #expect(
                Ignite.ColorSpaceKHR.srgbNonlinear_KHR.rawValue == CVulkan.VK_COLOR_SPACE_SRGB_NONLINEAR_KHR.rawValue
            )
        }

        @Test("Validate displayP3Nonlinear_EXT")
        public func validate_displayP3Nonlinear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.displayP3Nonlinear_EXT.rawValue
                    == CVulkan.VK_COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT.rawValue
            )
        }

        @Test("Validate extendedSrgbLinear_EXT")
        public func validate_extendedSrgbLinear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.extendedSrgbLinear_EXT.rawValue
                    == CVulkan.VK_COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT.rawValue
            )
        }

        @Test("Validate displayP3Linear_EXT")
        public func validate_displayP3Linear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.displayP3Linear_EXT.rawValue == CVulkan.VK_COLOR_SPACE_DISPLAY_P3_LINEAR_EXT.rawValue
            )
        }

        @Test("Validate dciP3Nonlinear_EXT")
        public func validate_dciP3Nonlinear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.dciP3Nonlinear_EXT.rawValue == CVulkan.VK_COLOR_SPACE_DCI_P3_NONLINEAR_EXT.rawValue
            )
        }

        @Test("Validate bt709Linear_EXT")
        public func validate_bt709Linear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.bt709Linear_EXT.rawValue == CVulkan.VK_COLOR_SPACE_BT709_LINEAR_EXT.rawValue
            )
        }

        @Test("Validate bt709Nonlinear_EXT")
        public func validate_bt709Nonlinear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.bt709Nonlinear_EXT.rawValue == CVulkan.VK_COLOR_SPACE_BT709_NONLINEAR_EXT.rawValue
            )
        }

        @Test("Validate bt2020Linear_EXT")
        public func validate_bt2020Linear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.bt2020Linear_EXT.rawValue == CVulkan.VK_COLOR_SPACE_BT2020_LINEAR_EXT.rawValue
            )
        }

        @Test("Validate hdr10St2084_EXT")
        public func validate_hdr10St2084_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.hdr10St2084_EXT.rawValue == CVulkan.VK_COLOR_SPACE_HDR10_ST2084_EXT.rawValue
            )
        }

        @Test("Validate dolbyvision_EXT")
        public func validate_dolbyvision_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.dolbyvision_EXT.rawValue == CVulkan.VK_COLOR_SPACE_DOLBYVISION_EXT.rawValue
            )
        }

        @Test("Validate hdr10Hlg_EXT")
        public func validate_hdr10Hlg_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.hdr10Hlg_EXT.rawValue == CVulkan.VK_COLOR_SPACE_HDR10_HLG_EXT.rawValue
            )
        }

        @Test("Validate adobergbLinear_EXT")
        public func validate_adobergbLinear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.adobergbLinear_EXT.rawValue == CVulkan.VK_COLOR_SPACE_ADOBERGB_LINEAR_EXT.rawValue
            )
        }

        @Test("Validate adobergbNonlinear_EXT")
        public func validate_adobergbNonlinear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.adobergbNonlinear_EXT.rawValue == CVulkan.VK_COLOR_SPACE_ADOBERGB_NONLINEAR_EXT.rawValue
            )
        }

        @Test("Validate passThrough_EXT")
        public func validate_passThrough_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.passThrough_EXT.rawValue == CVulkan.VK_COLOR_SPACE_PASS_THROUGH_EXT.rawValue
            )
        }

        @Test("Validate extendedSrgbNonlinear_EXT")
        public func validate_extendedSrgbNonlinear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.extendedSrgbNonlinear_EXT.rawValue
                    == CVulkan.VK_COLOR_SPACE_EXTENDED_SRGB_NONLINEAR_EXT.rawValue
            )
        }

        @Test("Validate displayNative_AMD")
        public func validate_displayNative_AMD() {
            #expect(
                Ignite.ColorSpaceKHR.displayNative_AMD.rawValue == CVulkan.VK_COLOR_SPACE_DISPLAY_NATIVE_AMD.rawValue
            )
        }

        @Test("Validate spaceSrgbNonlinear_KHR")
        public func validate_spaceSrgbNonlinear_KHR() {
            #expect(
                Ignite.ColorSpaceKHR.spaceSrgbNonlinear_KHR.rawValue == CVulkan.VK_COLORSPACE_SRGB_NONLINEAR_KHR.rawValue
            )
        }

        @Test("Validate dciP3Linear_EXT")
        public func validate_dciP3Linear_EXT() {
            #expect(
                Ignite.ColorSpaceKHR.dciP3Linear_EXT.rawValue == CVulkan.VK_COLOR_SPACE_DCI_P3_LINEAR_EXT.rawValue
            )
        }
    }


    /// Tests for the CommandBufferLevel enum.
    @Suite("CommandBufferLevel")
    public struct CommandBufferLevelTests {
        @Test("Validate primary")
        public func validate_primary() {
            #expect(
                Ignite.CommandBufferLevel.primary.rawValue == CVulkan.VK_COMMAND_BUFFER_LEVEL_PRIMARY.rawValue
            )
        }

        @Test("Validate secondary")
        public func validate_secondary() {
            #expect(
                Ignite.CommandBufferLevel.secondary.rawValue == CVulkan.VK_COMMAND_BUFFER_LEVEL_SECONDARY.rawValue
            )
        }
    }


    /// Tests for the CompareOp enum.
    @Suite("CompareOp")
    public struct CompareOpTests {
        @Test("Validate never")
        public func validate_never() {
            #expect(
                Ignite.CompareOp.never.rawValue == CVulkan.VK_COMPARE_OP_NEVER.rawValue
            )
        }

        @Test("Validate less")
        public func validate_less() {
            #expect(
                Ignite.CompareOp.less.rawValue == CVulkan.VK_COMPARE_OP_LESS.rawValue
            )
        }

        @Test("Validate equal")
        public func validate_equal() {
            #expect(
                Ignite.CompareOp.equal.rawValue == CVulkan.VK_COMPARE_OP_EQUAL.rawValue
            )
        }

        @Test("Validate lessOrEqual")
        public func validate_lessOrEqual() {
            #expect(
                Ignite.CompareOp.lessOrEqual.rawValue == CVulkan.VK_COMPARE_OP_LESS_OR_EQUAL.rawValue
            )
        }

        @Test("Validate greater")
        public func validate_greater() {
            #expect(
                Ignite.CompareOp.greater.rawValue == CVulkan.VK_COMPARE_OP_GREATER.rawValue
            )
        }

        @Test("Validate notEqual")
        public func validate_notEqual() {
            #expect(
                Ignite.CompareOp.notEqual.rawValue == CVulkan.VK_COMPARE_OP_NOT_EQUAL.rawValue
            )
        }

        @Test("Validate greaterOrEqual")
        public func validate_greaterOrEqual() {
            #expect(
                Ignite.CompareOp.greaterOrEqual.rawValue == CVulkan.VK_COMPARE_OP_GREATER_OR_EQUAL.rawValue
            )
        }

        @Test("Validate always")
        public func validate_always() {
            #expect(
                Ignite.CompareOp.always.rawValue == CVulkan.VK_COMPARE_OP_ALWAYS.rawValue
            )
        }
    }


    /// Tests for the ComponentSwizzle enum.
    @Suite("ComponentSwizzle")
    public struct ComponentSwizzleTests {
        @Test("Validate identity")
        public func validate_identity() {
            #expect(
                Ignite.ComponentSwizzle.identity.rawValue == CVulkan.VK_COMPONENT_SWIZZLE_IDENTITY.rawValue
            )
        }

        @Test("Validate zero")
        public func validate_zero() {
            #expect(
                Ignite.ComponentSwizzle.zero.rawValue == CVulkan.VK_COMPONENT_SWIZZLE_ZERO.rawValue
            )
        }

        @Test("Validate one")
        public func validate_one() {
            #expect(
                Ignite.ComponentSwizzle.one.rawValue == CVulkan.VK_COMPONENT_SWIZZLE_ONE.rawValue
            )
        }

        @Test("Validate r")
        public func validate_r() {
            #expect(
                Ignite.ComponentSwizzle.r.rawValue == CVulkan.VK_COMPONENT_SWIZZLE_R.rawValue
            )
        }

        @Test("Validate g")
        public func validate_g() {
            #expect(
                Ignite.ComponentSwizzle.g.rawValue == CVulkan.VK_COMPONENT_SWIZZLE_G.rawValue
            )
        }

        @Test("Validate b")
        public func validate_b() {
            #expect(
                Ignite.ComponentSwizzle.b.rawValue == CVulkan.VK_COMPONENT_SWIZZLE_B.rawValue
            )
        }

        @Test("Validate a")
        public func validate_a() {
            #expect(
                Ignite.ComponentSwizzle.a.rawValue == CVulkan.VK_COMPONENT_SWIZZLE_A.rawValue
            )
        }
    }


    /// Tests for the ComponentTypeKHR enum.
    @Suite("ComponentTypeKHR")
    public struct ComponentTypeKHRTests {
        @Test("Validate float16_KHR")
        public func validate_float16_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.float16_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT16_KHR.rawValue
            )
        }

        @Test("Validate float32_KHR")
        public func validate_float32_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.float32_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT32_KHR.rawValue
            )
        }

        @Test("Validate float64_KHR")
        public func validate_float64_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.float64_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT64_KHR.rawValue
            )
        }

        @Test("Validate sint8_KHR")
        public func validate_sint8_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.sint8_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_SINT8_KHR.rawValue
            )
        }

        @Test("Validate sint16_KHR")
        public func validate_sint16_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.sint16_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_SINT16_KHR.rawValue
            )
        }

        @Test("Validate sint32_KHR")
        public func validate_sint32_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.sint32_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_SINT32_KHR.rawValue
            )
        }

        @Test("Validate sint64_KHR")
        public func validate_sint64_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.sint64_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_SINT64_KHR.rawValue
            )
        }

        @Test("Validate uint8_KHR")
        public func validate_uint8_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.uint8_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_UINT8_KHR.rawValue
            )
        }

        @Test("Validate uint16_KHR")
        public func validate_uint16_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.uint16_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_UINT16_KHR.rawValue
            )
        }

        @Test("Validate uint32_KHR")
        public func validate_uint32_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.uint32_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_UINT32_KHR.rawValue
            )
        }

        @Test("Validate uint64_KHR")
        public func validate_uint64_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.uint64_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_UINT64_KHR.rawValue
            )
        }

        @Test("Validate bfloat16_KHR")
        public func validate_bfloat16_KHR() {
            #expect(
                Ignite.ComponentTypeKHR.bfloat16_KHR.rawValue == CVulkan.VK_COMPONENT_TYPE_BFLOAT16_KHR.rawValue
            )
        }

        @Test("Validate sint8Packed_NV")
        public func validate_sint8Packed_NV() {
            #expect(
                Ignite.ComponentTypeKHR.sint8Packed_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_SINT8_PACKED_NV.rawValue
            )
        }

        @Test("Validate uint8Packed_NV")
        public func validate_uint8Packed_NV() {
            #expect(
                Ignite.ComponentTypeKHR.uint8Packed_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_UINT8_PACKED_NV.rawValue
            )
        }

        @Test("Validate float8E4m3_EXT")
        public func validate_float8E4m3_EXT() {
            #expect(
                Ignite.ComponentTypeKHR.float8E4m3_EXT.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT8_E4M3_EXT.rawValue
            )
        }

        @Test("Validate float8E5m2_EXT")
        public func validate_float8E5m2_EXT() {
            #expect(
                Ignite.ComponentTypeKHR.float8E5m2_EXT.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT8_E5M2_EXT.rawValue
            )
        }

        @Test("Validate float16_NV")
        public func validate_float16_NV() {
            #expect(
                Ignite.ComponentTypeKHR.float16_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT16_NV.rawValue
            )
        }

        @Test("Validate float32_NV")
        public func validate_float32_NV() {
            #expect(
                Ignite.ComponentTypeKHR.float32_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT32_NV.rawValue
            )
        }

        @Test("Validate float64_NV")
        public func validate_float64_NV() {
            #expect(
                Ignite.ComponentTypeKHR.float64_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT64_NV.rawValue
            )
        }

        @Test("Validate sint8_NV")
        public func validate_sint8_NV() {
            #expect(
                Ignite.ComponentTypeKHR.sint8_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_SINT8_NV.rawValue
            )
        }

        @Test("Validate sint16_NV")
        public func validate_sint16_NV() {
            #expect(
                Ignite.ComponentTypeKHR.sint16_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_SINT16_NV.rawValue
            )
        }

        @Test("Validate sint32_NV")
        public func validate_sint32_NV() {
            #expect(
                Ignite.ComponentTypeKHR.sint32_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_SINT32_NV.rawValue
            )
        }

        @Test("Validate sint64_NV")
        public func validate_sint64_NV() {
            #expect(
                Ignite.ComponentTypeKHR.sint64_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_SINT64_NV.rawValue
            )
        }

        @Test("Validate uint8_NV")
        public func validate_uint8_NV() {
            #expect(
                Ignite.ComponentTypeKHR.uint8_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_UINT8_NV.rawValue
            )
        }

        @Test("Validate uint16_NV")
        public func validate_uint16_NV() {
            #expect(
                Ignite.ComponentTypeKHR.uint16_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_UINT16_NV.rawValue
            )
        }

        @Test("Validate uint32_NV")
        public func validate_uint32_NV() {
            #expect(
                Ignite.ComponentTypeKHR.uint32_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_UINT32_NV.rawValue
            )
        }

        @Test("Validate uint64_NV")
        public func validate_uint64_NV() {
            #expect(
                Ignite.ComponentTypeKHR.uint64_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_UINT64_NV.rawValue
            )
        }

        @Test("Validate floatE4m3_NV")
        public func validate_floatE4m3_NV() {
            #expect(
                Ignite.ComponentTypeKHR.floatE4m3_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT_E4M3_NV.rawValue
            )
        }

        @Test("Validate floatE5m2_NV")
        public func validate_floatE5m2_NV() {
            #expect(
                Ignite.ComponentTypeKHR.floatE5m2_NV.rawValue == CVulkan.VK_COMPONENT_TYPE_FLOAT_E5M2_NV.rawValue
            )
        }
    }


    /// Tests for the ConservativeRasterizationModeEXT enum.
    @Suite("ConservativeRasterizationModeEXT")
    public struct ConservativeRasterizationModeEXTTests {
        @Test("Validate disabled_EXT")
        public func validate_disabled_EXT() {
            #expect(
                Ignite.ConservativeRasterizationModeEXT.disabled_EXT.rawValue
                    == CVulkan.VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT.rawValue
            )
        }

        @Test("Validate overestimate_EXT")
        public func validate_overestimate_EXT() {
            #expect(
                Ignite.ConservativeRasterizationModeEXT.overestimate_EXT.rawValue
                    == CVulkan.VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT.rawValue
            )
        }

        @Test("Validate underestimate_EXT")
        public func validate_underestimate_EXT() {
            #expect(
                Ignite.ConservativeRasterizationModeEXT.underestimate_EXT.rawValue
                    == CVulkan.VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT.rawValue
            )
        }
    }


    /// Tests for the CooperativeVectorMatrixLayoutNV enum.
    @Suite("CooperativeVectorMatrixLayoutNV")
    public struct CooperativeVectorMatrixLayoutNVTests {
        @Test("Validate rowMajor_NV")
        public func validate_rowMajor_NV() {
            #expect(
                Ignite.CooperativeVectorMatrixLayoutNV.rowMajor_NV.rawValue
                    == CVulkan.VK_COOPERATIVE_VECTOR_MATRIX_LAYOUT_ROW_MAJOR_NV.rawValue
            )
        }

        @Test("Validate columnMajor_NV")
        public func validate_columnMajor_NV() {
            #expect(
                Ignite.CooperativeVectorMatrixLayoutNV.columnMajor_NV.rawValue
                    == CVulkan.VK_COOPERATIVE_VECTOR_MATRIX_LAYOUT_COLUMN_MAJOR_NV.rawValue
            )
        }

        @Test("Validate inferencingOptimal_NV")
        public func validate_inferencingOptimal_NV() {
            #expect(
                Ignite.CooperativeVectorMatrixLayoutNV.inferencingOptimal_NV.rawValue
                    == CVulkan.VK_COOPERATIVE_VECTOR_MATRIX_LAYOUT_INFERENCING_OPTIMAL_NV.rawValue
            )
        }

        @Test("Validate trainingOptimal_NV")
        public func validate_trainingOptimal_NV() {
            #expect(
                Ignite.CooperativeVectorMatrixLayoutNV.trainingOptimal_NV.rawValue
                    == CVulkan.VK_COOPERATIVE_VECTOR_MATRIX_LAYOUT_TRAINING_OPTIMAL_NV.rawValue
            )
        }
    }


    /// Tests for the CopyAccelerationStructureModeKHR enum.
    @Suite("CopyAccelerationStructureModeKHR")
    public struct CopyAccelerationStructureModeKHRTests {
        @Test("Validate clone_KHR")
        public func validate_clone_KHR() {
            #expect(
                Ignite.CopyAccelerationStructureModeKHR.clone_KHR.rawValue
                    == CVulkan.VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR.rawValue
            )
        }

        @Test("Validate compact_KHR")
        public func validate_compact_KHR() {
            #expect(
                Ignite.CopyAccelerationStructureModeKHR.compact_KHR.rawValue
                    == CVulkan.VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR.rawValue
            )
        }

        @Test("Validate serialize_KHR")
        public func validate_serialize_KHR() {
            #expect(
                Ignite.CopyAccelerationStructureModeKHR.serialize_KHR.rawValue
                    == CVulkan.VK_COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR.rawValue
            )
        }

        @Test("Validate deserialize_KHR")
        public func validate_deserialize_KHR() {
            #expect(
                Ignite.CopyAccelerationStructureModeKHR.deserialize_KHR.rawValue
                    == CVulkan.VK_COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR.rawValue
            )
        }

        @Test("Validate clone_NV")
        public func validate_clone_NV() {
            #expect(
                Ignite.CopyAccelerationStructureModeKHR.clone_NV.rawValue
                    == CVulkan.VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_NV.rawValue
            )
        }

        @Test("Validate compact_NV")
        public func validate_compact_NV() {
            #expect(
                Ignite.CopyAccelerationStructureModeKHR.compact_NV.rawValue
                    == CVulkan.VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_NV.rawValue
            )
        }
    }


    /// Tests for the CopyMicromapModeEXT enum.
    @Suite("CopyMicromapModeEXT")
    public struct CopyMicromapModeEXTTests {
        @Test("Validate clone_EXT")
        public func validate_clone_EXT() {
            #expect(
                Ignite.CopyMicromapModeEXT.clone_EXT.rawValue == CVulkan.VK_COPY_MICROMAP_MODE_CLONE_EXT.rawValue
            )
        }

        @Test("Validate serialize_EXT")
        public func validate_serialize_EXT() {
            #expect(
                Ignite.CopyMicromapModeEXT.serialize_EXT.rawValue == CVulkan.VK_COPY_MICROMAP_MODE_SERIALIZE_EXT.rawValue
            )
        }

        @Test("Validate deserialize_EXT")
        public func validate_deserialize_EXT() {
            #expect(
                Ignite.CopyMicromapModeEXT.deserialize_EXT.rawValue == CVulkan.VK_COPY_MICROMAP_MODE_DESERIALIZE_EXT.rawValue
            )
        }

        @Test("Validate compact_EXT")
        public func validate_compact_EXT() {
            #expect(
                Ignite.CopyMicromapModeEXT.compact_EXT.rawValue == CVulkan.VK_COPY_MICROMAP_MODE_COMPACT_EXT.rawValue
            )
        }
    }


    /// Tests for the CoverageModulationModeNV enum.
    @Suite("CoverageModulationModeNV")
    public struct CoverageModulationModeNVTests {
        @Test("Validate none_NV")
        public func validate_none_NV() {
            #expect(
                Ignite.CoverageModulationModeNV.none_NV.rawValue == CVulkan.VK_COVERAGE_MODULATION_MODE_NONE_NV.rawValue
            )
        }

        @Test("Validate rgb_NV")
        public func validate_rgb_NV() {
            #expect(
                Ignite.CoverageModulationModeNV.rgb_NV.rawValue == CVulkan.VK_COVERAGE_MODULATION_MODE_RGB_NV.rawValue
            )
        }

        @Test("Validate alpha_NV")
        public func validate_alpha_NV() {
            #expect(
                Ignite.CoverageModulationModeNV.alpha_NV.rawValue == CVulkan.VK_COVERAGE_MODULATION_MODE_ALPHA_NV.rawValue
            )
        }

        @Test("Validate rgba_NV")
        public func validate_rgba_NV() {
            #expect(
                Ignite.CoverageModulationModeNV.rgba_NV.rawValue == CVulkan.VK_COVERAGE_MODULATION_MODE_RGBA_NV.rawValue
            )
        }
    }


    /// Tests for the CoverageReductionModeNV enum.
    @Suite("CoverageReductionModeNV")
    public struct CoverageReductionModeNVTests {
        @Test("Validate merge_NV")
        public func validate_merge_NV() {
            #expect(
                Ignite.CoverageReductionModeNV.merge_NV.rawValue == CVulkan.VK_COVERAGE_REDUCTION_MODE_MERGE_NV.rawValue
            )
        }

        @Test("Validate truncate_NV")
        public func validate_truncate_NV() {
            #expect(
                Ignite.CoverageReductionModeNV.truncate_NV.rawValue
                    == CVulkan.VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV.rawValue
            )
        }
    }


    /// Tests for the CubicFilterWeightsQCOM enum.
    @Suite("CubicFilterWeightsQCOM")
    public struct CubicFilterWeightsQCOMTests {
        @Test("Validate catmullRom_QCOM")
        public func validate_catmullRom_QCOM() {
            #expect(
                Ignite.CubicFilterWeightsQCOM.catmullRom_QCOM.rawValue
                    == CVulkan.VK_CUBIC_FILTER_WEIGHTS_CATMULL_ROM_QCOM.rawValue
            )
        }

        @Test("Validate zeroTangentCardinal_QCOM")
        public func validate_zeroTangentCardinal_QCOM() {
            #expect(
                Ignite.CubicFilterWeightsQCOM.zeroTangentCardinal_QCOM.rawValue
                    == CVulkan.VK_CUBIC_FILTER_WEIGHTS_ZERO_TANGENT_CARDINAL_QCOM.rawValue
            )
        }

        @Test("Validate bSpline_QCOM")
        public func validate_bSpline_QCOM() {
            #expect(
                Ignite.CubicFilterWeightsQCOM.bSpline_QCOM.rawValue == CVulkan.VK_CUBIC_FILTER_WEIGHTS_B_SPLINE_QCOM.rawValue
            )
        }

        @Test("Validate mitchellNetravali_QCOM")
        public func validate_mitchellNetravali_QCOM() {
            #expect(
                Ignite.CubicFilterWeightsQCOM.mitchellNetravali_QCOM.rawValue
                    == CVulkan.VK_CUBIC_FILTER_WEIGHTS_MITCHELL_NETRAVALI_QCOM.rawValue
            )
        }
    }


    /// Tests for the DebugReportObjectTypeEXT enum.
    @Suite("DebugReportObjectTypeEXT")
    public struct DebugReportObjectTypeEXTTests {
        @Test("Validate unknown_EXT")
        public func validate_unknown_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.unknown_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT.rawValue
            )
        }

        @Test("Validate instance_EXT")
        public func validate_instance_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.instance_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT.rawValue
            )
        }

        @Test("Validate physicalDevice_EXT")
        public func validate_physicalDevice_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.physicalDevice_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT.rawValue
            )
        }

        @Test("Validate device_EXT")
        public func validate_device_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.device_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT.rawValue
            )
        }

        @Test("Validate queue_EXT")
        public func validate_queue_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.queue_EXT.rawValue == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT.rawValue
            )
        }

        @Test("Validate semaphore_EXT")
        public func validate_semaphore_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.semaphore_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT.rawValue
            )
        }

        @Test("Validate commandBuffer_EXT")
        public func validate_commandBuffer_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.commandBuffer_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT.rawValue
            )
        }

        @Test("Validate fence_EXT")
        public func validate_fence_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.fence_EXT.rawValue == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT.rawValue
            )
        }

        @Test("Validate deviceMemory_EXT")
        public func validate_deviceMemory_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.deviceMemory_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT.rawValue
            )
        }

        @Test("Validate buffer_EXT")
        public func validate_buffer_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.buffer_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT.rawValue
            )
        }

        @Test("Validate image_EXT")
        public func validate_image_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.image_EXT.rawValue == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT.rawValue
            )
        }

        @Test("Validate event_EXT")
        public func validate_event_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.event_EXT.rawValue == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT.rawValue
            )
        }

        @Test("Validate queryPool_EXT")
        public func validate_queryPool_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.queryPool_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT.rawValue
            )
        }

        @Test("Validate bufferView_EXT")
        public func validate_bufferView_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.bufferView_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT.rawValue
            )
        }

        @Test("Validate imageView_EXT")
        public func validate_imageView_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.imageView_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT.rawValue
            )
        }

        @Test("Validate shaderModule_EXT")
        public func validate_shaderModule_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.shaderModule_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT.rawValue
            )
        }

        @Test("Validate pipelineCache_EXT")
        public func validate_pipelineCache_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.pipelineCache_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT.rawValue
            )
        }

        @Test("Validate pipelineLayout_EXT")
        public func validate_pipelineLayout_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.pipelineLayout_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT.rawValue
            )
        }

        @Test("Validate renderPass_EXT")
        public func validate_renderPass_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.renderPass_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT.rawValue
            )
        }

        @Test("Validate pipeline_EXT")
        public func validate_pipeline_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.pipeline_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT.rawValue
            )
        }

        @Test("Validate descriptorSetLayout_EXT")
        public func validate_descriptorSetLayout_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.descriptorSetLayout_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT.rawValue
            )
        }

        @Test("Validate sampler_EXT")
        public func validate_sampler_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.sampler_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT.rawValue
            )
        }

        @Test("Validate descriptorPool_EXT")
        public func validate_descriptorPool_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.descriptorPool_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT.rawValue
            )
        }

        @Test("Validate descriptorSet_EXT")
        public func validate_descriptorSet_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.descriptorSet_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT.rawValue
            )
        }

        @Test("Validate framebuffer_EXT")
        public func validate_framebuffer_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.framebuffer_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT.rawValue
            )
        }

        @Test("Validate commandPool_EXT")
        public func validate_commandPool_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.commandPool_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT.rawValue
            )
        }

        @Test("Validate surfaceKhr_EXT")
        public func validate_surfaceKhr_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.surfaceKhr_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT.rawValue
            )
        }

        @Test("Validate swapchainKhr_EXT")
        public func validate_swapchainKhr_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.swapchainKhr_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT.rawValue
            )
        }

        @Test("Validate debugReportCallbackExt_EXT")
        public func validate_debugReportCallbackExt_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.debugReportCallbackExt_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT.rawValue
            )
        }

        @Test("Validate displayKhr_EXT")
        public func validate_displayKhr_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.displayKhr_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT.rawValue
            )
        }

        @Test("Validate displayModeKhr_EXT")
        public func validate_displayModeKhr_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.displayModeKhr_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT.rawValue
            )
        }

        @Test("Validate validationCacheExt_EXT")
        public func validate_validationCacheExt_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.validationCacheExt_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversion_EXT")
        public func validate_samplerYcbcrConversion_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.samplerYcbcrConversion_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT.rawValue
            )
        }

        @Test("Validate descriptorUpdateTemplate_EXT")
        public func validate_descriptorUpdateTemplate_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.descriptorUpdateTemplate_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT.rawValue
            )
        }

        @Test("Validate cuModuleNvx_EXT")
        public func validate_cuModuleNvx_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.cuModuleNvx_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_CU_MODULE_NVX_EXT.rawValue
            )
        }

        @Test("Validate cuFunctionNvx_EXT")
        public func validate_cuFunctionNvx_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.cuFunctionNvx_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_CU_FUNCTION_NVX_EXT.rawValue
            )
        }

        @Test("Validate accelerationStructureKhr_EXT")
        public func validate_accelerationStructureKhr_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.accelerationStructureKhr_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR_EXT.rawValue
            )
        }

        @Test("Validate accelerationStructureNv_EXT")
        public func validate_accelerationStructureNv_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.accelerationStructureNv_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV_EXT.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate cudaModuleNv_EXT")
            public func validate_cudaModuleNv_EXT() {
                #expect(
                    Ignite.DebugReportObjectTypeEXT.cudaModuleNv_EXT.rawValue
                        == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_CUDA_MODULE_NV_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate cudaModuleNv_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_cudaModuleNv_EXT() {}
        #endif

        #if EnableProvisional
            @Test("Validate cudaFunctionNv_EXT")
            public func validate_cudaFunctionNv_EXT() {
                #expect(
                    Ignite.DebugReportObjectTypeEXT.cudaFunctionNv_EXT.rawValue
                        == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_CUDA_FUNCTION_NV_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate cudaFunctionNv_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_cudaFunctionNv_EXT() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate bufferCollectionFuchsia_EXT")
            public func validate_bufferCollectionFuchsia_EXT() {
                #expect(
                    Ignite.DebugReportObjectTypeEXT.bufferCollectionFuchsia_EXT.rawValue
                        == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate bufferCollectionFuchsia_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_bufferCollectionFuchsia_EXT() {}
        #endif

        @Test("Validate debugReport_EXT")
        public func validate_debugReport_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.debugReport_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT.rawValue
            )
        }

        @Test("Validate validationCache_EXT")
        public func validate_validationCache_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.validationCache_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT.rawValue
            )
        }

        @Test("Validate descriptorUpdateTemplateKhr_EXT")
        public func validate_descriptorUpdateTemplateKhr_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.descriptorUpdateTemplateKhr_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversionKhr_EXT")
        public func validate_samplerYcbcrConversionKhr_EXT() {
            #expect(
                Ignite.DebugReportObjectTypeEXT.samplerYcbcrConversionKhr_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT.rawValue
            )
        }
    }


    /// Tests for the DefaultVertexAttributeValueKHR enum.
    @Suite("DefaultVertexAttributeValueKHR")
    public struct DefaultVertexAttributeValueKHRTests {
        @Test("Validate zeroZeroZeroZero_KHR")
        public func validate_zeroZeroZeroZero_KHR() {
            #expect(
                Ignite.DefaultVertexAttributeValueKHR.zeroZeroZeroZero_KHR.rawValue
                    == CVulkan.VK_DEFAULT_VERTEX_ATTRIBUTE_VALUE_ZERO_ZERO_ZERO_ZERO_KHR.rawValue
            )
        }

        @Test("Validate zeroZeroZeroOne_KHR")
        public func validate_zeroZeroZeroOne_KHR() {
            #expect(
                Ignite.DefaultVertexAttributeValueKHR.zeroZeroZeroOne_KHR.rawValue
                    == CVulkan.VK_DEFAULT_VERTEX_ATTRIBUTE_VALUE_ZERO_ZERO_ZERO_ONE_KHR.rawValue
            )
        }
    }


    /// Tests for the DepthBiasRepresentationEXT enum.
    @Suite("DepthBiasRepresentationEXT")
    public struct DepthBiasRepresentationEXTTests {
        @Test("Validate leastRepresentableValueFormat_EXT")
        public func validate_leastRepresentableValueFormat_EXT() {
            #expect(
                Ignite.DepthBiasRepresentationEXT.leastRepresentableValueFormat_EXT.rawValue
                    == CVulkan.VK_DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORMAT_EXT.rawValue
            )
        }

        @Test("Validate leastRepresentableValueForceUnorm_EXT")
        public func validate_leastRepresentableValueForceUnorm_EXT() {
            #expect(
                Ignite.DepthBiasRepresentationEXT.leastRepresentableValueForceUnorm_EXT.rawValue
                    == CVulkan.VK_DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORCE_UNORM_EXT.rawValue
            )
        }

        @Test("Validate float_EXT")
        public func validate_float_EXT() {
            #expect(
                Ignite.DepthBiasRepresentationEXT.float_EXT.rawValue
                    == CVulkan.VK_DEPTH_BIAS_REPRESENTATION_FLOAT_EXT.rawValue
            )
        }
    }


    /// Tests for the DepthClampModeEXT enum.
    @Suite("DepthClampModeEXT")
    public struct DepthClampModeEXTTests {
        @Test("Validate viewportRange_EXT")
        public func validate_viewportRange_EXT() {
            #expect(
                Ignite.DepthClampModeEXT.viewportRange_EXT.rawValue
                    == CVulkan.VK_DEPTH_CLAMP_MODE_VIEWPORT_RANGE_EXT.rawValue
            )
        }

        @Test("Validate userDefinedRange_EXT")
        public func validate_userDefinedRange_EXT() {
            #expect(
                Ignite.DepthClampModeEXT.userDefinedRange_EXT.rawValue
                    == CVulkan.VK_DEPTH_CLAMP_MODE_USER_DEFINED_RANGE_EXT.rawValue
            )
        }
    }


    /// Tests for the DescriptorType enum.
    @Suite("DescriptorType")
    public struct DescriptorTypeTests {
        @Test("Validate sampler")
        public func validate_sampler() {
            #expect(
                Ignite.DescriptorType.sampler.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_SAMPLER.rawValue
            )
        }

        @Test("Validate combinedImageSampler")
        public func validate_combinedImageSampler() {
            #expect(
                Ignite.DescriptorType.combinedImageSampler.rawValue
                    == CVulkan.VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER.rawValue
            )
        }

        @Test("Validate sampledImage")
        public func validate_sampledImage() {
            #expect(
                Ignite.DescriptorType.sampledImage.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE.rawValue
            )
        }

        @Test("Validate storageImage")
        public func validate_storageImage() {
            #expect(
                Ignite.DescriptorType.storageImage.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_STORAGE_IMAGE.rawValue
            )
        }

        @Test("Validate uniformTexelBuffer")
        public func validate_uniformTexelBuffer() {
            #expect(
                Ignite.DescriptorType.uniformTexelBuffer.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER.rawValue
            )
        }

        @Test("Validate storageTexelBuffer")
        public func validate_storageTexelBuffer() {
            #expect(
                Ignite.DescriptorType.storageTexelBuffer.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER.rawValue
            )
        }

        @Test("Validate uniformBuffer")
        public func validate_uniformBuffer() {
            #expect(
                Ignite.DescriptorType.uniformBuffer.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER.rawValue
            )
        }

        @Test("Validate storageBuffer")
        public func validate_storageBuffer() {
            #expect(
                Ignite.DescriptorType.storageBuffer.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_STORAGE_BUFFER.rawValue
            )
        }

        @Test("Validate uniformBufferDynamic")
        public func validate_uniformBufferDynamic() {
            #expect(
                Ignite.DescriptorType.uniformBufferDynamic.rawValue
                    == CVulkan.VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC.rawValue
            )
        }

        @Test("Validate storageBufferDynamic")
        public func validate_storageBufferDynamic() {
            #expect(
                Ignite.DescriptorType.storageBufferDynamic.rawValue
                    == CVulkan.VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC.rawValue
            )
        }

        @Test("Validate inputAttachment")
        public func validate_inputAttachment() {
            #expect(
                Ignite.DescriptorType.inputAttachment.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT.rawValue
            )
        }

        @Test("Validate inlineUniformBlock")
        public func validate_inlineUniformBlock() {
            #expect(
                Ignite.DescriptorType.inlineUniformBlock.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK.rawValue
            )
        }

        @Test("Validate accelerationStructure_KHR")
        public func validate_accelerationStructure_KHR() {
            #expect(
                Ignite.DescriptorType.accelerationStructure_KHR.rawValue
                    == CVulkan.VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructure_NV")
        public func validate_accelerationStructure_NV() {
            #expect(
                Ignite.DescriptorType.accelerationStructure_NV.rawValue
                    == CVulkan.VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV.rawValue
            )
        }

        @Test("Validate sampleWeightImage_QCOM")
        public func validate_sampleWeightImage_QCOM() {
            #expect(
                Ignite.DescriptorType.sampleWeightImage_QCOM.rawValue
                    == CVulkan.VK_DESCRIPTOR_TYPE_SAMPLE_WEIGHT_IMAGE_QCOM.rawValue
            )
        }

        @Test("Validate blockMatchImage_QCOM")
        public func validate_blockMatchImage_QCOM() {
            #expect(
                Ignite.DescriptorType.blockMatchImage_QCOM.rawValue
                    == CVulkan.VK_DESCRIPTOR_TYPE_BLOCK_MATCH_IMAGE_QCOM.rawValue
            )
        }

        @Test("Validate tensor_ARM")
        public func validate_tensor_ARM() {
            #expect(
                Ignite.DescriptorType.tensor_ARM.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_TENSOR_ARM.rawValue
            )
        }

        @Test("Validate mutable_EXT")
        public func validate_mutable_EXT() {
            #expect(
                Ignite.DescriptorType.mutable_EXT.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_MUTABLE_EXT.rawValue
            )
        }

        @Test("Validate partitionedAccelerationStructure_NV")
        public func validate_partitionedAccelerationStructure_NV() {
            #expect(
                Ignite.DescriptorType.partitionedAccelerationStructure_NV.rawValue
                    == CVulkan.VK_DESCRIPTOR_TYPE_PARTITIONED_ACCELERATION_STRUCTURE_NV.rawValue
            )
        }

        @Test("Validate inlineUniformBlock_EXT")
        public func validate_inlineUniformBlock_EXT() {
            #expect(
                Ignite.DescriptorType.inlineUniformBlock_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate mutable_VALVE")
        public func validate_mutable_VALVE() {
            #expect(
                Ignite.DescriptorType.mutable_VALVE.rawValue == CVulkan.VK_DESCRIPTOR_TYPE_MUTABLE_VALVE.rawValue
            )
        }
    }


    /// Tests for the DescriptorUpdateTemplateType enum.
    @Suite("DescriptorUpdateTemplateType")
    public struct DescriptorUpdateTemplateTypeTests {
        @Test("Validate descriptorSet")
        public func validate_descriptorSet() {
            #expect(
                Ignite.DescriptorUpdateTemplateType.descriptorSet.rawValue
                    == CVulkan.VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET.rawValue
            )
        }

        @Test("Validate pushDescriptors")
        public func validate_pushDescriptors() {
            #expect(
                Ignite.DescriptorUpdateTemplateType.pushDescriptors.rawValue
                    == CVulkan.VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS.rawValue
            )
        }

        @Test("Validate pushDescriptors_KHR")
        public func validate_pushDescriptors_KHR() {
            #expect(
                Ignite.DescriptorUpdateTemplateType.pushDescriptors_KHR.rawValue
                    == CVulkan.VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR.rawValue
            )
        }

        @Test("Validate descriptorSet_KHR")
        public func validate_descriptorSet_KHR() {
            #expect(
                Ignite.DescriptorUpdateTemplateType.descriptorSet_KHR.rawValue
                    == CVulkan.VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR.rawValue
            )
        }
    }


    /// Tests for the DeviceAddressBindingTypeEXT enum.
    @Suite("DeviceAddressBindingTypeEXT")
    public struct DeviceAddressBindingTypeEXTTests {
        @Test("Validate bind_EXT")
        public func validate_bind_EXT() {
            #expect(
                Ignite.DeviceAddressBindingTypeEXT.bind_EXT.rawValue
                    == CVulkan.VK_DEVICE_ADDRESS_BINDING_TYPE_BIND_EXT.rawValue
            )
        }

        @Test("Validate unbind_EXT")
        public func validate_unbind_EXT() {
            #expect(
                Ignite.DeviceAddressBindingTypeEXT.unbind_EXT.rawValue
                    == CVulkan.VK_DEVICE_ADDRESS_BINDING_TYPE_UNBIND_EXT.rawValue
            )
        }
    }


    /// Tests for the DeviceEventTypeEXT enum.
    @Suite("DeviceEventTypeEXT")
    public struct DeviceEventTypeEXTTests {
        @Test("Validate displayHotplug_EXT")
        public func validate_displayHotplug_EXT() {
            #expect(
                Ignite.DeviceEventTypeEXT.displayHotplug_EXT.rawValue
                    == CVulkan.VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT.rawValue
            )
        }
    }


    /// Tests for the DeviceFaultAddressTypeEXT enum.
    @Suite("DeviceFaultAddressTypeEXT")
    public struct DeviceFaultAddressTypeEXTTests {
        @Test("Validate none_EXT")
        public func validate_none_EXT() {
            #expect(
                Ignite.DeviceFaultAddressTypeEXT.none_EXT.rawValue == CVulkan.VK_DEVICE_FAULT_ADDRESS_TYPE_NONE_EXT.rawValue
            )
        }

        @Test("Validate readInvalid_EXT")
        public func validate_readInvalid_EXT() {
            #expect(
                Ignite.DeviceFaultAddressTypeEXT.readInvalid_EXT.rawValue
                    == CVulkan.VK_DEVICE_FAULT_ADDRESS_TYPE_READ_INVALID_EXT.rawValue
            )
        }

        @Test("Validate writeInvalid_EXT")
        public func validate_writeInvalid_EXT() {
            #expect(
                Ignite.DeviceFaultAddressTypeEXT.writeInvalid_EXT.rawValue
                    == CVulkan.VK_DEVICE_FAULT_ADDRESS_TYPE_WRITE_INVALID_EXT.rawValue
            )
        }

        @Test("Validate executeInvalid_EXT")
        public func validate_executeInvalid_EXT() {
            #expect(
                Ignite.DeviceFaultAddressTypeEXT.executeInvalid_EXT.rawValue
                    == CVulkan.VK_DEVICE_FAULT_ADDRESS_TYPE_EXECUTE_INVALID_EXT.rawValue
            )
        }

        @Test("Validate instructionPointerUnknown_EXT")
        public func validate_instructionPointerUnknown_EXT() {
            #expect(
                Ignite.DeviceFaultAddressTypeEXT.instructionPointerUnknown_EXT.rawValue
                    == CVulkan.VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_UNKNOWN_EXT.rawValue
            )
        }

        @Test("Validate instructionPointerInvalid_EXT")
        public func validate_instructionPointerInvalid_EXT() {
            #expect(
                Ignite.DeviceFaultAddressTypeEXT.instructionPointerInvalid_EXT.rawValue
                    == CVulkan.VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_INVALID_EXT.rawValue
            )
        }

        @Test("Validate instructionPointerFault_EXT")
        public func validate_instructionPointerFault_EXT() {
            #expect(
                Ignite.DeviceFaultAddressTypeEXT.instructionPointerFault_EXT.rawValue
                    == CVulkan.VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_FAULT_EXT.rawValue
            )
        }
    }


    /// Tests for the DeviceFaultVendorBinaryHeaderVersionEXT enum.
    @Suite("DeviceFaultVendorBinaryHeaderVersionEXT")
    public struct DeviceFaultVendorBinaryHeaderVersionEXTTests {
        @Test("Validate one_EXT")
        public func validate_one_EXT() {
            #expect(
                Ignite.DeviceFaultVendorBinaryHeaderVersionEXT.one_EXT.rawValue
                    == CVulkan.VK_DEVICE_FAULT_VENDOR_BINARY_HEADER_VERSION_ONE_EXT.rawValue
            )
        }
    }


    /// Tests for the DeviceMemoryReportEventTypeEXT enum.
    @Suite("DeviceMemoryReportEventTypeEXT")
    public struct DeviceMemoryReportEventTypeEXTTests {
        @Test("Validate allocate_EXT")
        public func validate_allocate_EXT() {
            #expect(
                Ignite.DeviceMemoryReportEventTypeEXT.allocate_EXT.rawValue
                    == CVulkan.VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATE_EXT.rawValue
            )
        }

        @Test("Validate free_EXT")
        public func validate_free_EXT() {
            #expect(
                Ignite.DeviceMemoryReportEventTypeEXT.free_EXT.rawValue
                    == CVulkan.VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_FREE_EXT.rawValue
            )
        }

        @Test("Validate import_EXT")
        public func validate_import_EXT() {
            #expect(
                Ignite.DeviceMemoryReportEventTypeEXT.import_EXT.rawValue
                    == CVulkan.VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_IMPORT_EXT.rawValue
            )
        }

        @Test("Validate unimport_EXT")
        public func validate_unimport_EXT() {
            #expect(
                Ignite.DeviceMemoryReportEventTypeEXT.unimport_EXT.rawValue
                    == CVulkan.VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_UNIMPORT_EXT.rawValue
            )
        }

        @Test("Validate allocationFailed_EXT")
        public func validate_allocationFailed_EXT() {
            #expect(
                Ignite.DeviceMemoryReportEventTypeEXT.allocationFailed_EXT.rawValue
                    == CVulkan.VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATION_FAILED_EXT.rawValue
            )
        }
    }


    /// Tests for the DirectDriverLoadingModeLUNARG enum.
    @Suite("DirectDriverLoadingModeLUNARG")
    public struct DirectDriverLoadingModeLUNARGTests {
        @Test("Validate exclusive_LUNARG")
        public func validate_exclusive_LUNARG() {
            #expect(
                Ignite.DirectDriverLoadingModeLUNARG.exclusive_LUNARG.rawValue
                    == CVulkan.VK_DIRECT_DRIVER_LOADING_MODE_EXCLUSIVE_LUNARG.rawValue
            )
        }

        @Test("Validate inclusive_LUNARG")
        public func validate_inclusive_LUNARG() {
            #expect(
                Ignite.DirectDriverLoadingModeLUNARG.inclusive_LUNARG.rawValue
                    == CVulkan.VK_DIRECT_DRIVER_LOADING_MODE_INCLUSIVE_LUNARG.rawValue
            )
        }
    }


    /// Tests for the DiscardRectangleModeEXT enum.
    @Suite("DiscardRectangleModeEXT")
    public struct DiscardRectangleModeEXTTests {
        @Test("Validate inclusive_EXT")
        public func validate_inclusive_EXT() {
            #expect(
                Ignite.DiscardRectangleModeEXT.inclusive_EXT.rawValue
                    == CVulkan.VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT.rawValue
            )
        }

        @Test("Validate exclusive_EXT")
        public func validate_exclusive_EXT() {
            #expect(
                Ignite.DiscardRectangleModeEXT.exclusive_EXT.rawValue
                    == CVulkan.VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT.rawValue
            )
        }
    }


    #if EnableProvisional
        /// Tests for the DisplacementMicromapFormatNV enum.
        @Suite("DisplacementMicromapFormatNV")
        public struct DisplacementMicromapFormatNVTests {
            @Test("Validate 64Triangles64Bytes_NV")
            public func validate_64Triangles64Bytes_NV() {
                #expect(
                    Ignite.DisplacementMicromapFormatNV.`64Triangles64Bytes_NV`.rawValue
                        == CVulkan.VK_DISPLACEMENT_MICROMAP_FORMAT_64_TRIANGLES_64_BYTES_NV.rawValue
                )
            }

            @Test("Validate 256Triangles128Bytes_NV")
            public func validate_256Triangles128Bytes_NV() {
                #expect(
                    Ignite.DisplacementMicromapFormatNV.`256Triangles128Bytes_NV`.rawValue
                        == CVulkan.VK_DISPLACEMENT_MICROMAP_FORMAT_256_TRIANGLES_128_BYTES_NV.rawValue
                )
            }

            @Test("Validate 1024Triangles128Bytes_NV")
            public func validate_1024Triangles128Bytes_NV() {
                #expect(
                    Ignite.DisplacementMicromapFormatNV.`1024Triangles128Bytes_NV`.rawValue
                        == CVulkan.VK_DISPLACEMENT_MICROMAP_FORMAT_1024_TRIANGLES_128_BYTES_NV.rawValue
                )
            }
        }
    #else
        @Suite(
            "DisplacementMicromapFormatNV",
            .disabled("This enum is only available when the following trait is enabled: EnableProvisional."))
        public struct DisplacementMicromapFormatNVTests {}
    #endif


    /// Tests for the DisplayEventTypeEXT enum.
    @Suite("DisplayEventTypeEXT")
    public struct DisplayEventTypeEXTTests {
        @Test("Validate firstPixelOut_EXT")
        public func validate_firstPixelOut_EXT() {
            #expect(
                Ignite.DisplayEventTypeEXT.firstPixelOut_EXT.rawValue
                    == CVulkan.VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT.rawValue
            )
        }
    }


    /// Tests for the DisplayPowerStateEXT enum.
    @Suite("DisplayPowerStateEXT")
    public struct DisplayPowerStateEXTTests {
        @Test("Validate off_EXT")
        public func validate_off_EXT() {
            #expect(
                Ignite.DisplayPowerStateEXT.off_EXT.rawValue == CVulkan.VK_DISPLAY_POWER_STATE_OFF_EXT.rawValue
            )
        }

        @Test("Validate suspend_EXT")
        public func validate_suspend_EXT() {
            #expect(
                Ignite.DisplayPowerStateEXT.suspend_EXT.rawValue == CVulkan.VK_DISPLAY_POWER_STATE_SUSPEND_EXT.rawValue
            )
        }

        @Test("Validate on_EXT")
        public func validate_on_EXT() {
            #expect(
                Ignite.DisplayPowerStateEXT.on_EXT.rawValue == CVulkan.VK_DISPLAY_POWER_STATE_ON_EXT.rawValue
            )
        }
    }


    /// Tests for the DisplaySurfaceStereoTypeNV enum.
    @Suite("DisplaySurfaceStereoTypeNV")
    public struct DisplaySurfaceStereoTypeNVTests {
        @Test("Validate none_NV")
        public func validate_none_NV() {
            #expect(
                Ignite.DisplaySurfaceStereoTypeNV.none_NV.rawValue == CVulkan.VK_DISPLAY_SURFACE_STEREO_TYPE_NONE_NV.rawValue
            )
        }

        @Test("Validate onboardDin_NV")
        public func validate_onboardDin_NV() {
            #expect(
                Ignite.DisplaySurfaceStereoTypeNV.onboardDin_NV.rawValue
                    == CVulkan.VK_DISPLAY_SURFACE_STEREO_TYPE_ONBOARD_DIN_NV.rawValue
            )
        }

        @Test("Validate hdmi3d_NV")
        public func validate_hdmi3d_NV() {
            #expect(
                Ignite.DisplaySurfaceStereoTypeNV.hdmi3d_NV.rawValue
                    == CVulkan.VK_DISPLAY_SURFACE_STEREO_TYPE_HDMI_3D_NV.rawValue
            )
        }

        @Test("Validate inbandDisplayport_NV")
        public func validate_inbandDisplayport_NV() {
            #expect(
                Ignite.DisplaySurfaceStereoTypeNV.inbandDisplayport_NV.rawValue
                    == CVulkan.VK_DISPLAY_SURFACE_STEREO_TYPE_INBAND_DISPLAYPORT_NV.rawValue
            )
        }
    }


    /// Tests for the DriverId enum.
    @Suite("DriverId")
    public struct DriverIdTests {
        @Test("Validate amdProprietary")
        public func validate_amdProprietary() {
            #expect(
                Ignite.DriverId.amdProprietary.rawValue == CVulkan.VK_DRIVER_ID_AMD_PROPRIETARY.rawValue
            )
        }

        @Test("Validate amdOpenSource")
        public func validate_amdOpenSource() {
            #expect(
                Ignite.DriverId.amdOpenSource.rawValue == CVulkan.VK_DRIVER_ID_AMD_OPEN_SOURCE.rawValue
            )
        }

        @Test("Validate mesaRadv")
        public func validate_mesaRadv() {
            #expect(
                Ignite.DriverId.mesaRadv.rawValue == CVulkan.VK_DRIVER_ID_MESA_RADV.rawValue
            )
        }

        @Test("Validate nvidiaProprietary")
        public func validate_nvidiaProprietary() {
            #expect(
                Ignite.DriverId.nvidiaProprietary.rawValue == CVulkan.VK_DRIVER_ID_NVIDIA_PROPRIETARY.rawValue
            )
        }

        @Test("Validate intelProprietaryWindows")
        public func validate_intelProprietaryWindows() {
            #expect(
                Ignite.DriverId.intelProprietaryWindows.rawValue == CVulkan.VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS.rawValue
            )
        }

        @Test("Validate intelOpenSource_MESA")
        public func validate_intelOpenSource_MESA() {
            #expect(
                Ignite.DriverId.intelOpenSource_MESA.rawValue == CVulkan.VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA.rawValue
            )
        }

        @Test("Validate imaginationProprietary")
        public func validate_imaginationProprietary() {
            #expect(
                Ignite.DriverId.imaginationProprietary.rawValue == CVulkan.VK_DRIVER_ID_IMAGINATION_PROPRIETARY.rawValue
            )
        }

        @Test("Validate qualcommProprietary")
        public func validate_qualcommProprietary() {
            #expect(
                Ignite.DriverId.qualcommProprietary.rawValue == CVulkan.VK_DRIVER_ID_QUALCOMM_PROPRIETARY.rawValue
            )
        }

        @Test("Validate armProprietary")
        public func validate_armProprietary() {
            #expect(
                Ignite.DriverId.armProprietary.rawValue == CVulkan.VK_DRIVER_ID_ARM_PROPRIETARY.rawValue
            )
        }

        @Test("Validate googleSwiftshader")
        public func validate_googleSwiftshader() {
            #expect(
                Ignite.DriverId.googleSwiftshader.rawValue == CVulkan.VK_DRIVER_ID_GOOGLE_SWIFTSHADER.rawValue
            )
        }

        @Test("Validate ggpProprietary")
        public func validate_ggpProprietary() {
            #expect(
                Ignite.DriverId.ggpProprietary.rawValue == CVulkan.VK_DRIVER_ID_GGP_PROPRIETARY.rawValue
            )
        }

        @Test("Validate broadcomProprietary")
        public func validate_broadcomProprietary() {
            #expect(
                Ignite.DriverId.broadcomProprietary.rawValue == CVulkan.VK_DRIVER_ID_BROADCOM_PROPRIETARY.rawValue
            )
        }

        @Test("Validate mesaLlvmpipe")
        public func validate_mesaLlvmpipe() {
            #expect(
                Ignite.DriverId.mesaLlvmpipe.rawValue == CVulkan.VK_DRIVER_ID_MESA_LLVMPIPE.rawValue
            )
        }

        @Test("Validate moltenvk")
        public func validate_moltenvk() {
            #expect(
                Ignite.DriverId.moltenvk.rawValue == CVulkan.VK_DRIVER_ID_MOLTENVK.rawValue
            )
        }

        @Test("Validate coreaviProprietary")
        public func validate_coreaviProprietary() {
            #expect(
                Ignite.DriverId.coreaviProprietary.rawValue == CVulkan.VK_DRIVER_ID_COREAVI_PROPRIETARY.rawValue
            )
        }

        @Test("Validate juiceProprietary")
        public func validate_juiceProprietary() {
            #expect(
                Ignite.DriverId.juiceProprietary.rawValue == CVulkan.VK_DRIVER_ID_JUICE_PROPRIETARY.rawValue
            )
        }

        @Test("Validate verisiliconProprietary")
        public func validate_verisiliconProprietary() {
            #expect(
                Ignite.DriverId.verisiliconProprietary.rawValue == CVulkan.VK_DRIVER_ID_VERISILICON_PROPRIETARY.rawValue
            )
        }

        @Test("Validate mesaTurnip")
        public func validate_mesaTurnip() {
            #expect(
                Ignite.DriverId.mesaTurnip.rawValue == CVulkan.VK_DRIVER_ID_MESA_TURNIP.rawValue
            )
        }

        @Test("Validate mesaV3dv")
        public func validate_mesaV3dv() {
            #expect(
                Ignite.DriverId.mesaV3dv.rawValue == CVulkan.VK_DRIVER_ID_MESA_V3DV.rawValue
            )
        }

        @Test("Validate mesaPanvk")
        public func validate_mesaPanvk() {
            #expect(
                Ignite.DriverId.mesaPanvk.rawValue == CVulkan.VK_DRIVER_ID_MESA_PANVK.rawValue
            )
        }

        @Test("Validate samsungProprietary")
        public func validate_samsungProprietary() {
            #expect(
                Ignite.DriverId.samsungProprietary.rawValue == CVulkan.VK_DRIVER_ID_SAMSUNG_PROPRIETARY.rawValue
            )
        }

        @Test("Validate mesaVenus")
        public func validate_mesaVenus() {
            #expect(
                Ignite.DriverId.mesaVenus.rawValue == CVulkan.VK_DRIVER_ID_MESA_VENUS.rawValue
            )
        }

        @Test("Validate mesaDozen")
        public func validate_mesaDozen() {
            #expect(
                Ignite.DriverId.mesaDozen.rawValue == CVulkan.VK_DRIVER_ID_MESA_DOZEN.rawValue
            )
        }

        @Test("Validate mesaNvk")
        public func validate_mesaNvk() {
            #expect(
                Ignite.DriverId.mesaNvk.rawValue == CVulkan.VK_DRIVER_ID_MESA_NVK.rawValue
            )
        }

        @Test("Validate imaginationOpenSource_MESA")
        public func validate_imaginationOpenSource_MESA() {
            #expect(
                Ignite.DriverId.imaginationOpenSource_MESA.rawValue
                    == CVulkan.VK_DRIVER_ID_IMAGINATION_OPEN_SOURCE_MESA.rawValue
            )
        }

        @Test("Validate mesaHoneykrisp")
        public func validate_mesaHoneykrisp() {
            #expect(
                Ignite.DriverId.mesaHoneykrisp.rawValue == CVulkan.VK_DRIVER_ID_MESA_HONEYKRISP.rawValue
            )
        }

        @Test("Validate vulkanScEmulationOnVulkan")
        public func validate_vulkanScEmulationOnVulkan() {
            #expect(
                Ignite.DriverId.vulkanScEmulationOnVulkan.rawValue
                    == CVulkan.VK_DRIVER_ID_VULKAN_SC_EMULATION_ON_VULKAN.rawValue
            )
        }

        @Test("Validate amdProprietary_KHR")
        public func validate_amdProprietary_KHR() {
            #expect(
                Ignite.DriverId.amdProprietary_KHR.rawValue == CVulkan.VK_DRIVER_ID_AMD_PROPRIETARY_KHR.rawValue
            )
        }

        @Test("Validate amdOpenSource_KHR")
        public func validate_amdOpenSource_KHR() {
            #expect(
                Ignite.DriverId.amdOpenSource_KHR.rawValue == CVulkan.VK_DRIVER_ID_AMD_OPEN_SOURCE_KHR.rawValue
            )
        }

        @Test("Validate mesaRadv_KHR")
        public func validate_mesaRadv_KHR() {
            #expect(
                Ignite.DriverId.mesaRadv_KHR.rawValue == CVulkan.VK_DRIVER_ID_MESA_RADV_KHR.rawValue
            )
        }

        @Test("Validate nvidiaProprietary_KHR")
        public func validate_nvidiaProprietary_KHR() {
            #expect(
                Ignite.DriverId.nvidiaProprietary_KHR.rawValue == CVulkan.VK_DRIVER_ID_NVIDIA_PROPRIETARY_KHR.rawValue
            )
        }

        @Test("Validate intelProprietaryWindows_KHR")
        public func validate_intelProprietaryWindows_KHR() {
            #expect(
                Ignite.DriverId.intelProprietaryWindows_KHR.rawValue
                    == CVulkan.VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS_KHR.rawValue
            )
        }

        @Test("Validate intelOpenSourceMesa_KHR")
        public func validate_intelOpenSourceMesa_KHR() {
            #expect(
                Ignite.DriverId.intelOpenSourceMesa_KHR.rawValue == CVulkan.VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA_KHR.rawValue
            )
        }

        @Test("Validate imaginationProprietary_KHR")
        public func validate_imaginationProprietary_KHR() {
            #expect(
                Ignite.DriverId.imaginationProprietary_KHR.rawValue
                    == CVulkan.VK_DRIVER_ID_IMAGINATION_PROPRIETARY_KHR.rawValue
            )
        }

        @Test("Validate qualcommProprietary_KHR")
        public func validate_qualcommProprietary_KHR() {
            #expect(
                Ignite.DriverId.qualcommProprietary_KHR.rawValue == CVulkan.VK_DRIVER_ID_QUALCOMM_PROPRIETARY_KHR.rawValue
            )
        }

        @Test("Validate armProprietary_KHR")
        public func validate_armProprietary_KHR() {
            #expect(
                Ignite.DriverId.armProprietary_KHR.rawValue == CVulkan.VK_DRIVER_ID_ARM_PROPRIETARY_KHR.rawValue
            )
        }

        @Test("Validate googleSwiftshader_KHR")
        public func validate_googleSwiftshader_KHR() {
            #expect(
                Ignite.DriverId.googleSwiftshader_KHR.rawValue == CVulkan.VK_DRIVER_ID_GOOGLE_SWIFTSHADER_KHR.rawValue
            )
        }

        @Test("Validate ggpProprietary_KHR")
        public func validate_ggpProprietary_KHR() {
            #expect(
                Ignite.DriverId.ggpProprietary_KHR.rawValue == CVulkan.VK_DRIVER_ID_GGP_PROPRIETARY_KHR.rawValue
            )
        }

        @Test("Validate broadcomProprietary_KHR")
        public func validate_broadcomProprietary_KHR() {
            #expect(
                Ignite.DriverId.broadcomProprietary_KHR.rawValue == CVulkan.VK_DRIVER_ID_BROADCOM_PROPRIETARY_KHR.rawValue
            )
        }
    }


    /// Tests for the DynamicState enum.
    @Suite("DynamicState")
    public struct DynamicStateTests {
        @Test("Validate viewport")
        public func validate_viewport() {
            #expect(
                Ignite.DynamicState.viewport.rawValue == CVulkan.VK_DYNAMIC_STATE_VIEWPORT.rawValue
            )
        }

        @Test("Validate scissor")
        public func validate_scissor() {
            #expect(
                Ignite.DynamicState.scissor.rawValue == CVulkan.VK_DYNAMIC_STATE_SCISSOR.rawValue
            )
        }

        @Test("Validate lineWidth")
        public func validate_lineWidth() {
            #expect(
                Ignite.DynamicState.lineWidth.rawValue == CVulkan.VK_DYNAMIC_STATE_LINE_WIDTH.rawValue
            )
        }

        @Test("Validate depthBias")
        public func validate_depthBias() {
            #expect(
                Ignite.DynamicState.depthBias.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_BIAS.rawValue
            )
        }

        @Test("Validate blendConstants")
        public func validate_blendConstants() {
            #expect(
                Ignite.DynamicState.blendConstants.rawValue == CVulkan.VK_DYNAMIC_STATE_BLEND_CONSTANTS.rawValue
            )
        }

        @Test("Validate depthBounds")
        public func validate_depthBounds() {
            #expect(
                Ignite.DynamicState.depthBounds.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_BOUNDS.rawValue
            )
        }

        @Test("Validate stencilCompareMask")
        public func validate_stencilCompareMask() {
            #expect(
                Ignite.DynamicState.stencilCompareMask.rawValue == CVulkan.VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK.rawValue
            )
        }

        @Test("Validate stencilWriteMask")
        public func validate_stencilWriteMask() {
            #expect(
                Ignite.DynamicState.stencilWriteMask.rawValue == CVulkan.VK_DYNAMIC_STATE_STENCIL_WRITE_MASK.rawValue
            )
        }

        @Test("Validate stencilReference")
        public func validate_stencilReference() {
            #expect(
                Ignite.DynamicState.stencilReference.rawValue == CVulkan.VK_DYNAMIC_STATE_STENCIL_REFERENCE.rawValue
            )
        }

        @Test("Validate cullMode")
        public func validate_cullMode() {
            #expect(
                Ignite.DynamicState.cullMode.rawValue == CVulkan.VK_DYNAMIC_STATE_CULL_MODE.rawValue
            )
        }

        @Test("Validate frontFace")
        public func validate_frontFace() {
            #expect(
                Ignite.DynamicState.frontFace.rawValue == CVulkan.VK_DYNAMIC_STATE_FRONT_FACE.rawValue
            )
        }

        @Test("Validate primitiveTopology")
        public func validate_primitiveTopology() {
            #expect(
                Ignite.DynamicState.primitiveTopology.rawValue == CVulkan.VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY.rawValue
            )
        }

        @Test("Validate viewportWithCount")
        public func validate_viewportWithCount() {
            #expect(
                Ignite.DynamicState.viewportWithCount.rawValue == CVulkan.VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT.rawValue
            )
        }

        @Test("Validate scissorWithCount")
        public func validate_scissorWithCount() {
            #expect(
                Ignite.DynamicState.scissorWithCount.rawValue == CVulkan.VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT.rawValue
            )
        }

        @Test("Validate vertexInputBindingStride")
        public func validate_vertexInputBindingStride() {
            #expect(
                Ignite.DynamicState.vertexInputBindingStride.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE.rawValue
            )
        }

        @Test("Validate depthTestEnable")
        public func validate_depthTestEnable() {
            #expect(
                Ignite.DynamicState.depthTestEnable.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE.rawValue
            )
        }

        @Test("Validate depthWriteEnable")
        public func validate_depthWriteEnable() {
            #expect(
                Ignite.DynamicState.depthWriteEnable.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE.rawValue
            )
        }

        @Test("Validate depthCompareOp")
        public func validate_depthCompareOp() {
            #expect(
                Ignite.DynamicState.depthCompareOp.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_COMPARE_OP.rawValue
            )
        }

        @Test("Validate depthBoundsTestEnable")
        public func validate_depthBoundsTestEnable() {
            #expect(
                Ignite.DynamicState.depthBoundsTestEnable.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE.rawValue
            )
        }

        @Test("Validate stencilTestEnable")
        public func validate_stencilTestEnable() {
            #expect(
                Ignite.DynamicState.stencilTestEnable.rawValue == CVulkan.VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE.rawValue
            )
        }

        @Test("Validate stencilOp")
        public func validate_stencilOp() {
            #expect(
                Ignite.DynamicState.stencilOp.rawValue == CVulkan.VK_DYNAMIC_STATE_STENCIL_OP.rawValue
            )
        }

        @Test("Validate rasterizerDiscardEnable")
        public func validate_rasterizerDiscardEnable() {
            #expect(
                Ignite.DynamicState.rasterizerDiscardEnable.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE.rawValue
            )
        }

        @Test("Validate depthBiasEnable")
        public func validate_depthBiasEnable() {
            #expect(
                Ignite.DynamicState.depthBiasEnable.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE.rawValue
            )
        }

        @Test("Validate primitiveRestartEnable")
        public func validate_primitiveRestartEnable() {
            #expect(
                Ignite.DynamicState.primitiveRestartEnable.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE.rawValue
            )
        }

        @Test("Validate lineStipple")
        public func validate_lineStipple() {
            #expect(
                Ignite.DynamicState.lineStipple.rawValue == CVulkan.VK_DYNAMIC_STATE_LINE_STIPPLE.rawValue
            )
        }

        @Test("Validate viewportWScaling_NV")
        public func validate_viewportWScaling_NV() {
            #expect(
                Ignite.DynamicState.viewportWScaling_NV.rawValue == CVulkan.VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_NV.rawValue
            )
        }

        @Test("Validate discardRectangle_EXT")
        public func validate_discardRectangle_EXT() {
            #expect(
                Ignite.DynamicState.discardRectangle_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_DISCARD_RECTANGLE_EXT.rawValue
            )
        }

        @Test("Validate discardRectangleEnable_EXT")
        public func validate_discardRectangleEnable_EXT() {
            #expect(
                Ignite.DynamicState.discardRectangleEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_DISCARD_RECTANGLE_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate discardRectangleMode_EXT")
        public func validate_discardRectangleMode_EXT() {
            #expect(
                Ignite.DynamicState.discardRectangleMode_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_DISCARD_RECTANGLE_MODE_EXT.rawValue
            )
        }

        @Test("Validate sampleLocations_EXT")
        public func validate_sampleLocations_EXT() {
            #expect(
                Ignite.DynamicState.sampleLocations_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT.rawValue
            )
        }

        @Test("Validate rayTracingPipelineStackSize_KHR")
        public func validate_rayTracingPipelineStackSize_KHR() {
            #expect(
                Ignite.DynamicState.rayTracingPipelineStackSize_KHR.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_RAY_TRACING_PIPELINE_STACK_SIZE_KHR.rawValue
            )
        }

        @Test("Validate viewportShadingRatePalette_NV")
        public func validate_viewportShadingRatePalette_NV() {
            #expect(
                Ignite.DynamicState.viewportShadingRatePalette_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV.rawValue
            )
        }

        @Test("Validate viewportCoarseSampleOrder_NV")
        public func validate_viewportCoarseSampleOrder_NV() {
            #expect(
                Ignite.DynamicState.viewportCoarseSampleOrder_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_VIEWPORT_COARSE_SAMPLE_ORDER_NV.rawValue
            )
        }

        @Test("Validate exclusiveScissorEnable_NV")
        public func validate_exclusiveScissorEnable_NV() {
            #expect(
                Ignite.DynamicState.exclusiveScissorEnable_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_EXCLUSIVE_SCISSOR_ENABLE_NV.rawValue
            )
        }

        @Test("Validate exclusiveScissor_NV")
        public func validate_exclusiveScissor_NV() {
            #expect(
                Ignite.DynamicState.exclusiveScissor_NV.rawValue == CVulkan.VK_DYNAMIC_STATE_EXCLUSIVE_SCISSOR_NV.rawValue
            )
        }

        @Test("Validate fragmentShadingRate_KHR")
        public func validate_fragmentShadingRate_KHR() {
            #expect(
                Ignite.DynamicState.fragmentShadingRate_KHR.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_FRAGMENT_SHADING_RATE_KHR.rawValue
            )
        }

        @Test("Validate vertexInput_EXT")
        public func validate_vertexInput_EXT() {
            #expect(
                Ignite.DynamicState.vertexInput_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_VERTEX_INPUT_EXT.rawValue
            )
        }

        @Test("Validate patchControlPoints_EXT")
        public func validate_patchControlPoints_EXT() {
            #expect(
                Ignite.DynamicState.patchControlPoints_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_PATCH_CONTROL_POINTS_EXT.rawValue
            )
        }

        @Test("Validate logicOp_EXT")
        public func validate_logicOp_EXT() {
            #expect(
                Ignite.DynamicState.logicOp_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_LOGIC_OP_EXT.rawValue
            )
        }

        @Test("Validate colorWriteEnable_EXT")
        public func validate_colorWriteEnable_EXT() {
            #expect(
                Ignite.DynamicState.colorWriteEnable_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate depthClampEnable_EXT")
        public func validate_depthClampEnable_EXT() {
            #expect(
                Ignite.DynamicState.depthClampEnable_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_CLAMP_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate polygonMode_EXT")
        public func validate_polygonMode_EXT() {
            #expect(
                Ignite.DynamicState.polygonMode_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_POLYGON_MODE_EXT.rawValue
            )
        }

        @Test("Validate rasterizationSamples_EXT")
        public func validate_rasterizationSamples_EXT() {
            #expect(
                Ignite.DynamicState.rasterizationSamples_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT.rawValue
            )
        }

        @Test("Validate sampleMask_EXT")
        public func validate_sampleMask_EXT() {
            #expect(
                Ignite.DynamicState.sampleMask_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_SAMPLE_MASK_EXT.rawValue
            )
        }

        @Test("Validate alphaToCoverageEnable_EXT")
        public func validate_alphaToCoverageEnable_EXT() {
            #expect(
                Ignite.DynamicState.alphaToCoverageEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_ALPHA_TO_COVERAGE_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate alphaToOneEnable_EXT")
        public func validate_alphaToOneEnable_EXT() {
            #expect(
                Ignite.DynamicState.alphaToOneEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_ALPHA_TO_ONE_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate logicOpEnable_EXT")
        public func validate_logicOpEnable_EXT() {
            #expect(
                Ignite.DynamicState.logicOpEnable_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_LOGIC_OP_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate colorBlendEnable_EXT")
        public func validate_colorBlendEnable_EXT() {
            #expect(
                Ignite.DynamicState.colorBlendEnable_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate colorBlendEquation_EXT")
        public func validate_colorBlendEquation_EXT() {
            #expect(
                Ignite.DynamicState.colorBlendEquation_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_COLOR_BLEND_EQUATION_EXT.rawValue
            )
        }

        @Test("Validate colorWriteMask_EXT")
        public func validate_colorWriteMask_EXT() {
            #expect(
                Ignite.DynamicState.colorWriteMask_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_COLOR_WRITE_MASK_EXT.rawValue
            )
        }

        @Test("Validate tessellationDomainOrigin_EXT")
        public func validate_tessellationDomainOrigin_EXT() {
            #expect(
                Ignite.DynamicState.tessellationDomainOrigin_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_TESSELLATION_DOMAIN_ORIGIN_EXT.rawValue
            )
        }

        @Test("Validate rasterizationStream_EXT")
        public func validate_rasterizationStream_EXT() {
            #expect(
                Ignite.DynamicState.rasterizationStream_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_RASTERIZATION_STREAM_EXT.rawValue
            )
        }

        @Test("Validate conservativeRasterizationMode_EXT")
        public func validate_conservativeRasterizationMode_EXT() {
            #expect(
                Ignite.DynamicState.conservativeRasterizationMode_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_CONSERVATIVE_RASTERIZATION_MODE_EXT.rawValue
            )
        }

        @Test("Validate extraPrimitiveOverestimationSize_EXT")
        public func validate_extraPrimitiveOverestimationSize_EXT() {
            #expect(
                Ignite.DynamicState.extraPrimitiveOverestimationSize_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_EXTRA_PRIMITIVE_OVERESTIMATION_SIZE_EXT.rawValue
            )
        }

        @Test("Validate depthClipEnable_EXT")
        public func validate_depthClipEnable_EXT() {
            #expect(
                Ignite.DynamicState.depthClipEnable_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_CLIP_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate sampleLocationsEnable_EXT")
        public func validate_sampleLocationsEnable_EXT() {
            #expect(
                Ignite.DynamicState.sampleLocationsEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate colorBlendAdvanced_EXT")
        public func validate_colorBlendAdvanced_EXT() {
            #expect(
                Ignite.DynamicState.colorBlendAdvanced_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT.rawValue
            )
        }

        @Test("Validate provokingVertexMode_EXT")
        public func validate_provokingVertexMode_EXT() {
            #expect(
                Ignite.DynamicState.provokingVertexMode_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_PROVOKING_VERTEX_MODE_EXT.rawValue
            )
        }

        @Test("Validate lineRasterizationMode_EXT")
        public func validate_lineRasterizationMode_EXT() {
            #expect(
                Ignite.DynamicState.lineRasterizationMode_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT.rawValue
            )
        }

        @Test("Validate lineStippleEnable_EXT")
        public func validate_lineStippleEnable_EXT() {
            #expect(
                Ignite.DynamicState.lineStippleEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate depthClipNegativeOneToOne_EXT")
        public func validate_depthClipNegativeOneToOne_EXT() {
            #expect(
                Ignite.DynamicState.depthClipNegativeOneToOne_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_DEPTH_CLIP_NEGATIVE_ONE_TO_ONE_EXT.rawValue
            )
        }

        @Test("Validate viewportWScalingEnable_NV")
        public func validate_viewportWScalingEnable_NV() {
            #expect(
                Ignite.DynamicState.viewportWScalingEnable_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_ENABLE_NV.rawValue
            )
        }

        @Test("Validate viewportSwizzle_NV")
        public func validate_viewportSwizzle_NV() {
            #expect(
                Ignite.DynamicState.viewportSwizzle_NV.rawValue == CVulkan.VK_DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV.rawValue
            )
        }

        @Test("Validate coverageToColorEnable_NV")
        public func validate_coverageToColorEnable_NV() {
            #expect(
                Ignite.DynamicState.coverageToColorEnable_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV.rawValue
            )
        }

        @Test("Validate coverageToColorLocation_NV")
        public func validate_coverageToColorLocation_NV() {
            #expect(
                Ignite.DynamicState.coverageToColorLocation_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_COVERAGE_TO_COLOR_LOCATION_NV.rawValue
            )
        }

        @Test("Validate coverageModulationMode_NV")
        public func validate_coverageModulationMode_NV() {
            #expect(
                Ignite.DynamicState.coverageModulationMode_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_COVERAGE_MODULATION_MODE_NV.rawValue
            )
        }

        @Test("Validate coverageModulationTableEnable_NV")
        public func validate_coverageModulationTableEnable_NV() {
            #expect(
                Ignite.DynamicState.coverageModulationTableEnable_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_ENABLE_NV.rawValue
            )
        }

        @Test("Validate coverageModulationTable_NV")
        public func validate_coverageModulationTable_NV() {
            #expect(
                Ignite.DynamicState.coverageModulationTable_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_NV.rawValue
            )
        }

        @Test("Validate shadingRateImageEnable_NV")
        public func validate_shadingRateImageEnable_NV() {
            #expect(
                Ignite.DynamicState.shadingRateImageEnable_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_SHADING_RATE_IMAGE_ENABLE_NV.rawValue
            )
        }

        @Test("Validate representativeFragmentTestEnable_NV")
        public func validate_representativeFragmentTestEnable_NV() {
            #expect(
                Ignite.DynamicState.representativeFragmentTestEnable_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_REPRESENTATIVE_FRAGMENT_TEST_ENABLE_NV.rawValue
            )
        }

        @Test("Validate coverageReductionMode_NV")
        public func validate_coverageReductionMode_NV() {
            #expect(
                Ignite.DynamicState.coverageReductionMode_NV.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_COVERAGE_REDUCTION_MODE_NV.rawValue
            )
        }

        @Test("Validate attachmentFeedbackLoopEnable_EXT")
        public func validate_attachmentFeedbackLoopEnable_EXT() {
            #expect(
                Ignite.DynamicState.attachmentFeedbackLoopEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_ATTACHMENT_FEEDBACK_LOOP_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate depthClampRange_EXT")
        public func validate_depthClampRange_EXT() {
            #expect(
                Ignite.DynamicState.depthClampRange_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_CLAMP_RANGE_EXT.rawValue
            )
        }

        @Test("Validate lineStipple_EXT")
        public func validate_lineStipple_EXT() {
            #expect(
                Ignite.DynamicState.lineStipple_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_LINE_STIPPLE_EXT.rawValue
            )
        }

        @Test("Validate cullMode_EXT")
        public func validate_cullMode_EXT() {
            #expect(
                Ignite.DynamicState.cullMode_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_CULL_MODE_EXT.rawValue
            )
        }

        @Test("Validate frontFace_EXT")
        public func validate_frontFace_EXT() {
            #expect(
                Ignite.DynamicState.frontFace_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_FRONT_FACE_EXT.rawValue
            )
        }

        @Test("Validate primitiveTopology_EXT")
        public func validate_primitiveTopology_EXT() {
            #expect(
                Ignite.DynamicState.primitiveTopology_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY_EXT.rawValue
            )
        }

        @Test("Validate viewportWithCount_EXT")
        public func validate_viewportWithCount_EXT() {
            #expect(
                Ignite.DynamicState.viewportWithCount_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT_EXT.rawValue
            )
        }

        @Test("Validate scissorWithCount_EXT")
        public func validate_scissorWithCount_EXT() {
            #expect(
                Ignite.DynamicState.scissorWithCount_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT_EXT.rawValue
            )
        }

        @Test("Validate vertexInputBindingStride_EXT")
        public func validate_vertexInputBindingStride_EXT() {
            #expect(
                Ignite.DynamicState.vertexInputBindingStride_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE_EXT.rawValue
            )
        }

        @Test("Validate depthTestEnable_EXT")
        public func validate_depthTestEnable_EXT() {
            #expect(
                Ignite.DynamicState.depthTestEnable_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate depthWriteEnable_EXT")
        public func validate_depthWriteEnable_EXT() {
            #expect(
                Ignite.DynamicState.depthWriteEnable_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate depthCompareOp_EXT")
        public func validate_depthCompareOp_EXT() {
            #expect(
                Ignite.DynamicState.depthCompareOp_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_COMPARE_OP_EXT.rawValue
            )
        }

        @Test("Validate depthBoundsTestEnable_EXT")
        public func validate_depthBoundsTestEnable_EXT() {
            #expect(
                Ignite.DynamicState.depthBoundsTestEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate stencilTestEnable_EXT")
        public func validate_stencilTestEnable_EXT() {
            #expect(
                Ignite.DynamicState.stencilTestEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate stencilOp_EXT")
        public func validate_stencilOp_EXT() {
            #expect(
                Ignite.DynamicState.stencilOp_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_STENCIL_OP_EXT.rawValue
            )
        }

        @Test("Validate rasterizerDiscardEnable_EXT")
        public func validate_rasterizerDiscardEnable_EXT() {
            #expect(
                Ignite.DynamicState.rasterizerDiscardEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate depthBiasEnable_EXT")
        public func validate_depthBiasEnable_EXT() {
            #expect(
                Ignite.DynamicState.depthBiasEnable_EXT.rawValue == CVulkan.VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate primitiveRestartEnable_EXT")
        public func validate_primitiveRestartEnable_EXT() {
            #expect(
                Ignite.DynamicState.primitiveRestartEnable_EXT.rawValue
                    == CVulkan.VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE_EXT.rawValue
            )
        }

        @Test("Validate lineStipple_KHR")
        public func validate_lineStipple_KHR() {
            #expect(
                Ignite.DynamicState.lineStipple_KHR.rawValue == CVulkan.VK_DYNAMIC_STATE_LINE_STIPPLE_KHR.rawValue
            )
        }
    }


    /// Tests for the Filter enum.
    @Suite("Filter")
    public struct FilterTests {
        @Test("Validate nearest")
        public func validate_nearest() {
            #expect(
                Ignite.Filter.nearest.rawValue == CVulkan.VK_FILTER_NEAREST.rawValue
            )
        }

        @Test("Validate linear")
        public func validate_linear() {
            #expect(
                Ignite.Filter.linear.rawValue == CVulkan.VK_FILTER_LINEAR.rawValue
            )
        }

        @Test("Validate cubic_EXT")
        public func validate_cubic_EXT() {
            #expect(
                Ignite.Filter.cubic_EXT.rawValue == CVulkan.VK_FILTER_CUBIC_EXT.rawValue
            )
        }

        @Test("Validate cubic_IMG")
        public func validate_cubic_IMG() {
            #expect(
                Ignite.Filter.cubic_IMG.rawValue == CVulkan.VK_FILTER_CUBIC_IMG.rawValue
            )
        }
    }


    /// Tests for the Format enum.
    @Suite("Format")
    public struct FormatTests {
        @Test("Validate undefined")
        public func validate_undefined() {
            #expect(
                Ignite.Format.undefined.rawValue == CVulkan.VK_FORMAT_UNDEFINED.rawValue
            )
        }

        @Test("Validate r4g4UnormPack8")
        public func validate_r4g4UnormPack8() {
            #expect(
                Ignite.Format.r4g4UnormPack8.rawValue == CVulkan.VK_FORMAT_R4G4_UNORM_PACK8.rawValue
            )
        }

        @Test("Validate r4g4b4a4UnormPack16")
        public func validate_r4g4b4a4UnormPack16() {
            #expect(
                Ignite.Format.r4g4b4a4UnormPack16.rawValue == CVulkan.VK_FORMAT_R4G4B4A4_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate b4g4r4a4UnormPack16")
        public func validate_b4g4r4a4UnormPack16() {
            #expect(
                Ignite.Format.b4g4r4a4UnormPack16.rawValue == CVulkan.VK_FORMAT_B4G4R4A4_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate r5g6b5UnormPack16")
        public func validate_r5g6b5UnormPack16() {
            #expect(
                Ignite.Format.r5g6b5UnormPack16.rawValue == CVulkan.VK_FORMAT_R5G6B5_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate b5g6r5UnormPack16")
        public func validate_b5g6r5UnormPack16() {
            #expect(
                Ignite.Format.b5g6r5UnormPack16.rawValue == CVulkan.VK_FORMAT_B5G6R5_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate r5g5b5a1UnormPack16")
        public func validate_r5g5b5a1UnormPack16() {
            #expect(
                Ignite.Format.r5g5b5a1UnormPack16.rawValue == CVulkan.VK_FORMAT_R5G5B5A1_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate b5g5r5a1UnormPack16")
        public func validate_b5g5r5a1UnormPack16() {
            #expect(
                Ignite.Format.b5g5r5a1UnormPack16.rawValue == CVulkan.VK_FORMAT_B5G5R5A1_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate a1r5g5b5UnormPack16")
        public func validate_a1r5g5b5UnormPack16() {
            #expect(
                Ignite.Format.a1r5g5b5UnormPack16.rawValue == CVulkan.VK_FORMAT_A1R5G5B5_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate r8Unorm")
        public func validate_r8Unorm() {
            #expect(
                Ignite.Format.r8Unorm.rawValue == CVulkan.VK_FORMAT_R8_UNORM.rawValue
            )
        }

        @Test("Validate r8Snorm")
        public func validate_r8Snorm() {
            #expect(
                Ignite.Format.r8Snorm.rawValue == CVulkan.VK_FORMAT_R8_SNORM.rawValue
            )
        }

        @Test("Validate r8Uscaled")
        public func validate_r8Uscaled() {
            #expect(
                Ignite.Format.r8Uscaled.rawValue == CVulkan.VK_FORMAT_R8_USCALED.rawValue
            )
        }

        @Test("Validate r8Sscaled")
        public func validate_r8Sscaled() {
            #expect(
                Ignite.Format.r8Sscaled.rawValue == CVulkan.VK_FORMAT_R8_SSCALED.rawValue
            )
        }

        @Test("Validate r8Uint")
        public func validate_r8Uint() {
            #expect(
                Ignite.Format.r8Uint.rawValue == CVulkan.VK_FORMAT_R8_UINT.rawValue
            )
        }

        @Test("Validate r8Sint")
        public func validate_r8Sint() {
            #expect(
                Ignite.Format.r8Sint.rawValue == CVulkan.VK_FORMAT_R8_SINT.rawValue
            )
        }

        @Test("Validate r8Srgb")
        public func validate_r8Srgb() {
            #expect(
                Ignite.Format.r8Srgb.rawValue == CVulkan.VK_FORMAT_R8_SRGB.rawValue
            )
        }

        @Test("Validate r8g8Unorm")
        public func validate_r8g8Unorm() {
            #expect(
                Ignite.Format.r8g8Unorm.rawValue == CVulkan.VK_FORMAT_R8G8_UNORM.rawValue
            )
        }

        @Test("Validate r8g8Snorm")
        public func validate_r8g8Snorm() {
            #expect(
                Ignite.Format.r8g8Snorm.rawValue == CVulkan.VK_FORMAT_R8G8_SNORM.rawValue
            )
        }

        @Test("Validate r8g8Uscaled")
        public func validate_r8g8Uscaled() {
            #expect(
                Ignite.Format.r8g8Uscaled.rawValue == CVulkan.VK_FORMAT_R8G8_USCALED.rawValue
            )
        }

        @Test("Validate r8g8Sscaled")
        public func validate_r8g8Sscaled() {
            #expect(
                Ignite.Format.r8g8Sscaled.rawValue == CVulkan.VK_FORMAT_R8G8_SSCALED.rawValue
            )
        }

        @Test("Validate r8g8Uint")
        public func validate_r8g8Uint() {
            #expect(
                Ignite.Format.r8g8Uint.rawValue == CVulkan.VK_FORMAT_R8G8_UINT.rawValue
            )
        }

        @Test("Validate r8g8Sint")
        public func validate_r8g8Sint() {
            #expect(
                Ignite.Format.r8g8Sint.rawValue == CVulkan.VK_FORMAT_R8G8_SINT.rawValue
            )
        }

        @Test("Validate r8g8Srgb")
        public func validate_r8g8Srgb() {
            #expect(
                Ignite.Format.r8g8Srgb.rawValue == CVulkan.VK_FORMAT_R8G8_SRGB.rawValue
            )
        }

        @Test("Validate r8g8b8Unorm")
        public func validate_r8g8b8Unorm() {
            #expect(
                Ignite.Format.r8g8b8Unorm.rawValue == CVulkan.VK_FORMAT_R8G8B8_UNORM.rawValue
            )
        }

        @Test("Validate r8g8b8Snorm")
        public func validate_r8g8b8Snorm() {
            #expect(
                Ignite.Format.r8g8b8Snorm.rawValue == CVulkan.VK_FORMAT_R8G8B8_SNORM.rawValue
            )
        }

        @Test("Validate r8g8b8Uscaled")
        public func validate_r8g8b8Uscaled() {
            #expect(
                Ignite.Format.r8g8b8Uscaled.rawValue == CVulkan.VK_FORMAT_R8G8B8_USCALED.rawValue
            )
        }

        @Test("Validate r8g8b8Sscaled")
        public func validate_r8g8b8Sscaled() {
            #expect(
                Ignite.Format.r8g8b8Sscaled.rawValue == CVulkan.VK_FORMAT_R8G8B8_SSCALED.rawValue
            )
        }

        @Test("Validate r8g8b8Uint")
        public func validate_r8g8b8Uint() {
            #expect(
                Ignite.Format.r8g8b8Uint.rawValue == CVulkan.VK_FORMAT_R8G8B8_UINT.rawValue
            )
        }

        @Test("Validate r8g8b8Sint")
        public func validate_r8g8b8Sint() {
            #expect(
                Ignite.Format.r8g8b8Sint.rawValue == CVulkan.VK_FORMAT_R8G8B8_SINT.rawValue
            )
        }

        @Test("Validate r8g8b8Srgb")
        public func validate_r8g8b8Srgb() {
            #expect(
                Ignite.Format.r8g8b8Srgb.rawValue == CVulkan.VK_FORMAT_R8G8B8_SRGB.rawValue
            )
        }

        @Test("Validate b8g8r8Unorm")
        public func validate_b8g8r8Unorm() {
            #expect(
                Ignite.Format.b8g8r8Unorm.rawValue == CVulkan.VK_FORMAT_B8G8R8_UNORM.rawValue
            )
        }

        @Test("Validate b8g8r8Snorm")
        public func validate_b8g8r8Snorm() {
            #expect(
                Ignite.Format.b8g8r8Snorm.rawValue == CVulkan.VK_FORMAT_B8G8R8_SNORM.rawValue
            )
        }

        @Test("Validate b8g8r8Uscaled")
        public func validate_b8g8r8Uscaled() {
            #expect(
                Ignite.Format.b8g8r8Uscaled.rawValue == CVulkan.VK_FORMAT_B8G8R8_USCALED.rawValue
            )
        }

        @Test("Validate b8g8r8Sscaled")
        public func validate_b8g8r8Sscaled() {
            #expect(
                Ignite.Format.b8g8r8Sscaled.rawValue == CVulkan.VK_FORMAT_B8G8R8_SSCALED.rawValue
            )
        }

        @Test("Validate b8g8r8Uint")
        public func validate_b8g8r8Uint() {
            #expect(
                Ignite.Format.b8g8r8Uint.rawValue == CVulkan.VK_FORMAT_B8G8R8_UINT.rawValue
            )
        }

        @Test("Validate b8g8r8Sint")
        public func validate_b8g8r8Sint() {
            #expect(
                Ignite.Format.b8g8r8Sint.rawValue == CVulkan.VK_FORMAT_B8G8R8_SINT.rawValue
            )
        }

        @Test("Validate b8g8r8Srgb")
        public func validate_b8g8r8Srgb() {
            #expect(
                Ignite.Format.b8g8r8Srgb.rawValue == CVulkan.VK_FORMAT_B8G8R8_SRGB.rawValue
            )
        }

        @Test("Validate r8g8b8a8Unorm")
        public func validate_r8g8b8a8Unorm() {
            #expect(
                Ignite.Format.r8g8b8a8Unorm.rawValue == CVulkan.VK_FORMAT_R8G8B8A8_UNORM.rawValue
            )
        }

        @Test("Validate r8g8b8a8Snorm")
        public func validate_r8g8b8a8Snorm() {
            #expect(
                Ignite.Format.r8g8b8a8Snorm.rawValue == CVulkan.VK_FORMAT_R8G8B8A8_SNORM.rawValue
            )
        }

        @Test("Validate r8g8b8a8Uscaled")
        public func validate_r8g8b8a8Uscaled() {
            #expect(
                Ignite.Format.r8g8b8a8Uscaled.rawValue == CVulkan.VK_FORMAT_R8G8B8A8_USCALED.rawValue
            )
        }

        @Test("Validate r8g8b8a8Sscaled")
        public func validate_r8g8b8a8Sscaled() {
            #expect(
                Ignite.Format.r8g8b8a8Sscaled.rawValue == CVulkan.VK_FORMAT_R8G8B8A8_SSCALED.rawValue
            )
        }

        @Test("Validate r8g8b8a8Uint")
        public func validate_r8g8b8a8Uint() {
            #expect(
                Ignite.Format.r8g8b8a8Uint.rawValue == CVulkan.VK_FORMAT_R8G8B8A8_UINT.rawValue
            )
        }

        @Test("Validate r8g8b8a8Sint")
        public func validate_r8g8b8a8Sint() {
            #expect(
                Ignite.Format.r8g8b8a8Sint.rawValue == CVulkan.VK_FORMAT_R8G8B8A8_SINT.rawValue
            )
        }

        @Test("Validate r8g8b8a8Srgb")
        public func validate_r8g8b8a8Srgb() {
            #expect(
                Ignite.Format.r8g8b8a8Srgb.rawValue == CVulkan.VK_FORMAT_R8G8B8A8_SRGB.rawValue
            )
        }

        @Test("Validate b8g8r8a8Unorm")
        public func validate_b8g8r8a8Unorm() {
            #expect(
                Ignite.Format.b8g8r8a8Unorm.rawValue == CVulkan.VK_FORMAT_B8G8R8A8_UNORM.rawValue
            )
        }

        @Test("Validate b8g8r8a8Snorm")
        public func validate_b8g8r8a8Snorm() {
            #expect(
                Ignite.Format.b8g8r8a8Snorm.rawValue == CVulkan.VK_FORMAT_B8G8R8A8_SNORM.rawValue
            )
        }

        @Test("Validate b8g8r8a8Uscaled")
        public func validate_b8g8r8a8Uscaled() {
            #expect(
                Ignite.Format.b8g8r8a8Uscaled.rawValue == CVulkan.VK_FORMAT_B8G8R8A8_USCALED.rawValue
            )
        }

        @Test("Validate b8g8r8a8Sscaled")
        public func validate_b8g8r8a8Sscaled() {
            #expect(
                Ignite.Format.b8g8r8a8Sscaled.rawValue == CVulkan.VK_FORMAT_B8G8R8A8_SSCALED.rawValue
            )
        }

        @Test("Validate b8g8r8a8Uint")
        public func validate_b8g8r8a8Uint() {
            #expect(
                Ignite.Format.b8g8r8a8Uint.rawValue == CVulkan.VK_FORMAT_B8G8R8A8_UINT.rawValue
            )
        }

        @Test("Validate b8g8r8a8Sint")
        public func validate_b8g8r8a8Sint() {
            #expect(
                Ignite.Format.b8g8r8a8Sint.rawValue == CVulkan.VK_FORMAT_B8G8R8A8_SINT.rawValue
            )
        }

        @Test("Validate b8g8r8a8Srgb")
        public func validate_b8g8r8a8Srgb() {
            #expect(
                Ignite.Format.b8g8r8a8Srgb.rawValue == CVulkan.VK_FORMAT_B8G8R8A8_SRGB.rawValue
            )
        }

        @Test("Validate a8b8g8r8UnormPack32")
        public func validate_a8b8g8r8UnormPack32() {
            #expect(
                Ignite.Format.a8b8g8r8UnormPack32.rawValue == CVulkan.VK_FORMAT_A8B8G8R8_UNORM_PACK32.rawValue
            )
        }

        @Test("Validate a8b8g8r8SnormPack32")
        public func validate_a8b8g8r8SnormPack32() {
            #expect(
                Ignite.Format.a8b8g8r8SnormPack32.rawValue == CVulkan.VK_FORMAT_A8B8G8R8_SNORM_PACK32.rawValue
            )
        }

        @Test("Validate a8b8g8r8UscaledPack32")
        public func validate_a8b8g8r8UscaledPack32() {
            #expect(
                Ignite.Format.a8b8g8r8UscaledPack32.rawValue == CVulkan.VK_FORMAT_A8B8G8R8_USCALED_PACK32.rawValue
            )
        }

        @Test("Validate a8b8g8r8SscaledPack32")
        public func validate_a8b8g8r8SscaledPack32() {
            #expect(
                Ignite.Format.a8b8g8r8SscaledPack32.rawValue == CVulkan.VK_FORMAT_A8B8G8R8_SSCALED_PACK32.rawValue
            )
        }

        @Test("Validate a8b8g8r8UintPack32")
        public func validate_a8b8g8r8UintPack32() {
            #expect(
                Ignite.Format.a8b8g8r8UintPack32.rawValue == CVulkan.VK_FORMAT_A8B8G8R8_UINT_PACK32.rawValue
            )
        }

        @Test("Validate a8b8g8r8SintPack32")
        public func validate_a8b8g8r8SintPack32() {
            #expect(
                Ignite.Format.a8b8g8r8SintPack32.rawValue == CVulkan.VK_FORMAT_A8B8G8R8_SINT_PACK32.rawValue
            )
        }

        @Test("Validate a8b8g8r8SrgbPack32")
        public func validate_a8b8g8r8SrgbPack32() {
            #expect(
                Ignite.Format.a8b8g8r8SrgbPack32.rawValue == CVulkan.VK_FORMAT_A8B8G8R8_SRGB_PACK32.rawValue
            )
        }

        @Test("Validate a2r10g10b10UnormPack32")
        public func validate_a2r10g10b10UnormPack32() {
            #expect(
                Ignite.Format.a2r10g10b10UnormPack32.rawValue == CVulkan.VK_FORMAT_A2R10G10B10_UNORM_PACK32.rawValue
            )
        }

        @Test("Validate a2r10g10b10SnormPack32")
        public func validate_a2r10g10b10SnormPack32() {
            #expect(
                Ignite.Format.a2r10g10b10SnormPack32.rawValue == CVulkan.VK_FORMAT_A2R10G10B10_SNORM_PACK32.rawValue
            )
        }

        @Test("Validate a2r10g10b10UscaledPack32")
        public func validate_a2r10g10b10UscaledPack32() {
            #expect(
                Ignite.Format.a2r10g10b10UscaledPack32.rawValue == CVulkan.VK_FORMAT_A2R10G10B10_USCALED_PACK32.rawValue
            )
        }

        @Test("Validate a2r10g10b10SscaledPack32")
        public func validate_a2r10g10b10SscaledPack32() {
            #expect(
                Ignite.Format.a2r10g10b10SscaledPack32.rawValue == CVulkan.VK_FORMAT_A2R10G10B10_SSCALED_PACK32.rawValue
            )
        }

        @Test("Validate a2r10g10b10UintPack32")
        public func validate_a2r10g10b10UintPack32() {
            #expect(
                Ignite.Format.a2r10g10b10UintPack32.rawValue == CVulkan.VK_FORMAT_A2R10G10B10_UINT_PACK32.rawValue
            )
        }

        @Test("Validate a2r10g10b10SintPack32")
        public func validate_a2r10g10b10SintPack32() {
            #expect(
                Ignite.Format.a2r10g10b10SintPack32.rawValue == CVulkan.VK_FORMAT_A2R10G10B10_SINT_PACK32.rawValue
            )
        }

        @Test("Validate a2b10g10r10UnormPack32")
        public func validate_a2b10g10r10UnormPack32() {
            #expect(
                Ignite.Format.a2b10g10r10UnormPack32.rawValue == CVulkan.VK_FORMAT_A2B10G10R10_UNORM_PACK32.rawValue
            )
        }

        @Test("Validate a2b10g10r10SnormPack32")
        public func validate_a2b10g10r10SnormPack32() {
            #expect(
                Ignite.Format.a2b10g10r10SnormPack32.rawValue == CVulkan.VK_FORMAT_A2B10G10R10_SNORM_PACK32.rawValue
            )
        }

        @Test("Validate a2b10g10r10UscaledPack32")
        public func validate_a2b10g10r10UscaledPack32() {
            #expect(
                Ignite.Format.a2b10g10r10UscaledPack32.rawValue == CVulkan.VK_FORMAT_A2B10G10R10_USCALED_PACK32.rawValue
            )
        }

        @Test("Validate a2b10g10r10SscaledPack32")
        public func validate_a2b10g10r10SscaledPack32() {
            #expect(
                Ignite.Format.a2b10g10r10SscaledPack32.rawValue == CVulkan.VK_FORMAT_A2B10G10R10_SSCALED_PACK32.rawValue
            )
        }

        @Test("Validate a2b10g10r10UintPack32")
        public func validate_a2b10g10r10UintPack32() {
            #expect(
                Ignite.Format.a2b10g10r10UintPack32.rawValue == CVulkan.VK_FORMAT_A2B10G10R10_UINT_PACK32.rawValue
            )
        }

        @Test("Validate a2b10g10r10SintPack32")
        public func validate_a2b10g10r10SintPack32() {
            #expect(
                Ignite.Format.a2b10g10r10SintPack32.rawValue == CVulkan.VK_FORMAT_A2B10G10R10_SINT_PACK32.rawValue
            )
        }

        @Test("Validate r16Unorm")
        public func validate_r16Unorm() {
            #expect(
                Ignite.Format.r16Unorm.rawValue == CVulkan.VK_FORMAT_R16_UNORM.rawValue
            )
        }

        @Test("Validate r16Snorm")
        public func validate_r16Snorm() {
            #expect(
                Ignite.Format.r16Snorm.rawValue == CVulkan.VK_FORMAT_R16_SNORM.rawValue
            )
        }

        @Test("Validate r16Uscaled")
        public func validate_r16Uscaled() {
            #expect(
                Ignite.Format.r16Uscaled.rawValue == CVulkan.VK_FORMAT_R16_USCALED.rawValue
            )
        }

        @Test("Validate r16Sscaled")
        public func validate_r16Sscaled() {
            #expect(
                Ignite.Format.r16Sscaled.rawValue == CVulkan.VK_FORMAT_R16_SSCALED.rawValue
            )
        }

        @Test("Validate r16Uint")
        public func validate_r16Uint() {
            #expect(
                Ignite.Format.r16Uint.rawValue == CVulkan.VK_FORMAT_R16_UINT.rawValue
            )
        }

        @Test("Validate r16Sint")
        public func validate_r16Sint() {
            #expect(
                Ignite.Format.r16Sint.rawValue == CVulkan.VK_FORMAT_R16_SINT.rawValue
            )
        }

        @Test("Validate r16Sfloat")
        public func validate_r16Sfloat() {
            #expect(
                Ignite.Format.r16Sfloat.rawValue == CVulkan.VK_FORMAT_R16_SFLOAT.rawValue
            )
        }

        @Test("Validate r16g16Unorm")
        public func validate_r16g16Unorm() {
            #expect(
                Ignite.Format.r16g16Unorm.rawValue == CVulkan.VK_FORMAT_R16G16_UNORM.rawValue
            )
        }

        @Test("Validate r16g16Snorm")
        public func validate_r16g16Snorm() {
            #expect(
                Ignite.Format.r16g16Snorm.rawValue == CVulkan.VK_FORMAT_R16G16_SNORM.rawValue
            )
        }

        @Test("Validate r16g16Uscaled")
        public func validate_r16g16Uscaled() {
            #expect(
                Ignite.Format.r16g16Uscaled.rawValue == CVulkan.VK_FORMAT_R16G16_USCALED.rawValue
            )
        }

        @Test("Validate r16g16Sscaled")
        public func validate_r16g16Sscaled() {
            #expect(
                Ignite.Format.r16g16Sscaled.rawValue == CVulkan.VK_FORMAT_R16G16_SSCALED.rawValue
            )
        }

        @Test("Validate r16g16Uint")
        public func validate_r16g16Uint() {
            #expect(
                Ignite.Format.r16g16Uint.rawValue == CVulkan.VK_FORMAT_R16G16_UINT.rawValue
            )
        }

        @Test("Validate r16g16Sint")
        public func validate_r16g16Sint() {
            #expect(
                Ignite.Format.r16g16Sint.rawValue == CVulkan.VK_FORMAT_R16G16_SINT.rawValue
            )
        }

        @Test("Validate r16g16Sfloat")
        public func validate_r16g16Sfloat() {
            #expect(
                Ignite.Format.r16g16Sfloat.rawValue == CVulkan.VK_FORMAT_R16G16_SFLOAT.rawValue
            )
        }

        @Test("Validate r16g16b16Unorm")
        public func validate_r16g16b16Unorm() {
            #expect(
                Ignite.Format.r16g16b16Unorm.rawValue == CVulkan.VK_FORMAT_R16G16B16_UNORM.rawValue
            )
        }

        @Test("Validate r16g16b16Snorm")
        public func validate_r16g16b16Snorm() {
            #expect(
                Ignite.Format.r16g16b16Snorm.rawValue == CVulkan.VK_FORMAT_R16G16B16_SNORM.rawValue
            )
        }

        @Test("Validate r16g16b16Uscaled")
        public func validate_r16g16b16Uscaled() {
            #expect(
                Ignite.Format.r16g16b16Uscaled.rawValue == CVulkan.VK_FORMAT_R16G16B16_USCALED.rawValue
            )
        }

        @Test("Validate r16g16b16Sscaled")
        public func validate_r16g16b16Sscaled() {
            #expect(
                Ignite.Format.r16g16b16Sscaled.rawValue == CVulkan.VK_FORMAT_R16G16B16_SSCALED.rawValue
            )
        }

        @Test("Validate r16g16b16Uint")
        public func validate_r16g16b16Uint() {
            #expect(
                Ignite.Format.r16g16b16Uint.rawValue == CVulkan.VK_FORMAT_R16G16B16_UINT.rawValue
            )
        }

        @Test("Validate r16g16b16Sint")
        public func validate_r16g16b16Sint() {
            #expect(
                Ignite.Format.r16g16b16Sint.rawValue == CVulkan.VK_FORMAT_R16G16B16_SINT.rawValue
            )
        }

        @Test("Validate r16g16b16Sfloat")
        public func validate_r16g16b16Sfloat() {
            #expect(
                Ignite.Format.r16g16b16Sfloat.rawValue == CVulkan.VK_FORMAT_R16G16B16_SFLOAT.rawValue
            )
        }

        @Test("Validate r16g16b16a16Unorm")
        public func validate_r16g16b16a16Unorm() {
            #expect(
                Ignite.Format.r16g16b16a16Unorm.rawValue == CVulkan.VK_FORMAT_R16G16B16A16_UNORM.rawValue
            )
        }

        @Test("Validate r16g16b16a16Snorm")
        public func validate_r16g16b16a16Snorm() {
            #expect(
                Ignite.Format.r16g16b16a16Snorm.rawValue == CVulkan.VK_FORMAT_R16G16B16A16_SNORM.rawValue
            )
        }

        @Test("Validate r16g16b16a16Uscaled")
        public func validate_r16g16b16a16Uscaled() {
            #expect(
                Ignite.Format.r16g16b16a16Uscaled.rawValue == CVulkan.VK_FORMAT_R16G16B16A16_USCALED.rawValue
            )
        }

        @Test("Validate r16g16b16a16Sscaled")
        public func validate_r16g16b16a16Sscaled() {
            #expect(
                Ignite.Format.r16g16b16a16Sscaled.rawValue == CVulkan.VK_FORMAT_R16G16B16A16_SSCALED.rawValue
            )
        }

        @Test("Validate r16g16b16a16Uint")
        public func validate_r16g16b16a16Uint() {
            #expect(
                Ignite.Format.r16g16b16a16Uint.rawValue == CVulkan.VK_FORMAT_R16G16B16A16_UINT.rawValue
            )
        }

        @Test("Validate r16g16b16a16Sint")
        public func validate_r16g16b16a16Sint() {
            #expect(
                Ignite.Format.r16g16b16a16Sint.rawValue == CVulkan.VK_FORMAT_R16G16B16A16_SINT.rawValue
            )
        }

        @Test("Validate r16g16b16a16Sfloat")
        public func validate_r16g16b16a16Sfloat() {
            #expect(
                Ignite.Format.r16g16b16a16Sfloat.rawValue == CVulkan.VK_FORMAT_R16G16B16A16_SFLOAT.rawValue
            )
        }

        @Test("Validate r32Uint")
        public func validate_r32Uint() {
            #expect(
                Ignite.Format.r32Uint.rawValue == CVulkan.VK_FORMAT_R32_UINT.rawValue
            )
        }

        @Test("Validate r32Sint")
        public func validate_r32Sint() {
            #expect(
                Ignite.Format.r32Sint.rawValue == CVulkan.VK_FORMAT_R32_SINT.rawValue
            )
        }

        @Test("Validate r32Sfloat")
        public func validate_r32Sfloat() {
            #expect(
                Ignite.Format.r32Sfloat.rawValue == CVulkan.VK_FORMAT_R32_SFLOAT.rawValue
            )
        }

        @Test("Validate r32g32Uint")
        public func validate_r32g32Uint() {
            #expect(
                Ignite.Format.r32g32Uint.rawValue == CVulkan.VK_FORMAT_R32G32_UINT.rawValue
            )
        }

        @Test("Validate r32g32Sint")
        public func validate_r32g32Sint() {
            #expect(
                Ignite.Format.r32g32Sint.rawValue == CVulkan.VK_FORMAT_R32G32_SINT.rawValue
            )
        }

        @Test("Validate r32g32Sfloat")
        public func validate_r32g32Sfloat() {
            #expect(
                Ignite.Format.r32g32Sfloat.rawValue == CVulkan.VK_FORMAT_R32G32_SFLOAT.rawValue
            )
        }

        @Test("Validate r32g32b32Uint")
        public func validate_r32g32b32Uint() {
            #expect(
                Ignite.Format.r32g32b32Uint.rawValue == CVulkan.VK_FORMAT_R32G32B32_UINT.rawValue
            )
        }

        @Test("Validate r32g32b32Sint")
        public func validate_r32g32b32Sint() {
            #expect(
                Ignite.Format.r32g32b32Sint.rawValue == CVulkan.VK_FORMAT_R32G32B32_SINT.rawValue
            )
        }

        @Test("Validate r32g32b32Sfloat")
        public func validate_r32g32b32Sfloat() {
            #expect(
                Ignite.Format.r32g32b32Sfloat.rawValue == CVulkan.VK_FORMAT_R32G32B32_SFLOAT.rawValue
            )
        }

        @Test("Validate r32g32b32a32Uint")
        public func validate_r32g32b32a32Uint() {
            #expect(
                Ignite.Format.r32g32b32a32Uint.rawValue == CVulkan.VK_FORMAT_R32G32B32A32_UINT.rawValue
            )
        }

        @Test("Validate r32g32b32a32Sint")
        public func validate_r32g32b32a32Sint() {
            #expect(
                Ignite.Format.r32g32b32a32Sint.rawValue == CVulkan.VK_FORMAT_R32G32B32A32_SINT.rawValue
            )
        }

        @Test("Validate r32g32b32a32Sfloat")
        public func validate_r32g32b32a32Sfloat() {
            #expect(
                Ignite.Format.r32g32b32a32Sfloat.rawValue == CVulkan.VK_FORMAT_R32G32B32A32_SFLOAT.rawValue
            )
        }

        @Test("Validate r64Uint")
        public func validate_r64Uint() {
            #expect(
                Ignite.Format.r64Uint.rawValue == CVulkan.VK_FORMAT_R64_UINT.rawValue
            )
        }

        @Test("Validate r64Sint")
        public func validate_r64Sint() {
            #expect(
                Ignite.Format.r64Sint.rawValue == CVulkan.VK_FORMAT_R64_SINT.rawValue
            )
        }

        @Test("Validate r64Sfloat")
        public func validate_r64Sfloat() {
            #expect(
                Ignite.Format.r64Sfloat.rawValue == CVulkan.VK_FORMAT_R64_SFLOAT.rawValue
            )
        }

        @Test("Validate r64g64Uint")
        public func validate_r64g64Uint() {
            #expect(
                Ignite.Format.r64g64Uint.rawValue == CVulkan.VK_FORMAT_R64G64_UINT.rawValue
            )
        }

        @Test("Validate r64g64Sint")
        public func validate_r64g64Sint() {
            #expect(
                Ignite.Format.r64g64Sint.rawValue == CVulkan.VK_FORMAT_R64G64_SINT.rawValue
            )
        }

        @Test("Validate r64g64Sfloat")
        public func validate_r64g64Sfloat() {
            #expect(
                Ignite.Format.r64g64Sfloat.rawValue == CVulkan.VK_FORMAT_R64G64_SFLOAT.rawValue
            )
        }

        @Test("Validate r64g64b64Uint")
        public func validate_r64g64b64Uint() {
            #expect(
                Ignite.Format.r64g64b64Uint.rawValue == CVulkan.VK_FORMAT_R64G64B64_UINT.rawValue
            )
        }

        @Test("Validate r64g64b64Sint")
        public func validate_r64g64b64Sint() {
            #expect(
                Ignite.Format.r64g64b64Sint.rawValue == CVulkan.VK_FORMAT_R64G64B64_SINT.rawValue
            )
        }

        @Test("Validate r64g64b64Sfloat")
        public func validate_r64g64b64Sfloat() {
            #expect(
                Ignite.Format.r64g64b64Sfloat.rawValue == CVulkan.VK_FORMAT_R64G64B64_SFLOAT.rawValue
            )
        }

        @Test("Validate r64g64b64a64Uint")
        public func validate_r64g64b64a64Uint() {
            #expect(
                Ignite.Format.r64g64b64a64Uint.rawValue == CVulkan.VK_FORMAT_R64G64B64A64_UINT.rawValue
            )
        }

        @Test("Validate r64g64b64a64Sint")
        public func validate_r64g64b64a64Sint() {
            #expect(
                Ignite.Format.r64g64b64a64Sint.rawValue == CVulkan.VK_FORMAT_R64G64B64A64_SINT.rawValue
            )
        }

        @Test("Validate r64g64b64a64Sfloat")
        public func validate_r64g64b64a64Sfloat() {
            #expect(
                Ignite.Format.r64g64b64a64Sfloat.rawValue == CVulkan.VK_FORMAT_R64G64B64A64_SFLOAT.rawValue
            )
        }

        @Test("Validate b10g11r11UfloatPack32")
        public func validate_b10g11r11UfloatPack32() {
            #expect(
                Ignite.Format.b10g11r11UfloatPack32.rawValue == CVulkan.VK_FORMAT_B10G11R11_UFLOAT_PACK32.rawValue
            )
        }

        @Test("Validate e5b9g9r9UfloatPack32")
        public func validate_e5b9g9r9UfloatPack32() {
            #expect(
                Ignite.Format.e5b9g9r9UfloatPack32.rawValue == CVulkan.VK_FORMAT_E5B9G9R9_UFLOAT_PACK32.rawValue
            )
        }

        @Test("Validate d16Unorm")
        public func validate_d16Unorm() {
            #expect(
                Ignite.Format.d16Unorm.rawValue == CVulkan.VK_FORMAT_D16_UNORM.rawValue
            )
        }

        @Test("Validate x8D24UnormPack32")
        public func validate_x8D24UnormPack32() {
            #expect(
                Ignite.Format.x8D24UnormPack32.rawValue == CVulkan.VK_FORMAT_X8_D24_UNORM_PACK32.rawValue
            )
        }

        @Test("Validate d32Sfloat")
        public func validate_d32Sfloat() {
            #expect(
                Ignite.Format.d32Sfloat.rawValue == CVulkan.VK_FORMAT_D32_SFLOAT.rawValue
            )
        }

        @Test("Validate s8Uint")
        public func validate_s8Uint() {
            #expect(
                Ignite.Format.s8Uint.rawValue == CVulkan.VK_FORMAT_S8_UINT.rawValue
            )
        }

        @Test("Validate d16UnormS8Uint")
        public func validate_d16UnormS8Uint() {
            #expect(
                Ignite.Format.d16UnormS8Uint.rawValue == CVulkan.VK_FORMAT_D16_UNORM_S8_UINT.rawValue
            )
        }

        @Test("Validate d24UnormS8Uint")
        public func validate_d24UnormS8Uint() {
            #expect(
                Ignite.Format.d24UnormS8Uint.rawValue == CVulkan.VK_FORMAT_D24_UNORM_S8_UINT.rawValue
            )
        }

        @Test("Validate d32SfloatS8Uint")
        public func validate_d32SfloatS8Uint() {
            #expect(
                Ignite.Format.d32SfloatS8Uint.rawValue == CVulkan.VK_FORMAT_D32_SFLOAT_S8_UINT.rawValue
            )
        }

        @Test("Validate bc1RgbUnormBlock")
        public func validate_bc1RgbUnormBlock() {
            #expect(
                Ignite.Format.bc1RgbUnormBlock.rawValue == CVulkan.VK_FORMAT_BC1_RGB_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate bc1RgbSrgbBlock")
        public func validate_bc1RgbSrgbBlock() {
            #expect(
                Ignite.Format.bc1RgbSrgbBlock.rawValue == CVulkan.VK_FORMAT_BC1_RGB_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate bc1RgbaUnormBlock")
        public func validate_bc1RgbaUnormBlock() {
            #expect(
                Ignite.Format.bc1RgbaUnormBlock.rawValue == CVulkan.VK_FORMAT_BC1_RGBA_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate bc1RgbaSrgbBlock")
        public func validate_bc1RgbaSrgbBlock() {
            #expect(
                Ignite.Format.bc1RgbaSrgbBlock.rawValue == CVulkan.VK_FORMAT_BC1_RGBA_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate bc2UnormBlock")
        public func validate_bc2UnormBlock() {
            #expect(
                Ignite.Format.bc2UnormBlock.rawValue == CVulkan.VK_FORMAT_BC2_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate bc2SrgbBlock")
        public func validate_bc2SrgbBlock() {
            #expect(
                Ignite.Format.bc2SrgbBlock.rawValue == CVulkan.VK_FORMAT_BC2_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate bc3UnormBlock")
        public func validate_bc3UnormBlock() {
            #expect(
                Ignite.Format.bc3UnormBlock.rawValue == CVulkan.VK_FORMAT_BC3_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate bc3SrgbBlock")
        public func validate_bc3SrgbBlock() {
            #expect(
                Ignite.Format.bc3SrgbBlock.rawValue == CVulkan.VK_FORMAT_BC3_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate bc4UnormBlock")
        public func validate_bc4UnormBlock() {
            #expect(
                Ignite.Format.bc4UnormBlock.rawValue == CVulkan.VK_FORMAT_BC4_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate bc4SnormBlock")
        public func validate_bc4SnormBlock() {
            #expect(
                Ignite.Format.bc4SnormBlock.rawValue == CVulkan.VK_FORMAT_BC4_SNORM_BLOCK.rawValue
            )
        }

        @Test("Validate bc5UnormBlock")
        public func validate_bc5UnormBlock() {
            #expect(
                Ignite.Format.bc5UnormBlock.rawValue == CVulkan.VK_FORMAT_BC5_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate bc5SnormBlock")
        public func validate_bc5SnormBlock() {
            #expect(
                Ignite.Format.bc5SnormBlock.rawValue == CVulkan.VK_FORMAT_BC5_SNORM_BLOCK.rawValue
            )
        }

        @Test("Validate bc6hUfloatBlock")
        public func validate_bc6hUfloatBlock() {
            #expect(
                Ignite.Format.bc6hUfloatBlock.rawValue == CVulkan.VK_FORMAT_BC6H_UFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate bc6hSfloatBlock")
        public func validate_bc6hSfloatBlock() {
            #expect(
                Ignite.Format.bc6hSfloatBlock.rawValue == CVulkan.VK_FORMAT_BC6H_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate bc7UnormBlock")
        public func validate_bc7UnormBlock() {
            #expect(
                Ignite.Format.bc7UnormBlock.rawValue == CVulkan.VK_FORMAT_BC7_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate bc7SrgbBlock")
        public func validate_bc7SrgbBlock() {
            #expect(
                Ignite.Format.bc7SrgbBlock.rawValue == CVulkan.VK_FORMAT_BC7_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate etc2R8g8b8UnormBlock")
        public func validate_etc2R8g8b8UnormBlock() {
            #expect(
                Ignite.Format.etc2R8g8b8UnormBlock.rawValue == CVulkan.VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate etc2R8g8b8SrgbBlock")
        public func validate_etc2R8g8b8SrgbBlock() {
            #expect(
                Ignite.Format.etc2R8g8b8SrgbBlock.rawValue == CVulkan.VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate etc2R8g8b8a1UnormBlock")
        public func validate_etc2R8g8b8a1UnormBlock() {
            #expect(
                Ignite.Format.etc2R8g8b8a1UnormBlock.rawValue == CVulkan.VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate etc2R8g8b8a1SrgbBlock")
        public func validate_etc2R8g8b8a1SrgbBlock() {
            #expect(
                Ignite.Format.etc2R8g8b8a1SrgbBlock.rawValue == CVulkan.VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate etc2R8g8b8a8UnormBlock")
        public func validate_etc2R8g8b8a8UnormBlock() {
            #expect(
                Ignite.Format.etc2R8g8b8a8UnormBlock.rawValue == CVulkan.VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate etc2R8g8b8a8SrgbBlock")
        public func validate_etc2R8g8b8a8SrgbBlock() {
            #expect(
                Ignite.Format.etc2R8g8b8a8SrgbBlock.rawValue == CVulkan.VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate eacR11UnormBlock")
        public func validate_eacR11UnormBlock() {
            #expect(
                Ignite.Format.eacR11UnormBlock.rawValue == CVulkan.VK_FORMAT_EAC_R11_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate eacR11SnormBlock")
        public func validate_eacR11SnormBlock() {
            #expect(
                Ignite.Format.eacR11SnormBlock.rawValue == CVulkan.VK_FORMAT_EAC_R11_SNORM_BLOCK.rawValue
            )
        }

        @Test("Validate eacR11g11UnormBlock")
        public func validate_eacR11g11UnormBlock() {
            #expect(
                Ignite.Format.eacR11g11UnormBlock.rawValue == CVulkan.VK_FORMAT_EAC_R11G11_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate eacR11g11SnormBlock")
        public func validate_eacR11g11SnormBlock() {
            #expect(
                Ignite.Format.eacR11g11SnormBlock.rawValue == CVulkan.VK_FORMAT_EAC_R11G11_SNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc4x4UnormBlock")
        public func validate_astc4x4UnormBlock() {
            #expect(
                Ignite.Format.astc4x4UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_4x4_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc4x4SrgbBlock")
        public func validate_astc4x4SrgbBlock() {
            #expect(
                Ignite.Format.astc4x4SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_4x4_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc5x4UnormBlock")
        public func validate_astc5x4UnormBlock() {
            #expect(
                Ignite.Format.astc5x4UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_5x4_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc5x4SrgbBlock")
        public func validate_astc5x4SrgbBlock() {
            #expect(
                Ignite.Format.astc5x4SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_5x4_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc5x5UnormBlock")
        public func validate_astc5x5UnormBlock() {
            #expect(
                Ignite.Format.astc5x5UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_5x5_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc5x5SrgbBlock")
        public func validate_astc5x5SrgbBlock() {
            #expect(
                Ignite.Format.astc5x5SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_5x5_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc6x5UnormBlock")
        public func validate_astc6x5UnormBlock() {
            #expect(
                Ignite.Format.astc6x5UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_6x5_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc6x5SrgbBlock")
        public func validate_astc6x5SrgbBlock() {
            #expect(
                Ignite.Format.astc6x5SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_6x5_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc6x6UnormBlock")
        public func validate_astc6x6UnormBlock() {
            #expect(
                Ignite.Format.astc6x6UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_6x6_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc6x6SrgbBlock")
        public func validate_astc6x6SrgbBlock() {
            #expect(
                Ignite.Format.astc6x6SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_6x6_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc8x5UnormBlock")
        public func validate_astc8x5UnormBlock() {
            #expect(
                Ignite.Format.astc8x5UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_8x5_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc8x5SrgbBlock")
        public func validate_astc8x5SrgbBlock() {
            #expect(
                Ignite.Format.astc8x5SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_8x5_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc8x6UnormBlock")
        public func validate_astc8x6UnormBlock() {
            #expect(
                Ignite.Format.astc8x6UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_8x6_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc8x6SrgbBlock")
        public func validate_astc8x6SrgbBlock() {
            #expect(
                Ignite.Format.astc8x6SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_8x6_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc8x8UnormBlock")
        public func validate_astc8x8UnormBlock() {
            #expect(
                Ignite.Format.astc8x8UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_8x8_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc8x8SrgbBlock")
        public func validate_astc8x8SrgbBlock() {
            #expect(
                Ignite.Format.astc8x8SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_8x8_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x5UnormBlock")
        public func validate_astc10x5UnormBlock() {
            #expect(
                Ignite.Format.astc10x5UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x5_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x5SrgbBlock")
        public func validate_astc10x5SrgbBlock() {
            #expect(
                Ignite.Format.astc10x5SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x5_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x6UnormBlock")
        public func validate_astc10x6UnormBlock() {
            #expect(
                Ignite.Format.astc10x6UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x6_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x6SrgbBlock")
        public func validate_astc10x6SrgbBlock() {
            #expect(
                Ignite.Format.astc10x6SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x6_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x8UnormBlock")
        public func validate_astc10x8UnormBlock() {
            #expect(
                Ignite.Format.astc10x8UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x8_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x8SrgbBlock")
        public func validate_astc10x8SrgbBlock() {
            #expect(
                Ignite.Format.astc10x8SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x8_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x10UnormBlock")
        public func validate_astc10x10UnormBlock() {
            #expect(
                Ignite.Format.astc10x10UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x10_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x10SrgbBlock")
        public func validate_astc10x10SrgbBlock() {
            #expect(
                Ignite.Format.astc10x10SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x10_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc12x10UnormBlock")
        public func validate_astc12x10UnormBlock() {
            #expect(
                Ignite.Format.astc12x10UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_12x10_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc12x10SrgbBlock")
        public func validate_astc12x10SrgbBlock() {
            #expect(
                Ignite.Format.astc12x10SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_12x10_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate astc12x12UnormBlock")
        public func validate_astc12x12UnormBlock() {
            #expect(
                Ignite.Format.astc12x12UnormBlock.rawValue == CVulkan.VK_FORMAT_ASTC_12x12_UNORM_BLOCK.rawValue
            )
        }

        @Test("Validate astc12x12SrgbBlock")
        public func validate_astc12x12SrgbBlock() {
            #expect(
                Ignite.Format.astc12x12SrgbBlock.rawValue == CVulkan.VK_FORMAT_ASTC_12x12_SRGB_BLOCK.rawValue
            )
        }

        @Test("Validate g8b8g8r8422Unorm")
        public func validate_g8b8g8r8422Unorm() {
            #expect(
                Ignite.Format.g8b8g8r8422Unorm.rawValue == CVulkan.VK_FORMAT_G8B8G8R8_422_UNORM.rawValue
            )
        }

        @Test("Validate b8g8r8g8422Unorm")
        public func validate_b8g8r8g8422Unorm() {
            #expect(
                Ignite.Format.b8g8r8g8422Unorm.rawValue == CVulkan.VK_FORMAT_B8G8R8G8_422_UNORM.rawValue
            )
        }

        @Test("Validate g8B8R83plane420Unorm")
        public func validate_g8B8R83plane420Unorm() {
            #expect(
                Ignite.Format.g8B8R83plane420Unorm.rawValue == CVulkan.VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM.rawValue
            )
        }

        @Test("Validate g8B8r82plane420Unorm")
        public func validate_g8B8r82plane420Unorm() {
            #expect(
                Ignite.Format.g8B8r82plane420Unorm.rawValue == CVulkan.VK_FORMAT_G8_B8R8_2PLANE_420_UNORM.rawValue
            )
        }

        @Test("Validate g8B8R83plane422Unorm")
        public func validate_g8B8R83plane422Unorm() {
            #expect(
                Ignite.Format.g8B8R83plane422Unorm.rawValue == CVulkan.VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM.rawValue
            )
        }

        @Test("Validate g8B8r82plane422Unorm")
        public func validate_g8B8r82plane422Unorm() {
            #expect(
                Ignite.Format.g8B8r82plane422Unorm.rawValue == CVulkan.VK_FORMAT_G8_B8R8_2PLANE_422_UNORM.rawValue
            )
        }

        @Test("Validate g8B8R83plane444Unorm")
        public func validate_g8B8R83plane444Unorm() {
            #expect(
                Ignite.Format.g8B8R83plane444Unorm.rawValue == CVulkan.VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM.rawValue
            )
        }

        @Test("Validate r10x6UnormPack16")
        public func validate_r10x6UnormPack16() {
            #expect(
                Ignite.Format.r10x6UnormPack16.rawValue == CVulkan.VK_FORMAT_R10X6_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate r10x6g10x6Unorm2pack16")
        public func validate_r10x6g10x6Unorm2pack16() {
            #expect(
                Ignite.Format.r10x6g10x6Unorm2pack16.rawValue == CVulkan.VK_FORMAT_R10X6G10X6_UNORM_2PACK16.rawValue
            )
        }

        @Test("Validate r10x6g10x6b10x6a10x6Unorm4pack16")
        public func validate_r10x6g10x6b10x6a10x6Unorm4pack16() {
            #expect(
                Ignite.Format.r10x6g10x6b10x6a10x6Unorm4pack16.rawValue
                    == CVulkan.VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16.rawValue
            )
        }

        @Test("Validate g10x6b10x6g10x6r10x6422Unorm4pack16")
        public func validate_g10x6b10x6g10x6r10x6422Unorm4pack16() {
            #expect(
                Ignite.Format.g10x6b10x6g10x6r10x6422Unorm4pack16.rawValue
                    == CVulkan.VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16.rawValue
            )
        }

        @Test("Validate b10x6g10x6r10x6g10x6422Unorm4pack16")
        public func validate_b10x6g10x6r10x6g10x6422Unorm4pack16() {
            #expect(
                Ignite.Format.b10x6g10x6r10x6g10x6422Unorm4pack16.rawValue
                    == CVulkan.VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16.rawValue
            )
        }

        @Test("Validate g10x6B10x6R10x63plane420Unorm3pack16")
        public func validate_g10x6B10x6R10x63plane420Unorm3pack16() {
            #expect(
                Ignite.Format.g10x6B10x6R10x63plane420Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g10x6B10x6r10x62plane420Unorm3pack16")
        public func validate_g10x6B10x6r10x62plane420Unorm3pack16() {
            #expect(
                Ignite.Format.g10x6B10x6r10x62plane420Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g10x6B10x6R10x63plane422Unorm3pack16")
        public func validate_g10x6B10x6R10x63plane422Unorm3pack16() {
            #expect(
                Ignite.Format.g10x6B10x6R10x63plane422Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g10x6B10x6r10x62plane422Unorm3pack16")
        public func validate_g10x6B10x6r10x62plane422Unorm3pack16() {
            #expect(
                Ignite.Format.g10x6B10x6r10x62plane422Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g10x6B10x6R10x63plane444Unorm3pack16")
        public func validate_g10x6B10x6R10x63plane444Unorm3pack16() {
            #expect(
                Ignite.Format.g10x6B10x6R10x63plane444Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate r12x4UnormPack16")
        public func validate_r12x4UnormPack16() {
            #expect(
                Ignite.Format.r12x4UnormPack16.rawValue == CVulkan.VK_FORMAT_R12X4_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate r12x4g12x4Unorm2pack16")
        public func validate_r12x4g12x4Unorm2pack16() {
            #expect(
                Ignite.Format.r12x4g12x4Unorm2pack16.rawValue == CVulkan.VK_FORMAT_R12X4G12X4_UNORM_2PACK16.rawValue
            )
        }

        @Test("Validate r12x4g12x4b12x4a12x4Unorm4pack16")
        public func validate_r12x4g12x4b12x4a12x4Unorm4pack16() {
            #expect(
                Ignite.Format.r12x4g12x4b12x4a12x4Unorm4pack16.rawValue
                    == CVulkan.VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16.rawValue
            )
        }

        @Test("Validate g12x4b12x4g12x4r12x4422Unorm4pack16")
        public func validate_g12x4b12x4g12x4r12x4422Unorm4pack16() {
            #expect(
                Ignite.Format.g12x4b12x4g12x4r12x4422Unorm4pack16.rawValue
                    == CVulkan.VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16.rawValue
            )
        }

        @Test("Validate b12x4g12x4r12x4g12x4422Unorm4pack16")
        public func validate_b12x4g12x4r12x4g12x4422Unorm4pack16() {
            #expect(
                Ignite.Format.b12x4g12x4r12x4g12x4422Unorm4pack16.rawValue
                    == CVulkan.VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16.rawValue
            )
        }

        @Test("Validate g12x4B12x4R12x43plane420Unorm3pack16")
        public func validate_g12x4B12x4R12x43plane420Unorm3pack16() {
            #expect(
                Ignite.Format.g12x4B12x4R12x43plane420Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g12x4B12x4r12x42plane420Unorm3pack16")
        public func validate_g12x4B12x4r12x42plane420Unorm3pack16() {
            #expect(
                Ignite.Format.g12x4B12x4r12x42plane420Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g12x4B12x4R12x43plane422Unorm3pack16")
        public func validate_g12x4B12x4R12x43plane422Unorm3pack16() {
            #expect(
                Ignite.Format.g12x4B12x4R12x43plane422Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g12x4B12x4r12x42plane422Unorm3pack16")
        public func validate_g12x4B12x4r12x42plane422Unorm3pack16() {
            #expect(
                Ignite.Format.g12x4B12x4r12x42plane422Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g12x4B12x4R12x43plane444Unorm3pack16")
        public func validate_g12x4B12x4R12x43plane444Unorm3pack16() {
            #expect(
                Ignite.Format.g12x4B12x4R12x43plane444Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g16b16g16r16422Unorm")
        public func validate_g16b16g16r16422Unorm() {
            #expect(
                Ignite.Format.g16b16g16r16422Unorm.rawValue == CVulkan.VK_FORMAT_G16B16G16R16_422_UNORM.rawValue
            )
        }

        @Test("Validate b16g16r16g16422Unorm")
        public func validate_b16g16r16g16422Unorm() {
            #expect(
                Ignite.Format.b16g16r16g16422Unorm.rawValue == CVulkan.VK_FORMAT_B16G16R16G16_422_UNORM.rawValue
            )
        }

        @Test("Validate g16B16R163plane420Unorm")
        public func validate_g16B16R163plane420Unorm() {
            #expect(
                Ignite.Format.g16B16R163plane420Unorm.rawValue == CVulkan.VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM.rawValue
            )
        }

        @Test("Validate g16B16r162plane420Unorm")
        public func validate_g16B16r162plane420Unorm() {
            #expect(
                Ignite.Format.g16B16r162plane420Unorm.rawValue == CVulkan.VK_FORMAT_G16_B16R16_2PLANE_420_UNORM.rawValue
            )
        }

        @Test("Validate g16B16R163plane422Unorm")
        public func validate_g16B16R163plane422Unorm() {
            #expect(
                Ignite.Format.g16B16R163plane422Unorm.rawValue == CVulkan.VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM.rawValue
            )
        }

        @Test("Validate g16B16r162plane422Unorm")
        public func validate_g16B16r162plane422Unorm() {
            #expect(
                Ignite.Format.g16B16r162plane422Unorm.rawValue == CVulkan.VK_FORMAT_G16_B16R16_2PLANE_422_UNORM.rawValue
            )
        }

        @Test("Validate g16B16R163plane444Unorm")
        public func validate_g16B16R163plane444Unorm() {
            #expect(
                Ignite.Format.g16B16R163plane444Unorm.rawValue == CVulkan.VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM.rawValue
            )
        }

        @Test("Validate g8B8r82plane444Unorm")
        public func validate_g8B8r82plane444Unorm() {
            #expect(
                Ignite.Format.g8B8r82plane444Unorm.rawValue == CVulkan.VK_FORMAT_G8_B8R8_2PLANE_444_UNORM.rawValue
            )
        }

        @Test("Validate g10x6B10x6r10x62plane444Unorm3pack16")
        public func validate_g10x6B10x6r10x62plane444Unorm3pack16() {
            #expect(
                Ignite.Format.g10x6B10x6r10x62plane444Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g12x4B12x4r12x42plane444Unorm3pack16")
        public func validate_g12x4B12x4r12x42plane444Unorm3pack16() {
            #expect(
                Ignite.Format.g12x4B12x4r12x42plane444Unorm3pack16.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16.rawValue
            )
        }

        @Test("Validate g16B16r162plane444Unorm")
        public func validate_g16B16r162plane444Unorm() {
            #expect(
                Ignite.Format.g16B16r162plane444Unorm.rawValue == CVulkan.VK_FORMAT_G16_B16R16_2PLANE_444_UNORM.rawValue
            )
        }

        @Test("Validate a4r4g4b4UnormPack16")
        public func validate_a4r4g4b4UnormPack16() {
            #expect(
                Ignite.Format.a4r4g4b4UnormPack16.rawValue == CVulkan.VK_FORMAT_A4R4G4B4_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate a4b4g4r4UnormPack16")
        public func validate_a4b4g4r4UnormPack16() {
            #expect(
                Ignite.Format.a4b4g4r4UnormPack16.rawValue == CVulkan.VK_FORMAT_A4B4G4R4_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate astc4x4SfloatBlock")
        public func validate_astc4x4SfloatBlock() {
            #expect(
                Ignite.Format.astc4x4SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc5x4SfloatBlock")
        public func validate_astc5x4SfloatBlock() {
            #expect(
                Ignite.Format.astc5x4SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc5x5SfloatBlock")
        public func validate_astc5x5SfloatBlock() {
            #expect(
                Ignite.Format.astc5x5SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc6x5SfloatBlock")
        public func validate_astc6x5SfloatBlock() {
            #expect(
                Ignite.Format.astc6x5SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc6x6SfloatBlock")
        public func validate_astc6x6SfloatBlock() {
            #expect(
                Ignite.Format.astc6x6SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc8x5SfloatBlock")
        public func validate_astc8x5SfloatBlock() {
            #expect(
                Ignite.Format.astc8x5SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc8x6SfloatBlock")
        public func validate_astc8x6SfloatBlock() {
            #expect(
                Ignite.Format.astc8x6SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc8x8SfloatBlock")
        public func validate_astc8x8SfloatBlock() {
            #expect(
                Ignite.Format.astc8x8SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x5SfloatBlock")
        public func validate_astc10x5SfloatBlock() {
            #expect(
                Ignite.Format.astc10x5SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x6SfloatBlock")
        public func validate_astc10x6SfloatBlock() {
            #expect(
                Ignite.Format.astc10x6SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x8SfloatBlock")
        public func validate_astc10x8SfloatBlock() {
            #expect(
                Ignite.Format.astc10x8SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc10x10SfloatBlock")
        public func validate_astc10x10SfloatBlock() {
            #expect(
                Ignite.Format.astc10x10SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc12x10SfloatBlock")
        public func validate_astc12x10SfloatBlock() {
            #expect(
                Ignite.Format.astc12x10SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate astc12x12SfloatBlock")
        public func validate_astc12x12SfloatBlock() {
            #expect(
                Ignite.Format.astc12x12SfloatBlock.rawValue == CVulkan.VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK.rawValue
            )
        }

        @Test("Validate a1b5g5r5UnormPack16")
        public func validate_a1b5g5r5UnormPack16() {
            #expect(
                Ignite.Format.a1b5g5r5UnormPack16.rawValue == CVulkan.VK_FORMAT_A1B5G5R5_UNORM_PACK16.rawValue
            )
        }

        @Test("Validate a8Unorm")
        public func validate_a8Unorm() {
            #expect(
                Ignite.Format.a8Unorm.rawValue == CVulkan.VK_FORMAT_A8_UNORM.rawValue
            )
        }

        @Test("Validate pvrtc12bppUnormBlock_IMG")
        public func validate_pvrtc12bppUnormBlock_IMG() {
            #expect(
                Ignite.Format.pvrtc12bppUnormBlock_IMG.rawValue == CVulkan.VK_FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG.rawValue
            )
        }

        @Test("Validate pvrtc14bppUnormBlock_IMG")
        public func validate_pvrtc14bppUnormBlock_IMG() {
            #expect(
                Ignite.Format.pvrtc14bppUnormBlock_IMG.rawValue == CVulkan.VK_FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG.rawValue
            )
        }

        @Test("Validate pvrtc22bppUnormBlock_IMG")
        public func validate_pvrtc22bppUnormBlock_IMG() {
            #expect(
                Ignite.Format.pvrtc22bppUnormBlock_IMG.rawValue == CVulkan.VK_FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG.rawValue
            )
        }

        @Test("Validate pvrtc24bppUnormBlock_IMG")
        public func validate_pvrtc24bppUnormBlock_IMG() {
            #expect(
                Ignite.Format.pvrtc24bppUnormBlock_IMG.rawValue == CVulkan.VK_FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG.rawValue
            )
        }

        @Test("Validate pvrtc12bppSrgbBlock_IMG")
        public func validate_pvrtc12bppSrgbBlock_IMG() {
            #expect(
                Ignite.Format.pvrtc12bppSrgbBlock_IMG.rawValue == CVulkan.VK_FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG.rawValue
            )
        }

        @Test("Validate pvrtc14bppSrgbBlock_IMG")
        public func validate_pvrtc14bppSrgbBlock_IMG() {
            #expect(
                Ignite.Format.pvrtc14bppSrgbBlock_IMG.rawValue == CVulkan.VK_FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG.rawValue
            )
        }

        @Test("Validate pvrtc22bppSrgbBlock_IMG")
        public func validate_pvrtc22bppSrgbBlock_IMG() {
            #expect(
                Ignite.Format.pvrtc22bppSrgbBlock_IMG.rawValue == CVulkan.VK_FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG.rawValue
            )
        }

        @Test("Validate pvrtc24bppSrgbBlock_IMG")
        public func validate_pvrtc24bppSrgbBlock_IMG() {
            #expect(
                Ignite.Format.pvrtc24bppSrgbBlock_IMG.rawValue == CVulkan.VK_FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG.rawValue
            )
        }

        @Test("Validate r8Bool_ARM")
        public func validate_r8Bool_ARM() {
            #expect(
                Ignite.Format.r8Bool_ARM.rawValue == CVulkan.VK_FORMAT_R8_BOOL_ARM.rawValue
            )
        }

        @Test("Validate r16g16Sfixed5_NV")
        public func validate_r16g16Sfixed5_NV() {
            #expect(
                Ignite.Format.r16g16Sfixed5_NV.rawValue == CVulkan.VK_FORMAT_R16G16_SFIXED5_NV.rawValue
            )
        }

        @Test("Validate r10x6UintPack16_ARM")
        public func validate_r10x6UintPack16_ARM() {
            #expect(
                Ignite.Format.r10x6UintPack16_ARM.rawValue == CVulkan.VK_FORMAT_R10X6_UINT_PACK16_ARM.rawValue
            )
        }

        @Test("Validate r10x6g10x6Uint2pack16_ARM")
        public func validate_r10x6g10x6Uint2pack16_ARM() {
            #expect(
                Ignite.Format.r10x6g10x6Uint2pack16_ARM.rawValue == CVulkan.VK_FORMAT_R10X6G10X6_UINT_2PACK16_ARM.rawValue
            )
        }

        @Test("Validate r10x6g10x6b10x6a10x6Uint4pack16_ARM")
        public func validate_r10x6g10x6b10x6a10x6Uint4pack16_ARM() {
            #expect(
                Ignite.Format.r10x6g10x6b10x6a10x6Uint4pack16_ARM.rawValue
                    == CVulkan.VK_FORMAT_R10X6G10X6B10X6A10X6_UINT_4PACK16_ARM.rawValue
            )
        }

        @Test("Validate r12x4UintPack16_ARM")
        public func validate_r12x4UintPack16_ARM() {
            #expect(
                Ignite.Format.r12x4UintPack16_ARM.rawValue == CVulkan.VK_FORMAT_R12X4_UINT_PACK16_ARM.rawValue
            )
        }

        @Test("Validate r12x4g12x4Uint2pack16_ARM")
        public func validate_r12x4g12x4Uint2pack16_ARM() {
            #expect(
                Ignite.Format.r12x4g12x4Uint2pack16_ARM.rawValue == CVulkan.VK_FORMAT_R12X4G12X4_UINT_2PACK16_ARM.rawValue
            )
        }

        @Test("Validate r12x4g12x4b12x4a12x4Uint4pack16_ARM")
        public func validate_r12x4g12x4b12x4a12x4Uint4pack16_ARM() {
            #expect(
                Ignite.Format.r12x4g12x4b12x4a12x4Uint4pack16_ARM.rawValue
                    == CVulkan.VK_FORMAT_R12X4G12X4B12X4A12X4_UINT_4PACK16_ARM.rawValue
            )
        }

        @Test("Validate r14x2UintPack16_ARM")
        public func validate_r14x2UintPack16_ARM() {
            #expect(
                Ignite.Format.r14x2UintPack16_ARM.rawValue == CVulkan.VK_FORMAT_R14X2_UINT_PACK16_ARM.rawValue
            )
        }

        @Test("Validate r14x2g14x2Uint2pack16_ARM")
        public func validate_r14x2g14x2Uint2pack16_ARM() {
            #expect(
                Ignite.Format.r14x2g14x2Uint2pack16_ARM.rawValue == CVulkan.VK_FORMAT_R14X2G14X2_UINT_2PACK16_ARM.rawValue
            )
        }

        @Test("Validate r14x2g14x2b14x2a14x2Uint4pack16_ARM")
        public func validate_r14x2g14x2b14x2a14x2Uint4pack16_ARM() {
            #expect(
                Ignite.Format.r14x2g14x2b14x2a14x2Uint4pack16_ARM.rawValue
                    == CVulkan.VK_FORMAT_R14X2G14X2B14X2A14X2_UINT_4PACK16_ARM.rawValue
            )
        }

        @Test("Validate r14x2UnormPack16_ARM")
        public func validate_r14x2UnormPack16_ARM() {
            #expect(
                Ignite.Format.r14x2UnormPack16_ARM.rawValue == CVulkan.VK_FORMAT_R14X2_UNORM_PACK16_ARM.rawValue
            )
        }

        @Test("Validate r14x2g14x2Unorm2pack16_ARM")
        public func validate_r14x2g14x2Unorm2pack16_ARM() {
            #expect(
                Ignite.Format.r14x2g14x2Unorm2pack16_ARM.rawValue == CVulkan.VK_FORMAT_R14X2G14X2_UNORM_2PACK16_ARM.rawValue
            )
        }

        @Test("Validate r14x2g14x2b14x2a14x2Unorm4pack16_ARM")
        public func validate_r14x2g14x2b14x2a14x2Unorm4pack16_ARM() {
            #expect(
                Ignite.Format.r14x2g14x2b14x2a14x2Unorm4pack16_ARM.rawValue
                    == CVulkan.VK_FORMAT_R14X2G14X2B14X2A14X2_UNORM_4PACK16_ARM.rawValue
            )
        }

        @Test("Validate g14x2B14x2r14x22plane420Unorm3pack16_ARM")
        public func validate_g14x2B14x2r14x22plane420Unorm3pack16_ARM() {
            #expect(
                Ignite.Format.g14x2B14x2r14x22plane420Unorm3pack16_ARM.rawValue
                    == CVulkan.VK_FORMAT_G14X2_B14X2R14X2_2PLANE_420_UNORM_3PACK16_ARM.rawValue
            )
        }

        @Test("Validate g14x2B14x2r14x22plane422Unorm3pack16_ARM")
        public func validate_g14x2B14x2r14x22plane422Unorm3pack16_ARM() {
            #expect(
                Ignite.Format.g14x2B14x2r14x22plane422Unorm3pack16_ARM.rawValue
                    == CVulkan.VK_FORMAT_G14X2_B14X2R14X2_2PLANE_422_UNORM_3PACK16_ARM.rawValue
            )
        }

        @Test("Validate astc4x4SfloatBlock_EXT")
        public func validate_astc4x4SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc4x4SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc5x4SfloatBlock_EXT")
        public func validate_astc5x4SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc5x4SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc5x5SfloatBlock_EXT")
        public func validate_astc5x5SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc5x5SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc6x5SfloatBlock_EXT")
        public func validate_astc6x5SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc6x5SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc6x6SfloatBlock_EXT")
        public func validate_astc6x6SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc6x6SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc8x5SfloatBlock_EXT")
        public func validate_astc8x5SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc8x5SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc8x6SfloatBlock_EXT")
        public func validate_astc8x6SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc8x6SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc8x8SfloatBlock_EXT")
        public func validate_astc8x8SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc8x8SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc10x5SfloatBlock_EXT")
        public func validate_astc10x5SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc10x5SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc10x6SfloatBlock_EXT")
        public func validate_astc10x6SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc10x6SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc10x8SfloatBlock_EXT")
        public func validate_astc10x8SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc10x8SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc10x10SfloatBlock_EXT")
        public func validate_astc10x10SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc10x10SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc12x10SfloatBlock_EXT")
        public func validate_astc12x10SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc12x10SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate astc12x12SfloatBlock_EXT")
        public func validate_astc12x12SfloatBlock_EXT() {
            #expect(
                Ignite.Format.astc12x12SfloatBlock_EXT.rawValue == CVulkan.VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate g8b8g8r8422Unorm_KHR")
        public func validate_g8b8g8r8422Unorm_KHR() {
            #expect(
                Ignite.Format.g8b8g8r8422Unorm_KHR.rawValue == CVulkan.VK_FORMAT_G8B8G8R8_422_UNORM_KHR.rawValue
            )
        }

        @Test("Validate b8g8r8g8422Unorm_KHR")
        public func validate_b8g8r8g8422Unorm_KHR() {
            #expect(
                Ignite.Format.b8g8r8g8422Unorm_KHR.rawValue == CVulkan.VK_FORMAT_B8G8R8G8_422_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g8B8R83plane420Unorm_KHR")
        public func validate_g8B8R83plane420Unorm_KHR() {
            #expect(
                Ignite.Format.g8B8R83plane420Unorm_KHR.rawValue == CVulkan.VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g8B8r82plane420Unorm_KHR")
        public func validate_g8B8r82plane420Unorm_KHR() {
            #expect(
                Ignite.Format.g8B8r82plane420Unorm_KHR.rawValue == CVulkan.VK_FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g8B8R83plane422Unorm_KHR")
        public func validate_g8B8R83plane422Unorm_KHR() {
            #expect(
                Ignite.Format.g8B8R83plane422Unorm_KHR.rawValue == CVulkan.VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g8B8r82plane422Unorm_KHR")
        public func validate_g8B8r82plane422Unorm_KHR() {
            #expect(
                Ignite.Format.g8B8r82plane422Unorm_KHR.rawValue == CVulkan.VK_FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g8B8R83plane444Unorm_KHR")
        public func validate_g8B8R83plane444Unorm_KHR() {
            #expect(
                Ignite.Format.g8B8R83plane444Unorm_KHR.rawValue == CVulkan.VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR.rawValue
            )
        }

        @Test("Validate r10x6UnormPack16_KHR")
        public func validate_r10x6UnormPack16_KHR() {
            #expect(
                Ignite.Format.r10x6UnormPack16_KHR.rawValue == CVulkan.VK_FORMAT_R10X6_UNORM_PACK16_KHR.rawValue
            )
        }

        @Test("Validate r10x6g10x6Unorm2pack16_KHR")
        public func validate_r10x6g10x6Unorm2pack16_KHR() {
            #expect(
                Ignite.Format.r10x6g10x6Unorm2pack16_KHR.rawValue == CVulkan.VK_FORMAT_R10X6G10X6_UNORM_2PACK16_KHR.rawValue
            )
        }

        @Test("Validate r10x6g10x6b10x6a10x6Unorm4pack16_KHR")
        public func validate_r10x6g10x6b10x6a10x6Unorm4pack16_KHR() {
            #expect(
                Ignite.Format.r10x6g10x6b10x6a10x6Unorm4pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR.rawValue
            )
        }

        @Test("Validate g10x6b10x6g10x6r10x6422Unorm4pack16_KHR")
        public func validate_g10x6b10x6g10x6r10x6422Unorm4pack16_KHR() {
            #expect(
                Ignite.Format.g10x6b10x6g10x6r10x6422Unorm4pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR.rawValue
            )
        }

        @Test("Validate b10x6g10x6r10x6g10x6422Unorm4pack16_KHR")
        public func validate_b10x6g10x6r10x6g10x6422Unorm4pack16_KHR() {
            #expect(
                Ignite.Format.b10x6g10x6r10x6g10x6422Unorm4pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR.rawValue
            )
        }

        @Test("Validate g10x6B10x6R10x63plane420Unorm3pack16_KHR")
        public func validate_g10x6B10x6R10x63plane420Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g10x6B10x6R10x63plane420Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate g10x6B10x6r10x62plane420Unorm3pack16_KHR")
        public func validate_g10x6B10x6r10x62plane420Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g10x6B10x6r10x62plane420Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate g10x6B10x6R10x63plane422Unorm3pack16_KHR")
        public func validate_g10x6B10x6R10x63plane422Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g10x6B10x6R10x63plane422Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate g10x6B10x6r10x62plane422Unorm3pack16_KHR")
        public func validate_g10x6B10x6r10x62plane422Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g10x6B10x6r10x62plane422Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate g10x6B10x6R10x63plane444Unorm3pack16_KHR")
        public func validate_g10x6B10x6R10x63plane444Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g10x6B10x6R10x63plane444Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate r12x4UnormPack16_KHR")
        public func validate_r12x4UnormPack16_KHR() {
            #expect(
                Ignite.Format.r12x4UnormPack16_KHR.rawValue == CVulkan.VK_FORMAT_R12X4_UNORM_PACK16_KHR.rawValue
            )
        }

        @Test("Validate r12x4g12x4Unorm2pack16_KHR")
        public func validate_r12x4g12x4Unorm2pack16_KHR() {
            #expect(
                Ignite.Format.r12x4g12x4Unorm2pack16_KHR.rawValue == CVulkan.VK_FORMAT_R12X4G12X4_UNORM_2PACK16_KHR.rawValue
            )
        }

        @Test("Validate r12x4g12x4b12x4a12x4Unorm4pack16_KHR")
        public func validate_r12x4g12x4b12x4a12x4Unorm4pack16_KHR() {
            #expect(
                Ignite.Format.r12x4g12x4b12x4a12x4Unorm4pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR.rawValue
            )
        }

        @Test("Validate g12x4b12x4g12x4r12x4422Unorm4pack16_KHR")
        public func validate_g12x4b12x4g12x4r12x4422Unorm4pack16_KHR() {
            #expect(
                Ignite.Format.g12x4b12x4g12x4r12x4422Unorm4pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR.rawValue
            )
        }

        @Test("Validate b12x4g12x4r12x4g12x4422Unorm4pack16_KHR")
        public func validate_b12x4g12x4r12x4g12x4422Unorm4pack16_KHR() {
            #expect(
                Ignite.Format.b12x4g12x4r12x4g12x4422Unorm4pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR.rawValue
            )
        }

        @Test("Validate g12x4B12x4R12x43plane420Unorm3pack16_KHR")
        public func validate_g12x4B12x4R12x43plane420Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g12x4B12x4R12x43plane420Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate g12x4B12x4r12x42plane420Unorm3pack16_KHR")
        public func validate_g12x4B12x4r12x42plane420Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g12x4B12x4r12x42plane420Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate g12x4B12x4R12x43plane422Unorm3pack16_KHR")
        public func validate_g12x4B12x4R12x43plane422Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g12x4B12x4R12x43plane422Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate g12x4B12x4r12x42plane422Unorm3pack16_KHR")
        public func validate_g12x4B12x4r12x42plane422Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g12x4B12x4r12x42plane422Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate g12x4B12x4R12x43plane444Unorm3pack16_KHR")
        public func validate_g12x4B12x4R12x43plane444Unorm3pack16_KHR() {
            #expect(
                Ignite.Format.g12x4B12x4R12x43plane444Unorm3pack16_KHR.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR.rawValue
            )
        }

        @Test("Validate g16b16g16r16422Unorm_KHR")
        public func validate_g16b16g16r16422Unorm_KHR() {
            #expect(
                Ignite.Format.g16b16g16r16422Unorm_KHR.rawValue == CVulkan.VK_FORMAT_G16B16G16R16_422_UNORM_KHR.rawValue
            )
        }

        @Test("Validate b16g16r16g16422Unorm_KHR")
        public func validate_b16g16r16g16422Unorm_KHR() {
            #expect(
                Ignite.Format.b16g16r16g16422Unorm_KHR.rawValue == CVulkan.VK_FORMAT_B16G16R16G16_422_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g16B16R163plane420Unorm_KHR")
        public func validate_g16B16R163plane420Unorm_KHR() {
            #expect(
                Ignite.Format.g16B16R163plane420Unorm_KHR.rawValue
                    == CVulkan.VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g16B16r162plane420Unorm_KHR")
        public func validate_g16B16r162plane420Unorm_KHR() {
            #expect(
                Ignite.Format.g16B16r162plane420Unorm_KHR.rawValue
                    == CVulkan.VK_FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g16B16R163plane422Unorm_KHR")
        public func validate_g16B16R163plane422Unorm_KHR() {
            #expect(
                Ignite.Format.g16B16R163plane422Unorm_KHR.rawValue
                    == CVulkan.VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g16B16r162plane422Unorm_KHR")
        public func validate_g16B16r162plane422Unorm_KHR() {
            #expect(
                Ignite.Format.g16B16r162plane422Unorm_KHR.rawValue
                    == CVulkan.VK_FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g16B16R163plane444Unorm_KHR")
        public func validate_g16B16R163plane444Unorm_KHR() {
            #expect(
                Ignite.Format.g16B16R163plane444Unorm_KHR.rawValue
                    == CVulkan.VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR.rawValue
            )
        }

        @Test("Validate g8B8r82plane444Unorm_EXT")
        public func validate_g8B8r82plane444Unorm_EXT() {
            #expect(
                Ignite.Format.g8B8r82plane444Unorm_EXT.rawValue == CVulkan.VK_FORMAT_G8_B8R8_2PLANE_444_UNORM_EXT.rawValue
            )
        }

        @Test("Validate g10x6B10x6r10x62plane444Unorm3pack16_EXT")
        public func validate_g10x6B10x6r10x62plane444Unorm3pack16_EXT() {
            #expect(
                Ignite.Format.g10x6B10x6r10x62plane444Unorm3pack16_EXT.rawValue
                    == CVulkan.VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16_EXT.rawValue
            )
        }

        @Test("Validate g12x4B12x4r12x42plane444Unorm3pack16_EXT")
        public func validate_g12x4B12x4r12x42plane444Unorm3pack16_EXT() {
            #expect(
                Ignite.Format.g12x4B12x4r12x42plane444Unorm3pack16_EXT.rawValue
                    == CVulkan.VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16_EXT.rawValue
            )
        }

        @Test("Validate g16B16r162plane444Unorm_EXT")
        public func validate_g16B16r162plane444Unorm_EXT() {
            #expect(
                Ignite.Format.g16B16r162plane444Unorm_EXT.rawValue
                    == CVulkan.VK_FORMAT_G16_B16R16_2PLANE_444_UNORM_EXT.rawValue
            )
        }

        @Test("Validate a4r4g4b4UnormPack16_EXT")
        public func validate_a4r4g4b4UnormPack16_EXT() {
            #expect(
                Ignite.Format.a4r4g4b4UnormPack16_EXT.rawValue == CVulkan.VK_FORMAT_A4R4G4B4_UNORM_PACK16_EXT.rawValue
            )
        }

        @Test("Validate a4b4g4r4UnormPack16_EXT")
        public func validate_a4b4g4r4UnormPack16_EXT() {
            #expect(
                Ignite.Format.a4b4g4r4UnormPack16_EXT.rawValue == CVulkan.VK_FORMAT_A4B4G4R4_UNORM_PACK16_EXT.rawValue
            )
        }

        @Test("Validate r16g16S105_NV")
        public func validate_r16g16S105_NV() {
            #expect(
                Ignite.Format.r16g16S105_NV.rawValue == CVulkan.VK_FORMAT_R16G16_S10_5_NV.rawValue
            )
        }

        @Test("Validate a1b5g5r5UnormPack16_KHR")
        public func validate_a1b5g5r5UnormPack16_KHR() {
            #expect(
                Ignite.Format.a1b5g5r5UnormPack16_KHR.rawValue == CVulkan.VK_FORMAT_A1B5G5R5_UNORM_PACK16_KHR.rawValue
            )
        }

        @Test("Validate a8Unorm_KHR")
        public func validate_a8Unorm_KHR() {
            #expect(
                Ignite.Format.a8Unorm_KHR.rawValue == CVulkan.VK_FORMAT_A8_UNORM_KHR.rawValue
            )
        }
    }


    /// Tests for the FragmentShadingRateCombinerOpKHR enum.
    @Suite("FragmentShadingRateCombinerOpKHR")
    public struct FragmentShadingRateCombinerOpKHRTests {
        @Test("Validate keep_KHR")
        public func validate_keep_KHR() {
            #expect(
                Ignite.FragmentShadingRateCombinerOpKHR.keep_KHR.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_KHR.rawValue
            )
        }

        @Test("Validate replace_KHR")
        public func validate_replace_KHR() {
            #expect(
                Ignite.FragmentShadingRateCombinerOpKHR.replace_KHR.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_KHR.rawValue
            )
        }

        @Test("Validate min_KHR")
        public func validate_min_KHR() {
            #expect(
                Ignite.FragmentShadingRateCombinerOpKHR.min_KHR.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_KHR.rawValue
            )
        }

        @Test("Validate max_KHR")
        public func validate_max_KHR() {
            #expect(
                Ignite.FragmentShadingRateCombinerOpKHR.max_KHR.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_KHR.rawValue
            )
        }

        @Test("Validate mul_KHR")
        public func validate_mul_KHR() {
            #expect(
                Ignite.FragmentShadingRateCombinerOpKHR.mul_KHR.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_KHR.rawValue
            )
        }
    }


    /// Tests for the FragmentShadingRateNV enum.
    @Suite("FragmentShadingRateNV")
    public struct FragmentShadingRateNVTests {
        @Test("Validate 1InvocationPerPixel_NV")
        public func validate_1InvocationPerPixel_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`1InvocationPerPixel_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer1x2Pixels_NV")
        public func validate_1InvocationPer1x2Pixels_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`1InvocationPer1x2Pixels_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer2x1Pixels_NV")
        public func validate_1InvocationPer2x1Pixels_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`1InvocationPer2x1Pixels_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer2x2Pixels_NV")
        public func validate_1InvocationPer2x2Pixels_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`1InvocationPer2x2Pixels_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer2x4Pixels_NV")
        public func validate_1InvocationPer2x4Pixels_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`1InvocationPer2x4Pixels_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer4x2Pixels_NV")
        public func validate_1InvocationPer4x2Pixels_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`1InvocationPer4x2Pixels_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer4x4Pixels_NV")
        public func validate_1InvocationPer4x4Pixels_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`1InvocationPer4x4Pixels_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 2InvocationsPerPixel_NV")
        public func validate_2InvocationsPerPixel_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`2InvocationsPerPixel_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate 4InvocationsPerPixel_NV")
        public func validate_4InvocationsPerPixel_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`4InvocationsPerPixel_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate 8InvocationsPerPixel_NV")
        public func validate_8InvocationsPerPixel_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`8InvocationsPerPixel_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate 16InvocationsPerPixel_NV")
        public func validate_16InvocationsPerPixel_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.`16InvocationsPerPixel_NV`.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate noInvocations_NV")
        public func validate_noInvocations_NV() {
            #expect(
                Ignite.FragmentShadingRateNV.noInvocations_NV.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_NO_INVOCATIONS_NV.rawValue
            )
        }
    }


    /// Tests for the FragmentShadingRateTypeNV enum.
    @Suite("FragmentShadingRateTypeNV")
    public struct FragmentShadingRateTypeNVTests {
        @Test("Validate fragmentSize_NV")
        public func validate_fragmentSize_NV() {
            #expect(
                Ignite.FragmentShadingRateTypeNV.fragmentSize_NV.rawValue
                    == CVulkan.VK_FRAGMENT_SHADING_RATE_TYPE_FRAGMENT_SIZE_NV.rawValue
            )
        }

        @Test("Validate enums_NV")
        public func validate_enums_NV() {
            #expect(
                Ignite.FragmentShadingRateTypeNV.enums_NV.rawValue == CVulkan.VK_FRAGMENT_SHADING_RATE_TYPE_ENUMS_NV.rawValue
            )
        }
    }


    /// Tests for the FrontFace enum.
    @Suite("FrontFace")
    public struct FrontFaceTests {
        @Test("Validate counterClockwise")
        public func validate_counterClockwise() {
            #expect(
                Ignite.FrontFace.counterClockwise.rawValue == CVulkan.VK_FRONT_FACE_COUNTER_CLOCKWISE.rawValue
            )
        }

        @Test("Validate clockwise")
        public func validate_clockwise() {
            #expect(
                Ignite.FrontFace.clockwise.rawValue == CVulkan.VK_FRONT_FACE_CLOCKWISE.rawValue
            )
        }
    }


    #if PlatformWin32
        /// Tests for the FullScreenExclusiveEXT enum.
        @Suite("FullScreenExclusiveEXT")
        public struct FullScreenExclusiveEXTTests {
            @Test("Validate default_EXT")
            public func validate_default_EXT() {
                #expect(
                    Ignite.FullScreenExclusiveEXT.default_EXT.rawValue
                        == CVulkan.VK_FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT.rawValue
                )
            }

            @Test("Validate allowed_EXT")
            public func validate_allowed_EXT() {
                #expect(
                    Ignite.FullScreenExclusiveEXT.allowed_EXT.rawValue
                        == CVulkan.VK_FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT.rawValue
                )
            }

            @Test("Validate disallowed_EXT")
            public func validate_disallowed_EXT() {
                #expect(
                    Ignite.FullScreenExclusiveEXT.disallowed_EXT.rawValue
                        == CVulkan.VK_FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT.rawValue
                )
            }

            @Test("Validate applicationControlled_EXT")
            public func validate_applicationControlled_EXT() {
                #expect(
                    Ignite.FullScreenExclusiveEXT.applicationControlled_EXT.rawValue
                        == CVulkan.VK_FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT.rawValue
                )
            }
        }
    #else
        @Suite(
            "FullScreenExclusiveEXT",
            .disabled("This enum is only available when the following trait is enabled: PlatformWin32."))
        public struct FullScreenExclusiveEXTTests {}
    #endif


    /// Tests for the GeometryTypeKHR enum.
    @Suite("GeometryTypeKHR")
    public struct GeometryTypeKHRTests {
        @Test("Validate triangles_KHR")
        public func validate_triangles_KHR() {
            #expect(
                Ignite.GeometryTypeKHR.triangles_KHR.rawValue == CVulkan.VK_GEOMETRY_TYPE_TRIANGLES_KHR.rawValue
            )
        }

        @Test("Validate aabbs_KHR")
        public func validate_aabbs_KHR() {
            #expect(
                Ignite.GeometryTypeKHR.aabbs_KHR.rawValue == CVulkan.VK_GEOMETRY_TYPE_AABBS_KHR.rawValue
            )
        }

        @Test("Validate instances_KHR")
        public func validate_instances_KHR() {
            #expect(
                Ignite.GeometryTypeKHR.instances_KHR.rawValue == CVulkan.VK_GEOMETRY_TYPE_INSTANCES_KHR.rawValue
            )
        }

        @Test("Validate spheres_NV")
        public func validate_spheres_NV() {
            #expect(
                Ignite.GeometryTypeKHR.spheres_NV.rawValue == CVulkan.VK_GEOMETRY_TYPE_SPHERES_NV.rawValue
            )
        }

        @Test("Validate linearSweptSpheres_NV")
        public func validate_linearSweptSpheres_NV() {
            #expect(
                Ignite.GeometryTypeKHR.linearSweptSpheres_NV.rawValue
                    == CVulkan.VK_GEOMETRY_TYPE_LINEAR_SWEPT_SPHERES_NV.rawValue
            )
        }

        @Test("Validate triangles_NV")
        public func validate_triangles_NV() {
            #expect(
                Ignite.GeometryTypeKHR.triangles_NV.rawValue == CVulkan.VK_GEOMETRY_TYPE_TRIANGLES_NV.rawValue
            )
        }

        @Test("Validate aabbs_NV")
        public func validate_aabbs_NV() {
            #expect(
                Ignite.GeometryTypeKHR.aabbs_NV.rawValue == CVulkan.VK_GEOMETRY_TYPE_AABBS_NV.rawValue
            )
        }
    }


    /// Tests for the ImageLayout enum.
    @Suite("ImageLayout")
    public struct ImageLayoutTests {
        @Test("Validate undefined")
        public func validate_undefined() {
            #expect(
                Ignite.ImageLayout.undefined.rawValue == CVulkan.VK_IMAGE_LAYOUT_UNDEFINED.rawValue
            )
        }

        @Test("Validate general")
        public func validate_general() {
            #expect(
                Ignite.ImageLayout.general.rawValue == CVulkan.VK_IMAGE_LAYOUT_GENERAL.rawValue
            )
        }

        @Test("Validate colorAttachmentOptimal")
        public func validate_colorAttachmentOptimal() {
            #expect(
                Ignite.ImageLayout.colorAttachmentOptimal.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL.rawValue
            )
        }

        @Test("Validate depthStencilAttachmentOptimal")
        public func validate_depthStencilAttachmentOptimal() {
            #expect(
                Ignite.ImageLayout.depthStencilAttachmentOptimal.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL.rawValue
            )
        }

        @Test("Validate depthStencilReadOnlyOptimal")
        public func validate_depthStencilReadOnlyOptimal() {
            #expect(
                Ignite.ImageLayout.depthStencilReadOnlyOptimal.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL.rawValue
            )
        }

        @Test("Validate shaderReadOnlyOptimal")
        public func validate_shaderReadOnlyOptimal() {
            #expect(
                Ignite.ImageLayout.shaderReadOnlyOptimal.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL.rawValue
            )
        }

        @Test("Validate transferSrcOptimal")
        public func validate_transferSrcOptimal() {
            #expect(
                Ignite.ImageLayout.transferSrcOptimal.rawValue == CVulkan.VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL.rawValue
            )
        }

        @Test("Validate transferDstOptimal")
        public func validate_transferDstOptimal() {
            #expect(
                Ignite.ImageLayout.transferDstOptimal.rawValue == CVulkan.VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL.rawValue
            )
        }

        @Test("Validate preinitialized")
        public func validate_preinitialized() {
            #expect(
                Ignite.ImageLayout.preinitialized.rawValue == CVulkan.VK_IMAGE_LAYOUT_PREINITIALIZED.rawValue
            )
        }

        @Test("Validate depthReadOnlyStencilAttachmentOptimal")
        public func validate_depthReadOnlyStencilAttachmentOptimal() {
            #expect(
                Ignite.ImageLayout.depthReadOnlyStencilAttachmentOptimal.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL.rawValue
            )
        }

        @Test("Validate depthAttachmentStencilReadOnlyOptimal")
        public func validate_depthAttachmentStencilReadOnlyOptimal() {
            #expect(
                Ignite.ImageLayout.depthAttachmentStencilReadOnlyOptimal.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL.rawValue
            )
        }

        @Test("Validate depthAttachmentOptimal")
        public func validate_depthAttachmentOptimal() {
            #expect(
                Ignite.ImageLayout.depthAttachmentOptimal.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL.rawValue
            )
        }

        @Test("Validate depthReadOnlyOptimal")
        public func validate_depthReadOnlyOptimal() {
            #expect(
                Ignite.ImageLayout.depthReadOnlyOptimal.rawValue == CVulkan.VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL.rawValue
            )
        }

        @Test("Validate stencilAttachmentOptimal")
        public func validate_stencilAttachmentOptimal() {
            #expect(
                Ignite.ImageLayout.stencilAttachmentOptimal.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL.rawValue
            )
        }

        @Test("Validate stencilReadOnlyOptimal")
        public func validate_stencilReadOnlyOptimal() {
            #expect(
                Ignite.ImageLayout.stencilReadOnlyOptimal.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL.rawValue
            )
        }

        @Test("Validate readOnlyOptimal")
        public func validate_readOnlyOptimal() {
            #expect(
                Ignite.ImageLayout.readOnlyOptimal.rawValue == CVulkan.VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL.rawValue
            )
        }

        @Test("Validate attachmentOptimal")
        public func validate_attachmentOptimal() {
            #expect(
                Ignite.ImageLayout.attachmentOptimal.rawValue == CVulkan.VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL.rawValue
            )
        }

        @Test("Validate renderingLocalRead")
        public func validate_renderingLocalRead() {
            #expect(
                Ignite.ImageLayout.renderingLocalRead.rawValue == CVulkan.VK_IMAGE_LAYOUT_RENDERING_LOCAL_READ.rawValue
            )
        }

        @Test("Validate presentSrc_KHR")
        public func validate_presentSrc_KHR() {
            #expect(
                Ignite.ImageLayout.presentSrc_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_PRESENT_SRC_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeDst_KHR")
        public func validate_videoDecodeDst_KHR() {
            #expect(
                Ignite.ImageLayout.videoDecodeDst_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_VIDEO_DECODE_DST_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeSrc_KHR")
        public func validate_videoDecodeSrc_KHR() {
            #expect(
                Ignite.ImageLayout.videoDecodeSrc_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_VIDEO_DECODE_SRC_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeDpb_KHR")
        public func validate_videoDecodeDpb_KHR() {
            #expect(
                Ignite.ImageLayout.videoDecodeDpb_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_VIDEO_DECODE_DPB_KHR.rawValue
            )
        }

        @Test("Validate sharedPresent_KHR")
        public func validate_sharedPresent_KHR() {
            #expect(
                Ignite.ImageLayout.sharedPresent_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_SHARED_PRESENT_KHR.rawValue
            )
        }

        @Test("Validate fragmentDensityMapOptimal_EXT")
        public func validate_fragmentDensityMapOptimal_EXT() {
            #expect(
                Ignite.ImageLayout.fragmentDensityMapOptimal_EXT.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT.rawValue
            )
        }

        @Test("Validate fragmentShadingRateAttachmentOptimal_KHR")
        public func validate_fragmentShadingRateAttachmentOptimal_KHR() {
            #expect(
                Ignite.ImageLayout.fragmentShadingRateAttachmentOptimal_KHR.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeDst_KHR")
        public func validate_videoEncodeDst_KHR() {
            #expect(
                Ignite.ImageLayout.videoEncodeDst_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_VIDEO_ENCODE_DST_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeSrc_KHR")
        public func validate_videoEncodeSrc_KHR() {
            #expect(
                Ignite.ImageLayout.videoEncodeSrc_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_VIDEO_ENCODE_SRC_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeDpb_KHR")
        public func validate_videoEncodeDpb_KHR() {
            #expect(
                Ignite.ImageLayout.videoEncodeDpb_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_VIDEO_ENCODE_DPB_KHR.rawValue
            )
        }

        @Test("Validate attachmentFeedbackLoopOptimal_EXT")
        public func validate_attachmentFeedbackLoopOptimal_EXT() {
            #expect(
                Ignite.ImageLayout.attachmentFeedbackLoopOptimal_EXT.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_ATTACHMENT_FEEDBACK_LOOP_OPTIMAL_EXT.rawValue
            )
        }

        @Test("Validate tensorAliasing_ARM")
        public func validate_tensorAliasing_ARM() {
            #expect(
                Ignite.ImageLayout.tensorAliasing_ARM.rawValue == CVulkan.VK_IMAGE_LAYOUT_TENSOR_ALIASING_ARM.rawValue
            )
        }

        @Test("Validate videoEncodeQuantizationMap_KHR")
        public func validate_videoEncodeQuantizationMap_KHR() {
            #expect(
                Ignite.ImageLayout.videoEncodeQuantizationMap_KHR.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_VIDEO_ENCODE_QUANTIZATION_MAP_KHR.rawValue
            )
        }

        @Test("Validate zeroInitialized_EXT")
        public func validate_zeroInitialized_EXT() {
            #expect(
                Ignite.ImageLayout.zeroInitialized_EXT.rawValue == CVulkan.VK_IMAGE_LAYOUT_ZERO_INITIALIZED_EXT.rawValue
            )
        }

        @Test("Validate depthReadOnlyStencilAttachmentOptimal_KHR")
        public func validate_depthReadOnlyStencilAttachmentOptimal_KHR() {
            #expect(
                Ignite.ImageLayout.depthReadOnlyStencilAttachmentOptimal_KHR.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR.rawValue
            )
        }

        @Test("Validate depthAttachmentStencilReadOnlyOptimal_KHR")
        public func validate_depthAttachmentStencilReadOnlyOptimal_KHR() {
            #expect(
                Ignite.ImageLayout.depthAttachmentStencilReadOnlyOptimal_KHR.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR.rawValue
            )
        }

        @Test("Validate shadingRateOptimal_NV")
        public func validate_shadingRateOptimal_NV() {
            #expect(
                Ignite.ImageLayout.shadingRateOptimal_NV.rawValue == CVulkan.VK_IMAGE_LAYOUT_SHADING_RATE_OPTIMAL_NV.rawValue
            )
        }

        @Test("Validate renderingLocalRead_KHR")
        public func validate_renderingLocalRead_KHR() {
            #expect(
                Ignite.ImageLayout.renderingLocalRead_KHR.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_RENDERING_LOCAL_READ_KHR.rawValue
            )
        }

        @Test("Validate depthAttachmentOptimal_KHR")
        public func validate_depthAttachmentOptimal_KHR() {
            #expect(
                Ignite.ImageLayout.depthAttachmentOptimal_KHR.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL_KHR.rawValue
            )
        }

        @Test("Validate depthReadOnlyOptimal_KHR")
        public func validate_depthReadOnlyOptimal_KHR() {
            #expect(
                Ignite.ImageLayout.depthReadOnlyOptimal_KHR.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL_KHR.rawValue
            )
        }

        @Test("Validate stencilAttachmentOptimal_KHR")
        public func validate_stencilAttachmentOptimal_KHR() {
            #expect(
                Ignite.ImageLayout.stencilAttachmentOptimal_KHR.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL_KHR.rawValue
            )
        }

        @Test("Validate stencilReadOnlyOptimal_KHR")
        public func validate_stencilReadOnlyOptimal_KHR() {
            #expect(
                Ignite.ImageLayout.stencilReadOnlyOptimal_KHR.rawValue
                    == CVulkan.VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL_KHR.rawValue
            )
        }

        @Test("Validate readOnlyOptimal_KHR")
        public func validate_readOnlyOptimal_KHR() {
            #expect(
                Ignite.ImageLayout.readOnlyOptimal_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL_KHR.rawValue
            )
        }

        @Test("Validate attachmentOptimal_KHR")
        public func validate_attachmentOptimal_KHR() {
            #expect(
                Ignite.ImageLayout.attachmentOptimal_KHR.rawValue == CVulkan.VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL_KHR.rawValue
            )
        }
    }


    /// Tests for the ImageTiling enum.
    @Suite("ImageTiling")
    public struct ImageTilingTests {
        @Test("Validate optimal")
        public func validate_optimal() {
            #expect(
                Ignite.ImageTiling.optimal.rawValue == CVulkan.VK_IMAGE_TILING_OPTIMAL.rawValue
            )
        }

        @Test("Validate linear")
        public func validate_linear() {
            #expect(
                Ignite.ImageTiling.linear.rawValue == CVulkan.VK_IMAGE_TILING_LINEAR.rawValue
            )
        }

        @Test("Validate drmFormatModifier_EXT")
        public func validate_drmFormatModifier_EXT() {
            #expect(
                Ignite.ImageTiling.drmFormatModifier_EXT.rawValue == CVulkan.VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT.rawValue
            )
        }
    }


    /// Tests for the ImageType enum.
    @Suite("ImageType")
    public struct ImageTypeTests {
        @Test("Validate 1d")
        public func validate_1d() {
            #expect(
                Ignite.ImageType.`1d`.rawValue == CVulkan.VK_IMAGE_TYPE_1D.rawValue
            )
        }

        @Test("Validate 2d")
        public func validate_2d() {
            #expect(
                Ignite.ImageType.`2d`.rawValue == CVulkan.VK_IMAGE_TYPE_2D.rawValue
            )
        }

        @Test("Validate 3d")
        public func validate_3d() {
            #expect(
                Ignite.ImageType.`3d`.rawValue == CVulkan.VK_IMAGE_TYPE_3D.rawValue
            )
        }
    }


    /// Tests for the ImageViewType enum.
    @Suite("ImageViewType")
    public struct ImageViewTypeTests {
        @Test("Validate 1d")
        public func validate_1d() {
            #expect(
                Ignite.ImageViewType.`1d`.rawValue == CVulkan.VK_IMAGE_VIEW_TYPE_1D.rawValue
            )
        }

        @Test("Validate 2d")
        public func validate_2d() {
            #expect(
                Ignite.ImageViewType.`2d`.rawValue == CVulkan.VK_IMAGE_VIEW_TYPE_2D.rawValue
            )
        }

        @Test("Validate 3d")
        public func validate_3d() {
            #expect(
                Ignite.ImageViewType.`3d`.rawValue == CVulkan.VK_IMAGE_VIEW_TYPE_3D.rawValue
            )
        }

        @Test("Validate cube")
        public func validate_cube() {
            #expect(
                Ignite.ImageViewType.cube.rawValue == CVulkan.VK_IMAGE_VIEW_TYPE_CUBE.rawValue
            )
        }

        @Test("Validate 1dArray")
        public func validate_1dArray() {
            #expect(
                Ignite.ImageViewType.`1dArray`.rawValue == CVulkan.VK_IMAGE_VIEW_TYPE_1D_ARRAY.rawValue
            )
        }

        @Test("Validate 2dArray")
        public func validate_2dArray() {
            #expect(
                Ignite.ImageViewType.`2dArray`.rawValue == CVulkan.VK_IMAGE_VIEW_TYPE_2D_ARRAY.rawValue
            )
        }

        @Test("Validate cubeArray")
        public func validate_cubeArray() {
            #expect(
                Ignite.ImageViewType.cubeArray.rawValue == CVulkan.VK_IMAGE_VIEW_TYPE_CUBE_ARRAY.rawValue
            )
        }
    }


    /// Tests for the IndexType enum.
    @Suite("IndexType")
    public struct IndexTypeTests {
        @Test("Validate uint16")
        public func validate_uint16() {
            #expect(
                Ignite.IndexType.uint16.rawValue == CVulkan.VK_INDEX_TYPE_UINT16.rawValue
            )
        }

        @Test("Validate uint32")
        public func validate_uint32() {
            #expect(
                Ignite.IndexType.uint32.rawValue == CVulkan.VK_INDEX_TYPE_UINT32.rawValue
            )
        }

        @Test("Validate uint8")
        public func validate_uint8() {
            #expect(
                Ignite.IndexType.uint8.rawValue == CVulkan.VK_INDEX_TYPE_UINT8.rawValue
            )
        }

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.IndexType.none_KHR.rawValue == CVulkan.VK_INDEX_TYPE_NONE_KHR.rawValue
            )
        }

        @Test("Validate none_NV")
        public func validate_none_NV() {
            #expect(
                Ignite.IndexType.none_NV.rawValue == CVulkan.VK_INDEX_TYPE_NONE_NV.rawValue
            )
        }

        @Test("Validate uint8_EXT")
        public func validate_uint8_EXT() {
            #expect(
                Ignite.IndexType.uint8_EXT.rawValue == CVulkan.VK_INDEX_TYPE_UINT8_EXT.rawValue
            )
        }

        @Test("Validate uint8_KHR")
        public func validate_uint8_KHR() {
            #expect(
                Ignite.IndexType.uint8_KHR.rawValue == CVulkan.VK_INDEX_TYPE_UINT8_KHR.rawValue
            )
        }
    }


    /// Tests for the IndirectCommandsTokenTypeEXT enum.
    @Suite("IndirectCommandsTokenTypeEXT")
    public struct IndirectCommandsTokenTypeEXTTests {
        @Test("Validate executionSet_EXT")
        public func validate_executionSet_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.executionSet_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_EXECUTION_SET_EXT.rawValue
            )
        }

        @Test("Validate pushConstant_EXT")
        public func validate_pushConstant_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.pushConstant_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_EXT.rawValue
            )
        }

        @Test("Validate sequenceIndex_EXT")
        public func validate_sequenceIndex_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.sequenceIndex_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_SEQUENCE_INDEX_EXT.rawValue
            )
        }

        @Test("Validate indexBuffer_EXT")
        public func validate_indexBuffer_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.indexBuffer_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_EXT.rawValue
            )
        }

        @Test("Validate vertexBuffer_EXT")
        public func validate_vertexBuffer_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.vertexBuffer_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_EXT.rawValue
            )
        }

        @Test("Validate drawIndexed_EXT")
        public func validate_drawIndexed_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.drawIndexed_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_EXT.rawValue
            )
        }

        @Test("Validate draw_EXT")
        public func validate_draw_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.draw_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_EXT.rawValue
            )
        }

        @Test("Validate drawIndexedCount_EXT")
        public func validate_drawIndexedCount_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.drawIndexedCount_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_COUNT_EXT.rawValue
            )
        }

        @Test("Validate drawCount_EXT")
        public func validate_drawCount_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.drawCount_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_COUNT_EXT.rawValue
            )
        }

        @Test("Validate dispatch_EXT")
        public func validate_dispatch_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.dispatch_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DISPATCH_EXT.rawValue
            )
        }

        @Test("Validate drawMeshTasksNv_EXT")
        public func validate_drawMeshTasksNv_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.drawMeshTasksNv_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_NV_EXT.rawValue
            )
        }

        @Test("Validate drawMeshTasksCountNv_EXT")
        public func validate_drawMeshTasksCountNv_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.drawMeshTasksCountNv_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_COUNT_NV_EXT.rawValue
            )
        }

        @Test("Validate drawMeshTasks_EXT")
        public func validate_drawMeshTasks_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.drawMeshTasks_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_EXT.rawValue
            )
        }

        @Test("Validate drawMeshTasksCount_EXT")
        public func validate_drawMeshTasksCount_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.drawMeshTasksCount_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_COUNT_EXT.rawValue
            )
        }

        @Test("Validate traceRays2_EXT")
        public func validate_traceRays2_EXT() {
            #expect(
                Ignite.IndirectCommandsTokenTypeEXT.traceRays2_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_TRACE_RAYS2_EXT.rawValue
            )
        }
    }


    /// Tests for the IndirectCommandsTokenTypeNV enum.
    @Suite("IndirectCommandsTokenTypeNV")
    public struct IndirectCommandsTokenTypeNVTests {
        @Test("Validate shaderGroup_NV")
        public func validate_shaderGroup_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.shaderGroup_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV.rawValue
            )
        }

        @Test("Validate stateFlags_NV")
        public func validate_stateFlags_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.stateFlags_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV.rawValue
            )
        }

        @Test("Validate indexBuffer_NV")
        public func validate_indexBuffer_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.indexBuffer_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV.rawValue
            )
        }

        @Test("Validate vertexBuffer_NV")
        public func validate_vertexBuffer_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.vertexBuffer_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV.rawValue
            )
        }

        @Test("Validate pushConstant_NV")
        public func validate_pushConstant_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.pushConstant_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV.rawValue
            )
        }

        @Test("Validate drawIndexed_NV")
        public func validate_drawIndexed_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.drawIndexed_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV.rawValue
            )
        }

        @Test("Validate draw_NV")
        public func validate_draw_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.draw_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV.rawValue
            )
        }

        @Test("Validate drawTasks_NV")
        public func validate_drawTasks_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.drawTasks_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV.rawValue
            )
        }

        @Test("Validate drawMeshTasks_NV")
        public func validate_drawMeshTasks_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.drawMeshTasks_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_NV.rawValue
            )
        }

        @Test("Validate pipeline_NV")
        public func validate_pipeline_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.pipeline_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_PIPELINE_NV.rawValue
            )
        }

        @Test("Validate dispatch_NV")
        public func validate_dispatch_NV() {
            #expect(
                Ignite.IndirectCommandsTokenTypeNV.dispatch_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_TOKEN_TYPE_DISPATCH_NV.rawValue
            )
        }
    }


    /// Tests for the IndirectExecutionSetInfoTypeEXT enum.
    @Suite("IndirectExecutionSetInfoTypeEXT")
    public struct IndirectExecutionSetInfoTypeEXTTests {
        @Test("Validate pipelines_EXT")
        public func validate_pipelines_EXT() {
            #expect(
                Ignite.IndirectExecutionSetInfoTypeEXT.pipelines_EXT.rawValue
                    == CVulkan.VK_INDIRECT_EXECUTION_SET_INFO_TYPE_PIPELINES_EXT.rawValue
            )
        }

        @Test("Validate shaderObjects_EXT")
        public func validate_shaderObjects_EXT() {
            #expect(
                Ignite.IndirectExecutionSetInfoTypeEXT.shaderObjects_EXT.rawValue
                    == CVulkan.VK_INDIRECT_EXECUTION_SET_INFO_TYPE_SHADER_OBJECTS_EXT.rawValue
            )
        }
    }


    /// Tests for the InternalAllocationType enum.
    @Suite("InternalAllocationType")
    public struct InternalAllocationTypeTests {
        @Test("Validate executable")
        public func validate_executable() {
            #expect(
                Ignite.InternalAllocationType.executable.rawValue == CVulkan.VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE.rawValue
            )
        }
    }


    /// Tests for the LatencyMarkerNV enum.
    @Suite("LatencyMarkerNV")
    public struct LatencyMarkerNVTests {
        @Test("Validate simulationStart_NV")
        public func validate_simulationStart_NV() {
            #expect(
                Ignite.LatencyMarkerNV.simulationStart_NV.rawValue == CVulkan.VK_LATENCY_MARKER_SIMULATION_START_NV.rawValue
            )
        }

        @Test("Validate simulationEnd_NV")
        public func validate_simulationEnd_NV() {
            #expect(
                Ignite.LatencyMarkerNV.simulationEnd_NV.rawValue == CVulkan.VK_LATENCY_MARKER_SIMULATION_END_NV.rawValue
            )
        }

        @Test("Validate rendersubmitStart_NV")
        public func validate_rendersubmitStart_NV() {
            #expect(
                Ignite.LatencyMarkerNV.rendersubmitStart_NV.rawValue
                    == CVulkan.VK_LATENCY_MARKER_RENDERSUBMIT_START_NV.rawValue
            )
        }

        @Test("Validate rendersubmitEnd_NV")
        public func validate_rendersubmitEnd_NV() {
            #expect(
                Ignite.LatencyMarkerNV.rendersubmitEnd_NV.rawValue == CVulkan.VK_LATENCY_MARKER_RENDERSUBMIT_END_NV.rawValue
            )
        }

        @Test("Validate presentStart_NV")
        public func validate_presentStart_NV() {
            #expect(
                Ignite.LatencyMarkerNV.presentStart_NV.rawValue == CVulkan.VK_LATENCY_MARKER_PRESENT_START_NV.rawValue
            )
        }

        @Test("Validate presentEnd_NV")
        public func validate_presentEnd_NV() {
            #expect(
                Ignite.LatencyMarkerNV.presentEnd_NV.rawValue == CVulkan.VK_LATENCY_MARKER_PRESENT_END_NV.rawValue
            )
        }

        @Test("Validate inputSample_NV")
        public func validate_inputSample_NV() {
            #expect(
                Ignite.LatencyMarkerNV.inputSample_NV.rawValue == CVulkan.VK_LATENCY_MARKER_INPUT_SAMPLE_NV.rawValue
            )
        }

        @Test("Validate triggerFlash_NV")
        public func validate_triggerFlash_NV() {
            #expect(
                Ignite.LatencyMarkerNV.triggerFlash_NV.rawValue == CVulkan.VK_LATENCY_MARKER_TRIGGER_FLASH_NV.rawValue
            )
        }

        @Test("Validate outOfBandRendersubmitStart_NV")
        public func validate_outOfBandRendersubmitStart_NV() {
            #expect(
                Ignite.LatencyMarkerNV.outOfBandRendersubmitStart_NV.rawValue
                    == CVulkan.VK_LATENCY_MARKER_OUT_OF_BAND_RENDERSUBMIT_START_NV.rawValue
            )
        }

        @Test("Validate outOfBandRendersubmitEnd_NV")
        public func validate_outOfBandRendersubmitEnd_NV() {
            #expect(
                Ignite.LatencyMarkerNV.outOfBandRendersubmitEnd_NV.rawValue
                    == CVulkan.VK_LATENCY_MARKER_OUT_OF_BAND_RENDERSUBMIT_END_NV.rawValue
            )
        }

        @Test("Validate outOfBandPresentStart_NV")
        public func validate_outOfBandPresentStart_NV() {
            #expect(
                Ignite.LatencyMarkerNV.outOfBandPresentStart_NV.rawValue
                    == CVulkan.VK_LATENCY_MARKER_OUT_OF_BAND_PRESENT_START_NV.rawValue
            )
        }

        @Test("Validate outOfBandPresentEnd_NV")
        public func validate_outOfBandPresentEnd_NV() {
            #expect(
                Ignite.LatencyMarkerNV.outOfBandPresentEnd_NV.rawValue
                    == CVulkan.VK_LATENCY_MARKER_OUT_OF_BAND_PRESENT_END_NV.rawValue
            )
        }
    }


    /// Tests for the LayerSettingTypeEXT enum.
    @Suite("LayerSettingTypeEXT")
    public struct LayerSettingTypeEXTTests {
        @Test("Validate bool32_EXT")
        public func validate_bool32_EXT() {
            #expect(
                Ignite.LayerSettingTypeEXT.bool32_EXT.rawValue == CVulkan.VK_LAYER_SETTING_TYPE_BOOL32_EXT.rawValue
            )
        }

        @Test("Validate int32_EXT")
        public func validate_int32_EXT() {
            #expect(
                Ignite.LayerSettingTypeEXT.int32_EXT.rawValue == CVulkan.VK_LAYER_SETTING_TYPE_INT32_EXT.rawValue
            )
        }

        @Test("Validate int64_EXT")
        public func validate_int64_EXT() {
            #expect(
                Ignite.LayerSettingTypeEXT.int64_EXT.rawValue == CVulkan.VK_LAYER_SETTING_TYPE_INT64_EXT.rawValue
            )
        }

        @Test("Validate uint32_EXT")
        public func validate_uint32_EXT() {
            #expect(
                Ignite.LayerSettingTypeEXT.uint32_EXT.rawValue == CVulkan.VK_LAYER_SETTING_TYPE_UINT32_EXT.rawValue
            )
        }

        @Test("Validate uint64_EXT")
        public func validate_uint64_EXT() {
            #expect(
                Ignite.LayerSettingTypeEXT.uint64_EXT.rawValue == CVulkan.VK_LAYER_SETTING_TYPE_UINT64_EXT.rawValue
            )
        }

        @Test("Validate float32_EXT")
        public func validate_float32_EXT() {
            #expect(
                Ignite.LayerSettingTypeEXT.float32_EXT.rawValue == CVulkan.VK_LAYER_SETTING_TYPE_FLOAT32_EXT.rawValue
            )
        }

        @Test("Validate float64_EXT")
        public func validate_float64_EXT() {
            #expect(
                Ignite.LayerSettingTypeEXT.float64_EXT.rawValue == CVulkan.VK_LAYER_SETTING_TYPE_FLOAT64_EXT.rawValue
            )
        }

        @Test("Validate string_EXT")
        public func validate_string_EXT() {
            #expect(
                Ignite.LayerSettingTypeEXT.string_EXT.rawValue == CVulkan.VK_LAYER_SETTING_TYPE_STRING_EXT.rawValue
            )
        }
    }


    /// Tests for the LayeredDriverUnderlyingApiMSFT enum.
    @Suite("LayeredDriverUnderlyingApiMSFT")
    public struct LayeredDriverUnderlyingApiMSFTTests {
        @Test("Validate none_MSFT")
        public func validate_none_MSFT() {
            #expect(
                Ignite.LayeredDriverUnderlyingApiMSFT.none_MSFT.rawValue
                    == CVulkan.VK_LAYERED_DRIVER_UNDERLYING_API_NONE_MSFT.rawValue
            )
        }

        @Test("Validate d3d12_MSFT")
        public func validate_d3d12_MSFT() {
            #expect(
                Ignite.LayeredDriverUnderlyingApiMSFT.d3d12_MSFT.rawValue
                    == CVulkan.VK_LAYERED_DRIVER_UNDERLYING_API_D3D12_MSFT.rawValue
            )
        }
    }


    /// Tests for the LineRasterizationMode enum.
    @Suite("LineRasterizationMode")
    public struct LineRasterizationModeTests {
        @Test("Validate default")
        public func validate_default() {
            #expect(
                Ignite.LineRasterizationMode.`default`.rawValue == CVulkan.VK_LINE_RASTERIZATION_MODE_DEFAULT.rawValue
            )
        }

        @Test("Validate rectangular")
        public func validate_rectangular() {
            #expect(
                Ignite.LineRasterizationMode.rectangular.rawValue == CVulkan.VK_LINE_RASTERIZATION_MODE_RECTANGULAR.rawValue
            )
        }

        @Test("Validate bresenham")
        public func validate_bresenham() {
            #expect(
                Ignite.LineRasterizationMode.bresenham.rawValue == CVulkan.VK_LINE_RASTERIZATION_MODE_BRESENHAM.rawValue
            )
        }

        @Test("Validate rectangularSmooth")
        public func validate_rectangularSmooth() {
            #expect(
                Ignite.LineRasterizationMode.rectangularSmooth.rawValue
                    == CVulkan.VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH.rawValue
            )
        }

        @Test("Validate default_EXT")
        public func validate_default_EXT() {
            #expect(
                Ignite.LineRasterizationMode.default_EXT.rawValue == CVulkan.VK_LINE_RASTERIZATION_MODE_DEFAULT_EXT.rawValue
            )
        }

        @Test("Validate rectangular_EXT")
        public func validate_rectangular_EXT() {
            #expect(
                Ignite.LineRasterizationMode.rectangular_EXT.rawValue
                    == CVulkan.VK_LINE_RASTERIZATION_MODE_RECTANGULAR_EXT.rawValue
            )
        }

        @Test("Validate bresenham_EXT")
        public func validate_bresenham_EXT() {
            #expect(
                Ignite.LineRasterizationMode.bresenham_EXT.rawValue
                    == CVulkan.VK_LINE_RASTERIZATION_MODE_BRESENHAM_EXT.rawValue
            )
        }

        @Test("Validate rectangularSmooth_EXT")
        public func validate_rectangularSmooth_EXT() {
            #expect(
                Ignite.LineRasterizationMode.rectangularSmooth_EXT.rawValue
                    == CVulkan.VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT.rawValue
            )
        }

        @Test("Validate default_KHR")
        public func validate_default_KHR() {
            #expect(
                Ignite.LineRasterizationMode.default_KHR.rawValue == CVulkan.VK_LINE_RASTERIZATION_MODE_DEFAULT_KHR.rawValue
            )
        }

        @Test("Validate rectangular_KHR")
        public func validate_rectangular_KHR() {
            #expect(
                Ignite.LineRasterizationMode.rectangular_KHR.rawValue
                    == CVulkan.VK_LINE_RASTERIZATION_MODE_RECTANGULAR_KHR.rawValue
            )
        }

        @Test("Validate bresenham_KHR")
        public func validate_bresenham_KHR() {
            #expect(
                Ignite.LineRasterizationMode.bresenham_KHR.rawValue
                    == CVulkan.VK_LINE_RASTERIZATION_MODE_BRESENHAM_KHR.rawValue
            )
        }

        @Test("Validate rectangularSmooth_KHR")
        public func validate_rectangularSmooth_KHR() {
            #expect(
                Ignite.LineRasterizationMode.rectangularSmooth_KHR.rawValue
                    == CVulkan.VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_KHR.rawValue
            )
        }
    }


    /// Tests for the LogicOp enum.
    @Suite("LogicOp")
    public struct LogicOpTests {
        @Test("Validate clear")
        public func validate_clear() {
            #expect(
                Ignite.LogicOp.clear.rawValue == CVulkan.VK_LOGIC_OP_CLEAR.rawValue
            )
        }

        @Test("Validate and")
        public func validate_and() {
            #expect(
                Ignite.LogicOp.and.rawValue == CVulkan.VK_LOGIC_OP_AND.rawValue
            )
        }

        @Test("Validate andReverse")
        public func validate_andReverse() {
            #expect(
                Ignite.LogicOp.andReverse.rawValue == CVulkan.VK_LOGIC_OP_AND_REVERSE.rawValue
            )
        }

        @Test("Validate copy")
        public func validate_copy() {
            #expect(
                Ignite.LogicOp.copy.rawValue == CVulkan.VK_LOGIC_OP_COPY.rawValue
            )
        }

        @Test("Validate andInverted")
        public func validate_andInverted() {
            #expect(
                Ignite.LogicOp.andInverted.rawValue == CVulkan.VK_LOGIC_OP_AND_INVERTED.rawValue
            )
        }

        @Test("Validate noOp")
        public func validate_noOp() {
            #expect(
                Ignite.LogicOp.noOp.rawValue == CVulkan.VK_LOGIC_OP_NO_OP.rawValue
            )
        }

        @Test("Validate xor")
        public func validate_xor() {
            #expect(
                Ignite.LogicOp.xor.rawValue == CVulkan.VK_LOGIC_OP_XOR.rawValue
            )
        }

        @Test("Validate or")
        public func validate_or() {
            #expect(
                Ignite.LogicOp.or.rawValue == CVulkan.VK_LOGIC_OP_OR.rawValue
            )
        }

        @Test("Validate nor")
        public func validate_nor() {
            #expect(
                Ignite.LogicOp.nor.rawValue == CVulkan.VK_LOGIC_OP_NOR.rawValue
            )
        }

        @Test("Validate equivalent")
        public func validate_equivalent() {
            #expect(
                Ignite.LogicOp.equivalent.rawValue == CVulkan.VK_LOGIC_OP_EQUIVALENT.rawValue
            )
        }

        @Test("Validate invert")
        public func validate_invert() {
            #expect(
                Ignite.LogicOp.invert.rawValue == CVulkan.VK_LOGIC_OP_INVERT.rawValue
            )
        }

        @Test("Validate orReverse")
        public func validate_orReverse() {
            #expect(
                Ignite.LogicOp.orReverse.rawValue == CVulkan.VK_LOGIC_OP_OR_REVERSE.rawValue
            )
        }

        @Test("Validate copyInverted")
        public func validate_copyInverted() {
            #expect(
                Ignite.LogicOp.copyInverted.rawValue == CVulkan.VK_LOGIC_OP_COPY_INVERTED.rawValue
            )
        }

        @Test("Validate orInverted")
        public func validate_orInverted() {
            #expect(
                Ignite.LogicOp.orInverted.rawValue == CVulkan.VK_LOGIC_OP_OR_INVERTED.rawValue
            )
        }

        @Test("Validate nand")
        public func validate_nand() {
            #expect(
                Ignite.LogicOp.nand.rawValue == CVulkan.VK_LOGIC_OP_NAND.rawValue
            )
        }

        @Test("Validate set")
        public func validate_set() {
            #expect(
                Ignite.LogicOp.set.rawValue == CVulkan.VK_LOGIC_OP_SET.rawValue
            )
        }
    }


    /// Tests for the MemoryOverallocationBehaviorAMD enum.
    @Suite("MemoryOverallocationBehaviorAMD")
    public struct MemoryOverallocationBehaviorAMDTests {
        @Test("Validate default_AMD")
        public func validate_default_AMD() {
            #expect(
                Ignite.MemoryOverallocationBehaviorAMD.default_AMD.rawValue
                    == CVulkan.VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD.rawValue
            )
        }

        @Test("Validate allowed_AMD")
        public func validate_allowed_AMD() {
            #expect(
                Ignite.MemoryOverallocationBehaviorAMD.allowed_AMD.rawValue
                    == CVulkan.VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD.rawValue
            )
        }

        @Test("Validate disallowed_AMD")
        public func validate_disallowed_AMD() {
            #expect(
                Ignite.MemoryOverallocationBehaviorAMD.disallowed_AMD.rawValue
                    == CVulkan.VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD.rawValue
            )
        }
    }


    /// Tests for the MicromapTypeEXT enum.
    @Suite("MicromapTypeEXT")
    public struct MicromapTypeEXTTests {
        @Test("Validate opacityMicromap_EXT")
        public func validate_opacityMicromap_EXT() {
            #expect(
                Ignite.MicromapTypeEXT.opacityMicromap_EXT.rawValue == CVulkan.VK_MICROMAP_TYPE_OPACITY_MICROMAP_EXT.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate displacementMicromap_NV")
            public func validate_displacementMicromap_NV() {
                #expect(
                    Ignite.MicromapTypeEXT.displacementMicromap_NV.rawValue
                        == CVulkan.VK_MICROMAP_TYPE_DISPLACEMENT_MICROMAP_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate displacementMicromap_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_displacementMicromap_NV() {}
        #endif
    }


    /// Tests for the ObjectType enum.
    @Suite("ObjectType")
    public struct ObjectTypeTests {
        @Test("Validate unknown")
        public func validate_unknown() {
            #expect(
                Ignite.ObjectType.unknown.rawValue == CVulkan.VK_OBJECT_TYPE_UNKNOWN.rawValue
            )
        }

        @Test("Validate instance")
        public func validate_instance() {
            #expect(
                Ignite.ObjectType.instance.rawValue == CVulkan.VK_OBJECT_TYPE_INSTANCE.rawValue
            )
        }

        @Test("Validate physicalDevice")
        public func validate_physicalDevice() {
            #expect(
                Ignite.ObjectType.physicalDevice.rawValue == CVulkan.VK_OBJECT_TYPE_PHYSICAL_DEVICE.rawValue
            )
        }

        @Test("Validate device")
        public func validate_device() {
            #expect(
                Ignite.ObjectType.device.rawValue == CVulkan.VK_OBJECT_TYPE_DEVICE.rawValue
            )
        }

        @Test("Validate queue")
        public func validate_queue() {
            #expect(
                Ignite.ObjectType.queue.rawValue == CVulkan.VK_OBJECT_TYPE_QUEUE.rawValue
            )
        }

        @Test("Validate semaphore")
        public func validate_semaphore() {
            #expect(
                Ignite.ObjectType.semaphore.rawValue == CVulkan.VK_OBJECT_TYPE_SEMAPHORE.rawValue
            )
        }

        @Test("Validate commandBuffer")
        public func validate_commandBuffer() {
            #expect(
                Ignite.ObjectType.commandBuffer.rawValue == CVulkan.VK_OBJECT_TYPE_COMMAND_BUFFER.rawValue
            )
        }

        @Test("Validate fence")
        public func validate_fence() {
            #expect(
                Ignite.ObjectType.fence.rawValue == CVulkan.VK_OBJECT_TYPE_FENCE.rawValue
            )
        }

        @Test("Validate deviceMemory")
        public func validate_deviceMemory() {
            #expect(
                Ignite.ObjectType.deviceMemory.rawValue == CVulkan.VK_OBJECT_TYPE_DEVICE_MEMORY.rawValue
            )
        }

        @Test("Validate buffer")
        public func validate_buffer() {
            #expect(
                Ignite.ObjectType.buffer.rawValue == CVulkan.VK_OBJECT_TYPE_BUFFER.rawValue
            )
        }

        @Test("Validate image")
        public func validate_image() {
            #expect(
                Ignite.ObjectType.image.rawValue == CVulkan.VK_OBJECT_TYPE_IMAGE.rawValue
            )
        }

        @Test("Validate event")
        public func validate_event() {
            #expect(
                Ignite.ObjectType.event.rawValue == CVulkan.VK_OBJECT_TYPE_EVENT.rawValue
            )
        }

        @Test("Validate queryPool")
        public func validate_queryPool() {
            #expect(
                Ignite.ObjectType.queryPool.rawValue == CVulkan.VK_OBJECT_TYPE_QUERY_POOL.rawValue
            )
        }

        @Test("Validate bufferView")
        public func validate_bufferView() {
            #expect(
                Ignite.ObjectType.bufferView.rawValue == CVulkan.VK_OBJECT_TYPE_BUFFER_VIEW.rawValue
            )
        }

        @Test("Validate imageView")
        public func validate_imageView() {
            #expect(
                Ignite.ObjectType.imageView.rawValue == CVulkan.VK_OBJECT_TYPE_IMAGE_VIEW.rawValue
            )
        }

        @Test("Validate shaderModule")
        public func validate_shaderModule() {
            #expect(
                Ignite.ObjectType.shaderModule.rawValue == CVulkan.VK_OBJECT_TYPE_SHADER_MODULE.rawValue
            )
        }

        @Test("Validate pipelineCache")
        public func validate_pipelineCache() {
            #expect(
                Ignite.ObjectType.pipelineCache.rawValue == CVulkan.VK_OBJECT_TYPE_PIPELINE_CACHE.rawValue
            )
        }

        @Test("Validate pipelineLayout")
        public func validate_pipelineLayout() {
            #expect(
                Ignite.ObjectType.pipelineLayout.rawValue == CVulkan.VK_OBJECT_TYPE_PIPELINE_LAYOUT.rawValue
            )
        }

        @Test("Validate renderPass")
        public func validate_renderPass() {
            #expect(
                Ignite.ObjectType.renderPass.rawValue == CVulkan.VK_OBJECT_TYPE_RENDER_PASS.rawValue
            )
        }

        @Test("Validate pipeline")
        public func validate_pipeline() {
            #expect(
                Ignite.ObjectType.pipeline.rawValue == CVulkan.VK_OBJECT_TYPE_PIPELINE.rawValue
            )
        }

        @Test("Validate descriptorSetLayout")
        public func validate_descriptorSetLayout() {
            #expect(
                Ignite.ObjectType.descriptorSetLayout.rawValue == CVulkan.VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT.rawValue
            )
        }

        @Test("Validate sampler")
        public func validate_sampler() {
            #expect(
                Ignite.ObjectType.sampler.rawValue == CVulkan.VK_OBJECT_TYPE_SAMPLER.rawValue
            )
        }

        @Test("Validate descriptorPool")
        public func validate_descriptorPool() {
            #expect(
                Ignite.ObjectType.descriptorPool.rawValue == CVulkan.VK_OBJECT_TYPE_DESCRIPTOR_POOL.rawValue
            )
        }

        @Test("Validate descriptorSet")
        public func validate_descriptorSet() {
            #expect(
                Ignite.ObjectType.descriptorSet.rawValue == CVulkan.VK_OBJECT_TYPE_DESCRIPTOR_SET.rawValue
            )
        }

        @Test("Validate framebuffer")
        public func validate_framebuffer() {
            #expect(
                Ignite.ObjectType.framebuffer.rawValue == CVulkan.VK_OBJECT_TYPE_FRAMEBUFFER.rawValue
            )
        }

        @Test("Validate commandPool")
        public func validate_commandPool() {
            #expect(
                Ignite.ObjectType.commandPool.rawValue == CVulkan.VK_OBJECT_TYPE_COMMAND_POOL.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversion")
        public func validate_samplerYcbcrConversion() {
            #expect(
                Ignite.ObjectType.samplerYcbcrConversion.rawValue == CVulkan.VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION.rawValue
            )
        }

        @Test("Validate descriptorUpdateTemplate")
        public func validate_descriptorUpdateTemplate() {
            #expect(
                Ignite.ObjectType.descriptorUpdateTemplate.rawValue
                    == CVulkan.VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE.rawValue
            )
        }

        @Test("Validate privateDataSlot")
        public func validate_privateDataSlot() {
            #expect(
                Ignite.ObjectType.privateDataSlot.rawValue == CVulkan.VK_OBJECT_TYPE_PRIVATE_DATA_SLOT.rawValue
            )
        }

        @Test("Validate surface_KHR")
        public func validate_surface_KHR() {
            #expect(
                Ignite.ObjectType.surface_KHR.rawValue == CVulkan.VK_OBJECT_TYPE_SURFACE_KHR.rawValue
            )
        }

        @Test("Validate swapchain_KHR")
        public func validate_swapchain_KHR() {
            #expect(
                Ignite.ObjectType.swapchain_KHR.rawValue == CVulkan.VK_OBJECT_TYPE_SWAPCHAIN_KHR.rawValue
            )
        }

        @Test("Validate display_KHR")
        public func validate_display_KHR() {
            #expect(
                Ignite.ObjectType.display_KHR.rawValue == CVulkan.VK_OBJECT_TYPE_DISPLAY_KHR.rawValue
            )
        }

        @Test("Validate displayMode_KHR")
        public func validate_displayMode_KHR() {
            #expect(
                Ignite.ObjectType.displayMode_KHR.rawValue == CVulkan.VK_OBJECT_TYPE_DISPLAY_MODE_KHR.rawValue
            )
        }

        @Test("Validate debugReportCallback_EXT")
        public func validate_debugReportCallback_EXT() {
            #expect(
                Ignite.ObjectType.debugReportCallback_EXT.rawValue
                    == CVulkan.VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT.rawValue
            )
        }

        @Test("Validate videoSession_KHR")
        public func validate_videoSession_KHR() {
            #expect(
                Ignite.ObjectType.videoSession_KHR.rawValue == CVulkan.VK_OBJECT_TYPE_VIDEO_SESSION_KHR.rawValue
            )
        }

        @Test("Validate videoSessionParameters_KHR")
        public func validate_videoSessionParameters_KHR() {
            #expect(
                Ignite.ObjectType.videoSessionParameters_KHR.rawValue
                    == CVulkan.VK_OBJECT_TYPE_VIDEO_SESSION_PARAMETERS_KHR.rawValue
            )
        }

        @Test("Validate cuModule_NVX")
        public func validate_cuModule_NVX() {
            #expect(
                Ignite.ObjectType.cuModule_NVX.rawValue == CVulkan.VK_OBJECT_TYPE_CU_MODULE_NVX.rawValue
            )
        }

        @Test("Validate cuFunction_NVX")
        public func validate_cuFunction_NVX() {
            #expect(
                Ignite.ObjectType.cuFunction_NVX.rawValue == CVulkan.VK_OBJECT_TYPE_CU_FUNCTION_NVX.rawValue
            )
        }

        @Test("Validate debugUtilsMessenger_EXT")
        public func validate_debugUtilsMessenger_EXT() {
            #expect(
                Ignite.ObjectType.debugUtilsMessenger_EXT.rawValue
                    == CVulkan.VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT.rawValue
            )
        }

        @Test("Validate accelerationStructure_KHR")
        public func validate_accelerationStructure_KHR() {
            #expect(
                Ignite.ObjectType.accelerationStructure_KHR.rawValue
                    == CVulkan.VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR.rawValue
            )
        }

        @Test("Validate validationCache_EXT")
        public func validate_validationCache_EXT() {
            #expect(
                Ignite.ObjectType.validationCache_EXT.rawValue == CVulkan.VK_OBJECT_TYPE_VALIDATION_CACHE_EXT.rawValue
            )
        }

        @Test("Validate accelerationStructure_NV")
        public func validate_accelerationStructure_NV() {
            #expect(
                Ignite.ObjectType.accelerationStructure_NV.rawValue
                    == CVulkan.VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV.rawValue
            )
        }

        @Test("Validate performanceConfiguration_INTEL")
        public func validate_performanceConfiguration_INTEL() {
            #expect(
                Ignite.ObjectType.performanceConfiguration_INTEL.rawValue
                    == CVulkan.VK_OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL.rawValue
            )
        }

        @Test("Validate deferredOperation_KHR")
        public func validate_deferredOperation_KHR() {
            #expect(
                Ignite.ObjectType.deferredOperation_KHR.rawValue == CVulkan.VK_OBJECT_TYPE_DEFERRED_OPERATION_KHR.rawValue
            )
        }

        @Test("Validate indirectCommandsLayout_NV")
        public func validate_indirectCommandsLayout_NV() {
            #expect(
                Ignite.ObjectType.indirectCommandsLayout_NV.rawValue
                    == CVulkan.VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate cudaModule_NV")
            public func validate_cudaModule_NV() {
                #expect(
                    Ignite.ObjectType.cudaModule_NV.rawValue == CVulkan.VK_OBJECT_TYPE_CUDA_MODULE_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate cudaModule_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_cudaModule_NV() {}
        #endif

        #if EnableProvisional
            @Test("Validate cudaFunction_NV")
            public func validate_cudaFunction_NV() {
                #expect(
                    Ignite.ObjectType.cudaFunction_NV.rawValue == CVulkan.VK_OBJECT_TYPE_CUDA_FUNCTION_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate cudaFunction_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_cudaFunction_NV() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate bufferCollection_FUCHSIA")
            public func validate_bufferCollection_FUCHSIA() {
                #expect(
                    Ignite.ObjectType.bufferCollection_FUCHSIA.rawValue
                        == CVulkan.VK_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate bufferCollection_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_bufferCollection_FUCHSIA() {}
        #endif

        @Test("Validate micromap_EXT")
        public func validate_micromap_EXT() {
            #expect(
                Ignite.ObjectType.micromap_EXT.rawValue == CVulkan.VK_OBJECT_TYPE_MICROMAP_EXT.rawValue
            )
        }

        @Test("Validate tensor_ARM")
        public func validate_tensor_ARM() {
            #expect(
                Ignite.ObjectType.tensor_ARM.rawValue == CVulkan.VK_OBJECT_TYPE_TENSOR_ARM.rawValue
            )
        }

        @Test("Validate tensorView_ARM")
        public func validate_tensorView_ARM() {
            #expect(
                Ignite.ObjectType.tensorView_ARM.rawValue == CVulkan.VK_OBJECT_TYPE_TENSOR_VIEW_ARM.rawValue
            )
        }

        @Test("Validate opticalFlowSession_NV")
        public func validate_opticalFlowSession_NV() {
            #expect(
                Ignite.ObjectType.opticalFlowSession_NV.rawValue == CVulkan.VK_OBJECT_TYPE_OPTICAL_FLOW_SESSION_NV.rawValue
            )
        }

        @Test("Validate shader_EXT")
        public func validate_shader_EXT() {
            #expect(
                Ignite.ObjectType.shader_EXT.rawValue == CVulkan.VK_OBJECT_TYPE_SHADER_EXT.rawValue
            )
        }

        @Test("Validate pipelineBinary_KHR")
        public func validate_pipelineBinary_KHR() {
            #expect(
                Ignite.ObjectType.pipelineBinary_KHR.rawValue == CVulkan.VK_OBJECT_TYPE_PIPELINE_BINARY_KHR.rawValue
            )
        }

        @Test("Validate externalComputeQueue_NV")
        public func validate_externalComputeQueue_NV() {
            #expect(
                Ignite.ObjectType.externalComputeQueue_NV.rawValue
                    == CVulkan.VK_OBJECT_TYPE_EXTERNAL_COMPUTE_QUEUE_NV.rawValue
            )
        }

        @Test("Validate indirectCommandsLayout_EXT")
        public func validate_indirectCommandsLayout_EXT() {
            #expect(
                Ignite.ObjectType.indirectCommandsLayout_EXT.rawValue
                    == CVulkan.VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_EXT.rawValue
            )
        }

        @Test("Validate indirectExecutionSet_EXT")
        public func validate_indirectExecutionSet_EXT() {
            #expect(
                Ignite.ObjectType.indirectExecutionSet_EXT.rawValue
                    == CVulkan.VK_OBJECT_TYPE_INDIRECT_EXECUTION_SET_EXT.rawValue
            )
        }

        @Test("Validate descriptorUpdateTemplate_KHR")
        public func validate_descriptorUpdateTemplate_KHR() {
            #expect(
                Ignite.ObjectType.descriptorUpdateTemplate_KHR.rawValue
                    == CVulkan.VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversion_KHR")
        public func validate_samplerYcbcrConversion_KHR() {
            #expect(
                Ignite.ObjectType.samplerYcbcrConversion_KHR.rawValue
                    == CVulkan.VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR.rawValue
            )
        }

        @Test("Validate privateDataSlot_EXT")
        public func validate_privateDataSlot_EXT() {
            #expect(
                Ignite.ObjectType.privateDataSlot_EXT.rawValue == CVulkan.VK_OBJECT_TYPE_PRIVATE_DATA_SLOT_EXT.rawValue
            )
        }
    }


    /// Tests for the OpacityMicromapFormatEXT enum.
    @Suite("OpacityMicromapFormatEXT")
    public struct OpacityMicromapFormatEXTTests {
        @Test("Validate 2State_EXT")
        public func validate_2State_EXT() {
            #expect(
                Ignite.OpacityMicromapFormatEXT.`2State_EXT`.rawValue
                    == CVulkan.VK_OPACITY_MICROMAP_FORMAT_2_STATE_EXT.rawValue
            )
        }

        @Test("Validate 4State_EXT")
        public func validate_4State_EXT() {
            #expect(
                Ignite.OpacityMicromapFormatEXT.`4State_EXT`.rawValue
                    == CVulkan.VK_OPACITY_MICROMAP_FORMAT_4_STATE_EXT.rawValue
            )
        }
    }


    /// Tests for the OpacityMicromapSpecialIndexEXT enum.
    @Suite("OpacityMicromapSpecialIndexEXT")
    public struct OpacityMicromapSpecialIndexEXTTests {
        @Test("Validate fullyTransparent_EXT")
        public func validate_fullyTransparent_EXT() {
            #expect(
                Ignite.OpacityMicromapSpecialIndexEXT.fullyTransparent_EXT.rawValue
                    == CVulkan.VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_TRANSPARENT_EXT.rawValue
            )
        }

        @Test("Validate fullyOpaque_EXT")
        public func validate_fullyOpaque_EXT() {
            #expect(
                Ignite.OpacityMicromapSpecialIndexEXT.fullyOpaque_EXT.rawValue
                    == CVulkan.VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_OPAQUE_EXT.rawValue
            )
        }

        @Test("Validate fullyUnknownTransparent_EXT")
        public func validate_fullyUnknownTransparent_EXT() {
            #expect(
                Ignite.OpacityMicromapSpecialIndexEXT.fullyUnknownTransparent_EXT.rawValue
                    == CVulkan.VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_TRANSPARENT_EXT.rawValue
            )
        }

        @Test("Validate fullyUnknownOpaque_EXT")
        public func validate_fullyUnknownOpaque_EXT() {
            #expect(
                Ignite.OpacityMicromapSpecialIndexEXT.fullyUnknownOpaque_EXT.rawValue
                    == CVulkan.VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_OPAQUE_EXT.rawValue
            )
        }

        @Test("Validate clusterGeometryDisableOpacityMicromap_NV")
        public func validate_clusterGeometryDisableOpacityMicromap_NV() {
            #expect(
                Ignite.OpacityMicromapSpecialIndexEXT.clusterGeometryDisableOpacityMicromap_NV.rawValue
                    == CVulkan.VK_OPACITY_MICROMAP_SPECIAL_INDEX_CLUSTER_GEOMETRY_DISABLE_OPACITY_MICROMAP_NV.rawValue
            )
        }
    }


    /// Tests for the OpticalFlowPerformanceLevelNV enum.
    @Suite("OpticalFlowPerformanceLevelNV")
    public struct OpticalFlowPerformanceLevelNVTests {
        @Test("Validate unknown_NV")
        public func validate_unknown_NV() {
            #expect(
                Ignite.OpticalFlowPerformanceLevelNV.unknown_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_UNKNOWN_NV.rawValue
            )
        }

        @Test("Validate slow_NV")
        public func validate_slow_NV() {
            #expect(
                Ignite.OpticalFlowPerformanceLevelNV.slow_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_SLOW_NV.rawValue
            )
        }

        @Test("Validate medium_NV")
        public func validate_medium_NV() {
            #expect(
                Ignite.OpticalFlowPerformanceLevelNV.medium_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_MEDIUM_NV.rawValue
            )
        }

        @Test("Validate fast_NV")
        public func validate_fast_NV() {
            #expect(
                Ignite.OpticalFlowPerformanceLevelNV.fast_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_FAST_NV.rawValue
            )
        }
    }


    /// Tests for the OpticalFlowSessionBindingPointNV enum.
    @Suite("OpticalFlowSessionBindingPointNV")
    public struct OpticalFlowSessionBindingPointNVTests {
        @Test("Validate unknown_NV")
        public func validate_unknown_NV() {
            #expect(
                Ignite.OpticalFlowSessionBindingPointNV.unknown_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_BINDING_POINT_UNKNOWN_NV.rawValue
            )
        }

        @Test("Validate input_NV")
        public func validate_input_NV() {
            #expect(
                Ignite.OpticalFlowSessionBindingPointNV.input_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_BINDING_POINT_INPUT_NV.rawValue
            )
        }

        @Test("Validate reference_NV")
        public func validate_reference_NV() {
            #expect(
                Ignite.OpticalFlowSessionBindingPointNV.reference_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_BINDING_POINT_REFERENCE_NV.rawValue
            )
        }

        @Test("Validate hint_NV")
        public func validate_hint_NV() {
            #expect(
                Ignite.OpticalFlowSessionBindingPointNV.hint_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_BINDING_POINT_HINT_NV.rawValue
            )
        }

        @Test("Validate flowVector_NV")
        public func validate_flowVector_NV() {
            #expect(
                Ignite.OpticalFlowSessionBindingPointNV.flowVector_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_BINDING_POINT_FLOW_VECTOR_NV.rawValue
            )
        }

        @Test("Validate backwardFlowVector_NV")
        public func validate_backwardFlowVector_NV() {
            #expect(
                Ignite.OpticalFlowSessionBindingPointNV.backwardFlowVector_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_FLOW_VECTOR_NV.rawValue
            )
        }

        @Test("Validate cost_NV")
        public func validate_cost_NV() {
            #expect(
                Ignite.OpticalFlowSessionBindingPointNV.cost_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_BINDING_POINT_COST_NV.rawValue
            )
        }

        @Test("Validate backwardCost_NV")
        public func validate_backwardCost_NV() {
            #expect(
                Ignite.OpticalFlowSessionBindingPointNV.backwardCost_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_COST_NV.rawValue
            )
        }

        @Test("Validate globalFlow_NV")
        public func validate_globalFlow_NV() {
            #expect(
                Ignite.OpticalFlowSessionBindingPointNV.globalFlow_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_BINDING_POINT_GLOBAL_FLOW_NV.rawValue
            )
        }
    }


    /// Tests for the OutOfBandQueueTypeNV enum.
    @Suite("OutOfBandQueueTypeNV")
    public struct OutOfBandQueueTypeNVTests {
        @Test("Validate render_NV")
        public func validate_render_NV() {
            #expect(
                Ignite.OutOfBandQueueTypeNV.render_NV.rawValue == CVulkan.VK_OUT_OF_BAND_QUEUE_TYPE_RENDER_NV.rawValue
            )
        }

        @Test("Validate present_NV")
        public func validate_present_NV() {
            #expect(
                Ignite.OutOfBandQueueTypeNV.present_NV.rawValue == CVulkan.VK_OUT_OF_BAND_QUEUE_TYPE_PRESENT_NV.rawValue
            )
        }
    }


    /// Tests for the PartitionedAccelerationStructureOpTypeNV enum.
    @Suite("PartitionedAccelerationStructureOpTypeNV")
    public struct PartitionedAccelerationStructureOpTypeNVTests {
        @Test("Validate writeInstance_NV")
        public func validate_writeInstance_NV() {
            #expect(
                Ignite.PartitionedAccelerationStructureOpTypeNV.writeInstance_NV.rawValue
                    == CVulkan.VK_PARTITIONED_ACCELERATION_STRUCTURE_OP_TYPE_WRITE_INSTANCE_NV.rawValue
            )
        }

        @Test("Validate updateInstance_NV")
        public func validate_updateInstance_NV() {
            #expect(
                Ignite.PartitionedAccelerationStructureOpTypeNV.updateInstance_NV.rawValue
                    == CVulkan.VK_PARTITIONED_ACCELERATION_STRUCTURE_OP_TYPE_UPDATE_INSTANCE_NV.rawValue
            )
        }

        @Test("Validate writePartitionTranslation_NV")
        public func validate_writePartitionTranslation_NV() {
            #expect(
                Ignite.PartitionedAccelerationStructureOpTypeNV.writePartitionTranslation_NV.rawValue
                    == CVulkan.VK_PARTITIONED_ACCELERATION_STRUCTURE_OP_TYPE_WRITE_PARTITION_TRANSLATION_NV.rawValue
            )
        }
    }


    /// Tests for the PerformanceConfigurationTypeINTEL enum.
    @Suite("PerformanceConfigurationTypeINTEL")
    public struct PerformanceConfigurationTypeINTELTests {
        @Test("Validate commandQueueMetricsDiscoveryActivated_INTEL")
        public func validate_commandQueueMetricsDiscoveryActivated_INTEL() {
            #expect(
                Ignite.PerformanceConfigurationTypeINTEL.commandQueueMetricsDiscoveryActivated_INTEL.rawValue
                    == CVulkan.VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL.rawValue
            )
        }
    }


    /// Tests for the PerformanceCounterScopeKHR enum.
    @Suite("PerformanceCounterScopeKHR")
    public struct PerformanceCounterScopeKHRTests {
        @Test("Validate commandBuffer_KHR")
        public func validate_commandBuffer_KHR() {
            #expect(
                Ignite.PerformanceCounterScopeKHR.commandBuffer_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR.rawValue
            )
        }

        @Test("Validate renderPass_KHR")
        public func validate_renderPass_KHR() {
            #expect(
                Ignite.PerformanceCounterScopeKHR.renderPass_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR.rawValue
            )
        }

        @Test("Validate command_KHR")
        public func validate_command_KHR() {
            #expect(
                Ignite.PerformanceCounterScopeKHR.command_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR.rawValue
            )
        }

        @Test("Validate queryScopeCommandBuffer_KHR")
        public func validate_queryScopeCommandBuffer_KHR() {
            #expect(
                Ignite.PerformanceCounterScopeKHR.queryScopeCommandBuffer_KHR.rawValue
                    == CVulkan.VK_QUERY_SCOPE_COMMAND_BUFFER_KHR.rawValue
            )
        }

        @Test("Validate queryScopeRenderPass_KHR")
        public func validate_queryScopeRenderPass_KHR() {
            #expect(
                Ignite.PerformanceCounterScopeKHR.queryScopeRenderPass_KHR.rawValue
                    == CVulkan.VK_QUERY_SCOPE_RENDER_PASS_KHR.rawValue
            )
        }

        @Test("Validate queryScopeCommand_KHR")
        public func validate_queryScopeCommand_KHR() {
            #expect(
                Ignite.PerformanceCounterScopeKHR.queryScopeCommand_KHR.rawValue
                    == CVulkan.VK_QUERY_SCOPE_COMMAND_KHR.rawValue
            )
        }
    }


    /// Tests for the PerformanceCounterStorageKHR enum.
    @Suite("PerformanceCounterStorageKHR")
    public struct PerformanceCounterStorageKHRTests {
        @Test("Validate int32_KHR")
        public func validate_int32_KHR() {
            #expect(
                Ignite.PerformanceCounterStorageKHR.int32_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR.rawValue
            )
        }

        @Test("Validate int64_KHR")
        public func validate_int64_KHR() {
            #expect(
                Ignite.PerformanceCounterStorageKHR.int64_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR.rawValue
            )
        }

        @Test("Validate uint32_KHR")
        public func validate_uint32_KHR() {
            #expect(
                Ignite.PerformanceCounterStorageKHR.uint32_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR.rawValue
            )
        }

        @Test("Validate uint64_KHR")
        public func validate_uint64_KHR() {
            #expect(
                Ignite.PerformanceCounterStorageKHR.uint64_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR.rawValue
            )
        }

        @Test("Validate float32_KHR")
        public func validate_float32_KHR() {
            #expect(
                Ignite.PerformanceCounterStorageKHR.float32_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR.rawValue
            )
        }

        @Test("Validate float64_KHR")
        public func validate_float64_KHR() {
            #expect(
                Ignite.PerformanceCounterStorageKHR.float64_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR.rawValue
            )
        }
    }


    /// Tests for the PerformanceCounterUnitKHR enum.
    @Suite("PerformanceCounterUnitKHR")
    public struct PerformanceCounterUnitKHRTests {
        @Test("Validate generic_KHR")
        public func validate_generic_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.generic_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_GENERIC_KHR.rawValue
            )
        }

        @Test("Validate percentage_KHR")
        public func validate_percentage_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.percentage_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR.rawValue
            )
        }

        @Test("Validate nanoseconds_KHR")
        public func validate_nanoseconds_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.nanoseconds_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR.rawValue
            )
        }

        @Test("Validate bytes_KHR")
        public func validate_bytes_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.bytes_KHR.rawValue == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_BYTES_KHR.rawValue
            )
        }

        @Test("Validate bytesPerSecond_KHR")
        public func validate_bytesPerSecond_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.bytesPerSecond_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR.rawValue
            )
        }

        @Test("Validate kelvin_KHR")
        public func validate_kelvin_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.kelvin_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_KELVIN_KHR.rawValue
            )
        }

        @Test("Validate watts_KHR")
        public func validate_watts_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.watts_KHR.rawValue == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_WATTS_KHR.rawValue
            )
        }

        @Test("Validate volts_KHR")
        public func validate_volts_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.volts_KHR.rawValue == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_VOLTS_KHR.rawValue
            )
        }

        @Test("Validate amps_KHR")
        public func validate_amps_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.amps_KHR.rawValue == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_AMPS_KHR.rawValue
            )
        }

        @Test("Validate hertz_KHR")
        public func validate_hertz_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.hertz_KHR.rawValue == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_HERTZ_KHR.rawValue
            )
        }

        @Test("Validate cycles_KHR")
        public func validate_cycles_KHR() {
            #expect(
                Ignite.PerformanceCounterUnitKHR.cycles_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_UNIT_CYCLES_KHR.rawValue
            )
        }
    }


    /// Tests for the PerformanceOverrideTypeINTEL enum.
    @Suite("PerformanceOverrideTypeINTEL")
    public struct PerformanceOverrideTypeINTELTests {
        @Test("Validate nullHardware_INTEL")
        public func validate_nullHardware_INTEL() {
            #expect(
                Ignite.PerformanceOverrideTypeINTEL.nullHardware_INTEL.rawValue
                    == CVulkan.VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL.rawValue
            )
        }

        @Test("Validate flushGpuCaches_INTEL")
        public func validate_flushGpuCaches_INTEL() {
            #expect(
                Ignite.PerformanceOverrideTypeINTEL.flushGpuCaches_INTEL.rawValue
                    == CVulkan.VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL.rawValue
            )
        }
    }


    /// Tests for the PerformanceParameterTypeINTEL enum.
    @Suite("PerformanceParameterTypeINTEL")
    public struct PerformanceParameterTypeINTELTests {
        @Test("Validate hwCountersSupported_INTEL")
        public func validate_hwCountersSupported_INTEL() {
            #expect(
                Ignite.PerformanceParameterTypeINTEL.hwCountersSupported_INTEL.rawValue
                    == CVulkan.VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL.rawValue
            )
        }

        @Test("Validate streamMarkerValidBits_INTEL")
        public func validate_streamMarkerValidBits_INTEL() {
            #expect(
                Ignite.PerformanceParameterTypeINTEL.streamMarkerValidBits_INTEL.rawValue
                    == CVulkan.VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL.rawValue
            )
        }
    }


    /// Tests for the PerformanceValueTypeINTEL enum.
    @Suite("PerformanceValueTypeINTEL")
    public struct PerformanceValueTypeINTELTests {
        @Test("Validate uint32_INTEL")
        public func validate_uint32_INTEL() {
            #expect(
                Ignite.PerformanceValueTypeINTEL.uint32_INTEL.rawValue
                    == CVulkan.VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL.rawValue
            )
        }

        @Test("Validate uint64_INTEL")
        public func validate_uint64_INTEL() {
            #expect(
                Ignite.PerformanceValueTypeINTEL.uint64_INTEL.rawValue
                    == CVulkan.VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL.rawValue
            )
        }

        @Test("Validate float_INTEL")
        public func validate_float_INTEL() {
            #expect(
                Ignite.PerformanceValueTypeINTEL.float_INTEL.rawValue
                    == CVulkan.VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL.rawValue
            )
        }

        @Test("Validate bool_INTEL")
        public func validate_bool_INTEL() {
            #expect(
                Ignite.PerformanceValueTypeINTEL.bool_INTEL.rawValue == CVulkan.VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL.rawValue
            )
        }

        @Test("Validate string_INTEL")
        public func validate_string_INTEL() {
            #expect(
                Ignite.PerformanceValueTypeINTEL.string_INTEL.rawValue
                    == CVulkan.VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL.rawValue
            )
        }
    }


    /// Tests for the PhysicalDeviceLayeredApiKHR enum.
    @Suite("PhysicalDeviceLayeredApiKHR")
    public struct PhysicalDeviceLayeredApiKHRTests {
        @Test("Validate vulkan_KHR")
        public func validate_vulkan_KHR() {
            #expect(
                Ignite.PhysicalDeviceLayeredApiKHR.vulkan_KHR.rawValue
                    == CVulkan.VK_PHYSICAL_DEVICE_LAYERED_API_VULKAN_KHR.rawValue
            )
        }

        @Test("Validate d3d12_KHR")
        public func validate_d3d12_KHR() {
            #expect(
                Ignite.PhysicalDeviceLayeredApiKHR.d3d12_KHR.rawValue
                    == CVulkan.VK_PHYSICAL_DEVICE_LAYERED_API_D3D12_KHR.rawValue
            )
        }

        @Test("Validate metal_KHR")
        public func validate_metal_KHR() {
            #expect(
                Ignite.PhysicalDeviceLayeredApiKHR.metal_KHR.rawValue
                    == CVulkan.VK_PHYSICAL_DEVICE_LAYERED_API_METAL_KHR.rawValue
            )
        }

        @Test("Validate opengl_KHR")
        public func validate_opengl_KHR() {
            #expect(
                Ignite.PhysicalDeviceLayeredApiKHR.opengl_KHR.rawValue
                    == CVulkan.VK_PHYSICAL_DEVICE_LAYERED_API_OPENGL_KHR.rawValue
            )
        }

        @Test("Validate opengles_KHR")
        public func validate_opengles_KHR() {
            #expect(
                Ignite.PhysicalDeviceLayeredApiKHR.opengles_KHR.rawValue
                    == CVulkan.VK_PHYSICAL_DEVICE_LAYERED_API_OPENGLES_KHR.rawValue
            )
        }
    }


    /// Tests for the PhysicalDeviceType enum.
    @Suite("PhysicalDeviceType")
    public struct PhysicalDeviceTypeTests {
        @Test("Validate other")
        public func validate_other() {
            #expect(
                Ignite.PhysicalDeviceType.other.rawValue == CVulkan.VK_PHYSICAL_DEVICE_TYPE_OTHER.rawValue
            )
        }

        @Test("Validate integratedGpu")
        public func validate_integratedGpu() {
            #expect(
                Ignite.PhysicalDeviceType.integratedGpu.rawValue == CVulkan.VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU.rawValue
            )
        }

        @Test("Validate discreteGpu")
        public func validate_discreteGpu() {
            #expect(
                Ignite.PhysicalDeviceType.discreteGpu.rawValue == CVulkan.VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU.rawValue
            )
        }

        @Test("Validate virtualGpu")
        public func validate_virtualGpu() {
            #expect(
                Ignite.PhysicalDeviceType.virtualGpu.rawValue == CVulkan.VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU.rawValue
            )
        }

        @Test("Validate cpu")
        public func validate_cpu() {
            #expect(
                Ignite.PhysicalDeviceType.cpu.rawValue == CVulkan.VK_PHYSICAL_DEVICE_TYPE_CPU.rawValue
            )
        }
    }


    /// Tests for the PipelineBindPoint enum.
    @Suite("PipelineBindPoint")
    public struct PipelineBindPointTests {
        @Test("Validate graphics")
        public func validate_graphics() {
            #expect(
                Ignite.PipelineBindPoint.graphics.rawValue == CVulkan.VK_PIPELINE_BIND_POINT_GRAPHICS.rawValue
            )
        }

        @Test("Validate compute")
        public func validate_compute() {
            #expect(
                Ignite.PipelineBindPoint.compute.rawValue == CVulkan.VK_PIPELINE_BIND_POINT_COMPUTE.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate executionGraph_AMDX")
            public func validate_executionGraph_AMDX() {
                #expect(
                    Ignite.PipelineBindPoint.executionGraph_AMDX.rawValue
                        == CVulkan.VK_PIPELINE_BIND_POINT_EXECUTION_GRAPH_AMDX.rawValue
                )
            }
        #else
            @Test(
                "Validate executionGraph_AMDX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_executionGraph_AMDX() {}
        #endif

        @Test("Validate rayTracing_KHR")
        public func validate_rayTracing_KHR() {
            #expect(
                Ignite.PipelineBindPoint.rayTracing_KHR.rawValue == CVulkan.VK_PIPELINE_BIND_POINT_RAY_TRACING_KHR.rawValue
            )
        }

        @Test("Validate subpassShading_HUAWEI")
        public func validate_subpassShading_HUAWEI() {
            #expect(
                Ignite.PipelineBindPoint.subpassShading_HUAWEI.rawValue
                    == CVulkan.VK_PIPELINE_BIND_POINT_SUBPASS_SHADING_HUAWEI.rawValue
            )
        }

        @Test("Validate rayTracing_NV")
        public func validate_rayTracing_NV() {
            #expect(
                Ignite.PipelineBindPoint.rayTracing_NV.rawValue == CVulkan.VK_PIPELINE_BIND_POINT_RAY_TRACING_NV.rawValue
            )
        }
    }


    /// Tests for the PipelineCacheHeaderVersion enum.
    @Suite("PipelineCacheHeaderVersion")
    public struct PipelineCacheHeaderVersionTests {
        @Test("Validate one")
        public func validate_one() {
            #expect(
                Ignite.PipelineCacheHeaderVersion.one.rawValue == CVulkan.VK_PIPELINE_CACHE_HEADER_VERSION_ONE.rawValue
            )
        }
    }


    /// Tests for the PipelineExecutableStatisticFormatKHR enum.
    @Suite("PipelineExecutableStatisticFormatKHR")
    public struct PipelineExecutableStatisticFormatKHRTests {
        @Test("Validate bool32_KHR")
        public func validate_bool32_KHR() {
            #expect(
                Ignite.PipelineExecutableStatisticFormatKHR.bool32_KHR.rawValue
                    == CVulkan.VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR.rawValue
            )
        }

        @Test("Validate int64_KHR")
        public func validate_int64_KHR() {
            #expect(
                Ignite.PipelineExecutableStatisticFormatKHR.int64_KHR.rawValue
                    == CVulkan.VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR.rawValue
            )
        }

        @Test("Validate uint64_KHR")
        public func validate_uint64_KHR() {
            #expect(
                Ignite.PipelineExecutableStatisticFormatKHR.uint64_KHR.rawValue
                    == CVulkan.VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR.rawValue
            )
        }

        @Test("Validate float64_KHR")
        public func validate_float64_KHR() {
            #expect(
                Ignite.PipelineExecutableStatisticFormatKHR.float64_KHR.rawValue
                    == CVulkan.VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR.rawValue
            )
        }
    }


    /// Tests for the PipelineRobustnessBufferBehavior enum.
    @Suite("PipelineRobustnessBufferBehavior")
    public struct PipelineRobustnessBufferBehaviorTests {
        @Test("Validate deviceDefault")
        public func validate_deviceDefault() {
            #expect(
                Ignite.PipelineRobustnessBufferBehavior.deviceDefault.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT.rawValue
            )
        }

        @Test("Validate disabled")
        public func validate_disabled() {
            #expect(
                Ignite.PipelineRobustnessBufferBehavior.disabled.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED.rawValue
            )
        }

        @Test("Validate robustBufferAccess")
        public func validate_robustBufferAccess() {
            #expect(
                Ignite.PipelineRobustnessBufferBehavior.robustBufferAccess.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS.rawValue
            )
        }

        @Test("Validate robustBufferAccess2")
        public func validate_robustBufferAccess2() {
            #expect(
                Ignite.PipelineRobustnessBufferBehavior.robustBufferAccess2.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2.rawValue
            )
        }

        @Test("Validate deviceDefault_EXT")
        public func validate_deviceDefault_EXT() {
            #expect(
                Ignite.PipelineRobustnessBufferBehavior.deviceDefault_EXT.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT_EXT.rawValue
            )
        }

        @Test("Validate disabled_EXT")
        public func validate_disabled_EXT() {
            #expect(
                Ignite.PipelineRobustnessBufferBehavior.disabled_EXT.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED_EXT.rawValue
            )
        }

        @Test("Validate robustBufferAccess_EXT")
        public func validate_robustBufferAccess_EXT() {
            #expect(
                Ignite.PipelineRobustnessBufferBehavior.robustBufferAccess_EXT.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT.rawValue
            )
        }

        @Test("Validate robustBufferAccess2_EXT")
        public func validate_robustBufferAccess2_EXT() {
            #expect(
                Ignite.PipelineRobustnessBufferBehavior.robustBufferAccess2_EXT.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT.rawValue
            )
        }
    }


    /// Tests for the PipelineRobustnessImageBehavior enum.
    @Suite("PipelineRobustnessImageBehavior")
    public struct PipelineRobustnessImageBehaviorTests {
        @Test("Validate deviceDefault")
        public func validate_deviceDefault() {
            #expect(
                Ignite.PipelineRobustnessImageBehavior.deviceDefault.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DEVICE_DEFAULT.rawValue
            )
        }

        @Test("Validate disabled")
        public func validate_disabled() {
            #expect(
                Ignite.PipelineRobustnessImageBehavior.disabled.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DISABLED.rawValue
            )
        }

        @Test("Validate robustImageAccess")
        public func validate_robustImageAccess() {
            #expect(
                Ignite.PipelineRobustnessImageBehavior.robustImageAccess.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS.rawValue
            )
        }

        @Test("Validate robustImageAccess2")
        public func validate_robustImageAccess2() {
            #expect(
                Ignite.PipelineRobustnessImageBehavior.robustImageAccess2.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2.rawValue
            )
        }

        @Test("Validate deviceDefault_EXT")
        public func validate_deviceDefault_EXT() {
            #expect(
                Ignite.PipelineRobustnessImageBehavior.deviceDefault_EXT.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DEVICE_DEFAULT_EXT.rawValue
            )
        }

        @Test("Validate disabled_EXT")
        public func validate_disabled_EXT() {
            #expect(
                Ignite.PipelineRobustnessImageBehavior.disabled_EXT.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DISABLED_EXT.rawValue
            )
        }

        @Test("Validate robustImageAccess_EXT")
        public func validate_robustImageAccess_EXT() {
            #expect(
                Ignite.PipelineRobustnessImageBehavior.robustImageAccess_EXT.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_EXT.rawValue
            )
        }

        @Test("Validate robustImageAccess2_EXT")
        public func validate_robustImageAccess2_EXT() {
            #expect(
                Ignite.PipelineRobustnessImageBehavior.robustImageAccess2_EXT.rawValue
                    == CVulkan.VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2_EXT.rawValue
            )
        }
    }


    /// Tests for the PointClippingBehavior enum.
    @Suite("PointClippingBehavior")
    public struct PointClippingBehaviorTests {
        @Test("Validate allClipPlanes")
        public func validate_allClipPlanes() {
            #expect(
                Ignite.PointClippingBehavior.allClipPlanes.rawValue
                    == CVulkan.VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES.rawValue
            )
        }

        @Test("Validate userClipPlanesOnly")
        public func validate_userClipPlanesOnly() {
            #expect(
                Ignite.PointClippingBehavior.userClipPlanesOnly.rawValue
                    == CVulkan.VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY.rawValue
            )
        }

        @Test("Validate allClipPlanes_KHR")
        public func validate_allClipPlanes_KHR() {
            #expect(
                Ignite.PointClippingBehavior.allClipPlanes_KHR.rawValue
                    == CVulkan.VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES_KHR.rawValue
            )
        }

        @Test("Validate userClipPlanesOnly_KHR")
        public func validate_userClipPlanesOnly_KHR() {
            #expect(
                Ignite.PointClippingBehavior.userClipPlanesOnly_KHR.rawValue
                    == CVulkan.VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY_KHR.rawValue
            )
        }
    }


    /// Tests for the PolygonMode enum.
    @Suite("PolygonMode")
    public struct PolygonModeTests {
        @Test("Validate fill")
        public func validate_fill() {
            #expect(
                Ignite.PolygonMode.fill.rawValue == CVulkan.VK_POLYGON_MODE_FILL.rawValue
            )
        }

        @Test("Validate line")
        public func validate_line() {
            #expect(
                Ignite.PolygonMode.line.rawValue == CVulkan.VK_POLYGON_MODE_LINE.rawValue
            )
        }

        @Test("Validate point")
        public func validate_point() {
            #expect(
                Ignite.PolygonMode.point.rawValue == CVulkan.VK_POLYGON_MODE_POINT.rawValue
            )
        }

        @Test("Validate fillRectangle_NV")
        public func validate_fillRectangle_NV() {
            #expect(
                Ignite.PolygonMode.fillRectangle_NV.rawValue == CVulkan.VK_POLYGON_MODE_FILL_RECTANGLE_NV.rawValue
            )
        }
    }


    /// Tests for the PresentModeKHR enum.
    @Suite("PresentModeKHR")
    public struct PresentModeKHRTests {
        @Test("Validate immediate_KHR")
        public func validate_immediate_KHR() {
            #expect(
                Ignite.PresentModeKHR.immediate_KHR.rawValue == CVulkan.VK_PRESENT_MODE_IMMEDIATE_KHR.rawValue
            )
        }

        @Test("Validate mailbox_KHR")
        public func validate_mailbox_KHR() {
            #expect(
                Ignite.PresentModeKHR.mailbox_KHR.rawValue == CVulkan.VK_PRESENT_MODE_MAILBOX_KHR.rawValue
            )
        }

        @Test("Validate fifo_KHR")
        public func validate_fifo_KHR() {
            #expect(
                Ignite.PresentModeKHR.fifo_KHR.rawValue == CVulkan.VK_PRESENT_MODE_FIFO_KHR.rawValue
            )
        }

        @Test("Validate fifoRelaxed_KHR")
        public func validate_fifoRelaxed_KHR() {
            #expect(
                Ignite.PresentModeKHR.fifoRelaxed_KHR.rawValue == CVulkan.VK_PRESENT_MODE_FIFO_RELAXED_KHR.rawValue
            )
        }

        @Test("Validate sharedDemandRefresh_KHR")
        public func validate_sharedDemandRefresh_KHR() {
            #expect(
                Ignite.PresentModeKHR.sharedDemandRefresh_KHR.rawValue
                    == CVulkan.VK_PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR.rawValue
            )
        }

        @Test("Validate sharedContinuousRefresh_KHR")
        public func validate_sharedContinuousRefresh_KHR() {
            #expect(
                Ignite.PresentModeKHR.sharedContinuousRefresh_KHR.rawValue
                    == CVulkan.VK_PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR.rawValue
            )
        }

        @Test("Validate fifoLatestReady_EXT")
        public func validate_fifoLatestReady_EXT() {
            #expect(
                Ignite.PresentModeKHR.fifoLatestReady_EXT.rawValue == CVulkan.VK_PRESENT_MODE_FIFO_LATEST_READY_EXT.rawValue
            )
        }
    }


    /// Tests for the PrimitiveTopology enum.
    @Suite("PrimitiveTopology")
    public struct PrimitiveTopologyTests {
        @Test("Validate pointList")
        public func validate_pointList() {
            #expect(
                Ignite.PrimitiveTopology.pointList.rawValue == CVulkan.VK_PRIMITIVE_TOPOLOGY_POINT_LIST.rawValue
            )
        }

        @Test("Validate lineList")
        public func validate_lineList() {
            #expect(
                Ignite.PrimitiveTopology.lineList.rawValue == CVulkan.VK_PRIMITIVE_TOPOLOGY_LINE_LIST.rawValue
            )
        }

        @Test("Validate lineStrip")
        public func validate_lineStrip() {
            #expect(
                Ignite.PrimitiveTopology.lineStrip.rawValue == CVulkan.VK_PRIMITIVE_TOPOLOGY_LINE_STRIP.rawValue
            )
        }

        @Test("Validate triangleList")
        public func validate_triangleList() {
            #expect(
                Ignite.PrimitiveTopology.triangleList.rawValue == CVulkan.VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST.rawValue
            )
        }

        @Test("Validate triangleStrip")
        public func validate_triangleStrip() {
            #expect(
                Ignite.PrimitiveTopology.triangleStrip.rawValue == CVulkan.VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP.rawValue
            )
        }

        @Test("Validate triangleFan")
        public func validate_triangleFan() {
            #expect(
                Ignite.PrimitiveTopology.triangleFan.rawValue == CVulkan.VK_PRIMITIVE_TOPOLOGY_TRIANGLE_FAN.rawValue
            )
        }

        @Test("Validate lineListWithAdjacency")
        public func validate_lineListWithAdjacency() {
            #expect(
                Ignite.PrimitiveTopology.lineListWithAdjacency.rawValue
                    == CVulkan.VK_PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY.rawValue
            )
        }

        @Test("Validate lineStripWithAdjacency")
        public func validate_lineStripWithAdjacency() {
            #expect(
                Ignite.PrimitiveTopology.lineStripWithAdjacency.rawValue
                    == CVulkan.VK_PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY.rawValue
            )
        }

        @Test("Validate triangleListWithAdjacency")
        public func validate_triangleListWithAdjacency() {
            #expect(
                Ignite.PrimitiveTopology.triangleListWithAdjacency.rawValue
                    == CVulkan.VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY.rawValue
            )
        }

        @Test("Validate triangleStripWithAdjacency")
        public func validate_triangleStripWithAdjacency() {
            #expect(
                Ignite.PrimitiveTopology.triangleStripWithAdjacency.rawValue
                    == CVulkan.VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY.rawValue
            )
        }

        @Test("Validate patchList")
        public func validate_patchList() {
            #expect(
                Ignite.PrimitiveTopology.patchList.rawValue == CVulkan.VK_PRIMITIVE_TOPOLOGY_PATCH_LIST.rawValue
            )
        }
    }


    /// Tests for the ProvokingVertexModeEXT enum.
    @Suite("ProvokingVertexModeEXT")
    public struct ProvokingVertexModeEXTTests {
        @Test("Validate firstVertex_EXT")
        public func validate_firstVertex_EXT() {
            #expect(
                Ignite.ProvokingVertexModeEXT.firstVertex_EXT.rawValue
                    == CVulkan.VK_PROVOKING_VERTEX_MODE_FIRST_VERTEX_EXT.rawValue
            )
        }

        @Test("Validate lastVertex_EXT")
        public func validate_lastVertex_EXT() {
            #expect(
                Ignite.ProvokingVertexModeEXT.lastVertex_EXT.rawValue
                    == CVulkan.VK_PROVOKING_VERTEX_MODE_LAST_VERTEX_EXT.rawValue
            )
        }
    }


    /// Tests for the QueryPoolSamplingModeINTEL enum.
    @Suite("QueryPoolSamplingModeINTEL")
    public struct QueryPoolSamplingModeINTELTests {
        @Test("Validate manual_INTEL")
        public func validate_manual_INTEL() {
            #expect(
                Ignite.QueryPoolSamplingModeINTEL.manual_INTEL.rawValue
                    == CVulkan.VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL.rawValue
            )
        }
    }


    /// Tests for the QueryResultStatusKHR enum.
    @Suite("QueryResultStatusKHR")
    public struct QueryResultStatusKHRTests {
        @Test("Validate error_KHR")
        public func validate_error_KHR() {
            #expect(
                Ignite.QueryResultStatusKHR.error_KHR.rawValue == CVulkan.VK_QUERY_RESULT_STATUS_ERROR_KHR.rawValue
            )
        }

        @Test("Validate notReady_KHR")
        public func validate_notReady_KHR() {
            #expect(
                Ignite.QueryResultStatusKHR.notReady_KHR.rawValue == CVulkan.VK_QUERY_RESULT_STATUS_NOT_READY_KHR.rawValue
            )
        }

        @Test("Validate complete_KHR")
        public func validate_complete_KHR() {
            #expect(
                Ignite.QueryResultStatusKHR.complete_KHR.rawValue == CVulkan.VK_QUERY_RESULT_STATUS_COMPLETE_KHR.rawValue
            )
        }

        @Test("Validate insufficientBitstreamBufferRange_KHR")
        public func validate_insufficientBitstreamBufferRange_KHR() {
            #expect(
                Ignite.QueryResultStatusKHR.insufficientBitstreamBufferRange_KHR.rawValue
                    == CVulkan.VK_QUERY_RESULT_STATUS_INSUFFICIENT_BITSTREAM_BUFFER_RANGE_KHR.rawValue
            )
        }
    }


    /// Tests for the QueryType enum.
    @Suite("QueryType")
    public struct QueryTypeTests {
        @Test("Validate occlusion")
        public func validate_occlusion() {
            #expect(
                Ignite.QueryType.occlusion.rawValue == CVulkan.VK_QUERY_TYPE_OCCLUSION.rawValue
            )
        }

        @Test("Validate pipelineStatistics")
        public func validate_pipelineStatistics() {
            #expect(
                Ignite.QueryType.pipelineStatistics.rawValue == CVulkan.VK_QUERY_TYPE_PIPELINE_STATISTICS.rawValue
            )
        }

        @Test("Validate timestamp")
        public func validate_timestamp() {
            #expect(
                Ignite.QueryType.timestamp.rawValue == CVulkan.VK_QUERY_TYPE_TIMESTAMP.rawValue
            )
        }

        @Test("Validate resultStatusOnly_KHR")
        public func validate_resultStatusOnly_KHR() {
            #expect(
                Ignite.QueryType.resultStatusOnly_KHR.rawValue == CVulkan.VK_QUERY_TYPE_RESULT_STATUS_ONLY_KHR.rawValue
            )
        }

        @Test("Validate transformFeedbackStream_EXT")
        public func validate_transformFeedbackStream_EXT() {
            #expect(
                Ignite.QueryType.transformFeedbackStream_EXT.rawValue
                    == CVulkan.VK_QUERY_TYPE_TRANSFORM_FEEDBACK_STREAM_EXT.rawValue
            )
        }

        @Test("Validate performanceQuery_KHR")
        public func validate_performanceQuery_KHR() {
            #expect(
                Ignite.QueryType.performanceQuery_KHR.rawValue == CVulkan.VK_QUERY_TYPE_PERFORMANCE_QUERY_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureCompactedSize_KHR")
        public func validate_accelerationStructureCompactedSize_KHR() {
            #expect(
                Ignite.QueryType.accelerationStructureCompactedSize_KHR.rawValue
                    == CVulkan.VK_QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureSerializationSize_KHR")
        public func validate_accelerationStructureSerializationSize_KHR() {
            #expect(
                Ignite.QueryType.accelerationStructureSerializationSize_KHR.rawValue
                    == CVulkan.VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_SIZE_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureCompactedSize_NV")
        public func validate_accelerationStructureCompactedSize_NV() {
            #expect(
                Ignite.QueryType.accelerationStructureCompactedSize_NV.rawValue
                    == CVulkan.VK_QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_NV.rawValue
            )
        }

        @Test("Validate performanceQuery_INTEL")
        public func validate_performanceQuery_INTEL() {
            #expect(
                Ignite.QueryType.performanceQuery_INTEL.rawValue == CVulkan.VK_QUERY_TYPE_PERFORMANCE_QUERY_INTEL.rawValue
            )
        }

        @Test("Validate videoEncodeFeedback_KHR")
        public func validate_videoEncodeFeedback_KHR() {
            #expect(
                Ignite.QueryType.videoEncodeFeedback_KHR.rawValue == CVulkan.VK_QUERY_TYPE_VIDEO_ENCODE_FEEDBACK_KHR.rawValue
            )
        }

        @Test("Validate meshPrimitivesGenerated_EXT")
        public func validate_meshPrimitivesGenerated_EXT() {
            #expect(
                Ignite.QueryType.meshPrimitivesGenerated_EXT.rawValue
                    == CVulkan.VK_QUERY_TYPE_MESH_PRIMITIVES_GENERATED_EXT.rawValue
            )
        }

        @Test("Validate primitivesGenerated_EXT")
        public func validate_primitivesGenerated_EXT() {
            #expect(
                Ignite.QueryType.primitivesGenerated_EXT.rawValue == CVulkan.VK_QUERY_TYPE_PRIMITIVES_GENERATED_EXT.rawValue
            )
        }

        @Test("Validate accelerationStructureSerializationBottomLevelPointers_KHR")
        public func validate_accelerationStructureSerializationBottomLevelPointers_KHR() {
            #expect(
                Ignite.QueryType.accelerationStructureSerializationBottomLevelPointers_KHR.rawValue
                    == CVulkan.VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_BOTTOM_LEVEL_POINTERS_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureSize_KHR")
        public func validate_accelerationStructureSize_KHR() {
            #expect(
                Ignite.QueryType.accelerationStructureSize_KHR.rawValue
                    == CVulkan.VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SIZE_KHR.rawValue
            )
        }

        @Test("Validate micromapSerializationSize_EXT")
        public func validate_micromapSerializationSize_EXT() {
            #expect(
                Ignite.QueryType.micromapSerializationSize_EXT.rawValue
                    == CVulkan.VK_QUERY_TYPE_MICROMAP_SERIALIZATION_SIZE_EXT.rawValue
            )
        }

        @Test("Validate micromapCompactedSize_EXT")
        public func validate_micromapCompactedSize_EXT() {
            #expect(
                Ignite.QueryType.micromapCompactedSize_EXT.rawValue
                    == CVulkan.VK_QUERY_TYPE_MICROMAP_COMPACTED_SIZE_EXT.rawValue
            )
        }
    }


    /// Tests for the QueueGlobalPriority enum.
    @Suite("QueueGlobalPriority")
    public struct QueueGlobalPriorityTests {
        @Test("Validate low")
        public func validate_low() {
            #expect(
                Ignite.QueueGlobalPriority.low.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_LOW.rawValue
            )
        }

        @Test("Validate medium")
        public func validate_medium() {
            #expect(
                Ignite.QueueGlobalPriority.medium.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_MEDIUM.rawValue
            )
        }

        @Test("Validate high")
        public func validate_high() {
            #expect(
                Ignite.QueueGlobalPriority.high.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_HIGH.rawValue
            )
        }

        @Test("Validate realtime")
        public func validate_realtime() {
            #expect(
                Ignite.QueueGlobalPriority.realtime.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_REALTIME.rawValue
            )
        }

        @Test("Validate low_EXT")
        public func validate_low_EXT() {
            #expect(
                Ignite.QueueGlobalPriority.low_EXT.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT.rawValue
            )
        }

        @Test("Validate medium_EXT")
        public func validate_medium_EXT() {
            #expect(
                Ignite.QueueGlobalPriority.medium_EXT.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT.rawValue
            )
        }

        @Test("Validate high_EXT")
        public func validate_high_EXT() {
            #expect(
                Ignite.QueueGlobalPriority.high_EXT.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT.rawValue
            )
        }

        @Test("Validate realtime_EXT")
        public func validate_realtime_EXT() {
            #expect(
                Ignite.QueueGlobalPriority.realtime_EXT.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT.rawValue
            )
        }

        @Test("Validate low_KHR")
        public func validate_low_KHR() {
            #expect(
                Ignite.QueueGlobalPriority.low_KHR.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_LOW_KHR.rawValue
            )
        }

        @Test("Validate medium_KHR")
        public func validate_medium_KHR() {
            #expect(
                Ignite.QueueGlobalPriority.medium_KHR.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR.rawValue
            )
        }

        @Test("Validate high_KHR")
        public func validate_high_KHR() {
            #expect(
                Ignite.QueueGlobalPriority.high_KHR.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_HIGH_KHR.rawValue
            )
        }

        @Test("Validate realtime_KHR")
        public func validate_realtime_KHR() {
            #expect(
                Ignite.QueueGlobalPriority.realtime_KHR.rawValue == CVulkan.VK_QUEUE_GLOBAL_PRIORITY_REALTIME_KHR.rawValue
            )
        }
    }


    /// Tests for the RasterizationOrderAMD enum.
    @Suite("RasterizationOrderAMD")
    public struct RasterizationOrderAMDTests {
        @Test("Validate strict_AMD")
        public func validate_strict_AMD() {
            #expect(
                Ignite.RasterizationOrderAMD.strict_AMD.rawValue == CVulkan.VK_RASTERIZATION_ORDER_STRICT_AMD.rawValue
            )
        }

        @Test("Validate relaxed_AMD")
        public func validate_relaxed_AMD() {
            #expect(
                Ignite.RasterizationOrderAMD.relaxed_AMD.rawValue == CVulkan.VK_RASTERIZATION_ORDER_RELAXED_AMD.rawValue
            )
        }
    }


    /// Tests for the RayTracingInvocationReorderModeNV enum.
    @Suite("RayTracingInvocationReorderModeNV")
    public struct RayTracingInvocationReorderModeNVTests {
        @Test("Validate none_NV")
        public func validate_none_NV() {
            #expect(
                Ignite.RayTracingInvocationReorderModeNV.none_NV.rawValue
                    == CVulkan.VK_RAY_TRACING_INVOCATION_REORDER_MODE_NONE_NV.rawValue
            )
        }

        @Test("Validate reorder_NV")
        public func validate_reorder_NV() {
            #expect(
                Ignite.RayTracingInvocationReorderModeNV.reorder_NV.rawValue
                    == CVulkan.VK_RAY_TRACING_INVOCATION_REORDER_MODE_REORDER_NV.rawValue
            )
        }
    }


    /// Tests for the RayTracingLssIndexingModeNV enum.
    @Suite("RayTracingLssIndexingModeNV")
    public struct RayTracingLssIndexingModeNVTests {
        @Test("Validate list_NV")
        public func validate_list_NV() {
            #expect(
                Ignite.RayTracingLssIndexingModeNV.list_NV.rawValue
                    == CVulkan.VK_RAY_TRACING_LSS_INDEXING_MODE_LIST_NV.rawValue
            )
        }

        @Test("Validate successive_NV")
        public func validate_successive_NV() {
            #expect(
                Ignite.RayTracingLssIndexingModeNV.successive_NV.rawValue
                    == CVulkan.VK_RAY_TRACING_LSS_INDEXING_MODE_SUCCESSIVE_NV.rawValue
            )
        }
    }


    /// Tests for the RayTracingLssPrimitiveEndCapsModeNV enum.
    @Suite("RayTracingLssPrimitiveEndCapsModeNV")
    public struct RayTracingLssPrimitiveEndCapsModeNVTests {
        @Test("Validate none_NV")
        public func validate_none_NV() {
            #expect(
                Ignite.RayTracingLssPrimitiveEndCapsModeNV.none_NV.rawValue
                    == CVulkan.VK_RAY_TRACING_LSS_PRIMITIVE_END_CAPS_MODE_NONE_NV.rawValue
            )
        }

        @Test("Validate chained_NV")
        public func validate_chained_NV() {
            #expect(
                Ignite.RayTracingLssPrimitiveEndCapsModeNV.chained_NV.rawValue
                    == CVulkan.VK_RAY_TRACING_LSS_PRIMITIVE_END_CAPS_MODE_CHAINED_NV.rawValue
            )
        }
    }


    /// Tests for the RayTracingShaderGroupTypeKHR enum.
    @Suite("RayTracingShaderGroupTypeKHR")
    public struct RayTracingShaderGroupTypeKHRTests {
        @Test("Validate general_KHR")
        public func validate_general_KHR() {
            #expect(
                Ignite.RayTracingShaderGroupTypeKHR.general_KHR.rawValue
                    == CVulkan.VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR.rawValue
            )
        }

        @Test("Validate trianglesHitGroup_KHR")
        public func validate_trianglesHitGroup_KHR() {
            #expect(
                Ignite.RayTracingShaderGroupTypeKHR.trianglesHitGroup_KHR.rawValue
                    == CVulkan.VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR.rawValue
            )
        }

        @Test("Validate proceduralHitGroup_KHR")
        public func validate_proceduralHitGroup_KHR() {
            #expect(
                Ignite.RayTracingShaderGroupTypeKHR.proceduralHitGroup_KHR.rawValue
                    == CVulkan.VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR.rawValue
            )
        }

        @Test("Validate general_NV")
        public func validate_general_NV() {
            #expect(
                Ignite.RayTracingShaderGroupTypeKHR.general_NV.rawValue
                    == CVulkan.VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_NV.rawValue
            )
        }

        @Test("Validate trianglesHitGroup_NV")
        public func validate_trianglesHitGroup_NV() {
            #expect(
                Ignite.RayTracingShaderGroupTypeKHR.trianglesHitGroup_NV.rawValue
                    == CVulkan.VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_NV.rawValue
            )
        }

        @Test("Validate proceduralHitGroup_NV")
        public func validate_proceduralHitGroup_NV() {
            #expect(
                Ignite.RayTracingShaderGroupTypeKHR.proceduralHitGroup_NV.rawValue
                    == CVulkan.VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_NV.rawValue
            )
        }
    }


    /// Tests for the SamplerAddressMode enum.
    @Suite("SamplerAddressMode")
    public struct SamplerAddressModeTests {
        @Test("Validate repeat")
        public func validate_repeat() {
            #expect(
                Ignite.SamplerAddressMode.`repeat`.rawValue == CVulkan.VK_SAMPLER_ADDRESS_MODE_REPEAT.rawValue
            )
        }

        @Test("Validate mirroredRepeat")
        public func validate_mirroredRepeat() {
            #expect(
                Ignite.SamplerAddressMode.mirroredRepeat.rawValue == CVulkan.VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT.rawValue
            )
        }

        @Test("Validate clampToEdge")
        public func validate_clampToEdge() {
            #expect(
                Ignite.SamplerAddressMode.clampToEdge.rawValue == CVulkan.VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE.rawValue
            )
        }

        @Test("Validate clampToBorder")
        public func validate_clampToBorder() {
            #expect(
                Ignite.SamplerAddressMode.clampToBorder.rawValue == CVulkan.VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER.rawValue
            )
        }

        @Test("Validate mirrorClampToEdge")
        public func validate_mirrorClampToEdge() {
            #expect(
                Ignite.SamplerAddressMode.mirrorClampToEdge.rawValue
                    == CVulkan.VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE.rawValue
            )
        }

        @Test("Validate mirrorClampToEdge_KHR")
        public func validate_mirrorClampToEdge_KHR() {
            #expect(
                Ignite.SamplerAddressMode.mirrorClampToEdge_KHR.rawValue
                    == CVulkan.VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE_KHR.rawValue
            )
        }
    }


    /// Tests for the SamplerMipmapMode enum.
    @Suite("SamplerMipmapMode")
    public struct SamplerMipmapModeTests {
        @Test("Validate nearest")
        public func validate_nearest() {
            #expect(
                Ignite.SamplerMipmapMode.nearest.rawValue == CVulkan.VK_SAMPLER_MIPMAP_MODE_NEAREST.rawValue
            )
        }

        @Test("Validate linear")
        public func validate_linear() {
            #expect(
                Ignite.SamplerMipmapMode.linear.rawValue == CVulkan.VK_SAMPLER_MIPMAP_MODE_LINEAR.rawValue
            )
        }
    }


    /// Tests for the SamplerReductionMode enum.
    @Suite("SamplerReductionMode")
    public struct SamplerReductionModeTests {
        @Test("Validate weightedAverage")
        public func validate_weightedAverage() {
            #expect(
                Ignite.SamplerReductionMode.weightedAverage.rawValue
                    == CVulkan.VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE.rawValue
            )
        }

        @Test("Validate min")
        public func validate_min() {
            #expect(
                Ignite.SamplerReductionMode.min.rawValue == CVulkan.VK_SAMPLER_REDUCTION_MODE_MIN.rawValue
            )
        }

        @Test("Validate max")
        public func validate_max() {
            #expect(
                Ignite.SamplerReductionMode.max.rawValue == CVulkan.VK_SAMPLER_REDUCTION_MODE_MAX.rawValue
            )
        }

        @Test("Validate weightedAverageRangeclamp_QCOM")
        public func validate_weightedAverageRangeclamp_QCOM() {
            #expect(
                Ignite.SamplerReductionMode.weightedAverageRangeclamp_QCOM.rawValue
                    == CVulkan.VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_RANGECLAMP_QCOM.rawValue
            )
        }

        @Test("Validate weightedAverage_EXT")
        public func validate_weightedAverage_EXT() {
            #expect(
                Ignite.SamplerReductionMode.weightedAverage_EXT.rawValue
                    == CVulkan.VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_EXT.rawValue
            )
        }

        @Test("Validate min_EXT")
        public func validate_min_EXT() {
            #expect(
                Ignite.SamplerReductionMode.min_EXT.rawValue == CVulkan.VK_SAMPLER_REDUCTION_MODE_MIN_EXT.rawValue
            )
        }

        @Test("Validate max_EXT")
        public func validate_max_EXT() {
            #expect(
                Ignite.SamplerReductionMode.max_EXT.rawValue == CVulkan.VK_SAMPLER_REDUCTION_MODE_MAX_EXT.rawValue
            )
        }
    }


    /// Tests for the SamplerYcbcrModelConversion enum.
    @Suite("SamplerYcbcrModelConversion")
    public struct SamplerYcbcrModelConversionTests {
        @Test("Validate rgbIdentity")
        public func validate_rgbIdentity() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.rgbIdentity.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY.rawValue
            )
        }

        @Test("Validate ycbcrIdentity")
        public func validate_ycbcrIdentity() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.ycbcrIdentity.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY.rawValue
            )
        }

        @Test("Validate ycbcr709")
        public func validate_ycbcr709() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.ycbcr709.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709.rawValue
            )
        }

        @Test("Validate ycbcr601")
        public func validate_ycbcr601() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.ycbcr601.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601.rawValue
            )
        }

        @Test("Validate ycbcr2020")
        public func validate_ycbcr2020() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.ycbcr2020.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020.rawValue
            )
        }

        @Test("Validate rgbIdentity_KHR")
        public func validate_rgbIdentity_KHR() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.rgbIdentity_KHR.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY_KHR.rawValue
            )
        }

        @Test("Validate ycbcrIdentity_KHR")
        public func validate_ycbcrIdentity_KHR() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.ycbcrIdentity_KHR.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY_KHR.rawValue
            )
        }

        @Test("Validate ycbcr709_KHR")
        public func validate_ycbcr709_KHR() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.ycbcr709_KHR.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709_KHR.rawValue
            )
        }

        @Test("Validate ycbcr601_KHR")
        public func validate_ycbcr601_KHR() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.ycbcr601_KHR.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601_KHR.rawValue
            )
        }

        @Test("Validate ycbcr2020_KHR")
        public func validate_ycbcr2020_KHR() {
            #expect(
                Ignite.SamplerYcbcrModelConversion.ycbcr2020_KHR.rawValue
                    == CVulkan.VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020_KHR.rawValue
            )
        }
    }


    /// Tests for the SamplerYcbcrRange enum.
    @Suite("SamplerYcbcrRange")
    public struct SamplerYcbcrRangeTests {
        @Test("Validate ituFull")
        public func validate_ituFull() {
            #expect(
                Ignite.SamplerYcbcrRange.ituFull.rawValue == CVulkan.VK_SAMPLER_YCBCR_RANGE_ITU_FULL.rawValue
            )
        }

        @Test("Validate ituNarrow")
        public func validate_ituNarrow() {
            #expect(
                Ignite.SamplerYcbcrRange.ituNarrow.rawValue == CVulkan.VK_SAMPLER_YCBCR_RANGE_ITU_NARROW.rawValue
            )
        }

        @Test("Validate ituFull_KHR")
        public func validate_ituFull_KHR() {
            #expect(
                Ignite.SamplerYcbcrRange.ituFull_KHR.rawValue == CVulkan.VK_SAMPLER_YCBCR_RANGE_ITU_FULL_KHR.rawValue
            )
        }

        @Test("Validate ituNarrow_KHR")
        public func validate_ituNarrow_KHR() {
            #expect(
                Ignite.SamplerYcbcrRange.ituNarrow_KHR.rawValue == CVulkan.VK_SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR.rawValue
            )
        }
    }


    /// Tests for the ScopeKHR enum.
    @Suite("ScopeKHR")
    public struct ScopeKHRTests {
        @Test("Validate device_KHR")
        public func validate_device_KHR() {
            #expect(
                Ignite.ScopeKHR.device_KHR.rawValue == CVulkan.VK_SCOPE_DEVICE_KHR.rawValue
            )
        }

        @Test("Validate workgroup_KHR")
        public func validate_workgroup_KHR() {
            #expect(
                Ignite.ScopeKHR.workgroup_KHR.rawValue == CVulkan.VK_SCOPE_WORKGROUP_KHR.rawValue
            )
        }

        @Test("Validate subgroup_KHR")
        public func validate_subgroup_KHR() {
            #expect(
                Ignite.ScopeKHR.subgroup_KHR.rawValue == CVulkan.VK_SCOPE_SUBGROUP_KHR.rawValue
            )
        }

        @Test("Validate queueFamily_KHR")
        public func validate_queueFamily_KHR() {
            #expect(
                Ignite.ScopeKHR.queueFamily_KHR.rawValue == CVulkan.VK_SCOPE_QUEUE_FAMILY_KHR.rawValue
            )
        }

        @Test("Validate device_NV")
        public func validate_device_NV() {
            #expect(
                Ignite.ScopeKHR.device_NV.rawValue == CVulkan.VK_SCOPE_DEVICE_NV.rawValue
            )
        }

        @Test("Validate workgroup_NV")
        public func validate_workgroup_NV() {
            #expect(
                Ignite.ScopeKHR.workgroup_NV.rawValue == CVulkan.VK_SCOPE_WORKGROUP_NV.rawValue
            )
        }

        @Test("Validate subgroup_NV")
        public func validate_subgroup_NV() {
            #expect(
                Ignite.ScopeKHR.subgroup_NV.rawValue == CVulkan.VK_SCOPE_SUBGROUP_NV.rawValue
            )
        }

        @Test("Validate queueFamily_NV")
        public func validate_queueFamily_NV() {
            #expect(
                Ignite.ScopeKHR.queueFamily_NV.rawValue == CVulkan.VK_SCOPE_QUEUE_FAMILY_NV.rawValue
            )
        }
    }


    /// Tests for the SemaphoreType enum.
    @Suite("SemaphoreType")
    public struct SemaphoreTypeTests {
        @Test("Validate binary")
        public func validate_binary() {
            #expect(
                Ignite.SemaphoreType.binary.rawValue == CVulkan.VK_SEMAPHORE_TYPE_BINARY.rawValue
            )
        }

        @Test("Validate timeline")
        public func validate_timeline() {
            #expect(
                Ignite.SemaphoreType.timeline.rawValue == CVulkan.VK_SEMAPHORE_TYPE_TIMELINE.rawValue
            )
        }

        @Test("Validate binary_KHR")
        public func validate_binary_KHR() {
            #expect(
                Ignite.SemaphoreType.binary_KHR.rawValue == CVulkan.VK_SEMAPHORE_TYPE_BINARY_KHR.rawValue
            )
        }

        @Test("Validate timeline_KHR")
        public func validate_timeline_KHR() {
            #expect(
                Ignite.SemaphoreType.timeline_KHR.rawValue == CVulkan.VK_SEMAPHORE_TYPE_TIMELINE_KHR.rawValue
            )
        }
    }


    /// Tests for the ShaderCodeTypeEXT enum.
    @Suite("ShaderCodeTypeEXT")
    public struct ShaderCodeTypeEXTTests {
        @Test("Validate binary_EXT")
        public func validate_binary_EXT() {
            #expect(
                Ignite.ShaderCodeTypeEXT.binary_EXT.rawValue == CVulkan.VK_SHADER_CODE_TYPE_BINARY_EXT.rawValue
            )
        }

        @Test("Validate spirv_EXT")
        public func validate_spirv_EXT() {
            #expect(
                Ignite.ShaderCodeTypeEXT.spirv_EXT.rawValue == CVulkan.VK_SHADER_CODE_TYPE_SPIRV_EXT.rawValue
            )
        }
    }


    /// Tests for the ShaderFloatControlsIndependence enum.
    @Suite("ShaderFloatControlsIndependence")
    public struct ShaderFloatControlsIndependenceTests {
        @Test("Validate 32BitOnly")
        public func validate_32BitOnly() {
            #expect(
                Ignite.ShaderFloatControlsIndependence.`32BitOnly`.rawValue
                    == CVulkan.VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY.rawValue
            )
        }

        @Test("Validate all")
        public func validate_all() {
            #expect(
                Ignite.ShaderFloatControlsIndependence.all.rawValue
                    == CVulkan.VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL.rawValue
            )
        }

        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.ShaderFloatControlsIndependence.none.rawValue
                    == CVulkan.VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE.rawValue
            )
        }

        @Test("Validate 32BitOnly_KHR")
        public func validate_32BitOnly_KHR() {
            #expect(
                Ignite.ShaderFloatControlsIndependence.`32BitOnly_KHR`.rawValue
                    == CVulkan.VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY_KHR.rawValue
            )
        }

        @Test("Validate all_KHR")
        public func validate_all_KHR() {
            #expect(
                Ignite.ShaderFloatControlsIndependence.all_KHR.rawValue
                    == CVulkan.VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL_KHR.rawValue
            )
        }

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.ShaderFloatControlsIndependence.none_KHR.rawValue
                    == CVulkan.VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE_KHR.rawValue
            )
        }
    }


    /// Tests for the ShaderGroupShaderKHR enum.
    @Suite("ShaderGroupShaderKHR")
    public struct ShaderGroupShaderKHRTests {
        @Test("Validate general_KHR")
        public func validate_general_KHR() {
            #expect(
                Ignite.ShaderGroupShaderKHR.general_KHR.rawValue == CVulkan.VK_SHADER_GROUP_SHADER_GENERAL_KHR.rawValue
            )
        }

        @Test("Validate closestHit_KHR")
        public func validate_closestHit_KHR() {
            #expect(
                Ignite.ShaderGroupShaderKHR.closestHit_KHR.rawValue
                    == CVulkan.VK_SHADER_GROUP_SHADER_CLOSEST_HIT_KHR.rawValue
            )
        }

        @Test("Validate anyHit_KHR")
        public func validate_anyHit_KHR() {
            #expect(
                Ignite.ShaderGroupShaderKHR.anyHit_KHR.rawValue == CVulkan.VK_SHADER_GROUP_SHADER_ANY_HIT_KHR.rawValue
            )
        }

        @Test("Validate intersection_KHR")
        public func validate_intersection_KHR() {
            #expect(
                Ignite.ShaderGroupShaderKHR.intersection_KHR.rawValue
                    == CVulkan.VK_SHADER_GROUP_SHADER_INTERSECTION_KHR.rawValue
            )
        }
    }


    /// Tests for the ShaderInfoTypeAMD enum.
    @Suite("ShaderInfoTypeAMD")
    public struct ShaderInfoTypeAMDTests {
        @Test("Validate statistics_AMD")
        public func validate_statistics_AMD() {
            #expect(
                Ignite.ShaderInfoTypeAMD.statistics_AMD.rawValue == CVulkan.VK_SHADER_INFO_TYPE_STATISTICS_AMD.rawValue
            )
        }

        @Test("Validate binary_AMD")
        public func validate_binary_AMD() {
            #expect(
                Ignite.ShaderInfoTypeAMD.binary_AMD.rawValue == CVulkan.VK_SHADER_INFO_TYPE_BINARY_AMD.rawValue
            )
        }

        @Test("Validate disassembly_AMD")
        public func validate_disassembly_AMD() {
            #expect(
                Ignite.ShaderInfoTypeAMD.disassembly_AMD.rawValue == CVulkan.VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD.rawValue
            )
        }
    }


    /// Tests for the ShadingRatePaletteEntryNV enum.
    @Suite("ShadingRatePaletteEntryNV")
    public struct ShadingRatePaletteEntryNVTests {
        @Test("Validate noInvocations_NV")
        public func validate_noInvocations_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.noInvocations_NV.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV.rawValue
            )
        }

        @Test("Validate 16InvocationsPerPixel_NV")
        public func validate_16InvocationsPerPixel_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`16InvocationsPerPixel_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate 8InvocationsPerPixel_NV")
        public func validate_8InvocationsPerPixel_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`8InvocationsPerPixel_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate 4InvocationsPerPixel_NV")
        public func validate_4InvocationsPerPixel_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`4InvocationsPerPixel_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate 2InvocationsPerPixel_NV")
        public func validate_2InvocationsPerPixel_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`2InvocationsPerPixel_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPerPixel_NV")
        public func validate_1InvocationPerPixel_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`1InvocationPerPixel_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer2x1Pixels_NV")
        public func validate_1InvocationPer2x1Pixels_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`1InvocationPer2x1Pixels_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer1x2Pixels_NV")
        public func validate_1InvocationPer1x2Pixels_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`1InvocationPer1x2Pixels_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer2x2Pixels_NV")
        public func validate_1InvocationPer2x2Pixels_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`1InvocationPer2x2Pixels_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer4x2Pixels_NV")
        public func validate_1InvocationPer4x2Pixels_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`1InvocationPer4x2Pixels_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer2x4Pixels_NV")
        public func validate_1InvocationPer2x4Pixels_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`1InvocationPer2x4Pixels_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV.rawValue
            )
        }

        @Test("Validate 1InvocationPer4x4Pixels_NV")
        public func validate_1InvocationPer4x4Pixels_NV() {
            #expect(
                Ignite.ShadingRatePaletteEntryNV.`1InvocationPer4x4Pixels_NV`.rawValue
                    == CVulkan.VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV.rawValue
            )
        }
    }


    /// Tests for the SharingMode enum.
    @Suite("SharingMode")
    public struct SharingModeTests {
        @Test("Validate exclusive")
        public func validate_exclusive() {
            #expect(
                Ignite.SharingMode.exclusive.rawValue == CVulkan.VK_SHARING_MODE_EXCLUSIVE.rawValue
            )
        }

        @Test("Validate concurrent")
        public func validate_concurrent() {
            #expect(
                Ignite.SharingMode.concurrent.rawValue == CVulkan.VK_SHARING_MODE_CONCURRENT.rawValue
            )
        }
    }


    /// Tests for the StencilOp enum.
    @Suite("StencilOp")
    public struct StencilOpTests {
        @Test("Validate keep")
        public func validate_keep() {
            #expect(
                Ignite.StencilOp.keep.rawValue == CVulkan.VK_STENCIL_OP_KEEP.rawValue
            )
        }

        @Test("Validate zero")
        public func validate_zero() {
            #expect(
                Ignite.StencilOp.zero.rawValue == CVulkan.VK_STENCIL_OP_ZERO.rawValue
            )
        }

        @Test("Validate replace")
        public func validate_replace() {
            #expect(
                Ignite.StencilOp.replace.rawValue == CVulkan.VK_STENCIL_OP_REPLACE.rawValue
            )
        }

        @Test("Validate incrementAndClamp")
        public func validate_incrementAndClamp() {
            #expect(
                Ignite.StencilOp.incrementAndClamp.rawValue == CVulkan.VK_STENCIL_OP_INCREMENT_AND_CLAMP.rawValue
            )
        }

        @Test("Validate decrementAndClamp")
        public func validate_decrementAndClamp() {
            #expect(
                Ignite.StencilOp.decrementAndClamp.rawValue == CVulkan.VK_STENCIL_OP_DECREMENT_AND_CLAMP.rawValue
            )
        }

        @Test("Validate invert")
        public func validate_invert() {
            #expect(
                Ignite.StencilOp.invert.rawValue == CVulkan.VK_STENCIL_OP_INVERT.rawValue
            )
        }

        @Test("Validate incrementAndWrap")
        public func validate_incrementAndWrap() {
            #expect(
                Ignite.StencilOp.incrementAndWrap.rawValue == CVulkan.VK_STENCIL_OP_INCREMENT_AND_WRAP.rawValue
            )
        }

        @Test("Validate decrementAndWrap")
        public func validate_decrementAndWrap() {
            #expect(
                Ignite.StencilOp.decrementAndWrap.rawValue == CVulkan.VK_STENCIL_OP_DECREMENT_AND_WRAP.rawValue
            )
        }
    }


    /// Tests for the SubpassContents enum.
    @Suite("SubpassContents")
    public struct SubpassContentsTests {
        @Test("Validate inline")
        public func validate_inline() {
            #expect(
                Ignite.SubpassContents.inline.rawValue == CVulkan.VK_SUBPASS_CONTENTS_INLINE.rawValue
            )
        }

        @Test("Validate secondaryCommandBuffers")
        public func validate_secondaryCommandBuffers() {
            #expect(
                Ignite.SubpassContents.secondaryCommandBuffers.rawValue
                    == CVulkan.VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS.rawValue
            )
        }

        @Test("Validate inlineAndSecondaryCommandBuffers_KHR")
        public func validate_inlineAndSecondaryCommandBuffers_KHR() {
            #expect(
                Ignite.SubpassContents.inlineAndSecondaryCommandBuffers_KHR.rawValue
                    == CVulkan.VK_SUBPASS_CONTENTS_INLINE_AND_SECONDARY_COMMAND_BUFFERS_KHR.rawValue
            )
        }

        @Test("Validate inlineAndSecondaryCommandBuffers_EXT")
        public func validate_inlineAndSecondaryCommandBuffers_EXT() {
            #expect(
                Ignite.SubpassContents.inlineAndSecondaryCommandBuffers_EXT.rawValue
                    == CVulkan.VK_SUBPASS_CONTENTS_INLINE_AND_SECONDARY_COMMAND_BUFFERS_EXT.rawValue
            )
        }
    }


    /// Tests for the SubpassMergeStatusEXT enum.
    @Suite("SubpassMergeStatusEXT")
    public struct SubpassMergeStatusEXTTests {
        @Test("Validate merged_EXT")
        public func validate_merged_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.merged_EXT.rawValue == CVulkan.VK_SUBPASS_MERGE_STATUS_MERGED_EXT.rawValue
            )
        }

        @Test("Validate disallowed_EXT")
        public func validate_disallowed_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.disallowed_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_DISALLOWED_EXT.rawValue
            )
        }

        @Test("Validate notMergedSideEffects_EXT")
        public func validate_notMergedSideEffects_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedSideEffects_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SIDE_EFFECTS_EXT.rawValue
            )
        }

        @Test("Validate notMergedSamplesMismatch_EXT")
        public func validate_notMergedSamplesMismatch_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedSamplesMismatch_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SAMPLES_MISMATCH_EXT.rawValue
            )
        }

        @Test("Validate notMergedViewsMismatch_EXT")
        public func validate_notMergedViewsMismatch_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedViewsMismatch_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_VIEWS_MISMATCH_EXT.rawValue
            )
        }

        @Test("Validate notMergedAliasing_EXT")
        public func validate_notMergedAliasing_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedAliasing_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_ALIASING_EXT.rawValue
            )
        }

        @Test("Validate notMergedDependencies_EXT")
        public func validate_notMergedDependencies_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedDependencies_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPENDENCIES_EXT.rawValue
            )
        }

        @Test("Validate notMergedIncompatibleInputAttachment_EXT")
        public func validate_notMergedIncompatibleInputAttachment_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedIncompatibleInputAttachment_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INCOMPATIBLE_INPUT_ATTACHMENT_EXT.rawValue
            )
        }

        @Test("Validate notMergedTooManyAttachments_EXT")
        public func validate_notMergedTooManyAttachments_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedTooManyAttachments_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_TOO_MANY_ATTACHMENTS_EXT.rawValue
            )
        }

        @Test("Validate notMergedInsufficientStorage_EXT")
        public func validate_notMergedInsufficientStorage_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedInsufficientStorage_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INSUFFICIENT_STORAGE_EXT.rawValue
            )
        }

        @Test("Validate notMergedDepthStencilCount_EXT")
        public func validate_notMergedDepthStencilCount_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedDepthStencilCount_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPTH_STENCIL_COUNT_EXT.rawValue
            )
        }

        @Test("Validate notMergedResolveAttachmentReuse_EXT")
        public func validate_notMergedResolveAttachmentReuse_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedResolveAttachmentReuse_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_RESOLVE_ATTACHMENT_REUSE_EXT.rawValue
            )
        }

        @Test("Validate notMergedSingleSubpass_EXT")
        public func validate_notMergedSingleSubpass_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedSingleSubpass_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SINGLE_SUBPASS_EXT.rawValue
            )
        }

        @Test("Validate notMergedUnspecified_EXT")
        public func validate_notMergedUnspecified_EXT() {
            #expect(
                Ignite.SubpassMergeStatusEXT.notMergedUnspecified_EXT.rawValue
                    == CVulkan.VK_SUBPASS_MERGE_STATUS_NOT_MERGED_UNSPECIFIED_EXT.rawValue
            )
        }
    }


    /// Tests for the SystemAllocationScope enum.
    @Suite("SystemAllocationScope")
    public struct SystemAllocationScopeTests {
        @Test("Validate command")
        public func validate_command() {
            #expect(
                Ignite.SystemAllocationScope.command.rawValue == CVulkan.VK_SYSTEM_ALLOCATION_SCOPE_COMMAND.rawValue
            )
        }

        @Test("Validate object")
        public func validate_object() {
            #expect(
                Ignite.SystemAllocationScope.object.rawValue == CVulkan.VK_SYSTEM_ALLOCATION_SCOPE_OBJECT.rawValue
            )
        }

        @Test("Validate cache")
        public func validate_cache() {
            #expect(
                Ignite.SystemAllocationScope.cache.rawValue == CVulkan.VK_SYSTEM_ALLOCATION_SCOPE_CACHE.rawValue
            )
        }

        @Test("Validate device")
        public func validate_device() {
            #expect(
                Ignite.SystemAllocationScope.device.rawValue == CVulkan.VK_SYSTEM_ALLOCATION_SCOPE_DEVICE.rawValue
            )
        }

        @Test("Validate instance")
        public func validate_instance() {
            #expect(
                Ignite.SystemAllocationScope.instance.rawValue == CVulkan.VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE.rawValue
            )
        }
    }


    /// Tests for the TensorTilingARM enum.
    @Suite("TensorTilingARM")
    public struct TensorTilingARMTests {
        @Test("Validate optimal_ARM")
        public func validate_optimal_ARM() {
            #expect(
                Ignite.TensorTilingARM.optimal_ARM.rawValue == CVulkan.VK_TENSOR_TILING_OPTIMAL_ARM.rawValue
            )
        }

        @Test("Validate linear_ARM")
        public func validate_linear_ARM() {
            #expect(
                Ignite.TensorTilingARM.linear_ARM.rawValue == CVulkan.VK_TENSOR_TILING_LINEAR_ARM.rawValue
            )
        }
    }


    /// Tests for the TessellationDomainOrigin enum.
    @Suite("TessellationDomainOrigin")
    public struct TessellationDomainOriginTests {
        @Test("Validate upperLeft")
        public func validate_upperLeft() {
            #expect(
                Ignite.TessellationDomainOrigin.upperLeft.rawValue
                    == CVulkan.VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT.rawValue
            )
        }

        @Test("Validate lowerLeft")
        public func validate_lowerLeft() {
            #expect(
                Ignite.TessellationDomainOrigin.lowerLeft.rawValue
                    == CVulkan.VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT.rawValue
            )
        }

        @Test("Validate upperLeft_KHR")
        public func validate_upperLeft_KHR() {
            #expect(
                Ignite.TessellationDomainOrigin.upperLeft_KHR.rawValue
                    == CVulkan.VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT_KHR.rawValue
            )
        }

        @Test("Validate lowerLeft_KHR")
        public func validate_lowerLeft_KHR() {
            #expect(
                Ignite.TessellationDomainOrigin.lowerLeft_KHR.rawValue
                    == CVulkan.VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT_KHR.rawValue
            )
        }
    }


    /// Tests for the TimeDomainKHR enum.
    @Suite("TimeDomainKHR")
    public struct TimeDomainKHRTests {
        @Test("Validate device_KHR")
        public func validate_device_KHR() {
            #expect(
                Ignite.TimeDomainKHR.device_KHR.rawValue == CVulkan.VK_TIME_DOMAIN_DEVICE_KHR.rawValue
            )
        }

        @Test("Validate clockMonotonic_KHR")
        public func validate_clockMonotonic_KHR() {
            #expect(
                Ignite.TimeDomainKHR.clockMonotonic_KHR.rawValue == CVulkan.VK_TIME_DOMAIN_CLOCK_MONOTONIC_KHR.rawValue
            )
        }

        @Test("Validate clockMonotonicRaw_KHR")
        public func validate_clockMonotonicRaw_KHR() {
            #expect(
                Ignite.TimeDomainKHR.clockMonotonicRaw_KHR.rawValue
                    == CVulkan.VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_KHR.rawValue
            )
        }

        @Test("Validate queryPerformanceCounter_KHR")
        public func validate_queryPerformanceCounter_KHR() {
            #expect(
                Ignite.TimeDomainKHR.queryPerformanceCounter_KHR.rawValue
                    == CVulkan.VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_KHR.rawValue
            )
        }

        @Test("Validate device_EXT")
        public func validate_device_EXT() {
            #expect(
                Ignite.TimeDomainKHR.device_EXT.rawValue == CVulkan.VK_TIME_DOMAIN_DEVICE_EXT.rawValue
            )
        }

        @Test("Validate clockMonotonic_EXT")
        public func validate_clockMonotonic_EXT() {
            #expect(
                Ignite.TimeDomainKHR.clockMonotonic_EXT.rawValue == CVulkan.VK_TIME_DOMAIN_CLOCK_MONOTONIC_EXT.rawValue
            )
        }

        @Test("Validate clockMonotonicRaw_EXT")
        public func validate_clockMonotonicRaw_EXT() {
            #expect(
                Ignite.TimeDomainKHR.clockMonotonicRaw_EXT.rawValue
                    == CVulkan.VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT.rawValue
            )
        }

        @Test("Validate queryPerformanceCounter_EXT")
        public func validate_queryPerformanceCounter_EXT() {
            #expect(
                Ignite.TimeDomainKHR.queryPerformanceCounter_EXT.rawValue
                    == CVulkan.VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT.rawValue
            )
        }
    }


    /// Tests for the ValidationCacheHeaderVersionEXT enum.
    @Suite("ValidationCacheHeaderVersionEXT")
    public struct ValidationCacheHeaderVersionEXTTests {
        @Test("Validate one_EXT")
        public func validate_one_EXT() {
            #expect(
                Ignite.ValidationCacheHeaderVersionEXT.one_EXT.rawValue
                    == CVulkan.VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT.rawValue
            )
        }
    }


    /// Tests for the ValidationCheckEXT enum.
    @Suite("ValidationCheckEXT")
    public struct ValidationCheckEXTTests {
        @Test("Validate all_EXT")
        public func validate_all_EXT() {
            #expect(
                Ignite.ValidationCheckEXT.all_EXT.rawValue == CVulkan.VK_VALIDATION_CHECK_ALL_EXT.rawValue
            )
        }

        @Test("Validate shaders_EXT")
        public func validate_shaders_EXT() {
            #expect(
                Ignite.ValidationCheckEXT.shaders_EXT.rawValue == CVulkan.VK_VALIDATION_CHECK_SHADERS_EXT.rawValue
            )
        }
    }


    /// Tests for the ValidationFeatureDisableEXT enum.
    @Suite("ValidationFeatureDisableEXT")
    public struct ValidationFeatureDisableEXTTests {
        @Test("Validate all_EXT")
        public func validate_all_EXT() {
            #expect(
                Ignite.ValidationFeatureDisableEXT.all_EXT.rawValue == CVulkan.VK_VALIDATION_FEATURE_DISABLE_ALL_EXT.rawValue
            )
        }

        @Test("Validate shaders_EXT")
        public func validate_shaders_EXT() {
            #expect(
                Ignite.ValidationFeatureDisableEXT.shaders_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT.rawValue
            )
        }

        @Test("Validate threadSafety_EXT")
        public func validate_threadSafety_EXT() {
            #expect(
                Ignite.ValidationFeatureDisableEXT.threadSafety_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT.rawValue
            )
        }

        @Test("Validate apiParameters_EXT")
        public func validate_apiParameters_EXT() {
            #expect(
                Ignite.ValidationFeatureDisableEXT.apiParameters_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT.rawValue
            )
        }

        @Test("Validate objectLifetimes_EXT")
        public func validate_objectLifetimes_EXT() {
            #expect(
                Ignite.ValidationFeatureDisableEXT.objectLifetimes_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT.rawValue
            )
        }

        @Test("Validate coreChecks_EXT")
        public func validate_coreChecks_EXT() {
            #expect(
                Ignite.ValidationFeatureDisableEXT.coreChecks_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT.rawValue
            )
        }

        @Test("Validate uniqueHandles_EXT")
        public func validate_uniqueHandles_EXT() {
            #expect(
                Ignite.ValidationFeatureDisableEXT.uniqueHandles_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT.rawValue
            )
        }

        @Test("Validate shaderValidationCache_EXT")
        public func validate_shaderValidationCache_EXT() {
            #expect(
                Ignite.ValidationFeatureDisableEXT.shaderValidationCache_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_DISABLE_SHADER_VALIDATION_CACHE_EXT.rawValue
            )
        }
    }


    /// Tests for the ValidationFeatureEnableEXT enum.
    @Suite("ValidationFeatureEnableEXT")
    public struct ValidationFeatureEnableEXTTests {
        @Test("Validate gpuAssisted_EXT")
        public func validate_gpuAssisted_EXT() {
            #expect(
                Ignite.ValidationFeatureEnableEXT.gpuAssisted_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT.rawValue
            )
        }

        @Test("Validate gpuAssistedReserveBindingSlot_EXT")
        public func validate_gpuAssistedReserveBindingSlot_EXT() {
            #expect(
                Ignite.ValidationFeatureEnableEXT.gpuAssistedReserveBindingSlot_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT.rawValue
            )
        }

        @Test("Validate bestPractices_EXT")
        public func validate_bestPractices_EXT() {
            #expect(
                Ignite.ValidationFeatureEnableEXT.bestPractices_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT.rawValue
            )
        }

        @Test("Validate debugPrintf_EXT")
        public func validate_debugPrintf_EXT() {
            #expect(
                Ignite.ValidationFeatureEnableEXT.debugPrintf_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT.rawValue
            )
        }

        @Test("Validate synchronizationValidation_EXT")
        public func validate_synchronizationValidation_EXT() {
            #expect(
                Ignite.ValidationFeatureEnableEXT.synchronizationValidation_EXT.rawValue
                    == CVulkan.VK_VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT.rawValue
            )
        }
    }


    /// Tests for the VendorId enum.
    @Suite("VendorId")
    public struct VendorIdTests {
        @Test("Validate khronos")
        public func validate_khronos() {
            #expect(
                Ignite.VendorId.khronos.rawValue == CVulkan.VK_VENDOR_ID_KHRONOS.rawValue
            )
        }

        @Test("Validate _VIV")
        public func validate__VIV() {
            #expect(
                Ignite.VendorId.`_VIV`.rawValue == CVulkan.VK_VENDOR_ID_VIV.rawValue
            )
        }

        @Test("Validate _VSI")
        public func validate__VSI() {
            #expect(
                Ignite.VendorId.`_VSI`.rawValue == CVulkan.VK_VENDOR_ID_VSI.rawValue
            )
        }

        @Test("Validate kazan")
        public func validate_kazan() {
            #expect(
                Ignite.VendorId.kazan.rawValue == CVulkan.VK_VENDOR_ID_KAZAN.rawValue
            )
        }

        @Test("Validate codeplay")
        public func validate_codeplay() {
            #expect(
                Ignite.VendorId.codeplay.rawValue == CVulkan.VK_VENDOR_ID_CODEPLAY.rawValue
            )
        }

        @Test("Validate _MESA")
        public func validate__MESA() {
            #expect(
                Ignite.VendorId.`_MESA`.rawValue == CVulkan.VK_VENDOR_ID_MESA.rawValue
            )
        }

        @Test("Validate pocl")
        public func validate_pocl() {
            #expect(
                Ignite.VendorId.pocl.rawValue == CVulkan.VK_VENDOR_ID_POCL.rawValue
            )
        }

        @Test("Validate mobileye")
        public func validate_mobileye() {
            #expect(
                Ignite.VendorId.mobileye.rawValue == CVulkan.VK_VENDOR_ID_MOBILEYE.rawValue
            )
        }
    }


    /// Tests for the VertexInputRate enum.
    @Suite("VertexInputRate")
    public struct VertexInputRateTests {
        @Test("Validate vertex")
        public func validate_vertex() {
            #expect(
                Ignite.VertexInputRate.vertex.rawValue == CVulkan.VK_VERTEX_INPUT_RATE_VERTEX.rawValue
            )
        }

        @Test("Validate instance")
        public func validate_instance() {
            #expect(
                Ignite.VertexInputRate.instance.rawValue == CVulkan.VK_VERTEX_INPUT_RATE_INSTANCE.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeAV1PredictionModeKHR enum.
    @Suite("VideoEncodeAV1PredictionModeKHR")
    public struct VideoEncodeAV1PredictionModeKHRTests {
        @Test("Validate v1PredictionModeIntraOnly_KHR")
        public func validate_v1PredictionModeIntraOnly_KHR() {
            #expect(
                Ignite.VideoEncodeAV1PredictionModeKHR.v1PredictionModeIntraOnly_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_PREDICTION_MODE_INTRA_ONLY_KHR.rawValue
            )
        }

        @Test("Validate v1PredictionModeSingleReference_KHR")
        public func validate_v1PredictionModeSingleReference_KHR() {
            #expect(
                Ignite.VideoEncodeAV1PredictionModeKHR.v1PredictionModeSingleReference_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_PREDICTION_MODE_SINGLE_REFERENCE_KHR.rawValue
            )
        }

        @Test("Validate v1PredictionModeUnidirectionalCompound_KHR")
        public func validate_v1PredictionModeUnidirectionalCompound_KHR() {
            #expect(
                Ignite.VideoEncodeAV1PredictionModeKHR.v1PredictionModeUnidirectionalCompound_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_PREDICTION_MODE_UNIDIRECTIONAL_COMPOUND_KHR.rawValue
            )
        }

        @Test("Validate v1PredictionModeBidirectionalCompound_KHR")
        public func validate_v1PredictionModeBidirectionalCompound_KHR() {
            #expect(
                Ignite.VideoEncodeAV1PredictionModeKHR.v1PredictionModeBidirectionalCompound_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_PREDICTION_MODE_BIDIRECTIONAL_COMPOUND_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeAV1RateControlGroupKHR enum.
    @Suite("VideoEncodeAV1RateControlGroupKHR")
    public struct VideoEncodeAV1RateControlGroupKHRTests {
        @Test("Validate v1RateControlGroupIntra_KHR")
        public func validate_v1RateControlGroupIntra_KHR() {
            #expect(
                Ignite.VideoEncodeAV1RateControlGroupKHR.v1RateControlGroupIntra_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_RATE_CONTROL_GROUP_INTRA_KHR.rawValue
            )
        }

        @Test("Validate v1RateControlGroupPredictive_KHR")
        public func validate_v1RateControlGroupPredictive_KHR() {
            #expect(
                Ignite.VideoEncodeAV1RateControlGroupKHR.v1RateControlGroupPredictive_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_RATE_CONTROL_GROUP_PREDICTIVE_KHR.rawValue
            )
        }

        @Test("Validate v1RateControlGroupBipredictive_KHR")
        public func validate_v1RateControlGroupBipredictive_KHR() {
            #expect(
                Ignite.VideoEncodeAV1RateControlGroupKHR.v1RateControlGroupBipredictive_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_RATE_CONTROL_GROUP_BIPREDICTIVE_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeTuningModeKHR enum.
    @Suite("VideoEncodeTuningModeKHR")
    public struct VideoEncodeTuningModeKHRTests {
        @Test("Validate default_KHR")
        public func validate_default_KHR() {
            #expect(
                Ignite.VideoEncodeTuningModeKHR.default_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_TUNING_MODE_DEFAULT_KHR.rawValue
            )
        }

        @Test("Validate highQuality_KHR")
        public func validate_highQuality_KHR() {
            #expect(
                Ignite.VideoEncodeTuningModeKHR.highQuality_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_TUNING_MODE_HIGH_QUALITY_KHR.rawValue
            )
        }

        @Test("Validate lowLatency_KHR")
        public func validate_lowLatency_KHR() {
            #expect(
                Ignite.VideoEncodeTuningModeKHR.lowLatency_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_TUNING_MODE_LOW_LATENCY_KHR.rawValue
            )
        }

        @Test("Validate ultraLowLatency_KHR")
        public func validate_ultraLowLatency_KHR() {
            #expect(
                Ignite.VideoEncodeTuningModeKHR.ultraLowLatency_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_TUNING_MODE_ULTRA_LOW_LATENCY_KHR.rawValue
            )
        }

        @Test("Validate lossless_KHR")
        public func validate_lossless_KHR() {
            #expect(
                Ignite.VideoEncodeTuningModeKHR.lossless_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_TUNING_MODE_LOSSLESS_KHR.rawValue
            )
        }
    }


    /// Tests for the ViewportCoordinateSwizzleNV enum.
    @Suite("ViewportCoordinateSwizzleNV")
    public struct ViewportCoordinateSwizzleNVTests {
        @Test("Validate positiveX_NV")
        public func validate_positiveX_NV() {
            #expect(
                Ignite.ViewportCoordinateSwizzleNV.positiveX_NV.rawValue
                    == CVulkan.VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV.rawValue
            )
        }

        @Test("Validate negativeX_NV")
        public func validate_negativeX_NV() {
            #expect(
                Ignite.ViewportCoordinateSwizzleNV.negativeX_NV.rawValue
                    == CVulkan.VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV.rawValue
            )
        }

        @Test("Validate positiveY_NV")
        public func validate_positiveY_NV() {
            #expect(
                Ignite.ViewportCoordinateSwizzleNV.positiveY_NV.rawValue
                    == CVulkan.VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV.rawValue
            )
        }

        @Test("Validate negativeY_NV")
        public func validate_negativeY_NV() {
            #expect(
                Ignite.ViewportCoordinateSwizzleNV.negativeY_NV.rawValue
                    == CVulkan.VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV.rawValue
            )
        }

        @Test("Validate positiveZ_NV")
        public func validate_positiveZ_NV() {
            #expect(
                Ignite.ViewportCoordinateSwizzleNV.positiveZ_NV.rawValue
                    == CVulkan.VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV.rawValue
            )
        }

        @Test("Validate negativeZ_NV")
        public func validate_negativeZ_NV() {
            #expect(
                Ignite.ViewportCoordinateSwizzleNV.negativeZ_NV.rawValue
                    == CVulkan.VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV.rawValue
            )
        }

        @Test("Validate positiveW_NV")
        public func validate_positiveW_NV() {
            #expect(
                Ignite.ViewportCoordinateSwizzleNV.positiveW_NV.rawValue
                    == CVulkan.VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV.rawValue
            )
        }

        @Test("Validate negativeW_NV")
        public func validate_negativeW_NV() {
            #expect(
                Ignite.ViewportCoordinateSwizzleNV.negativeW_NV.rawValue
                    == CVulkan.VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV.rawValue
            )
        }
    }

    // END_GENERATE_ENUM_TESTS
}
