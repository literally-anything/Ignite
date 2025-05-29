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
    // Generated using header version: 315

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

        @Test("Validate r16g16Sfixed5_NV")
        public func validate_r16g16Sfixed5_NV() {
            #expect(
                Ignite.Format.r16g16Sfixed5_NV.rawValue == CVulkan.VK_FORMAT_R16G16_SFIXED5_NV.rawValue
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


    /// Tests for the Result enum.
    @Suite("Result")
    public struct ResultTests {
        @Test("Validate success")
        public func validate_success() {
            #expect(
                Ignite.Result.success.rawValue == CVulkan.VK_SUCCESS.rawValue
            )
        }

        @Test("Validate notReady")
        public func validate_notReady() {
            #expect(
                Ignite.Result.notReady.rawValue == CVulkan.VK_NOT_READY.rawValue
            )
        }

        @Test("Validate timeout")
        public func validate_timeout() {
            #expect(
                Ignite.Result.timeout.rawValue == CVulkan.VK_TIMEOUT.rawValue
            )
        }

        @Test("Validate eventSet")
        public func validate_eventSet() {
            #expect(
                Ignite.Result.eventSet.rawValue == CVulkan.VK_EVENT_SET.rawValue
            )
        }

        @Test("Validate eventReset")
        public func validate_eventReset() {
            #expect(
                Ignite.Result.eventReset.rawValue == CVulkan.VK_EVENT_RESET.rawValue
            )
        }

        @Test("Validate incomplete")
        public func validate_incomplete() {
            #expect(
                Ignite.Result.incomplete.rawValue == CVulkan.VK_INCOMPLETE.rawValue
            )
        }

        @Test("Validate errorOutOfHostMemory")
        public func validate_errorOutOfHostMemory() {
            #expect(
                Ignite.Result.errorOutOfHostMemory.rawValue == CVulkan.VK_ERROR_OUT_OF_HOST_MEMORY.rawValue
            )
        }

        @Test("Validate errorOutOfDeviceMemory")
        public func validate_errorOutOfDeviceMemory() {
            #expect(
                Ignite.Result.errorOutOfDeviceMemory.rawValue == CVulkan.VK_ERROR_OUT_OF_DEVICE_MEMORY.rawValue
            )
        }

        @Test("Validate errorInitializationFailed")
        public func validate_errorInitializationFailed() {
            #expect(
                Ignite.Result.errorInitializationFailed.rawValue == CVulkan.VK_ERROR_INITIALIZATION_FAILED.rawValue
            )
        }

        @Test("Validate errorDeviceLost")
        public func validate_errorDeviceLost() {
            #expect(
                Ignite.Result.errorDeviceLost.rawValue == CVulkan.VK_ERROR_DEVICE_LOST.rawValue
            )
        }

        @Test("Validate errorMemoryMapFailed")
        public func validate_errorMemoryMapFailed() {
            #expect(
                Ignite.Result.errorMemoryMapFailed.rawValue == CVulkan.VK_ERROR_MEMORY_MAP_FAILED.rawValue
            )
        }

        @Test("Validate errorLayerNotPresent")
        public func validate_errorLayerNotPresent() {
            #expect(
                Ignite.Result.errorLayerNotPresent.rawValue == CVulkan.VK_ERROR_LAYER_NOT_PRESENT.rawValue
            )
        }

        @Test("Validate errorExtensionNotPresent")
        public func validate_errorExtensionNotPresent() {
            #expect(
                Ignite.Result.errorExtensionNotPresent.rawValue == CVulkan.VK_ERROR_EXTENSION_NOT_PRESENT.rawValue
            )
        }

        @Test("Validate errorFeatureNotPresent")
        public func validate_errorFeatureNotPresent() {
            #expect(
                Ignite.Result.errorFeatureNotPresent.rawValue == CVulkan.VK_ERROR_FEATURE_NOT_PRESENT.rawValue
            )
        }

        @Test("Validate errorIncompatibleDriver")
        public func validate_errorIncompatibleDriver() {
            #expect(
                Ignite.Result.errorIncompatibleDriver.rawValue == CVulkan.VK_ERROR_INCOMPATIBLE_DRIVER.rawValue
            )
        }

        @Test("Validate errorTooManyObjects")
        public func validate_errorTooManyObjects() {
            #expect(
                Ignite.Result.errorTooManyObjects.rawValue == CVulkan.VK_ERROR_TOO_MANY_OBJECTS.rawValue
            )
        }

        @Test("Validate errorFormatNotSupported")
        public func validate_errorFormatNotSupported() {
            #expect(
                Ignite.Result.errorFormatNotSupported.rawValue == CVulkan.VK_ERROR_FORMAT_NOT_SUPPORTED.rawValue
            )
        }

        @Test("Validate errorFragmentedPool")
        public func validate_errorFragmentedPool() {
            #expect(
                Ignite.Result.errorFragmentedPool.rawValue == CVulkan.VK_ERROR_FRAGMENTED_POOL.rawValue
            )
        }

        @Test("Validate errorUnknown")
        public func validate_errorUnknown() {
            #expect(
                Ignite.Result.errorUnknown.rawValue == CVulkan.VK_ERROR_UNKNOWN.rawValue
            )
        }

        @Test("Validate errorOutOfPoolMemory")
        public func validate_errorOutOfPoolMemory() {
            #expect(
                Ignite.Result.errorOutOfPoolMemory.rawValue == CVulkan.VK_ERROR_OUT_OF_POOL_MEMORY.rawValue
            )
        }

        @Test("Validate errorInvalidExternalHandle")
        public func validate_errorInvalidExternalHandle() {
            #expect(
                Ignite.Result.errorInvalidExternalHandle.rawValue == CVulkan.VK_ERROR_INVALID_EXTERNAL_HANDLE.rawValue
            )
        }

        @Test("Validate errorFragmentation")
        public func validate_errorFragmentation() {
            #expect(
                Ignite.Result.errorFragmentation.rawValue == CVulkan.VK_ERROR_FRAGMENTATION.rawValue
            )
        }

        @Test("Validate errorInvalidOpaqueCaptureAddress")
        public func validate_errorInvalidOpaqueCaptureAddress() {
            #expect(
                Ignite.Result.errorInvalidOpaqueCaptureAddress.rawValue
                    == CVulkan.VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS.rawValue
            )
        }

        @Test("Validate pipelineCompileRequired")
        public func validate_pipelineCompileRequired() {
            #expect(
                Ignite.Result.pipelineCompileRequired.rawValue == CVulkan.VK_PIPELINE_COMPILE_REQUIRED.rawValue
            )
        }

        @Test("Validate errorNotPermitted")
        public func validate_errorNotPermitted() {
            #expect(
                Ignite.Result.errorNotPermitted.rawValue == CVulkan.VK_ERROR_NOT_PERMITTED.rawValue
            )
        }

        @Test("Validate errorSurfaceLost_KHR")
        public func validate_errorSurfaceLost_KHR() {
            #expect(
                Ignite.Result.errorSurfaceLost_KHR.rawValue == CVulkan.VK_ERROR_SURFACE_LOST_KHR.rawValue
            )
        }

        @Test("Validate errorNativeWindowInUse_KHR")
        public func validate_errorNativeWindowInUse_KHR() {
            #expect(
                Ignite.Result.errorNativeWindowInUse_KHR.rawValue == CVulkan.VK_ERROR_NATIVE_WINDOW_IN_USE_KHR.rawValue
            )
        }

        @Test("Validate suboptimal_KHR")
        public func validate_suboptimal_KHR() {
            #expect(
                Ignite.Result.suboptimal_KHR.rawValue == CVulkan.VK_SUBOPTIMAL_KHR.rawValue
            )
        }

        @Test("Validate errorOutOfDate_KHR")
        public func validate_errorOutOfDate_KHR() {
            #expect(
                Ignite.Result.errorOutOfDate_KHR.rawValue == CVulkan.VK_ERROR_OUT_OF_DATE_KHR.rawValue
            )
        }

        @Test("Validate errorIncompatibleDisplay_KHR")
        public func validate_errorIncompatibleDisplay_KHR() {
            #expect(
                Ignite.Result.errorIncompatibleDisplay_KHR.rawValue == CVulkan.VK_ERROR_INCOMPATIBLE_DISPLAY_KHR.rawValue
            )
        }

        @Test("Validate errorValidationFailed_EXT")
        public func validate_errorValidationFailed_EXT() {
            #expect(
                Ignite.Result.errorValidationFailed_EXT.rawValue == CVulkan.VK_ERROR_VALIDATION_FAILED_EXT.rawValue
            )
        }

        @Test("Validate errorInvalidShader_NV")
        public func validate_errorInvalidShader_NV() {
            #expect(
                Ignite.Result.errorInvalidShader_NV.rawValue == CVulkan.VK_ERROR_INVALID_SHADER_NV.rawValue
            )
        }

        @Test("Validate errorImageUsageNotSupported_KHR")
        public func validate_errorImageUsageNotSupported_KHR() {
            #expect(
                Ignite.Result.errorImageUsageNotSupported_KHR.rawValue
                    == CVulkan.VK_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR.rawValue
            )
        }

        @Test("Validate errorVideoPictureLayoutNotSupported_KHR")
        public func validate_errorVideoPictureLayoutNotSupported_KHR() {
            #expect(
                Ignite.Result.errorVideoPictureLayoutNotSupported_KHR.rawValue
                    == CVulkan.VK_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR.rawValue
            )
        }

        @Test("Validate errorVideoProfileOperationNotSupported_KHR")
        public func validate_errorVideoProfileOperationNotSupported_KHR() {
            #expect(
                Ignite.Result.errorVideoProfileOperationNotSupported_KHR.rawValue
                    == CVulkan.VK_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR.rawValue
            )
        }

        @Test("Validate errorVideoProfileFormatNotSupported_KHR")
        public func validate_errorVideoProfileFormatNotSupported_KHR() {
            #expect(
                Ignite.Result.errorVideoProfileFormatNotSupported_KHR.rawValue
                    == CVulkan.VK_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR.rawValue
            )
        }

        @Test("Validate errorVideoProfileCodecNotSupported_KHR")
        public func validate_errorVideoProfileCodecNotSupported_KHR() {
            #expect(
                Ignite.Result.errorVideoProfileCodecNotSupported_KHR.rawValue
                    == CVulkan.VK_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR.rawValue
            )
        }

        @Test("Validate errorVideoStdVersionNotSupported_KHR")
        public func validate_errorVideoStdVersionNotSupported_KHR() {
            #expect(
                Ignite.Result.errorVideoStdVersionNotSupported_KHR.rawValue
                    == CVulkan.VK_ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR.rawValue
            )
        }

        @Test("Validate errorInvalidDrmFormatModifierPlaneLayout_EXT")
        public func validate_errorInvalidDrmFormatModifierPlaneLayout_EXT() {
            #expect(
                Ignite.Result.errorInvalidDrmFormatModifierPlaneLayout_EXT.rawValue
                    == CVulkan.VK_ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT.rawValue
            )
        }

        #if PlatformWin32
            @Test("Validate errorFullScreenExclusiveModeLost_EXT")
            public func validate_errorFullScreenExclusiveModeLost_EXT() {
                #expect(
                    Ignite.Result.errorFullScreenExclusiveModeLost_EXT.rawValue
                        == CVulkan.VK_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate errorFullScreenExclusiveModeLost_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_errorFullScreenExclusiveModeLost_EXT() {}
        #endif

        @Test("Validate threadIdle_KHR")
        public func validate_threadIdle_KHR() {
            #expect(
                Ignite.Result.threadIdle_KHR.rawValue == CVulkan.VK_THREAD_IDLE_KHR.rawValue
            )
        }

        @Test("Validate threadDone_KHR")
        public func validate_threadDone_KHR() {
            #expect(
                Ignite.Result.threadDone_KHR.rawValue == CVulkan.VK_THREAD_DONE_KHR.rawValue
            )
        }

        @Test("Validate operationDeferred_KHR")
        public func validate_operationDeferred_KHR() {
            #expect(
                Ignite.Result.operationDeferred_KHR.rawValue == CVulkan.VK_OPERATION_DEFERRED_KHR.rawValue
            )
        }

        @Test("Validate operationNotDeferred_KHR")
        public func validate_operationNotDeferred_KHR() {
            #expect(
                Ignite.Result.operationNotDeferred_KHR.rawValue == CVulkan.VK_OPERATION_NOT_DEFERRED_KHR.rawValue
            )
        }

        @Test("Validate errorInvalidVideoStdParameters_KHR")
        public func validate_errorInvalidVideoStdParameters_KHR() {
            #expect(
                Ignite.Result.errorInvalidVideoStdParameters_KHR.rawValue
                    == CVulkan.VK_ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR.rawValue
            )
        }

        @Test("Validate errorCompressionExhausted_EXT")
        public func validate_errorCompressionExhausted_EXT() {
            #expect(
                Ignite.Result.errorCompressionExhausted_EXT.rawValue == CVulkan.VK_ERROR_COMPRESSION_EXHAUSTED_EXT.rawValue
            )
        }

        @Test("Validate incompatibleShaderBinary_EXT")
        public func validate_incompatibleShaderBinary_EXT() {
            #expect(
                Ignite.Result.incompatibleShaderBinary_EXT.rawValue == CVulkan.VK_INCOMPATIBLE_SHADER_BINARY_EXT.rawValue
            )
        }

        @Test("Validate pipelineBinaryMissing_KHR")
        public func validate_pipelineBinaryMissing_KHR() {
            #expect(
                Ignite.Result.pipelineBinaryMissing_KHR.rawValue == CVulkan.VK_PIPELINE_BINARY_MISSING_KHR.rawValue
            )
        }

        @Test("Validate errorNotEnoughSpace_KHR")
        public func validate_errorNotEnoughSpace_KHR() {
            #expect(
                Ignite.Result.errorNotEnoughSpace_KHR.rawValue == CVulkan.VK_ERROR_NOT_ENOUGH_SPACE_KHR.rawValue
            )
        }

        @Test("Validate errorOutOfPoolMemory_KHR")
        public func validate_errorOutOfPoolMemory_KHR() {
            #expect(
                Ignite.Result.errorOutOfPoolMemory_KHR.rawValue == CVulkan.VK_ERROR_OUT_OF_POOL_MEMORY_KHR.rawValue
            )
        }

        @Test("Validate errorInvalidExternalHandle_KHR")
        public func validate_errorInvalidExternalHandle_KHR() {
            #expect(
                Ignite.Result.errorInvalidExternalHandle_KHR.rawValue
                    == CVulkan.VK_ERROR_INVALID_EXTERNAL_HANDLE_KHR.rawValue
            )
        }

        @Test("Validate errorFragmentation_EXT")
        public func validate_errorFragmentation_EXT() {
            #expect(
                Ignite.Result.errorFragmentation_EXT.rawValue == CVulkan.VK_ERROR_FRAGMENTATION_EXT.rawValue
            )
        }

        @Test("Validate errorNotPermitted_EXT")
        public func validate_errorNotPermitted_EXT() {
            #expect(
                Ignite.Result.errorNotPermitted_EXT.rawValue == CVulkan.VK_ERROR_NOT_PERMITTED_EXT.rawValue
            )
        }

        @Test("Validate errorNotPermitted_KHR")
        public func validate_errorNotPermitted_KHR() {
            #expect(
                Ignite.Result.errorNotPermitted_KHR.rawValue == CVulkan.VK_ERROR_NOT_PERMITTED_KHR.rawValue
            )
        }

        @Test("Validate errorInvalidDeviceAddress_EXT")
        public func validate_errorInvalidDeviceAddress_EXT() {
            #expect(
                Ignite.Result.errorInvalidDeviceAddress_EXT.rawValue == CVulkan.VK_ERROR_INVALID_DEVICE_ADDRESS_EXT.rawValue
            )
        }

        @Test("Validate errorInvalidOpaqueCaptureAddress_KHR")
        public func validate_errorInvalidOpaqueCaptureAddress_KHR() {
            #expect(
                Ignite.Result.errorInvalidOpaqueCaptureAddress_KHR.rawValue
                    == CVulkan.VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR.rawValue
            )
        }

        @Test("Validate pipelineCompileRequired_EXT")
        public func validate_pipelineCompileRequired_EXT() {
            #expect(
                Ignite.Result.pipelineCompileRequired_EXT.rawValue == CVulkan.VK_PIPELINE_COMPILE_REQUIRED_EXT.rawValue
            )
        }

        @Test("Validate errorPipelineCompileRequired_EXT")
        public func validate_errorPipelineCompileRequired_EXT() {
            #expect(
                Ignite.Result.errorPipelineCompileRequired_EXT.rawValue
                    == CVulkan.VK_ERROR_PIPELINE_COMPILE_REQUIRED_EXT.rawValue
            )
        }

        @Test("Validate errorIncompatibleShaderBinary_EXT")
        public func validate_errorIncompatibleShaderBinary_EXT() {
            #expect(
                Ignite.Result.errorIncompatibleShaderBinary_EXT.rawValue
                    == CVulkan.VK_ERROR_INCOMPATIBLE_SHADER_BINARY_EXT.rawValue
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


    /// Tests for the StructureType enum.
    @Suite("StructureType")
    public struct StructureTypeTests {
        @Test("Validate applicationInfo")
        public func validate_applicationInfo() {
            #expect(
                Ignite.StructureType.applicationInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_APPLICATION_INFO.rawValue
            )
        }

        @Test("Validate instanceCreateInfo")
        public func validate_instanceCreateInfo() {
            #expect(
                Ignite.StructureType.instanceCreateInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate deviceQueueCreateInfo")
        public func validate_deviceQueueCreateInfo() {
            #expect(
                Ignite.StructureType.deviceQueueCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate deviceCreateInfo")
        public func validate_deviceCreateInfo() {
            #expect(
                Ignite.StructureType.deviceCreateInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate submitInfo")
        public func validate_submitInfo() {
            #expect(
                Ignite.StructureType.submitInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_SUBMIT_INFO.rawValue
            )
        }

        @Test("Validate memoryAllocateInfo")
        public func validate_memoryAllocateInfo() {
            #expect(
                Ignite.StructureType.memoryAllocateInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO.rawValue
            )
        }

        @Test("Validate mappedMemoryRange")
        public func validate_mappedMemoryRange() {
            #expect(
                Ignite.StructureType.mappedMemoryRange.rawValue == CVulkan.VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE.rawValue
            )
        }

        @Test("Validate bindSparseInfo")
        public func validate_bindSparseInfo() {
            #expect(
                Ignite.StructureType.bindSparseInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_BIND_SPARSE_INFO.rawValue
            )
        }

        @Test("Validate fenceCreateInfo")
        public func validate_fenceCreateInfo() {
            #expect(
                Ignite.StructureType.fenceCreateInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_FENCE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate semaphoreCreateInfo")
        public func validate_semaphoreCreateInfo() {
            #expect(
                Ignite.StructureType.semaphoreCreateInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate eventCreateInfo")
        public func validate_eventCreateInfo() {
            #expect(
                Ignite.StructureType.eventCreateInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_EVENT_CREATE_INFO.rawValue
            )
        }

        @Test("Validate queryPoolCreateInfo")
        public func validate_queryPoolCreateInfo() {
            #expect(
                Ignite.StructureType.queryPoolCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO.rawValue
            )
        }

        @Test("Validate bufferCreateInfo")
        public func validate_bufferCreateInfo() {
            #expect(
                Ignite.StructureType.bufferCreateInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO.rawValue
            )
        }

        @Test("Validate bufferViewCreateInfo")
        public func validate_bufferViewCreateInfo() {
            #expect(
                Ignite.StructureType.bufferViewCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO.rawValue
            )
        }

        @Test("Validate imageCreateInfo")
        public func validate_imageCreateInfo() {
            #expect(
                Ignite.StructureType.imageCreateInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate imageViewCreateInfo")
        public func validate_imageViewCreateInfo() {
            #expect(
                Ignite.StructureType.imageViewCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO.rawValue
            )
        }

        @Test("Validate shaderModuleCreateInfo")
        public func validate_shaderModuleCreateInfo() {
            #expect(
                Ignite.StructureType.shaderModuleCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineCacheCreateInfo")
        public func validate_pipelineCacheCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineCacheCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineShaderStageCreateInfo")
        public func validate_pipelineShaderStageCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineShaderStageCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineVertexInputStateCreateInfo")
        public func validate_pipelineVertexInputStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineVertexInputStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineInputAssemblyStateCreateInfo")
        public func validate_pipelineInputAssemblyStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineInputAssemblyStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineTessellationStateCreateInfo")
        public func validate_pipelineTessellationStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineTessellationStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineViewportStateCreateInfo")
        public func validate_pipelineViewportStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineViewportStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineRasterizationStateCreateInfo")
        public func validate_pipelineRasterizationStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineRasterizationStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineMultisampleStateCreateInfo")
        public func validate_pipelineMultisampleStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineMultisampleStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineDepthStencilStateCreateInfo")
        public func validate_pipelineDepthStencilStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineDepthStencilStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineColorBlendStateCreateInfo")
        public func validate_pipelineColorBlendStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineColorBlendStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineDynamicStateCreateInfo")
        public func validate_pipelineDynamicStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineDynamicStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate graphicsPipelineCreateInfo")
        public func validate_graphicsPipelineCreateInfo() {
            #expect(
                Ignite.StructureType.graphicsPipelineCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate computePipelineCreateInfo")
        public func validate_computePipelineCreateInfo() {
            #expect(
                Ignite.StructureType.computePipelineCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineLayoutCreateInfo")
        public func validate_pipelineLayoutCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineLayoutCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO.rawValue
            )
        }

        @Test("Validate samplerCreateInfo")
        public func validate_samplerCreateInfo() {
            #expect(
                Ignite.StructureType.samplerCreateInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO.rawValue
            )
        }

        @Test("Validate descriptorSetLayoutCreateInfo")
        public func validate_descriptorSetLayoutCreateInfo() {
            #expect(
                Ignite.StructureType.descriptorSetLayoutCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO.rawValue
            )
        }

        @Test("Validate descriptorPoolCreateInfo")
        public func validate_descriptorPoolCreateInfo() {
            #expect(
                Ignite.StructureType.descriptorPoolCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO.rawValue
            )
        }

        @Test("Validate descriptorSetAllocateInfo")
        public func validate_descriptorSetAllocateInfo() {
            #expect(
                Ignite.StructureType.descriptorSetAllocateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO.rawValue
            )
        }

        @Test("Validate writeDescriptorSet")
        public func validate_writeDescriptorSet() {
            #expect(
                Ignite.StructureType.writeDescriptorSet.rawValue == CVulkan.VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET.rawValue
            )
        }

        @Test("Validate copyDescriptorSet")
        public func validate_copyDescriptorSet() {
            #expect(
                Ignite.StructureType.copyDescriptorSet.rawValue == CVulkan.VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET.rawValue
            )
        }

        @Test("Validate framebufferCreateInfo")
        public func validate_framebufferCreateInfo() {
            #expect(
                Ignite.StructureType.framebufferCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO.rawValue
            )
        }

        @Test("Validate renderPassCreateInfo")
        public func validate_renderPassCreateInfo() {
            #expect(
                Ignite.StructureType.renderPassCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO.rawValue
            )
        }

        @Test("Validate commandPoolCreateInfo")
        public func validate_commandPoolCreateInfo() {
            #expect(
                Ignite.StructureType.commandPoolCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO.rawValue
            )
        }

        @Test("Validate commandBufferAllocateInfo")
        public func validate_commandBufferAllocateInfo() {
            #expect(
                Ignite.StructureType.commandBufferAllocateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO.rawValue
            )
        }

        @Test("Validate commandBufferInheritanceInfo")
        public func validate_commandBufferInheritanceInfo() {
            #expect(
                Ignite.StructureType.commandBufferInheritanceInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO.rawValue
            )
        }

        @Test("Validate commandBufferBeginInfo")
        public func validate_commandBufferBeginInfo() {
            #expect(
                Ignite.StructureType.commandBufferBeginInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO.rawValue
            )
        }

        @Test("Validate renderPassBeginInfo")
        public func validate_renderPassBeginInfo() {
            #expect(
                Ignite.StructureType.renderPassBeginInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO.rawValue
            )
        }

        @Test("Validate bufferMemoryBarrier")
        public func validate_bufferMemoryBarrier() {
            #expect(
                Ignite.StructureType.bufferMemoryBarrier.rawValue == CVulkan.VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER.rawValue
            )
        }

        @Test("Validate imageMemoryBarrier")
        public func validate_imageMemoryBarrier() {
            #expect(
                Ignite.StructureType.imageMemoryBarrier.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER.rawValue
            )
        }

        @Test("Validate memoryBarrier")
        public func validate_memoryBarrier() {
            #expect(
                Ignite.StructureType.memoryBarrier.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_BARRIER.rawValue
            )
        }

        @Test("Validate loaderInstanceCreateInfo")
        public func validate_loaderInstanceCreateInfo() {
            #expect(
                Ignite.StructureType.loaderInstanceCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate loaderDeviceCreateInfo")
        public func validate_loaderDeviceCreateInfo() {
            #expect(
                Ignite.StructureType.loaderDeviceCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceSubgroupProperties")
        public func validate_physicalDeviceSubgroupProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceSubgroupProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES.rawValue
            )
        }

        @Test("Validate bindBufferMemoryInfo")
        public func validate_bindBufferMemoryInfo() {
            #expect(
                Ignite.StructureType.bindBufferMemoryInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO.rawValue
            )
        }

        @Test("Validate bindImageMemoryInfo")
        public func validate_bindImageMemoryInfo() {
            #expect(
                Ignite.StructureType.bindImageMemoryInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO.rawValue
            )
        }

        @Test("Validate physicalDevice16bitStorageFeatures")
        public func validate_physicalDevice16bitStorageFeatures() {
            #expect(
                Ignite.StructureType.physicalDevice16bitStorageFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES.rawValue
            )
        }

        @Test("Validate memoryDedicatedRequirements")
        public func validate_memoryDedicatedRequirements() {
            #expect(
                Ignite.StructureType.memoryDedicatedRequirements.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS.rawValue
            )
        }

        @Test("Validate memoryDedicatedAllocateInfo")
        public func validate_memoryDedicatedAllocateInfo() {
            #expect(
                Ignite.StructureType.memoryDedicatedAllocateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO.rawValue
            )
        }

        @Test("Validate memoryAllocateFlagsInfo")
        public func validate_memoryAllocateFlagsInfo() {
            #expect(
                Ignite.StructureType.memoryAllocateFlagsInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO.rawValue
            )
        }

        @Test("Validate deviceGroupRenderPassBeginInfo")
        public func validate_deviceGroupRenderPassBeginInfo() {
            #expect(
                Ignite.StructureType.deviceGroupRenderPassBeginInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO.rawValue
            )
        }

        @Test("Validate deviceGroupCommandBufferBeginInfo")
        public func validate_deviceGroupCommandBufferBeginInfo() {
            #expect(
                Ignite.StructureType.deviceGroupCommandBufferBeginInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO.rawValue
            )
        }

        @Test("Validate deviceGroupSubmitInfo")
        public func validate_deviceGroupSubmitInfo() {
            #expect(
                Ignite.StructureType.deviceGroupSubmitInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO.rawValue
            )
        }

        @Test("Validate deviceGroupBindSparseInfo")
        public func validate_deviceGroupBindSparseInfo() {
            #expect(
                Ignite.StructureType.deviceGroupBindSparseInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO.rawValue
            )
        }

        @Test("Validate bindBufferMemoryDeviceGroupInfo")
        public func validate_bindBufferMemoryDeviceGroupInfo() {
            #expect(
                Ignite.StructureType.bindBufferMemoryDeviceGroupInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO.rawValue
            )
        }

        @Test("Validate bindImageMemoryDeviceGroupInfo")
        public func validate_bindImageMemoryDeviceGroupInfo() {
            #expect(
                Ignite.StructureType.bindImageMemoryDeviceGroupInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceGroupProperties")
        public func validate_physicalDeviceGroupProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceGroupProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES.rawValue
            )
        }

        @Test("Validate deviceGroupDeviceCreateInfo")
        public func validate_deviceGroupDeviceCreateInfo() {
            #expect(
                Ignite.StructureType.deviceGroupDeviceCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate bufferMemoryRequirementsInfo2")
        public func validate_bufferMemoryRequirementsInfo2() {
            #expect(
                Ignite.StructureType.bufferMemoryRequirementsInfo2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2.rawValue
            )
        }

        @Test("Validate imageMemoryRequirementsInfo2")
        public func validate_imageMemoryRequirementsInfo2() {
            #expect(
                Ignite.StructureType.imageMemoryRequirementsInfo2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2.rawValue
            )
        }

        @Test("Validate imageSparseMemoryRequirementsInfo2")
        public func validate_imageSparseMemoryRequirementsInfo2() {
            #expect(
                Ignite.StructureType.imageSparseMemoryRequirementsInfo2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2.rawValue
            )
        }

        @Test("Validate memoryRequirements2")
        public func validate_memoryRequirements2() {
            #expect(
                Ignite.StructureType.memoryRequirements2.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2.rawValue
            )
        }

        @Test("Validate sparseImageMemoryRequirements2")
        public func validate_sparseImageMemoryRequirements2() {
            #expect(
                Ignite.StructureType.sparseImageMemoryRequirements2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2.rawValue
            )
        }

        @Test("Validate physicalDeviceFeatures2")
        public func validate_physicalDeviceFeatures2() {
            #expect(
                Ignite.StructureType.physicalDeviceFeatures2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2.rawValue
            )
        }

        @Test("Validate physicalDeviceProperties2")
        public func validate_physicalDeviceProperties2() {
            #expect(
                Ignite.StructureType.physicalDeviceProperties2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2.rawValue
            )
        }

        @Test("Validate formatProperties2")
        public func validate_formatProperties2() {
            #expect(
                Ignite.StructureType.formatProperties2.rawValue == CVulkan.VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2.rawValue
            )
        }

        @Test("Validate imageFormatProperties2")
        public func validate_imageFormatProperties2() {
            #expect(
                Ignite.StructureType.imageFormatProperties2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2.rawValue
            )
        }

        @Test("Validate physicalDeviceImageFormatInfo2")
        public func validate_physicalDeviceImageFormatInfo2() {
            #expect(
                Ignite.StructureType.physicalDeviceImageFormatInfo2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2.rawValue
            )
        }

        @Test("Validate queueFamilyProperties2")
        public func validate_queueFamilyProperties2() {
            #expect(
                Ignite.StructureType.queueFamilyProperties2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2.rawValue
            )
        }

        @Test("Validate physicalDeviceMemoryProperties2")
        public func validate_physicalDeviceMemoryProperties2() {
            #expect(
                Ignite.StructureType.physicalDeviceMemoryProperties2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2.rawValue
            )
        }

        @Test("Validate sparseImageFormatProperties2")
        public func validate_sparseImageFormatProperties2() {
            #expect(
                Ignite.StructureType.sparseImageFormatProperties2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2.rawValue
            )
        }

        @Test("Validate physicalDeviceSparseImageFormatInfo2")
        public func validate_physicalDeviceSparseImageFormatInfo2() {
            #expect(
                Ignite.StructureType.physicalDeviceSparseImageFormatInfo2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2.rawValue
            )
        }

        @Test("Validate physicalDevicePointClippingProperties")
        public func validate_physicalDevicePointClippingProperties() {
            #expect(
                Ignite.StructureType.physicalDevicePointClippingProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES.rawValue
            )
        }

        @Test("Validate renderPassInputAttachmentAspectCreateInfo")
        public func validate_renderPassInputAttachmentAspectCreateInfo() {
            #expect(
                Ignite.StructureType.renderPassInputAttachmentAspectCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO.rawValue
            )
        }

        @Test("Validate imageViewUsageCreateInfo")
        public func validate_imageViewUsageCreateInfo() {
            #expect(
                Ignite.StructureType.imageViewUsageCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate pipelineTessellationDomainOriginStateCreateInfo")
        public func validate_pipelineTessellationDomainOriginStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineTessellationDomainOriginStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate renderPassMultiviewCreateInfo")
        public func validate_renderPassMultiviewCreateInfo() {
            #expect(
                Ignite.StructureType.renderPassMultiviewCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceMultiviewFeatures")
        public func validate_physicalDeviceMultiviewFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceMultiviewFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceMultiviewProperties")
        public func validate_physicalDeviceMultiviewProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceMultiviewProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceVariablePointersFeatures")
        public func validate_physicalDeviceVariablePointersFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceVariablePointersFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES.rawValue
            )
        }

        @Test("Validate protectedSubmitInfo")
        public func validate_protectedSubmitInfo() {
            #expect(
                Ignite.StructureType.protectedSubmitInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceProtectedMemoryFeatures")
        public func validate_physicalDeviceProtectedMemoryFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceProtectedMemoryFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceProtectedMemoryProperties")
        public func validate_physicalDeviceProtectedMemoryProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceProtectedMemoryProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES.rawValue
            )
        }

        @Test("Validate deviceQueueInfo2")
        public func validate_deviceQueueInfo2() {
            #expect(
                Ignite.StructureType.deviceQueueInfo2.rawValue == CVulkan.VK_STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversionCreateInfo")
        public func validate_samplerYcbcrConversionCreateInfo() {
            #expect(
                Ignite.StructureType.samplerYcbcrConversionCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversionInfo")
        public func validate_samplerYcbcrConversionInfo() {
            #expect(
                Ignite.StructureType.samplerYcbcrConversionInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO.rawValue
            )
        }

        @Test("Validate bindImagePlaneMemoryInfo")
        public func validate_bindImagePlaneMemoryInfo() {
            #expect(
                Ignite.StructureType.bindImagePlaneMemoryInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO.rawValue
            )
        }

        @Test("Validate imagePlaneMemoryRequirementsInfo")
        public func validate_imagePlaneMemoryRequirementsInfo() {
            #expect(
                Ignite.StructureType.imagePlaneMemoryRequirementsInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceSamplerYcbcrConversionFeatures")
        public func validate_physicalDeviceSamplerYcbcrConversionFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceSamplerYcbcrConversionFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversionImageFormatProperties")
        public func validate_samplerYcbcrConversionImageFormatProperties() {
            #expect(
                Ignite.StructureType.samplerYcbcrConversionImageFormatProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES.rawValue
            )
        }

        @Test("Validate descriptorUpdateTemplateCreateInfo")
        public func validate_descriptorUpdateTemplateCreateInfo() {
            #expect(
                Ignite.StructureType.descriptorUpdateTemplateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalImageFormatInfo")
        public func validate_physicalDeviceExternalImageFormatInfo() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalImageFormatInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO.rawValue
            )
        }

        @Test("Validate externalImageFormatProperties")
        public func validate_externalImageFormatProperties() {
            #expect(
                Ignite.StructureType.externalImageFormatProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalBufferInfo")
        public func validate_physicalDeviceExternalBufferInfo() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalBufferInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO.rawValue
            )
        }

        @Test("Validate externalBufferProperties")
        public func validate_externalBufferProperties() {
            #expect(
                Ignite.StructureType.externalBufferProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceIdProperties")
        public func validate_physicalDeviceIdProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceIdProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES.rawValue
            )
        }

        @Test("Validate externalMemoryBufferCreateInfo")
        public func validate_externalMemoryBufferCreateInfo() {
            #expect(
                Ignite.StructureType.externalMemoryBufferCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO.rawValue
            )
        }

        @Test("Validate externalMemoryImageCreateInfo")
        public func validate_externalMemoryImageCreateInfo() {
            #expect(
                Ignite.StructureType.externalMemoryImageCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate exportMemoryAllocateInfo")
        public func validate_exportMemoryAllocateInfo() {
            #expect(
                Ignite.StructureType.exportMemoryAllocateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalFenceInfo")
        public func validate_physicalDeviceExternalFenceInfo() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalFenceInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO.rawValue
            )
        }

        @Test("Validate externalFenceProperties")
        public func validate_externalFenceProperties() {
            #expect(
                Ignite.StructureType.externalFenceProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES.rawValue
            )
        }

        @Test("Validate exportFenceCreateInfo")
        public func validate_exportFenceCreateInfo() {
            #expect(
                Ignite.StructureType.exportFenceCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate exportSemaphoreCreateInfo")
        public func validate_exportSemaphoreCreateInfo() {
            #expect(
                Ignite.StructureType.exportSemaphoreCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalSemaphoreInfo")
        public func validate_physicalDeviceExternalSemaphoreInfo() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalSemaphoreInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO.rawValue
            )
        }

        @Test("Validate externalSemaphoreProperties")
        public func validate_externalSemaphoreProperties() {
            #expect(
                Ignite.StructureType.externalSemaphoreProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance3Properties")
        public func validate_physicalDeviceMaintenance3Properties() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance3Properties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES.rawValue
            )
        }

        @Test("Validate descriptorSetLayoutSupport")
        public func validate_descriptorSetLayoutSupport() {
            #expect(
                Ignite.StructureType.descriptorSetLayoutSupport.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderDrawParametersFeatures")
        public func validate_physicalDeviceShaderDrawParametersFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderDrawParametersFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkan11Features")
        public func validate_physicalDeviceVulkan11Features() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkan11Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkan11Properties")
        public func validate_physicalDeviceVulkan11Properties() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkan11Properties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkan12Features")
        public func validate_physicalDeviceVulkan12Features() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkan12Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkan12Properties")
        public func validate_physicalDeviceVulkan12Properties() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkan12Properties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES.rawValue
            )
        }

        @Test("Validate imageFormatListCreateInfo")
        public func validate_imageFormatListCreateInfo() {
            #expect(
                Ignite.StructureType.imageFormatListCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO.rawValue
            )
        }

        @Test("Validate attachmentDescription2")
        public func validate_attachmentDescription2() {
            #expect(
                Ignite.StructureType.attachmentDescription2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2.rawValue
            )
        }

        @Test("Validate attachmentReference2")
        public func validate_attachmentReference2() {
            #expect(
                Ignite.StructureType.attachmentReference2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2.rawValue
            )
        }

        @Test("Validate subpassDescription2")
        public func validate_subpassDescription2() {
            #expect(
                Ignite.StructureType.subpassDescription2.rawValue == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2.rawValue
            )
        }

        @Test("Validate subpassDependency2")
        public func validate_subpassDependency2() {
            #expect(
                Ignite.StructureType.subpassDependency2.rawValue == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2.rawValue
            )
        }

        @Test("Validate renderPassCreateInfo2")
        public func validate_renderPassCreateInfo2() {
            #expect(
                Ignite.StructureType.renderPassCreateInfo2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2.rawValue
            )
        }

        @Test("Validate subpassBeginInfo")
        public func validate_subpassBeginInfo() {
            #expect(
                Ignite.StructureType.subpassBeginInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO.rawValue
            )
        }

        @Test("Validate subpassEndInfo")
        public func validate_subpassEndInfo() {
            #expect(
                Ignite.StructureType.subpassEndInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_END_INFO.rawValue
            )
        }

        @Test("Validate physicalDevice8bitStorageFeatures")
        public func validate_physicalDevice8bitStorageFeatures() {
            #expect(
                Ignite.StructureType.physicalDevice8bitStorageFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceDriverProperties")
        public func validate_physicalDeviceDriverProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceDriverProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderAtomicInt64Features")
        public func validate_physicalDeviceShaderAtomicInt64Features() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderAtomicInt64Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderFloat16Int8Features")
        public func validate_physicalDeviceShaderFloat16Int8Features() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderFloat16Int8Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceFloatControlsProperties")
        public func validate_physicalDeviceFloatControlsProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceFloatControlsProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES.rawValue
            )
        }

        @Test("Validate descriptorSetLayoutBindingFlagsCreateInfo")
        public func validate_descriptorSetLayoutBindingFlagsCreateInfo() {
            #expect(
                Ignite.StructureType.descriptorSetLayoutBindingFlagsCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceDescriptorIndexingFeatures")
        public func validate_physicalDeviceDescriptorIndexingFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceDescriptorIndexingFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceDescriptorIndexingProperties")
        public func validate_physicalDeviceDescriptorIndexingProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceDescriptorIndexingProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES.rawValue
            )
        }

        @Test("Validate descriptorSetVariableDescriptorCountAllocateInfo")
        public func validate_descriptorSetVariableDescriptorCountAllocateInfo() {
            #expect(
                Ignite.StructureType.descriptorSetVariableDescriptorCountAllocateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO.rawValue
            )
        }

        @Test("Validate descriptorSetVariableDescriptorCountLayoutSupport")
        public func validate_descriptorSetVariableDescriptorCountLayoutSupport() {
            #expect(
                Ignite.StructureType.descriptorSetVariableDescriptorCountLayoutSupport.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT.rawValue
            )
        }

        @Test("Validate physicalDeviceDepthStencilResolveProperties")
        public func validate_physicalDeviceDepthStencilResolveProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceDepthStencilResolveProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES.rawValue
            )
        }

        @Test("Validate subpassDescriptionDepthStencilResolve")
        public func validate_subpassDescriptionDepthStencilResolve() {
            #expect(
                Ignite.StructureType.subpassDescriptionDepthStencilResolve.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE.rawValue
            )
        }

        @Test("Validate physicalDeviceScalarBlockLayoutFeatures")
        public func validate_physicalDeviceScalarBlockLayoutFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceScalarBlockLayoutFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES.rawValue
            )
        }

        @Test("Validate imageStencilUsageCreateInfo")
        public func validate_imageStencilUsageCreateInfo() {
            #expect(
                Ignite.StructureType.imageStencilUsageCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceSamplerFilterMinmaxProperties")
        public func validate_physicalDeviceSamplerFilterMinmaxProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceSamplerFilterMinmaxProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES.rawValue
            )
        }

        @Test("Validate samplerReductionModeCreateInfo")
        public func validate_samplerReductionModeCreateInfo() {
            #expect(
                Ignite.StructureType.samplerReductionModeCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkanMemoryModelFeatures")
        public func validate_physicalDeviceVulkanMemoryModelFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkanMemoryModelFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceImagelessFramebufferFeatures")
        public func validate_physicalDeviceImagelessFramebufferFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceImagelessFramebufferFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES.rawValue
            )
        }

        @Test("Validate framebufferAttachmentsCreateInfo")
        public func validate_framebufferAttachmentsCreateInfo() {
            #expect(
                Ignite.StructureType.framebufferAttachmentsCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO.rawValue
            )
        }

        @Test("Validate framebufferAttachmentImageInfo")
        public func validate_framebufferAttachmentImageInfo() {
            #expect(
                Ignite.StructureType.framebufferAttachmentImageInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO.rawValue
            )
        }

        @Test("Validate renderPassAttachmentBeginInfo")
        public func validate_renderPassAttachmentBeginInfo() {
            #expect(
                Ignite.StructureType.renderPassAttachmentBeginInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceUniformBufferStandardLayoutFeatures")
        public func validate_physicalDeviceUniformBufferStandardLayoutFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceUniformBufferStandardLayoutFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderSubgroupExtendedTypesFeatures")
        public func validate_physicalDeviceShaderSubgroupExtendedTypesFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderSubgroupExtendedTypesFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceSeparateDepthStencilLayoutsFeatures")
        public func validate_physicalDeviceSeparateDepthStencilLayoutsFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceSeparateDepthStencilLayoutsFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES.rawValue
            )
        }

        @Test("Validate attachmentReferenceStencilLayout")
        public func validate_attachmentReferenceStencilLayout() {
            #expect(
                Ignite.StructureType.attachmentReferenceStencilLayout.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT.rawValue
            )
        }

        @Test("Validate attachmentDescriptionStencilLayout")
        public func validate_attachmentDescriptionStencilLayout() {
            #expect(
                Ignite.StructureType.attachmentDescriptionStencilLayout.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT.rawValue
            )
        }

        @Test("Validate physicalDeviceHostQueryResetFeatures")
        public func validate_physicalDeviceHostQueryResetFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceHostQueryResetFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceTimelineSemaphoreFeatures")
        public func validate_physicalDeviceTimelineSemaphoreFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceTimelineSemaphoreFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceTimelineSemaphoreProperties")
        public func validate_physicalDeviceTimelineSemaphoreProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceTimelineSemaphoreProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES.rawValue
            )
        }

        @Test("Validate semaphoreTypeCreateInfo")
        public func validate_semaphoreTypeCreateInfo() {
            #expect(
                Ignite.StructureType.semaphoreTypeCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate timelineSemaphoreSubmitInfo")
        public func validate_timelineSemaphoreSubmitInfo() {
            #expect(
                Ignite.StructureType.timelineSemaphoreSubmitInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO.rawValue
            )
        }

        @Test("Validate semaphoreWaitInfo")
        public func validate_semaphoreWaitInfo() {
            #expect(
                Ignite.StructureType.semaphoreWaitInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO.rawValue
            )
        }

        @Test("Validate semaphoreSignalInfo")
        public func validate_semaphoreSignalInfo() {
            #expect(
                Ignite.StructureType.semaphoreSignalInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceBufferDeviceAddressFeatures")
        public func validate_physicalDeviceBufferDeviceAddressFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceBufferDeviceAddressFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES.rawValue
            )
        }

        @Test("Validate bufferDeviceAddressInfo")
        public func validate_bufferDeviceAddressInfo() {
            #expect(
                Ignite.StructureType.bufferDeviceAddressInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO.rawValue
            )
        }

        @Test("Validate bufferOpaqueCaptureAddressCreateInfo")
        public func validate_bufferOpaqueCaptureAddressCreateInfo() {
            #expect(
                Ignite.StructureType.bufferOpaqueCaptureAddressCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO.rawValue
            )
        }

        @Test("Validate memoryOpaqueCaptureAddressAllocateInfo")
        public func validate_memoryOpaqueCaptureAddressAllocateInfo() {
            #expect(
                Ignite.StructureType.memoryOpaqueCaptureAddressAllocateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO.rawValue
            )
        }

        @Test("Validate deviceMemoryOpaqueCaptureAddressInfo")
        public func validate_deviceMemoryOpaqueCaptureAddressInfo() {
            #expect(
                Ignite.StructureType.deviceMemoryOpaqueCaptureAddressInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkan13Features")
        public func validate_physicalDeviceVulkan13Features() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkan13Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkan13Properties")
        public func validate_physicalDeviceVulkan13Properties() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkan13Properties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_PROPERTIES.rawValue
            )
        }

        @Test("Validate pipelineCreationFeedbackCreateInfo")
        public func validate_pipelineCreationFeedbackCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineCreationFeedbackCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderTerminateInvocationFeatures")
        public func validate_physicalDeviceShaderTerminateInvocationFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderTerminateInvocationFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceToolProperties")
        public func validate_physicalDeviceToolProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceToolProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderDemoteToHelperInvocationFeatures")
        public func validate_physicalDeviceShaderDemoteToHelperInvocationFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderDemoteToHelperInvocationFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDevicePrivateDataFeatures")
        public func validate_physicalDevicePrivateDataFeatures() {
            #expect(
                Ignite.StructureType.physicalDevicePrivateDataFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES.rawValue
            )
        }

        @Test("Validate devicePrivateDataCreateInfo")
        public func validate_devicePrivateDataCreateInfo() {
            #expect(
                Ignite.StructureType.devicePrivateDataCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO.rawValue
            )
        }

        @Test("Validate privateDataSlotCreateInfo")
        public func validate_privateDataSlotCreateInfo() {
            #expect(
                Ignite.StructureType.privateDataSlotCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineCreationCacheControlFeatures")
        public func validate_physicalDevicePipelineCreationCacheControlFeatures() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineCreationCacheControlFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES.rawValue
            )
        }

        @Test("Validate memoryBarrier2")
        public func validate_memoryBarrier2() {
            #expect(
                Ignite.StructureType.memoryBarrier2.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_BARRIER_2.rawValue
            )
        }

        @Test("Validate bufferMemoryBarrier2")
        public func validate_bufferMemoryBarrier2() {
            #expect(
                Ignite.StructureType.bufferMemoryBarrier2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2.rawValue
            )
        }

        @Test("Validate imageMemoryBarrier2")
        public func validate_imageMemoryBarrier2() {
            #expect(
                Ignite.StructureType.imageMemoryBarrier2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2.rawValue
            )
        }

        @Test("Validate dependencyInfo")
        public func validate_dependencyInfo() {
            #expect(
                Ignite.StructureType.dependencyInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_DEPENDENCY_INFO.rawValue
            )
        }

        @Test("Validate submitInfo2")
        public func validate_submitInfo2() {
            #expect(
                Ignite.StructureType.submitInfo2.rawValue == CVulkan.VK_STRUCTURE_TYPE_SUBMIT_INFO_2.rawValue
            )
        }

        @Test("Validate semaphoreSubmitInfo")
        public func validate_semaphoreSubmitInfo() {
            #expect(
                Ignite.StructureType.semaphoreSubmitInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO.rawValue
            )
        }

        @Test("Validate commandBufferSubmitInfo")
        public func validate_commandBufferSubmitInfo() {
            #expect(
                Ignite.StructureType.commandBufferSubmitInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceSynchronization2Features")
        public func validate_physicalDeviceSynchronization2Features() {
            #expect(
                Ignite.StructureType.physicalDeviceSynchronization2Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceZeroInitializeWorkgroupMemoryFeatures")
        public func validate_physicalDeviceZeroInitializeWorkgroupMemoryFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceZeroInitializeWorkgroupMemoryFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceImageRobustnessFeatures")
        public func validate_physicalDeviceImageRobustnessFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceImageRobustnessFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES.rawValue
            )
        }

        @Test("Validate copyBufferInfo2")
        public func validate_copyBufferInfo2() {
            #expect(
                Ignite.StructureType.copyBufferInfo2.rawValue == CVulkan.VK_STRUCTURE_TYPE_COPY_BUFFER_INFO_2.rawValue
            )
        }

        @Test("Validate copyImageInfo2")
        public func validate_copyImageInfo2() {
            #expect(
                Ignite.StructureType.copyImageInfo2.rawValue == CVulkan.VK_STRUCTURE_TYPE_COPY_IMAGE_INFO_2.rawValue
            )
        }

        @Test("Validate copyBufferToImageInfo2")
        public func validate_copyBufferToImageInfo2() {
            #expect(
                Ignite.StructureType.copyBufferToImageInfo2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2.rawValue
            )
        }

        @Test("Validate copyImageToBufferInfo2")
        public func validate_copyImageToBufferInfo2() {
            #expect(
                Ignite.StructureType.copyImageToBufferInfo2.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2.rawValue
            )
        }

        @Test("Validate blitImageInfo2")
        public func validate_blitImageInfo2() {
            #expect(
                Ignite.StructureType.blitImageInfo2.rawValue == CVulkan.VK_STRUCTURE_TYPE_BLIT_IMAGE_INFO_2.rawValue
            )
        }

        @Test("Validate resolveImageInfo2")
        public func validate_resolveImageInfo2() {
            #expect(
                Ignite.StructureType.resolveImageInfo2.rawValue == CVulkan.VK_STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2.rawValue
            )
        }

        @Test("Validate bufferCopy2")
        public func validate_bufferCopy2() {
            #expect(
                Ignite.StructureType.bufferCopy2.rawValue == CVulkan.VK_STRUCTURE_TYPE_BUFFER_COPY_2.rawValue
            )
        }

        @Test("Validate imageCopy2")
        public func validate_imageCopy2() {
            #expect(
                Ignite.StructureType.imageCopy2.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_COPY_2.rawValue
            )
        }

        @Test("Validate imageBlit2")
        public func validate_imageBlit2() {
            #expect(
                Ignite.StructureType.imageBlit2.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_BLIT_2.rawValue
            )
        }

        @Test("Validate bufferImageCopy2")
        public func validate_bufferImageCopy2() {
            #expect(
                Ignite.StructureType.bufferImageCopy2.rawValue == CVulkan.VK_STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2.rawValue
            )
        }

        @Test("Validate imageResolve2")
        public func validate_imageResolve2() {
            #expect(
                Ignite.StructureType.imageResolve2.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_RESOLVE_2.rawValue
            )
        }

        @Test("Validate physicalDeviceSubgroupSizeControlProperties")
        public func validate_physicalDeviceSubgroupSizeControlProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceSubgroupSizeControlProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES.rawValue
            )
        }

        @Test("Validate pipelineShaderStageRequiredSubgroupSizeCreateInfo")
        public func validate_pipelineShaderStageRequiredSubgroupSizeCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineShaderStageRequiredSubgroupSizeCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceSubgroupSizeControlFeatures")
        public func validate_physicalDeviceSubgroupSizeControlFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceSubgroupSizeControlFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceInlineUniformBlockFeatures")
        public func validate_physicalDeviceInlineUniformBlockFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceInlineUniformBlockFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceInlineUniformBlockProperties")
        public func validate_physicalDeviceInlineUniformBlockProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceInlineUniformBlockProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES.rawValue
            )
        }

        @Test("Validate writeDescriptorSetInlineUniformBlock")
        public func validate_writeDescriptorSetInlineUniformBlock() {
            #expect(
                Ignite.StructureType.writeDescriptorSetInlineUniformBlock.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK.rawValue
            )
        }

        @Test("Validate descriptorPoolInlineUniformBlockCreateInfo")
        public func validate_descriptorPoolInlineUniformBlockCreateInfo() {
            #expect(
                Ignite.StructureType.descriptorPoolInlineUniformBlockCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceTextureCompressionAstcHdrFeatures")
        public func validate_physicalDeviceTextureCompressionAstcHdrFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceTextureCompressionAstcHdrFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES.rawValue
            )
        }

        @Test("Validate renderingInfo")
        public func validate_renderingInfo() {
            #expect(
                Ignite.StructureType.renderingInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_RENDERING_INFO.rawValue
            )
        }

        @Test("Validate renderingAttachmentInfo")
        public func validate_renderingAttachmentInfo() {
            #expect(
                Ignite.StructureType.renderingAttachmentInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO.rawValue
            )
        }

        @Test("Validate pipelineRenderingCreateInfo")
        public func validate_pipelineRenderingCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineRenderingCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceDynamicRenderingFeatures")
        public func validate_physicalDeviceDynamicRenderingFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceDynamicRenderingFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES.rawValue
            )
        }

        @Test("Validate commandBufferInheritanceRenderingInfo")
        public func validate_commandBufferInheritanceRenderingInfo() {
            #expect(
                Ignite.StructureType.commandBufferInheritanceRenderingInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderIntegerDotProductFeatures")
        public func validate_physicalDeviceShaderIntegerDotProductFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderIntegerDotProductFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderIntegerDotProductProperties")
        public func validate_physicalDeviceShaderIntegerDotProductProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderIntegerDotProductProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceTexelBufferAlignmentProperties")
        public func validate_physicalDeviceTexelBufferAlignmentProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceTexelBufferAlignmentProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES.rawValue
            )
        }

        @Test("Validate formatProperties3")
        public func validate_formatProperties3() {
            #expect(
                Ignite.StructureType.formatProperties3.rawValue == CVulkan.VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_3.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance4Features")
        public func validate_physicalDeviceMaintenance4Features() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance4Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance4Properties")
        public func validate_physicalDeviceMaintenance4Properties() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance4Properties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES.rawValue
            )
        }

        @Test("Validate deviceBufferMemoryRequirements")
        public func validate_deviceBufferMemoryRequirements() {
            #expect(
                Ignite.StructureType.deviceBufferMemoryRequirements.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS.rawValue
            )
        }

        @Test("Validate deviceImageMemoryRequirements")
        public func validate_deviceImageMemoryRequirements() {
            #expect(
                Ignite.StructureType.deviceImageMemoryRequirements.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkan14Features")
        public func validate_physicalDeviceVulkan14Features() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkan14Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_4_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkan14Properties")
        public func validate_physicalDeviceVulkan14Properties() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkan14Properties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_4_PROPERTIES.rawValue
            )
        }

        @Test("Validate deviceQueueGlobalPriorityCreateInfo")
        public func validate_deviceQueueGlobalPriorityCreateInfo() {
            #expect(
                Ignite.StructureType.deviceQueueGlobalPriorityCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceGlobalPriorityQueryFeatures")
        public func validate_physicalDeviceGlobalPriorityQueryFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceGlobalPriorityQueryFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES.rawValue
            )
        }

        @Test("Validate queueFamilyGlobalPriorityProperties")
        public func validate_queueFamilyGlobalPriorityProperties() {
            #expect(
                Ignite.StructureType.queueFamilyGlobalPriorityProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderSubgroupRotateFeatures")
        public func validate_physicalDeviceShaderSubgroupRotateFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderSubgroupRotateFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_ROTATE_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderFloatControls2Features")
        public func validate_physicalDeviceShaderFloatControls2Features() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderFloatControls2Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderExpectAssumeFeatures")
        public func validate_physicalDeviceShaderExpectAssumeFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderExpectAssumeFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EXPECT_ASSUME_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceLineRasterizationFeatures")
        public func validate_physicalDeviceLineRasterizationFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceLineRasterizationFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES.rawValue
            )
        }

        @Test("Validate pipelineRasterizationLineStateCreateInfo")
        public func validate_pipelineRasterizationLineStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineRasterizationLineStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceLineRasterizationProperties")
        public func validate_physicalDeviceLineRasterizationProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceLineRasterizationProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceVertexAttributeDivisorProperties")
        public func validate_physicalDeviceVertexAttributeDivisorProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceVertexAttributeDivisorProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES.rawValue
            )
        }

        @Test("Validate pipelineVertexInputDivisorStateCreateInfo")
        public func validate_pipelineVertexInputDivisorStateCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineVertexInputDivisorStateCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceVertexAttributeDivisorFeatures")
        public func validate_physicalDeviceVertexAttributeDivisorFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceVertexAttributeDivisorFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceIndexTypeUint8Features")
        public func validate_physicalDeviceIndexTypeUint8Features() {
            #expect(
                Ignite.StructureType.physicalDeviceIndexTypeUint8Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES.rawValue
            )
        }

        @Test("Validate memoryMapInfo")
        public func validate_memoryMapInfo() {
            #expect(
                Ignite.StructureType.memoryMapInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_MAP_INFO.rawValue
            )
        }

        @Test("Validate memoryUnmapInfo")
        public func validate_memoryUnmapInfo() {
            #expect(
                Ignite.StructureType.memoryUnmapInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_UNMAP_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance5Features")
        public func validate_physicalDeviceMaintenance5Features() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance5Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance5Properties")
        public func validate_physicalDeviceMaintenance5Properties() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance5Properties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_PROPERTIES.rawValue
            )
        }

        @Test("Validate renderingAreaInfo")
        public func validate_renderingAreaInfo() {
            #expect(
                Ignite.StructureType.renderingAreaInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_RENDERING_AREA_INFO.rawValue
            )
        }

        @Test("Validate deviceImageSubresourceInfo")
        public func validate_deviceImageSubresourceInfo() {
            #expect(
                Ignite.StructureType.deviceImageSubresourceInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_IMAGE_SUBRESOURCE_INFO.rawValue
            )
        }

        @Test("Validate subresourceLayout2")
        public func validate_subresourceLayout2() {
            #expect(
                Ignite.StructureType.subresourceLayout2.rawValue == CVulkan.VK_STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2.rawValue
            )
        }

        @Test("Validate imageSubresource2")
        public func validate_imageSubresource2() {
            #expect(
                Ignite.StructureType.imageSubresource2.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2.rawValue
            )
        }

        @Test("Validate pipelineCreateFlags2CreateInfo")
        public func validate_pipelineCreateFlags2CreateInfo() {
            #expect(
                Ignite.StructureType.pipelineCreateFlags2CreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_CREATE_FLAGS_2_CREATE_INFO.rawValue
            )
        }

        @Test("Validate bufferUsageFlags2CreateInfo")
        public func validate_bufferUsageFlags2CreateInfo() {
            #expect(
                Ignite.StructureType.bufferUsageFlags2CreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_USAGE_FLAGS_2_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDevicePushDescriptorProperties")
        public func validate_physicalDevicePushDescriptorProperties() {
            #expect(
                Ignite.StructureType.physicalDevicePushDescriptorProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceDynamicRenderingLocalReadFeatures")
        public func validate_physicalDeviceDynamicRenderingLocalReadFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceDynamicRenderingLocalReadFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_LOCAL_READ_FEATURES.rawValue
            )
        }

        @Test("Validate renderingAttachmentLocationInfo")
        public func validate_renderingAttachmentLocationInfo() {
            #expect(
                Ignite.StructureType.renderingAttachmentLocationInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_LOCATION_INFO.rawValue
            )
        }

        @Test("Validate renderingInputAttachmentIndexInfo")
        public func validate_renderingInputAttachmentIndexInfo() {
            #expect(
                Ignite.StructureType.renderingInputAttachmentIndexInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_INPUT_ATTACHMENT_INDEX_INFO.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance6Features")
        public func validate_physicalDeviceMaintenance6Features() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance6Features.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance6Properties")
        public func validate_physicalDeviceMaintenance6Properties() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance6Properties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_PROPERTIES.rawValue
            )
        }

        @Test("Validate bindMemoryStatus")
        public func validate_bindMemoryStatus() {
            #expect(
                Ignite.StructureType.bindMemoryStatus.rawValue == CVulkan.VK_STRUCTURE_TYPE_BIND_MEMORY_STATUS.rawValue
            )
        }

        @Test("Validate bindDescriptorSetsInfo")
        public func validate_bindDescriptorSetsInfo() {
            #expect(
                Ignite.StructureType.bindDescriptorSetsInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_DESCRIPTOR_SETS_INFO.rawValue
            )
        }

        @Test("Validate pushConstantsInfo")
        public func validate_pushConstantsInfo() {
            #expect(
                Ignite.StructureType.pushConstantsInfo.rawValue == CVulkan.VK_STRUCTURE_TYPE_PUSH_CONSTANTS_INFO.rawValue
            )
        }

        @Test("Validate pushDescriptorSetInfo")
        public func validate_pushDescriptorSetInfo() {
            #expect(
                Ignite.StructureType.pushDescriptorSetInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PUSH_DESCRIPTOR_SET_INFO.rawValue
            )
        }

        @Test("Validate pushDescriptorSetWithTemplateInfo")
        public func validate_pushDescriptorSetWithTemplateInfo() {
            #expect(
                Ignite.StructureType.pushDescriptorSetWithTemplateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PUSH_DESCRIPTOR_SET_WITH_TEMPLATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineProtectedAccessFeatures")
        public func validate_physicalDevicePipelineProtectedAccessFeatures() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineProtectedAccessFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES.rawValue
            )
        }

        @Test("Validate pipelineRobustnessCreateInfo")
        public func validate_pipelineRobustnessCreateInfo() {
            #expect(
                Ignite.StructureType.pipelineRobustnessCreateInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_ROBUSTNESS_CREATE_INFO.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineRobustnessFeatures")
        public func validate_physicalDevicePipelineRobustnessFeatures() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineRobustnessFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineRobustnessProperties")
        public func validate_physicalDevicePipelineRobustnessProperties() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineRobustnessProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES.rawValue
            )
        }

        @Test("Validate physicalDeviceHostImageCopyFeatures")
        public func validate_physicalDeviceHostImageCopyFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceHostImageCopyFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceHostImageCopyProperties")
        public func validate_physicalDeviceHostImageCopyProperties() {
            #expect(
                Ignite.StructureType.physicalDeviceHostImageCopyProperties.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_PROPERTIES.rawValue
            )
        }

        @Test("Validate memoryToImageCopy")
        public func validate_memoryToImageCopy() {
            #expect(
                Ignite.StructureType.memoryToImageCopy.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_TO_IMAGE_COPY.rawValue
            )
        }

        @Test("Validate imageToMemoryCopy")
        public func validate_imageToMemoryCopy() {
            #expect(
                Ignite.StructureType.imageToMemoryCopy.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_TO_MEMORY_COPY.rawValue
            )
        }

        @Test("Validate copyImageToMemoryInfo")
        public func validate_copyImageToMemoryInfo() {
            #expect(
                Ignite.StructureType.copyImageToMemoryInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_IMAGE_TO_MEMORY_INFO.rawValue
            )
        }

        @Test("Validate copyMemoryToImageInfo")
        public func validate_copyMemoryToImageInfo() {
            #expect(
                Ignite.StructureType.copyMemoryToImageInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_MEMORY_TO_IMAGE_INFO.rawValue
            )
        }

        @Test("Validate hostImageLayoutTransitionInfo")
        public func validate_hostImageLayoutTransitionInfo() {
            #expect(
                Ignite.StructureType.hostImageLayoutTransitionInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_HOST_IMAGE_LAYOUT_TRANSITION_INFO.rawValue
            )
        }

        @Test("Validate copyImageToImageInfo")
        public func validate_copyImageToImageInfo() {
            #expect(
                Ignite.StructureType.copyImageToImageInfo.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_IMAGE_TO_IMAGE_INFO.rawValue
            )
        }

        @Test("Validate subresourceHostMemcpySize")
        public func validate_subresourceHostMemcpySize() {
            #expect(
                Ignite.StructureType.subresourceHostMemcpySize.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBRESOURCE_HOST_MEMCPY_SIZE.rawValue
            )
        }

        @Test("Validate hostImageCopyDevicePerformanceQuery")
        public func validate_hostImageCopyDevicePerformanceQuery() {
            #expect(
                Ignite.StructureType.hostImageCopyDevicePerformanceQuery.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_HOST_IMAGE_COPY_DEVICE_PERFORMANCE_QUERY.rawValue
            )
        }

        @Test("Validate swapchainCreateInfo_KHR")
        public func validate_swapchainCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.swapchainCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate presentInfo_KHR")
        public func validate_presentInfo_KHR() {
            #expect(
                Ignite.StructureType.presentInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_PRESENT_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceGroupPresentCapabilities_KHR")
        public func validate_deviceGroupPresentCapabilities_KHR() {
            #expect(
                Ignite.StructureType.deviceGroupPresentCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate imageSwapchainCreateInfo_KHR")
        public func validate_imageSwapchainCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.imageSwapchainCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate bindImageMemorySwapchainInfo_KHR")
        public func validate_bindImageMemorySwapchainInfo_KHR() {
            #expect(
                Ignite.StructureType.bindImageMemorySwapchainInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR.rawValue
            )
        }

        @Test("Validate acquireNextImageInfo_KHR")
        public func validate_acquireNextImageInfo_KHR() {
            #expect(
                Ignite.StructureType.acquireNextImageInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceGroupPresentInfo_KHR")
        public func validate_deviceGroupPresentInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceGroupPresentInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceGroupSwapchainCreateInfo_KHR")
        public func validate_deviceGroupSwapchainCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceGroupSwapchainCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate displayModeCreateInfo_KHR")
        public func validate_displayModeCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.displayModeCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate displaySurfaceCreateInfo_KHR")
        public func validate_displaySurfaceCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.displaySurfaceCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate displayPresentInfo_KHR")
        public func validate_displayPresentInfo_KHR() {
            #expect(
                Ignite.StructureType.displayPresentInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR.rawValue
            )
        }

        #if PlatformXlib
            @Test("Validate xlibSurfaceCreateInfo_KHR")
            public func validate_xlibSurfaceCreateInfo_KHR() {
                #expect(
                    Ignite.StructureType.xlibSurfaceCreateInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate xlibSurfaceCreateInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_xlibSurfaceCreateInfo_KHR() {}
        #endif

        #if PlatformXcb
            @Test("Validate xcbSurfaceCreateInfo_KHR")
            public func validate_xcbSurfaceCreateInfo_KHR() {
                #expect(
                    Ignite.StructureType.xcbSurfaceCreateInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate xcbSurfaceCreateInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_xcbSurfaceCreateInfo_KHR() {}
        #endif

        #if PlatformWayland
            @Test("Validate waylandSurfaceCreateInfo_KHR")
            public func validate_waylandSurfaceCreateInfo_KHR() {
                #expect(
                    Ignite.StructureType.waylandSurfaceCreateInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate waylandSurfaceCreateInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_waylandSurfaceCreateInfo_KHR() {}
        #endif

        #if PlatformAndroid
            @Test("Validate androidSurfaceCreateInfo_KHR")
            public func validate_androidSurfaceCreateInfo_KHR() {
                #expect(
                    Ignite.StructureType.androidSurfaceCreateInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate androidSurfaceCreateInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_androidSurfaceCreateInfo_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate win32SurfaceCreateInfo_KHR")
            public func validate_win32SurfaceCreateInfo_KHR() {
                #expect(
                    Ignite.StructureType.win32SurfaceCreateInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate win32SurfaceCreateInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_win32SurfaceCreateInfo_KHR() {}
        #endif

        @Test("Validate debugReportCallbackCreateInfo_EXT")
        public func validate_debugReportCallbackCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.debugReportCallbackCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate pipelineRasterizationStateRasterizationOrder_AMD")
        public func validate_pipelineRasterizationStateRasterizationOrder_AMD() {
            #expect(
                Ignite.StructureType.pipelineRasterizationStateRasterizationOrder_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD.rawValue
            )
        }

        @Test("Validate debugMarkerObjectNameInfo_EXT")
        public func validate_debugMarkerObjectNameInfo_EXT() {
            #expect(
                Ignite.StructureType.debugMarkerObjectNameInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT.rawValue
            )
        }

        @Test("Validate debugMarkerObjectTagInfo_EXT")
        public func validate_debugMarkerObjectTagInfo_EXT() {
            #expect(
                Ignite.StructureType.debugMarkerObjectTagInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT.rawValue
            )
        }

        @Test("Validate debugMarkerMarkerInfo_EXT")
        public func validate_debugMarkerMarkerInfo_EXT() {
            #expect(
                Ignite.StructureType.debugMarkerMarkerInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT.rawValue
            )
        }

        @Test("Validate videoProfileInfo_KHR")
        public func validate_videoProfileInfo_KHR() {
            #expect(
                Ignite.StructureType.videoProfileInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_PROFILE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoCapabilities_KHR")
        public func validate_videoCapabilities_KHR() {
            #expect(
                Ignite.StructureType.videoCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoPictureResourceInfo_KHR")
        public func validate_videoPictureResourceInfo_KHR() {
            #expect(
                Ignite.StructureType.videoPictureResourceInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_PICTURE_RESOURCE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoSessionMemoryRequirements_KHR")
        public func validate_videoSessionMemoryRequirements_KHR() {
            #expect(
                Ignite.StructureType.videoSessionMemoryRequirements_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_SESSION_MEMORY_REQUIREMENTS_KHR.rawValue
            )
        }

        @Test("Validate bindVideoSessionMemoryInfo_KHR")
        public func validate_bindVideoSessionMemoryInfo_KHR() {
            #expect(
                Ignite.StructureType.bindVideoSessionMemoryInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_VIDEO_SESSION_MEMORY_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoSessionCreateInfo_KHR")
        public func validate_videoSessionCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoSessionCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_SESSION_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoSessionParametersCreateInfo_KHR")
        public func validate_videoSessionParametersCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoSessionParametersCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoSessionParametersUpdateInfo_KHR")
        public func validate_videoSessionParametersUpdateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoSessionParametersUpdateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_UPDATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoBeginCodingInfo_KHR")
        public func validate_videoBeginCodingInfo_KHR() {
            #expect(
                Ignite.StructureType.videoBeginCodingInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_BEGIN_CODING_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEndCodingInfo_KHR")
        public func validate_videoEndCodingInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEndCodingInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_END_CODING_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoCodingControlInfo_KHR")
        public func validate_videoCodingControlInfo_KHR() {
            #expect(
                Ignite.StructureType.videoCodingControlInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_CODING_CONTROL_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoReferenceSlotInfo_KHR")
        public func validate_videoReferenceSlotInfo_KHR() {
            #expect(
                Ignite.StructureType.videoReferenceSlotInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_REFERENCE_SLOT_INFO_KHR.rawValue
            )
        }

        @Test("Validate queueFamilyVideoProperties_KHR")
        public func validate_queueFamilyVideoProperties_KHR() {
            #expect(
                Ignite.StructureType.queueFamilyVideoProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUEUE_FAMILY_VIDEO_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate videoProfileListInfo_KHR")
        public func validate_videoProfileListInfo_KHR() {
            #expect(
                Ignite.StructureType.videoProfileListInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_PROFILE_LIST_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceVideoFormatInfo_KHR")
        public func validate_physicalDeviceVideoFormatInfo_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVideoFormatInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_FORMAT_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoFormatProperties_KHR")
        public func validate_videoFormatProperties_KHR() {
            #expect(
                Ignite.StructureType.videoFormatProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_FORMAT_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate queueFamilyQueryResultStatusProperties_KHR")
        public func validate_queueFamilyQueryResultStatusProperties_KHR() {
            #expect(
                Ignite.StructureType.queueFamilyQueryResultStatusProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUEUE_FAMILY_QUERY_RESULT_STATUS_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeInfo_KHR")
        public func validate_videoDecodeInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeCapabilities_KHR")
        public func validate_videoDecodeCapabilities_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeUsageInfo_KHR")
        public func validate_videoDecodeUsageInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeUsageInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_USAGE_INFO_KHR.rawValue
            )
        }

        @Test("Validate dedicatedAllocationImageCreateInfo_NV")
        public func validate_dedicatedAllocationImageCreateInfo_NV() {
            #expect(
                Ignite.StructureType.dedicatedAllocationImageCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate dedicatedAllocationBufferCreateInfo_NV")
        public func validate_dedicatedAllocationBufferCreateInfo_NV() {
            #expect(
                Ignite.StructureType.dedicatedAllocationBufferCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate dedicatedAllocationMemoryAllocateInfo_NV")
        public func validate_dedicatedAllocationMemoryAllocateInfo_NV() {
            #expect(
                Ignite.StructureType.dedicatedAllocationMemoryAllocateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceTransformFeedbackFeatures_EXT")
        public func validate_physicalDeviceTransformFeedbackFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceTransformFeedbackFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceTransformFeedbackProperties_EXT")
        public func validate_physicalDeviceTransformFeedbackProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceTransformFeedbackProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate pipelineRasterizationStateStreamCreateInfo_EXT")
        public func validate_pipelineRasterizationStateStreamCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineRasterizationStateStreamCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate cuModuleCreateInfo_NVX")
        public func validate_cuModuleCreateInfo_NVX() {
            #expect(
                Ignite.StructureType.cuModuleCreateInfo_NVX.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CU_MODULE_CREATE_INFO_NVX.rawValue
            )
        }

        @Test("Validate cuFunctionCreateInfo_NVX")
        public func validate_cuFunctionCreateInfo_NVX() {
            #expect(
                Ignite.StructureType.cuFunctionCreateInfo_NVX.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CU_FUNCTION_CREATE_INFO_NVX.rawValue
            )
        }

        @Test("Validate cuLaunchInfo_NVX")
        public func validate_cuLaunchInfo_NVX() {
            #expect(
                Ignite.StructureType.cuLaunchInfo_NVX.rawValue == CVulkan.VK_STRUCTURE_TYPE_CU_LAUNCH_INFO_NVX.rawValue
            )
        }

        @Test("Validate cuModuleTexturingModeCreateInfo_NVX")
        public func validate_cuModuleTexturingModeCreateInfo_NVX() {
            #expect(
                Ignite.StructureType.cuModuleTexturingModeCreateInfo_NVX.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CU_MODULE_TEXTURING_MODE_CREATE_INFO_NVX.rawValue
            )
        }

        @Test("Validate imageViewHandleInfo_NVX")
        public func validate_imageViewHandleInfo_NVX() {
            #expect(
                Ignite.StructureType.imageViewHandleInfo_NVX.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX.rawValue
            )
        }

        @Test("Validate imageViewAddressProperties_NVX")
        public func validate_imageViewAddressProperties_NVX() {
            #expect(
                Ignite.StructureType.imageViewAddressProperties_NVX.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_ADDRESS_PROPERTIES_NVX.rawValue
            )
        }

        @Test("Validate videoEncodeH264Capabilities_KHR")
        public func validate_videoEncodeH264Capabilities_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264Capabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264SessionParametersCreateInfo_KHR")
        public func validate_videoEncodeH264SessionParametersCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264SessionParametersCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264SessionParametersAddInfo_KHR")
        public func validate_videoEncodeH264SessionParametersAddInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264SessionParametersAddInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264PictureInfo_KHR")
        public func validate_videoEncodeH264PictureInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264PictureInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_PICTURE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264DpbSlotInfo_KHR")
        public func validate_videoEncodeH264DpbSlotInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264DpbSlotInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_DPB_SLOT_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264NaluSliceInfo_KHR")
        public func validate_videoEncodeH264NaluSliceInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264NaluSliceInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_NALU_SLICE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264GopRemainingFrameInfo_KHR")
        public func validate_videoEncodeH264GopRemainingFrameInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264GopRemainingFrameInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_GOP_REMAINING_FRAME_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264ProfileInfo_KHR")
        public func validate_videoEncodeH264ProfileInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264ProfileInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_PROFILE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264RateControlInfo_KHR")
        public func validate_videoEncodeH264RateControlInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264RateControlInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_RATE_CONTROL_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264RateControlLayerInfo_KHR")
        public func validate_videoEncodeH264RateControlLayerInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264RateControlLayerInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_RATE_CONTROL_LAYER_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264SessionCreateInfo_KHR")
        public func validate_videoEncodeH264SessionCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264SessionCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264QualityLevelProperties_KHR")
        public func validate_videoEncodeH264QualityLevelProperties_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264QualityLevelProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_QUALITY_LEVEL_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264SessionParametersGetInfo_KHR")
        public func validate_videoEncodeH264SessionParametersGetInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264SessionParametersGetInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_GET_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264SessionParametersFeedbackInfo_KHR")
        public func validate_videoEncodeH264SessionParametersFeedbackInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264SessionParametersFeedbackInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_FEEDBACK_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265Capabilities_KHR")
        public func validate_videoEncodeH265Capabilities_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265Capabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265SessionParametersCreateInfo_KHR")
        public func validate_videoEncodeH265SessionParametersCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265SessionParametersCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265SessionParametersAddInfo_KHR")
        public func validate_videoEncodeH265SessionParametersAddInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265SessionParametersAddInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265PictureInfo_KHR")
        public func validate_videoEncodeH265PictureInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265PictureInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_PICTURE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265DpbSlotInfo_KHR")
        public func validate_videoEncodeH265DpbSlotInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265DpbSlotInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_DPB_SLOT_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265NaluSliceSegmentInfo_KHR")
        public func validate_videoEncodeH265NaluSliceSegmentInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265NaluSliceSegmentInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_NALU_SLICE_SEGMENT_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265GopRemainingFrameInfo_KHR")
        public func validate_videoEncodeH265GopRemainingFrameInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265GopRemainingFrameInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_GOP_REMAINING_FRAME_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265ProfileInfo_KHR")
        public func validate_videoEncodeH265ProfileInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265ProfileInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_PROFILE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265RateControlInfo_KHR")
        public func validate_videoEncodeH265RateControlInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265RateControlInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265RateControlLayerInfo_KHR")
        public func validate_videoEncodeH265RateControlLayerInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265RateControlLayerInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_LAYER_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265SessionCreateInfo_KHR")
        public func validate_videoEncodeH265SessionCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265SessionCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265QualityLevelProperties_KHR")
        public func validate_videoEncodeH265QualityLevelProperties_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265QualityLevelProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_QUALITY_LEVEL_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265SessionParametersGetInfo_KHR")
        public func validate_videoEncodeH265SessionParametersGetInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265SessionParametersGetInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_GET_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265SessionParametersFeedbackInfo_KHR")
        public func validate_videoEncodeH265SessionParametersFeedbackInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265SessionParametersFeedbackInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_FEEDBACK_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH264Capabilities_KHR")
        public func validate_videoDecodeH264Capabilities_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH264Capabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH264PictureInfo_KHR")
        public func validate_videoDecodeH264PictureInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH264PictureInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_PICTURE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH264ProfileInfo_KHR")
        public func validate_videoDecodeH264ProfileInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH264ProfileInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_PROFILE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH264SessionParametersCreateInfo_KHR")
        public func validate_videoDecodeH264SessionParametersCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH264SessionParametersCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH264SessionParametersAddInfo_KHR")
        public func validate_videoDecodeH264SessionParametersAddInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH264SessionParametersAddInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH264DpbSlotInfo_KHR")
        public func validate_videoDecodeH264DpbSlotInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH264DpbSlotInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_DPB_SLOT_INFO_KHR.rawValue
            )
        }

        @Test("Validate textureLodGatherFormatProperties_AMD")
        public func validate_textureLodGatherFormatProperties_AMD() {
            #expect(
                Ignite.StructureType.textureLodGatherFormatProperties_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD.rawValue
            )
        }

        #if PlatformGgp
            @Test("Validate streamDescriptorSurfaceCreateInfo_GGP")
            public func validate_streamDescriptorSurfaceCreateInfo_GGP() {
                #expect(
                    Ignite.StructureType.streamDescriptorSurfaceCreateInfo_GGP.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP.rawValue
                )
            }
        #else
            @Test(
                "Validate streamDescriptorSurfaceCreateInfo_GGP",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_streamDescriptorSurfaceCreateInfo_GGP() {}
        #endif

        @Test("Validate physicalDeviceCornerSampledImageFeatures_NV")
        public func validate_physicalDeviceCornerSampledImageFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCornerSampledImageFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV.rawValue
            )
        }

        @Test("Validate externalMemoryImageCreateInfo_NV")
        public func validate_externalMemoryImageCreateInfo_NV() {
            #expect(
                Ignite.StructureType.externalMemoryImageCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate exportMemoryAllocateInfo_NV")
        public func validate_exportMemoryAllocateInfo_NV() {
            #expect(
                Ignite.StructureType.exportMemoryAllocateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV.rawValue
            )
        }

        #if PlatformWin32
            @Test("Validate importMemoryWin32HandleInfo_NV")
            public func validate_importMemoryWin32HandleInfo_NV() {
                #expect(
                    Ignite.StructureType.importMemoryWin32HandleInfo_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate importMemoryWin32HandleInfo_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importMemoryWin32HandleInfo_NV() {}
        #endif

        #if PlatformWin32
            @Test("Validate exportMemoryWin32HandleInfo_NV")
            public func validate_exportMemoryWin32HandleInfo_NV() {
                #expect(
                    Ignite.StructureType.exportMemoryWin32HandleInfo_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMemoryWin32HandleInfo_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMemoryWin32HandleInfo_NV() {}
        #endif

        #if PlatformWin32
            @Test("Validate win32KeyedMutexAcquireReleaseInfo_NV")
            public func validate_win32KeyedMutexAcquireReleaseInfo_NV() {
                #expect(
                    Ignite.StructureType.win32KeyedMutexAcquireReleaseInfo_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate win32KeyedMutexAcquireReleaseInfo_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_win32KeyedMutexAcquireReleaseInfo_NV() {}
        #endif

        @Test("Validate validationFlags_EXT")
        public func validate_validationFlags_EXT() {
            #expect(
                Ignite.StructureType.validationFlags_EXT.rawValue == CVulkan.VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT.rawValue
            )
        }

        #if PlatformVi
            @Test("Validate viSurfaceCreateInfo_NN")
            public func validate_viSurfaceCreateInfo_NN() {
                #expect(
                    Ignite.StructureType.viSurfaceCreateInfo_NN.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN.rawValue
                )
            }
        #else
            @Test(
                "Validate viSurfaceCreateInfo_NN",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_viSurfaceCreateInfo_NN() {}
        #endif

        @Test("Validate imageViewAstcDecodeMode_EXT")
        public func validate_imageViewAstcDecodeMode_EXT() {
            #expect(
                Ignite.StructureType.imageViewAstcDecodeMode_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceAstcDecodeFeatures_EXT")
        public func validate_physicalDeviceAstcDecodeFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceAstcDecodeFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT.rawValue
            )
        }

        #if PlatformWin32
            @Test("Validate importMemoryWin32HandleInfo_KHR")
            public func validate_importMemoryWin32HandleInfo_KHR() {
                #expect(
                    Ignite.StructureType.importMemoryWin32HandleInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate importMemoryWin32HandleInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importMemoryWin32HandleInfo_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate exportMemoryWin32HandleInfo_KHR")
            public func validate_exportMemoryWin32HandleInfo_KHR() {
                #expect(
                    Ignite.StructureType.exportMemoryWin32HandleInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMemoryWin32HandleInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMemoryWin32HandleInfo_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate memoryWin32HandleProperties_KHR")
            public func validate_memoryWin32HandleProperties_KHR() {
                #expect(
                    Ignite.StructureType.memoryWin32HandleProperties_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate memoryWin32HandleProperties_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_memoryWin32HandleProperties_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate memoryGetWin32HandleInfo_KHR")
            public func validate_memoryGetWin32HandleInfo_KHR() {
                #expect(
                    Ignite.StructureType.memoryGetWin32HandleInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate memoryGetWin32HandleInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_memoryGetWin32HandleInfo_KHR() {}
        #endif

        @Test("Validate importMemoryFdInfo_KHR")
        public func validate_importMemoryFdInfo_KHR() {
            #expect(
                Ignite.StructureType.importMemoryFdInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR.rawValue
            )
        }

        @Test("Validate memoryFdProperties_KHR")
        public func validate_memoryFdProperties_KHR() {
            #expect(
                Ignite.StructureType.memoryFdProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate memoryGetFdInfo_KHR")
        public func validate_memoryGetFdInfo_KHR() {
            #expect(
                Ignite.StructureType.memoryGetFdInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR.rawValue
            )
        }

        #if PlatformWin32
            @Test("Validate win32KeyedMutexAcquireReleaseInfo_KHR")
            public func validate_win32KeyedMutexAcquireReleaseInfo_KHR() {
                #expect(
                    Ignite.StructureType.win32KeyedMutexAcquireReleaseInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate win32KeyedMutexAcquireReleaseInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_win32KeyedMutexAcquireReleaseInfo_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate importSemaphoreWin32HandleInfo_KHR")
            public func validate_importSemaphoreWin32HandleInfo_KHR() {
                #expect(
                    Ignite.StructureType.importSemaphoreWin32HandleInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate importSemaphoreWin32HandleInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importSemaphoreWin32HandleInfo_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate exportSemaphoreWin32HandleInfo_KHR")
            public func validate_exportSemaphoreWin32HandleInfo_KHR() {
                #expect(
                    Ignite.StructureType.exportSemaphoreWin32HandleInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate exportSemaphoreWin32HandleInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportSemaphoreWin32HandleInfo_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate d3d12FenceSubmitInfo_KHR")
            public func validate_d3d12FenceSubmitInfo_KHR() {
                #expect(
                    Ignite.StructureType.d3d12FenceSubmitInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_D3D12_FENCE_SUBMIT_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate d3d12FenceSubmitInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_d3d12FenceSubmitInfo_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate semaphoreGetWin32HandleInfo_KHR")
            public func validate_semaphoreGetWin32HandleInfo_KHR() {
                #expect(
                    Ignite.StructureType.semaphoreGetWin32HandleInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate semaphoreGetWin32HandleInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_semaphoreGetWin32HandleInfo_KHR() {}
        #endif

        @Test("Validate importSemaphoreFdInfo_KHR")
        public func validate_importSemaphoreFdInfo_KHR() {
            #expect(
                Ignite.StructureType.importSemaphoreFdInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR.rawValue
            )
        }

        @Test("Validate semaphoreGetFdInfo_KHR")
        public func validate_semaphoreGetFdInfo_KHR() {
            #expect(
                Ignite.StructureType.semaphoreGetFdInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR.rawValue
            )
        }

        @Test("Validate commandBufferInheritanceConditionalRenderingInfo_EXT")
        public func validate_commandBufferInheritanceConditionalRenderingInfo_EXT() {
            #expect(
                Ignite.StructureType.commandBufferInheritanceConditionalRenderingInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceConditionalRenderingFeatures_EXT")
        public func validate_physicalDeviceConditionalRenderingFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceConditionalRenderingFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate conditionalRenderingBeginInfo_EXT")
        public func validate_conditionalRenderingBeginInfo_EXT() {
            #expect(
                Ignite.StructureType.conditionalRenderingBeginInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT.rawValue
            )
        }

        @Test("Validate presentRegions_KHR")
        public func validate_presentRegions_KHR() {
            #expect(
                Ignite.StructureType.presentRegions_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR.rawValue
            )
        }

        @Test("Validate pipelineViewportWScalingStateCreateInfo_NV")
        public func validate_pipelineViewportWScalingStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineViewportWScalingStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate surfaceCapabilities2_EXT")
        public func validate_surfaceCapabilities2_EXT() {
            #expect(
                Ignite.StructureType.surfaceCapabilities2_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT.rawValue
            )
        }

        @Test("Validate displayPowerInfo_EXT")
        public func validate_displayPowerInfo_EXT() {
            #expect(
                Ignite.StructureType.displayPowerInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT.rawValue
            )
        }

        @Test("Validate deviceEventInfo_EXT")
        public func validate_deviceEventInfo_EXT() {
            #expect(
                Ignite.StructureType.deviceEventInfo_EXT.rawValue == CVulkan.VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT.rawValue
            )
        }

        @Test("Validate displayEventInfo_EXT")
        public func validate_displayEventInfo_EXT() {
            #expect(
                Ignite.StructureType.displayEventInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT.rawValue
            )
        }

        @Test("Validate swapchainCounterCreateInfo_EXT")
        public func validate_swapchainCounterCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.swapchainCounterCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate presentTimesInfo_GOOGLE")
        public func validate_presentTimesInfo_GOOGLE() {
            #expect(
                Ignite.StructureType.presentTimesInfo_GOOGLE.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE.rawValue
            )
        }

        @Test("Validate physicalDeviceMultiviewPerViewAttributesProperties_NVX")
        public func validate_physicalDeviceMultiviewPerViewAttributesProperties_NVX() {
            #expect(
                Ignite.StructureType.physicalDeviceMultiviewPerViewAttributesProperties_NVX.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX.rawValue
            )
        }

        @Test("Validate multiviewPerViewAttributesInfo_NVX")
        public func validate_multiviewPerViewAttributesInfo_NVX() {
            #expect(
                Ignite.StructureType.multiviewPerViewAttributesInfo_NVX.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MULTIVIEW_PER_VIEW_ATTRIBUTES_INFO_NVX.rawValue
            )
        }

        @Test("Validate pipelineViewportSwizzleStateCreateInfo_NV")
        public func validate_pipelineViewportSwizzleStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineViewportSwizzleStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceDiscardRectangleProperties_EXT")
        public func validate_physicalDeviceDiscardRectangleProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDiscardRectangleProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate pipelineDiscardRectangleStateCreateInfo_EXT")
        public func validate_pipelineDiscardRectangleStateCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineDiscardRectangleStateCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceConservativeRasterizationProperties_EXT")
        public func validate_physicalDeviceConservativeRasterizationProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceConservativeRasterizationProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate pipelineRasterizationConservativeStateCreateInfo_EXT")
        public func validate_pipelineRasterizationConservativeStateCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineRasterizationConservativeStateCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDepthClipEnableFeatures_EXT")
        public func validate_physicalDeviceDepthClipEnableFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDepthClipEnableFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate pipelineRasterizationDepthClipStateCreateInfo_EXT")
        public func validate_pipelineRasterizationDepthClipStateCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineRasterizationDepthClipStateCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate hdrMetadata_EXT")
        public func validate_hdrMetadata_EXT() {
            #expect(
                Ignite.StructureType.hdrMetadata_EXT.rawValue == CVulkan.VK_STRUCTURE_TYPE_HDR_METADATA_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRelaxedLineRasterizationFeatures_IMG")
        public func validate_physicalDeviceRelaxedLineRasterizationFeatures_IMG() {
            #expect(
                Ignite.StructureType.physicalDeviceRelaxedLineRasterizationFeatures_IMG.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RELAXED_LINE_RASTERIZATION_FEATURES_IMG.rawValue
            )
        }

        @Test("Validate sharedPresentSurfaceCapabilities_KHR")
        public func validate_sharedPresentSurfaceCapabilities_KHR() {
            #expect(
                Ignite.StructureType.sharedPresentSurfaceCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR.rawValue
            )
        }

        #if PlatformWin32
            @Test("Validate importFenceWin32HandleInfo_KHR")
            public func validate_importFenceWin32HandleInfo_KHR() {
                #expect(
                    Ignite.StructureType.importFenceWin32HandleInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate importFenceWin32HandleInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importFenceWin32HandleInfo_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate exportFenceWin32HandleInfo_KHR")
            public func validate_exportFenceWin32HandleInfo_KHR() {
                #expect(
                    Ignite.StructureType.exportFenceWin32HandleInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate exportFenceWin32HandleInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportFenceWin32HandleInfo_KHR() {}
        #endif

        #if PlatformWin32
            @Test("Validate fenceGetWin32HandleInfo_KHR")
            public func validate_fenceGetWin32HandleInfo_KHR() {
                #expect(
                    Ignite.StructureType.fenceGetWin32HandleInfo_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate fenceGetWin32HandleInfo_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_fenceGetWin32HandleInfo_KHR() {}
        #endif

        @Test("Validate importFenceFdInfo_KHR")
        public func validate_importFenceFdInfo_KHR() {
            #expect(
                Ignite.StructureType.importFenceFdInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR.rawValue
            )
        }

        @Test("Validate fenceGetFdInfo_KHR")
        public func validate_fenceGetFdInfo_KHR() {
            #expect(
                Ignite.StructureType.fenceGetFdInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDevicePerformanceQueryFeatures_KHR")
        public func validate_physicalDevicePerformanceQueryFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDevicePerformanceQueryFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDevicePerformanceQueryProperties_KHR")
        public func validate_physicalDevicePerformanceQueryProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDevicePerformanceQueryProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate queryPoolPerformanceCreateInfo_KHR")
        public func validate_queryPoolPerformanceCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.queryPoolPerformanceCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate performanceQuerySubmitInfo_KHR")
        public func validate_performanceQuerySubmitInfo_KHR() {
            #expect(
                Ignite.StructureType.performanceQuerySubmitInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR.rawValue
            )
        }

        @Test("Validate acquireProfilingLockInfo_KHR")
        public func validate_acquireProfilingLockInfo_KHR() {
            #expect(
                Ignite.StructureType.acquireProfilingLockInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR.rawValue
            )
        }

        @Test("Validate performanceCounter_KHR")
        public func validate_performanceCounter_KHR() {
            #expect(
                Ignite.StructureType.performanceCounter_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR.rawValue
            )
        }

        @Test("Validate performanceCounterDescription_KHR")
        public func validate_performanceCounterDescription_KHR() {
            #expect(
                Ignite.StructureType.performanceCounterDescription_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceSurfaceInfo2_KHR")
        public func validate_physicalDeviceSurfaceInfo2_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceSurfaceInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate surfaceCapabilities2_KHR")
        public func validate_surfaceCapabilities2_KHR() {
            #expect(
                Ignite.StructureType.surfaceCapabilities2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR.rawValue
            )
        }

        @Test("Validate surfaceFormat2_KHR")
        public func validate_surfaceFormat2_KHR() {
            #expect(
                Ignite.StructureType.surfaceFormat2_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR.rawValue
            )
        }

        @Test("Validate displayProperties2_KHR")
        public func validate_displayProperties2_KHR() {
            #expect(
                Ignite.StructureType.displayProperties2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR.rawValue
            )
        }

        @Test("Validate displayPlaneProperties2_KHR")
        public func validate_displayPlaneProperties2_KHR() {
            #expect(
                Ignite.StructureType.displayPlaneProperties2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR.rawValue
            )
        }

        @Test("Validate displayModeProperties2_KHR")
        public func validate_displayModeProperties2_KHR() {
            #expect(
                Ignite.StructureType.displayModeProperties2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR.rawValue
            )
        }

        @Test("Validate displayPlaneInfo2_KHR")
        public func validate_displayPlaneInfo2_KHR() {
            #expect(
                Ignite.StructureType.displayPlaneInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate displayPlaneCapabilities2_KHR")
        public func validate_displayPlaneCapabilities2_KHR() {
            #expect(
                Ignite.StructureType.displayPlaneCapabilities2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR.rawValue
            )
        }

        #if PlatformIos
            @Test("Validate iosSurfaceCreateInfo_MVK")
            public func validate_iosSurfaceCreateInfo_MVK() {
                #expect(
                    Ignite.StructureType.iosSurfaceCreateInfo_MVK.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK.rawValue
                )
            }
        #else
            @Test(
                "Validate iosSurfaceCreateInfo_MVK",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_iosSurfaceCreateInfo_MVK() {}
        #endif

        #if PlatformMacos
            @Test("Validate macosSurfaceCreateInfo_MVK")
            public func validate_macosSurfaceCreateInfo_MVK() {
                #expect(
                    Ignite.StructureType.macosSurfaceCreateInfo_MVK.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK.rawValue
                )
            }
        #else
            @Test(
                "Validate macosSurfaceCreateInfo_MVK",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_macosSurfaceCreateInfo_MVK() {}
        #endif

        @Test("Validate debugUtilsObjectNameInfo_EXT")
        public func validate_debugUtilsObjectNameInfo_EXT() {
            #expect(
                Ignite.StructureType.debugUtilsObjectNameInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT.rawValue
            )
        }

        @Test("Validate debugUtilsObjectTagInfo_EXT")
        public func validate_debugUtilsObjectTagInfo_EXT() {
            #expect(
                Ignite.StructureType.debugUtilsObjectTagInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT.rawValue
            )
        }

        @Test("Validate debugUtilsLabel_EXT")
        public func validate_debugUtilsLabel_EXT() {
            #expect(
                Ignite.StructureType.debugUtilsLabel_EXT.rawValue == CVulkan.VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT.rawValue
            )
        }

        @Test("Validate debugUtilsMessengerCallbackData_EXT")
        public func validate_debugUtilsMessengerCallbackData_EXT() {
            #expect(
                Ignite.StructureType.debugUtilsMessengerCallbackData_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT.rawValue
            )
        }

        @Test("Validate debugUtilsMessengerCreateInfo_EXT")
        public func validate_debugUtilsMessengerCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.debugUtilsMessengerCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT.rawValue
            )
        }

        #if PlatformAndroid
            @Test("Validate androidHardwareBufferUsage_ANDROID")
            public func validate_androidHardwareBufferUsage_ANDROID() {
                #expect(
                    Ignite.StructureType.androidHardwareBufferUsage_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_USAGE_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate androidHardwareBufferUsage_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_androidHardwareBufferUsage_ANDROID() {}
        #endif

        #if PlatformAndroid
            @Test("Validate androidHardwareBufferProperties_ANDROID")
            public func validate_androidHardwareBufferProperties_ANDROID() {
                #expect(
                    Ignite.StructureType.androidHardwareBufferProperties_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate androidHardwareBufferProperties_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_androidHardwareBufferProperties_ANDROID() {}
        #endif

        #if PlatformAndroid
            @Test("Validate androidHardwareBufferFormatProperties_ANDROID")
            public func validate_androidHardwareBufferFormatProperties_ANDROID() {
                #expect(
                    Ignite.StructureType.androidHardwareBufferFormatProperties_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate androidHardwareBufferFormatProperties_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_androidHardwareBufferFormatProperties_ANDROID() {}
        #endif

        #if PlatformAndroid
            @Test("Validate importAndroidHardwareBufferInfo_ANDROID")
            public func validate_importAndroidHardwareBufferInfo_ANDROID() {
                #expect(
                    Ignite.StructureType.importAndroidHardwareBufferInfo_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate importAndroidHardwareBufferInfo_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importAndroidHardwareBufferInfo_ANDROID() {}
        #endif

        #if PlatformAndroid
            @Test("Validate memoryGetAndroidHardwareBufferInfo_ANDROID")
            public func validate_memoryGetAndroidHardwareBufferInfo_ANDROID() {
                #expect(
                    Ignite.StructureType.memoryGetAndroidHardwareBufferInfo_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate memoryGetAndroidHardwareBufferInfo_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_memoryGetAndroidHardwareBufferInfo_ANDROID() {}
        #endif

        #if PlatformAndroid
            @Test("Validate externalFormat_ANDROID")
            public func validate_externalFormat_ANDROID() {
                #expect(
                    Ignite.StructureType.externalFormat_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate externalFormat_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_externalFormat_ANDROID() {}
        #endif

        #if PlatformAndroid
            @Test("Validate androidHardwareBufferFormatProperties2_ANDROID")
            public func validate_androidHardwareBufferFormatProperties2_ANDROID() {
                #expect(
                    Ignite.StructureType.androidHardwareBufferFormatProperties2_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_2_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate androidHardwareBufferFormatProperties2_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_androidHardwareBufferFormatProperties2_ANDROID() {}
        #endif

        #if EnableProvisional
            @Test("Validate physicalDeviceShaderEnqueueFeatures_AMDX")
            public func validate_physicalDeviceShaderEnqueueFeatures_AMDX() {
                #expect(
                    Ignite.StructureType.physicalDeviceShaderEnqueueFeatures_AMDX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ENQUEUE_FEATURES_AMDX.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDeviceShaderEnqueueFeatures_AMDX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDeviceShaderEnqueueFeatures_AMDX() {}
        #endif

        #if EnableProvisional
            @Test("Validate physicalDeviceShaderEnqueueProperties_AMDX")
            public func validate_physicalDeviceShaderEnqueueProperties_AMDX() {
                #expect(
                    Ignite.StructureType.physicalDeviceShaderEnqueueProperties_AMDX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ENQUEUE_PROPERTIES_AMDX.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDeviceShaderEnqueueProperties_AMDX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDeviceShaderEnqueueProperties_AMDX() {}
        #endif

        #if EnableProvisional
            @Test("Validate executionGraphPipelineScratchSize_AMDX")
            public func validate_executionGraphPipelineScratchSize_AMDX() {
                #expect(
                    Ignite.StructureType.executionGraphPipelineScratchSize_AMDX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXECUTION_GRAPH_PIPELINE_SCRATCH_SIZE_AMDX.rawValue
                )
            }
        #else
            @Test(
                "Validate executionGraphPipelineScratchSize_AMDX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_executionGraphPipelineScratchSize_AMDX() {}
        #endif

        #if EnableProvisional
            @Test("Validate executionGraphPipelineCreateInfo_AMDX")
            public func validate_executionGraphPipelineCreateInfo_AMDX() {
                #expect(
                    Ignite.StructureType.executionGraphPipelineCreateInfo_AMDX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXECUTION_GRAPH_PIPELINE_CREATE_INFO_AMDX.rawValue
                )
            }
        #else
            @Test(
                "Validate executionGraphPipelineCreateInfo_AMDX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_executionGraphPipelineCreateInfo_AMDX() {}
        #endif

        #if EnableProvisional
            @Test("Validate pipelineShaderStageNodeCreateInfo_AMDX")
            public func validate_pipelineShaderStageNodeCreateInfo_AMDX() {
                #expect(
                    Ignite.StructureType.pipelineShaderStageNodeCreateInfo_AMDX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_NODE_CREATE_INFO_AMDX.rawValue
                )
            }
        #else
            @Test(
                "Validate pipelineShaderStageNodeCreateInfo_AMDX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_pipelineShaderStageNodeCreateInfo_AMDX() {}
        #endif

        @Test("Validate attachmentSampleCountInfo_AMD")
        public func validate_attachmentSampleCountInfo_AMD() {
            #expect(
                Ignite.StructureType.attachmentSampleCountInfo_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_AMD.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderBfloat16Features_KHR")
        public func validate_physicalDeviceShaderBfloat16Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderBfloat16Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_BFLOAT16_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate sampleLocationsInfo_EXT")
        public func validate_sampleLocationsInfo_EXT() {
            #expect(
                Ignite.StructureType.sampleLocationsInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT.rawValue
            )
        }

        @Test("Validate renderPassSampleLocationsBeginInfo_EXT")
        public func validate_renderPassSampleLocationsBeginInfo_EXT() {
            #expect(
                Ignite.StructureType.renderPassSampleLocationsBeginInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT.rawValue
            )
        }

        @Test("Validate pipelineSampleLocationsStateCreateInfo_EXT")
        public func validate_pipelineSampleLocationsStateCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineSampleLocationsStateCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceSampleLocationsProperties_EXT")
        public func validate_physicalDeviceSampleLocationsProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceSampleLocationsProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate multisampleProperties_EXT")
        public func validate_multisampleProperties_EXT() {
            #expect(
                Ignite.StructureType.multisampleProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceBlendOperationAdvancedFeatures_EXT")
        public func validate_physicalDeviceBlendOperationAdvancedFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceBlendOperationAdvancedFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceBlendOperationAdvancedProperties_EXT")
        public func validate_physicalDeviceBlendOperationAdvancedProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceBlendOperationAdvancedProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate pipelineColorBlendAdvancedStateCreateInfo_EXT")
        public func validate_pipelineColorBlendAdvancedStateCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineColorBlendAdvancedStateCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate pipelineCoverageToColorStateCreateInfo_NV")
        public func validate_pipelineCoverageToColorStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineCoverageToColorStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate writeDescriptorSetAccelerationStructure_KHR")
        public func validate_writeDescriptorSetAccelerationStructure_KHR() {
            #expect(
                Ignite.StructureType.writeDescriptorSetAccelerationStructure_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureBuildGeometryInfo_KHR")
        public func validate_accelerationStructureBuildGeometryInfo_KHR() {
            #expect(
                Ignite.StructureType.accelerationStructureBuildGeometryInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureDeviceAddressInfo_KHR")
        public func validate_accelerationStructureDeviceAddressInfo_KHR() {
            #expect(
                Ignite.StructureType.accelerationStructureDeviceAddressInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureGeometryAabbsData_KHR")
        public func validate_accelerationStructureGeometryAabbsData_KHR() {
            #expect(
                Ignite.StructureType.accelerationStructureGeometryAabbsData_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureGeometryInstancesData_KHR")
        public func validate_accelerationStructureGeometryInstancesData_KHR() {
            #expect(
                Ignite.StructureType.accelerationStructureGeometryInstancesData_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureGeometryTrianglesData_KHR")
        public func validate_accelerationStructureGeometryTrianglesData_KHR() {
            #expect(
                Ignite.StructureType.accelerationStructureGeometryTrianglesData_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureGeometry_KHR")
        public func validate_accelerationStructureGeometry_KHR() {
            #expect(
                Ignite.StructureType.accelerationStructureGeometry_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureVersionInfo_KHR")
        public func validate_accelerationStructureVersionInfo_KHR() {
            #expect(
                Ignite.StructureType.accelerationStructureVersionInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_VERSION_INFO_KHR.rawValue
            )
        }

        @Test("Validate copyAccelerationStructureInfo_KHR")
        public func validate_copyAccelerationStructureInfo_KHR() {
            #expect(
                Ignite.StructureType.copyAccelerationStructureInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_INFO_KHR.rawValue
            )
        }

        @Test("Validate copyAccelerationStructureToMemoryInfo_KHR")
        public func validate_copyAccelerationStructureToMemoryInfo_KHR() {
            #expect(
                Ignite.StructureType.copyAccelerationStructureToMemoryInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR.rawValue
            )
        }

        @Test("Validate copyMemoryToAccelerationStructureInfo_KHR")
        public func validate_copyMemoryToAccelerationStructureInfo_KHR() {
            #expect(
                Ignite.StructureType.copyMemoryToAccelerationStructureInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceAccelerationStructureFeatures_KHR")
        public func validate_physicalDeviceAccelerationStructureFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceAccelerationStructureFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceAccelerationStructureProperties_KHR")
        public func validate_physicalDeviceAccelerationStructureProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceAccelerationStructureProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureCreateInfo_KHR")
        public func validate_accelerationStructureCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.accelerationStructureCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureBuildSizesInfo_KHR")
        public func validate_accelerationStructureBuildSizesInfo_KHR() {
            #expect(
                Ignite.StructureType.accelerationStructureBuildSizesInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_SIZES_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingPipelineFeatures_KHR")
        public func validate_physicalDeviceRayTracingPipelineFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingPipelineFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingPipelineProperties_KHR")
        public func validate_physicalDeviceRayTracingPipelineProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingPipelineProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate rayTracingPipelineCreateInfo_KHR")
        public func validate_rayTracingPipelineCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.rayTracingPipelineCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate rayTracingShaderGroupCreateInfo_KHR")
        public func validate_rayTracingShaderGroupCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.rayTracingShaderGroupCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate rayTracingPipelineInterfaceCreateInfo_KHR")
        public func validate_rayTracingPipelineInterfaceCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.rayTracingPipelineInterfaceCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceRayQueryFeatures_KHR")
        public func validate_physicalDeviceRayQueryFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceRayQueryFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_QUERY_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate pipelineCoverageModulationStateCreateInfo_NV")
        public func validate_pipelineCoverageModulationStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineCoverageModulationStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderSmBuiltinsFeatures_NV")
        public func validate_physicalDeviceShaderSmBuiltinsFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderSmBuiltinsFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderSmBuiltinsProperties_NV")
        public func validate_physicalDeviceShaderSmBuiltinsProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderSmBuiltinsProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate drmFormatModifierPropertiesList_EXT")
        public func validate_drmFormatModifierPropertiesList_EXT() {
            #expect(
                Ignite.StructureType.drmFormatModifierPropertiesList_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceImageDrmFormatModifierInfo_EXT")
        public func validate_physicalDeviceImageDrmFormatModifierInfo_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceImageDrmFormatModifierInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT.rawValue
            )
        }

        @Test("Validate imageDrmFormatModifierListCreateInfo_EXT")
        public func validate_imageDrmFormatModifierListCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.imageDrmFormatModifierListCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate imageDrmFormatModifierExplicitCreateInfo_EXT")
        public func validate_imageDrmFormatModifierExplicitCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.imageDrmFormatModifierExplicitCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate imageDrmFormatModifierProperties_EXT")
        public func validate_imageDrmFormatModifierProperties_EXT() {
            #expect(
                Ignite.StructureType.imageDrmFormatModifierProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate drmFormatModifierPropertiesList2_EXT")
        public func validate_drmFormatModifierPropertiesList2_EXT() {
            #expect(
                Ignite.StructureType.drmFormatModifierPropertiesList2_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_2_EXT.rawValue
            )
        }

        @Test("Validate validationCacheCreateInfo_EXT")
        public func validate_validationCacheCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.validationCacheCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate shaderModuleValidationCacheCreateInfo_EXT")
        public func validate_shaderModuleValidationCacheCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.shaderModuleValidationCacheCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate physicalDevicePortabilitySubsetFeatures_KHR")
            public func validate_physicalDevicePortabilitySubsetFeatures_KHR() {
                #expect(
                    Ignite.StructureType.physicalDevicePortabilitySubsetFeatures_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDevicePortabilitySubsetFeatures_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDevicePortabilitySubsetFeatures_KHR() {}
        #endif

        #if EnableProvisional
            @Test("Validate physicalDevicePortabilitySubsetProperties_KHR")
            public func validate_physicalDevicePortabilitySubsetProperties_KHR() {
                #expect(
                    Ignite.StructureType.physicalDevicePortabilitySubsetProperties_KHR.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDevicePortabilitySubsetProperties_KHR",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDevicePortabilitySubsetProperties_KHR() {}
        #endif

        @Test("Validate pipelineViewportShadingRateImageStateCreateInfo_NV")
        public func validate_pipelineViewportShadingRateImageStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineViewportShadingRateImageStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceShadingRateImageFeatures_NV")
        public func validate_physicalDeviceShadingRateImageFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceShadingRateImageFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceShadingRateImageProperties_NV")
        public func validate_physicalDeviceShadingRateImageProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceShadingRateImageProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate pipelineViewportCoarseSampleOrderStateCreateInfo_NV")
        public func validate_pipelineViewportCoarseSampleOrderStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineViewportCoarseSampleOrderStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate rayTracingPipelineCreateInfo_NV")
        public func validate_rayTracingPipelineCreateInfo_NV() {
            #expect(
                Ignite.StructureType.rayTracingPipelineCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureCreateInfo_NV")
        public func validate_accelerationStructureCreateInfo_NV() {
            #expect(
                Ignite.StructureType.accelerationStructureCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate geometry_NV")
        public func validate_geometry_NV() {
            #expect(
                Ignite.StructureType.geometry_NV.rawValue == CVulkan.VK_STRUCTURE_TYPE_GEOMETRY_NV.rawValue
            )
        }

        @Test("Validate geometryTriangles_NV")
        public func validate_geometryTriangles_NV() {
            #expect(
                Ignite.StructureType.geometryTriangles_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV.rawValue
            )
        }

        @Test("Validate geometryAabb_NV")
        public func validate_geometryAabb_NV() {
            #expect(
                Ignite.StructureType.geometryAabb_NV.rawValue == CVulkan.VK_STRUCTURE_TYPE_GEOMETRY_AABB_NV.rawValue
            )
        }

        @Test("Validate bindAccelerationStructureMemoryInfo_NV")
        public func validate_bindAccelerationStructureMemoryInfo_NV() {
            #expect(
                Ignite.StructureType.bindAccelerationStructureMemoryInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV.rawValue
            )
        }

        @Test("Validate writeDescriptorSetAccelerationStructure_NV")
        public func validate_writeDescriptorSetAccelerationStructure_NV() {
            #expect(
                Ignite.StructureType.writeDescriptorSetAccelerationStructure_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureMemoryRequirementsInfo_NV")
        public func validate_accelerationStructureMemoryRequirementsInfo_NV() {
            #expect(
                Ignite.StructureType.accelerationStructureMemoryRequirementsInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingProperties_NV")
        public func validate_physicalDeviceRayTracingProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate rayTracingShaderGroupCreateInfo_NV")
        public func validate_rayTracingShaderGroupCreateInfo_NV() {
            #expect(
                Ignite.StructureType.rayTracingShaderGroupCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureInfo_NV")
        public func validate_accelerationStructureInfo_NV() {
            #expect(
                Ignite.StructureType.accelerationStructureInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceRepresentativeFragmentTestFeatures_NV")
        public func validate_physicalDeviceRepresentativeFragmentTestFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceRepresentativeFragmentTestFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV.rawValue
            )
        }

        @Test("Validate pipelineRepresentativeFragmentTestStateCreateInfo_NV")
        public func validate_pipelineRepresentativeFragmentTestStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineRepresentativeFragmentTestStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceImageViewImageFormatInfo_EXT")
        public func validate_physicalDeviceImageViewImageFormatInfo_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceImageViewImageFormatInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT.rawValue
            )
        }

        @Test("Validate filterCubicImageViewImageFormatProperties_EXT")
        public func validate_filterCubicImageViewImageFormatProperties_EXT() {
            #expect(
                Ignite.StructureType.filterCubicImageViewImageFormatProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate importMemoryHostPointerInfo_EXT")
        public func validate_importMemoryHostPointerInfo_EXT() {
            #expect(
                Ignite.StructureType.importMemoryHostPointerInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT.rawValue
            )
        }

        @Test("Validate memoryHostPointerProperties_EXT")
        public func validate_memoryHostPointerProperties_EXT() {
            #expect(
                Ignite.StructureType.memoryHostPointerProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalMemoryHostProperties_EXT")
        public func validate_physicalDeviceExternalMemoryHostProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalMemoryHostProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderClockFeatures_KHR")
        public func validate_physicalDeviceShaderClockFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderClockFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate pipelineCompilerControlCreateInfo_AMD")
        public func validate_pipelineCompilerControlCreateInfo_AMD() {
            #expect(
                Ignite.StructureType.pipelineCompilerControlCreateInfo_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderCoreProperties_AMD")
        public func validate_physicalDeviceShaderCoreProperties_AMD() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderCoreProperties_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD.rawValue
            )
        }

        @Test("Validate videoDecodeH265Capabilities_KHR")
        public func validate_videoDecodeH265Capabilities_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH265Capabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH265SessionParametersCreateInfo_KHR")
        public func validate_videoDecodeH265SessionParametersCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH265SessionParametersCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH265SessionParametersAddInfo_KHR")
        public func validate_videoDecodeH265SessionParametersAddInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH265SessionParametersAddInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH265ProfileInfo_KHR")
        public func validate_videoDecodeH265ProfileInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH265ProfileInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_PROFILE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH265PictureInfo_KHR")
        public func validate_videoDecodeH265PictureInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH265PictureInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_PICTURE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH265DpbSlotInfo_KHR")
        public func validate_videoDecodeH265DpbSlotInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH265DpbSlotInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_DPB_SLOT_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceMemoryOverallocationCreateInfo_AMD")
        public func validate_deviceMemoryOverallocationCreateInfo_AMD() {
            #expect(
                Ignite.StructureType.deviceMemoryOverallocationCreateInfo_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD.rawValue
            )
        }

        @Test("Validate physicalDeviceVertexAttributeDivisorProperties_EXT")
        public func validate_physicalDeviceVertexAttributeDivisorProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceVertexAttributeDivisorProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT.rawValue
            )
        }

        #if PlatformGgp
            @Test("Validate presentFrameToken_GGP")
            public func validate_presentFrameToken_GGP() {
                #expect(
                    Ignite.StructureType.presentFrameToken_GGP.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PRESENT_FRAME_TOKEN_GGP.rawValue
                )
            }
        #else
            @Test(
                "Validate presentFrameToken_GGP",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_presentFrameToken_GGP() {}
        #endif

        @Test("Validate physicalDeviceMeshShaderFeatures_NV")
        public func validate_physicalDeviceMeshShaderFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceMeshShaderFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceMeshShaderProperties_NV")
        public func validate_physicalDeviceMeshShaderProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceMeshShaderProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderImageFootprintFeatures_NV")
        public func validate_physicalDeviceShaderImageFootprintFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderImageFootprintFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV.rawValue
            )
        }

        @Test("Validate pipelineViewportExclusiveScissorStateCreateInfo_NV")
        public func validate_pipelineViewportExclusiveScissorStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineViewportExclusiveScissorStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceExclusiveScissorFeatures_NV")
        public func validate_physicalDeviceExclusiveScissorFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceExclusiveScissorFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV.rawValue
            )
        }

        @Test("Validate checkpointData_NV")
        public func validate_checkpointData_NV() {
            #expect(
                Ignite.StructureType.checkpointData_NV.rawValue == CVulkan.VK_STRUCTURE_TYPE_CHECKPOINT_DATA_NV.rawValue
            )
        }

        @Test("Validate queueFamilyCheckpointProperties_NV")
        public func validate_queueFamilyCheckpointProperties_NV() {
            #expect(
                Ignite.StructureType.queueFamilyCheckpointProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate queueFamilyCheckpointProperties2_NV")
        public func validate_queueFamilyCheckpointProperties2_NV() {
            #expect(
                Ignite.StructureType.queueFamilyCheckpointProperties2_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_2_NV.rawValue
            )
        }

        @Test("Validate checkpointData2_NV")
        public func validate_checkpointData2_NV() {
            #expect(
                Ignite.StructureType.checkpointData2_NV.rawValue == CVulkan.VK_STRUCTURE_TYPE_CHECKPOINT_DATA_2_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderIntegerFunctions2Features_INTEL")
        public func validate_physicalDeviceShaderIntegerFunctions2Features_INTEL() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderIntegerFunctions2Features_INTEL.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL.rawValue
            )
        }

        @Test("Validate queryPoolPerformanceQueryCreateInfo_INTEL")
        public func validate_queryPoolPerformanceQueryCreateInfo_INTEL() {
            #expect(
                Ignite.StructureType.queryPoolPerformanceQueryCreateInfo_INTEL.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL.rawValue
            )
        }

        @Test("Validate initializePerformanceApiInfo_INTEL")
        public func validate_initializePerformanceApiInfo_INTEL() {
            #expect(
                Ignite.StructureType.initializePerformanceApiInfo_INTEL.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL.rawValue
            )
        }

        @Test("Validate performanceMarkerInfo_INTEL")
        public func validate_performanceMarkerInfo_INTEL() {
            #expect(
                Ignite.StructureType.performanceMarkerInfo_INTEL.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL.rawValue
            )
        }

        @Test("Validate performanceStreamMarkerInfo_INTEL")
        public func validate_performanceStreamMarkerInfo_INTEL() {
            #expect(
                Ignite.StructureType.performanceStreamMarkerInfo_INTEL.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL.rawValue
            )
        }

        @Test("Validate performanceOverrideInfo_INTEL")
        public func validate_performanceOverrideInfo_INTEL() {
            #expect(
                Ignite.StructureType.performanceOverrideInfo_INTEL.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL.rawValue
            )
        }

        @Test("Validate performanceConfigurationAcquireInfo_INTEL")
        public func validate_performanceConfigurationAcquireInfo_INTEL() {
            #expect(
                Ignite.StructureType.performanceConfigurationAcquireInfo_INTEL.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL.rawValue
            )
        }

        @Test("Validate physicalDevicePciBusInfoProperties_EXT")
        public func validate_physicalDevicePciBusInfoProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePciBusInfoProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate displayNativeHdrSurfaceCapabilities_AMD")
        public func validate_displayNativeHdrSurfaceCapabilities_AMD() {
            #expect(
                Ignite.StructureType.displayNativeHdrSurfaceCapabilities_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD.rawValue
            )
        }

        @Test("Validate swapchainDisplayNativeHdrCreateInfo_AMD")
        public func validate_swapchainDisplayNativeHdrCreateInfo_AMD() {
            #expect(
                Ignite.StructureType.swapchainDisplayNativeHdrCreateInfo_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD.rawValue
            )
        }

        #if PlatformFuchsia
            @Test("Validate imagepipeSurfaceCreateInfo_FUCHSIA")
            public func validate_imagepipeSurfaceCreateInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.imagepipeSurfaceCreateInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate imagepipeSurfaceCreateInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_imagepipeSurfaceCreateInfo_FUCHSIA() {}
        #endif

        #if PlatformMetal
            @Test("Validate metalSurfaceCreateInfo_EXT")
            public func validate_metalSurfaceCreateInfo_EXT() {
                #expect(
                    Ignite.StructureType.metalSurfaceCreateInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate metalSurfaceCreateInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_metalSurfaceCreateInfo_EXT() {}
        #endif

        @Test("Validate physicalDeviceFragmentDensityMapFeatures_EXT")
        public func validate_physicalDeviceFragmentDensityMapFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentDensityMapFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentDensityMapProperties_EXT")
        public func validate_physicalDeviceFragmentDensityMapProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentDensityMapProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate renderPassFragmentDensityMapCreateInfo_EXT")
        public func validate_renderPassFragmentDensityMapCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.renderPassFragmentDensityMapCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate renderingFragmentDensityMapAttachmentInfo_EXT")
        public func validate_renderingFragmentDensityMapAttachmentInfo_EXT() {
            #expect(
                Ignite.StructureType.renderingFragmentDensityMapAttachmentInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_INFO_EXT.rawValue
            )
        }

        @Test("Validate fragmentShadingRateAttachmentInfo_KHR")
        public func validate_fragmentShadingRateAttachmentInfo_KHR() {
            #expect(
                Ignite.StructureType.fragmentShadingRateAttachmentInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR.rawValue
            )
        }

        @Test("Validate pipelineFragmentShadingRateStateCreateInfo_KHR")
        public func validate_pipelineFragmentShadingRateStateCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineFragmentShadingRateStateCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_STATE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentShadingRateProperties_KHR")
        public func validate_physicalDeviceFragmentShadingRateProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentShadingRateProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentShadingRateFeatures_KHR")
        public func validate_physicalDeviceFragmentShadingRateFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentShadingRateFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentShadingRate_KHR")
        public func validate_physicalDeviceFragmentShadingRate_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentShadingRate_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_KHR.rawValue
            )
        }

        @Test("Validate renderingFragmentShadingRateAttachmentInfo_KHR")
        public func validate_renderingFragmentShadingRateAttachmentInfo_KHR() {
            #expect(
                Ignite.StructureType.renderingFragmentShadingRateAttachmentInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderCoreProperties2_AMD")
        public func validate_physicalDeviceShaderCoreProperties2_AMD() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderCoreProperties2_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD.rawValue
            )
        }

        @Test("Validate physicalDeviceCoherentMemoryFeatures_AMD")
        public func validate_physicalDeviceCoherentMemoryFeatures_AMD() {
            #expect(
                Ignite.StructureType.physicalDeviceCoherentMemoryFeatures_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderImageAtomicInt64Features_EXT")
        public func validate_physicalDeviceShaderImageAtomicInt64Features_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderImageAtomicInt64Features_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_ATOMIC_INT64_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderQuadControlFeatures_KHR")
        public func validate_physicalDeviceShaderQuadControlFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderQuadControlFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_QUAD_CONTROL_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMemoryBudgetProperties_EXT")
        public func validate_physicalDeviceMemoryBudgetProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMemoryBudgetProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMemoryPriorityFeatures_EXT")
        public func validate_physicalDeviceMemoryPriorityFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMemoryPriorityFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate memoryPriorityAllocateInfo_EXT")
        public func validate_memoryPriorityAllocateInfo_EXT() {
            #expect(
                Ignite.StructureType.memoryPriorityAllocateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate surfaceProtectedCapabilities_KHR")
        public func validate_surfaceProtectedCapabilities_KHR() {
            #expect(
                Ignite.StructureType.surfaceProtectedCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceDedicatedAllocationImageAliasingFeatures_NV")
        public func validate_physicalDeviceDedicatedAllocationImageAliasingFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceDedicatedAllocationImageAliasingFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceBufferDeviceAddressFeatures_EXT")
        public func validate_physicalDeviceBufferDeviceAddressFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceBufferDeviceAddressFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate bufferDeviceAddressCreateInfo_EXT")
        public func validate_bufferDeviceAddressCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.bufferDeviceAddressCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate validationFeatures_EXT")
        public func validate_validationFeatures_EXT() {
            #expect(
                Ignite.StructureType.validationFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePresentWaitFeatures_KHR")
        public func validate_physicalDevicePresentWaitFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDevicePresentWaitFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_WAIT_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceCooperativeMatrixFeatures_NV")
        public func validate_physicalDeviceCooperativeMatrixFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCooperativeMatrixFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV.rawValue
            )
        }

        @Test("Validate cooperativeMatrixProperties_NV")
        public func validate_cooperativeMatrixProperties_NV() {
            #expect(
                Ignite.StructureType.cooperativeMatrixProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceCooperativeMatrixProperties_NV")
        public func validate_physicalDeviceCooperativeMatrixProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCooperativeMatrixProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceCoverageReductionModeFeatures_NV")
        public func validate_physicalDeviceCoverageReductionModeFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCoverageReductionModeFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV.rawValue
            )
        }

        @Test("Validate pipelineCoverageReductionStateCreateInfo_NV")
        public func validate_pipelineCoverageReductionStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineCoverageReductionStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate framebufferMixedSamplesCombination_NV")
        public func validate_framebufferMixedSamplesCombination_NV() {
            #expect(
                Ignite.StructureType.framebufferMixedSamplesCombination_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentShaderInterlockFeatures_EXT")
        public func validate_physicalDeviceFragmentShaderInterlockFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentShaderInterlockFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceYcbcrImageArraysFeatures_EXT")
        public func validate_physicalDeviceYcbcrImageArraysFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceYcbcrImageArraysFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceProvokingVertexFeatures_EXT")
        public func validate_physicalDeviceProvokingVertexFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceProvokingVertexFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate pipelineRasterizationProvokingVertexStateCreateInfo_EXT")
        public func validate_pipelineRasterizationProvokingVertexStateCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineRasterizationProvokingVertexStateCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_PROVOKING_VERTEX_STATE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceProvokingVertexProperties_EXT")
        public func validate_physicalDeviceProvokingVertexProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceProvokingVertexProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_PROPERTIES_EXT.rawValue
            )
        }

        #if PlatformWin32
            @Test("Validate surfaceFullScreenExclusiveInfo_EXT")
            public func validate_surfaceFullScreenExclusiveInfo_EXT() {
                #expect(
                    Ignite.StructureType.surfaceFullScreenExclusiveInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate surfaceFullScreenExclusiveInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_surfaceFullScreenExclusiveInfo_EXT() {}
        #endif

        #if PlatformWin32
            @Test("Validate surfaceCapabilitiesFullScreenExclusive_EXT")
            public func validate_surfaceCapabilitiesFullScreenExclusive_EXT() {
                #expect(
                    Ignite.StructureType.surfaceCapabilitiesFullScreenExclusive_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate surfaceCapabilitiesFullScreenExclusive_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_surfaceCapabilitiesFullScreenExclusive_EXT() {}
        #endif

        #if PlatformWin32
            @Test("Validate surfaceFullScreenExclusiveWin32Info_EXT")
            public func validate_surfaceFullScreenExclusiveWin32Info_EXT() {
                #expect(
                    Ignite.StructureType.surfaceFullScreenExclusiveWin32Info_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate surfaceFullScreenExclusiveWin32Info_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_surfaceFullScreenExclusiveWin32Info_EXT() {}
        #endif

        @Test("Validate headlessSurfaceCreateInfo_EXT")
        public func validate_headlessSurfaceCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.headlessSurfaceCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderAtomicFloatFeatures_EXT")
        public func validate_physicalDeviceShaderAtomicFloatFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderAtomicFloatFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceExtendedDynamicStateFeatures_EXT")
        public func validate_physicalDeviceExtendedDynamicStateFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceExtendedDynamicStateFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineExecutablePropertiesFeatures_KHR")
        public func validate_physicalDevicePipelineExecutablePropertiesFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineExecutablePropertiesFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate pipelineInfo_KHR")
        public func validate_pipelineInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR.rawValue
            )
        }

        @Test("Validate pipelineExecutableProperties_KHR")
        public func validate_pipelineExecutableProperties_KHR() {
            #expect(
                Ignite.StructureType.pipelineExecutableProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate pipelineExecutableInfo_KHR")
        public func validate_pipelineExecutableInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineExecutableInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR.rawValue
            )
        }

        @Test("Validate pipelineExecutableStatistic_KHR")
        public func validate_pipelineExecutableStatistic_KHR() {
            #expect(
                Ignite.StructureType.pipelineExecutableStatistic_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR.rawValue
            )
        }

        @Test("Validate pipelineExecutableInternalRepresentation_KHR")
        public func validate_pipelineExecutableInternalRepresentation_KHR() {
            #expect(
                Ignite.StructureType.pipelineExecutableInternalRepresentation_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMapMemoryPlacedFeatures_EXT")
        public func validate_physicalDeviceMapMemoryPlacedFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMapMemoryPlacedFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAP_MEMORY_PLACED_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMapMemoryPlacedProperties_EXT")
        public func validate_physicalDeviceMapMemoryPlacedProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMapMemoryPlacedProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAP_MEMORY_PLACED_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate memoryMapPlacedInfo_EXT")
        public func validate_memoryMapPlacedInfo_EXT() {
            #expect(
                Ignite.StructureType.memoryMapPlacedInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_MAP_PLACED_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderAtomicFloat2Features_EXT")
        public func validate_physicalDeviceShaderAtomicFloat2Features_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderAtomicFloat2Features_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_2_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate surfacePresentMode_EXT")
        public func validate_surfacePresentMode_EXT() {
            #expect(
                Ignite.StructureType.surfacePresentMode_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SURFACE_PRESENT_MODE_EXT.rawValue
            )
        }

        @Test("Validate surfacePresentScalingCapabilities_EXT")
        public func validate_surfacePresentScalingCapabilities_EXT() {
            #expect(
                Ignite.StructureType.surfacePresentScalingCapabilities_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SURFACE_PRESENT_SCALING_CAPABILITIES_EXT.rawValue
            )
        }

        @Test("Validate surfacePresentModeCompatibility_EXT")
        public func validate_surfacePresentModeCompatibility_EXT() {
            #expect(
                Ignite.StructureType.surfacePresentModeCompatibility_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SURFACE_PRESENT_MODE_COMPATIBILITY_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceSwapchainMaintenance1Features_EXT")
        public func validate_physicalDeviceSwapchainMaintenance1Features_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceSwapchainMaintenance1Features_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SWAPCHAIN_MAINTENANCE_1_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate swapchainPresentFenceInfo_EXT")
        public func validate_swapchainPresentFenceInfo_EXT() {
            #expect(
                Ignite.StructureType.swapchainPresentFenceInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_FENCE_INFO_EXT.rawValue
            )
        }

        @Test("Validate swapchainPresentModesCreateInfo_EXT")
        public func validate_swapchainPresentModesCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.swapchainPresentModesCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_MODES_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate swapchainPresentModeInfo_EXT")
        public func validate_swapchainPresentModeInfo_EXT() {
            #expect(
                Ignite.StructureType.swapchainPresentModeInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_MODE_INFO_EXT.rawValue
            )
        }

        @Test("Validate swapchainPresentScalingCreateInfo_EXT")
        public func validate_swapchainPresentScalingCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.swapchainPresentScalingCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_SCALING_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate releaseSwapchainImagesInfo_EXT")
        public func validate_releaseSwapchainImagesInfo_EXT() {
            #expect(
                Ignite.StructureType.releaseSwapchainImagesInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RELEASE_SWAPCHAIN_IMAGES_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDeviceGeneratedCommandsProperties_NV")
        public func validate_physicalDeviceDeviceGeneratedCommandsProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceDeviceGeneratedCommandsProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate graphicsShaderGroupCreateInfo_NV")
        public func validate_graphicsShaderGroupCreateInfo_NV() {
            #expect(
                Ignite.StructureType.graphicsShaderGroupCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate graphicsPipelineShaderGroupsCreateInfo_NV")
        public func validate_graphicsPipelineShaderGroupsCreateInfo_NV() {
            #expect(
                Ignite.StructureType.graphicsPipelineShaderGroupsCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate indirectCommandsLayoutToken_NV")
        public func validate_indirectCommandsLayoutToken_NV() {
            #expect(
                Ignite.StructureType.indirectCommandsLayoutToken_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV.rawValue
            )
        }

        @Test("Validate indirectCommandsLayoutCreateInfo_NV")
        public func validate_indirectCommandsLayoutCreateInfo_NV() {
            #expect(
                Ignite.StructureType.indirectCommandsLayoutCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate generatedCommandsInfo_NV")
        public func validate_generatedCommandsInfo_NV() {
            #expect(
                Ignite.StructureType.generatedCommandsInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV.rawValue
            )
        }

        @Test("Validate generatedCommandsMemoryRequirementsInfo_NV")
        public func validate_generatedCommandsMemoryRequirementsInfo_NV() {
            #expect(
                Ignite.StructureType.generatedCommandsMemoryRequirementsInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceDeviceGeneratedCommandsFeatures_NV")
        public func validate_physicalDeviceDeviceGeneratedCommandsFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceDeviceGeneratedCommandsFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceInheritedViewportScissorFeatures_NV")
        public func validate_physicalDeviceInheritedViewportScissorFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceInheritedViewportScissorFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INHERITED_VIEWPORT_SCISSOR_FEATURES_NV.rawValue
            )
        }

        @Test("Validate commandBufferInheritanceViewportScissorInfo_NV")
        public func validate_commandBufferInheritanceViewportScissorInfo_NV() {
            #expect(
                Ignite.StructureType.commandBufferInheritanceViewportScissorInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_VIEWPORT_SCISSOR_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceTexelBufferAlignmentFeatures_EXT")
        public func validate_physicalDeviceTexelBufferAlignmentFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceTexelBufferAlignmentFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate commandBufferInheritanceRenderPassTransformInfo_QCOM")
        public func validate_commandBufferInheritanceRenderPassTransformInfo_QCOM() {
            #expect(
                Ignite.StructureType.commandBufferInheritanceRenderPassTransformInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM.rawValue
            )
        }

        @Test("Validate renderPassTransformBeginInfo_QCOM")
        public func validate_renderPassTransformBeginInfo_QCOM() {
            #expect(
                Ignite.StructureType.renderPassTransformBeginInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceDepthBiasControlFeatures_EXT")
        public func validate_physicalDeviceDepthBiasControlFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDepthBiasControlFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_BIAS_CONTROL_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate depthBiasInfo_EXT")
        public func validate_depthBiasInfo_EXT() {
            #expect(
                Ignite.StructureType.depthBiasInfo_EXT.rawValue == CVulkan.VK_STRUCTURE_TYPE_DEPTH_BIAS_INFO_EXT.rawValue
            )
        }

        @Test("Validate depthBiasRepresentationInfo_EXT")
        public func validate_depthBiasRepresentationInfo_EXT() {
            #expect(
                Ignite.StructureType.depthBiasRepresentationInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEPTH_BIAS_REPRESENTATION_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDeviceMemoryReportFeatures_EXT")
        public func validate_physicalDeviceDeviceMemoryReportFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDeviceMemoryReportFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_MEMORY_REPORT_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate deviceDeviceMemoryReportCreateInfo_EXT")
        public func validate_deviceDeviceMemoryReportCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.deviceDeviceMemoryReportCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_DEVICE_MEMORY_REPORT_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate deviceMemoryReportCallbackData_EXT")
        public func validate_deviceMemoryReportCallbackData_EXT() {
            #expect(
                Ignite.StructureType.deviceMemoryReportCallbackData_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_MEMORY_REPORT_CALLBACK_DATA_EXT.rawValue
            )
        }

        @Test("Validate samplerCustomBorderColorCreateInfo_EXT")
        public func validate_samplerCustomBorderColorCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.samplerCustomBorderColorCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceCustomBorderColorProperties_EXT")
        public func validate_physicalDeviceCustomBorderColorProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceCustomBorderColorProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceCustomBorderColorFeatures_EXT")
        public func validate_physicalDeviceCustomBorderColorFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceCustomBorderColorFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate pipelineLibraryCreateInfo_KHR")
        public func validate_pipelineLibraryCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineLibraryCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_LIBRARY_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDevicePresentBarrierFeatures_NV")
        public func validate_physicalDevicePresentBarrierFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDevicePresentBarrierFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_BARRIER_FEATURES_NV.rawValue
            )
        }

        @Test("Validate surfaceCapabilitiesPresentBarrier_NV")
        public func validate_surfaceCapabilitiesPresentBarrier_NV() {
            #expect(
                Ignite.StructureType.surfaceCapabilitiesPresentBarrier_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_PRESENT_BARRIER_NV.rawValue
            )
        }

        @Test("Validate swapchainPresentBarrierCreateInfo_NV")
        public func validate_swapchainPresentBarrierCreateInfo_NV() {
            #expect(
                Ignite.StructureType.swapchainPresentBarrierCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_BARRIER_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate presentId_KHR")
        public func validate_presentId_KHR() {
            #expect(
                Ignite.StructureType.presentId_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_PRESENT_ID_KHR.rawValue
            )
        }

        @Test("Validate physicalDevicePresentIdFeatures_KHR")
        public func validate_physicalDevicePresentIdFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDevicePresentIdFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_ID_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeInfo_KHR")
        public func validate_videoEncodeInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeRateControlInfo_KHR")
        public func validate_videoEncodeRateControlInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeRateControlInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeRateControlLayerInfo_KHR")
        public func validate_videoEncodeRateControlLayerInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeRateControlLayerInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_LAYER_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeCapabilities_KHR")
        public func validate_videoEncodeCapabilities_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeUsageInfo_KHR")
        public func validate_videoEncodeUsageInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeUsageInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_USAGE_INFO_KHR.rawValue
            )
        }

        @Test("Validate queryPoolVideoEncodeFeedbackCreateInfo_KHR")
        public func validate_queryPoolVideoEncodeFeedbackCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.queryPoolVideoEncodeFeedbackCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUERY_POOL_VIDEO_ENCODE_FEEDBACK_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceVideoEncodeQualityLevelInfo_KHR")
        public func validate_physicalDeviceVideoEncodeQualityLevelInfo_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVideoEncodeQualityLevelInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_ENCODE_QUALITY_LEVEL_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeQualityLevelProperties_KHR")
        public func validate_videoEncodeQualityLevelProperties_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeQualityLevelProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_QUALITY_LEVEL_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeQualityLevelInfo_KHR")
        public func validate_videoEncodeQualityLevelInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeQualityLevelInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_QUALITY_LEVEL_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeSessionParametersGetInfo_KHR")
        public func validate_videoEncodeSessionParametersGetInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeSessionParametersGetInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_SESSION_PARAMETERS_GET_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeSessionParametersFeedbackInfo_KHR")
        public func validate_videoEncodeSessionParametersFeedbackInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeSessionParametersFeedbackInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_SESSION_PARAMETERS_FEEDBACK_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceDiagnosticsConfigFeatures_NV")
        public func validate_physicalDeviceDiagnosticsConfigFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceDiagnosticsConfigFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV.rawValue
            )
        }

        @Test("Validate deviceDiagnosticsConfigCreateInfo_NV")
        public func validate_deviceDiagnosticsConfigCreateInfo_NV() {
            #expect(
                Ignite.StructureType.deviceDiagnosticsConfigCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate cudaModuleCreateInfo_NV")
            public func validate_cudaModuleCreateInfo_NV() {
                #expect(
                    Ignite.StructureType.cudaModuleCreateInfo_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_CUDA_MODULE_CREATE_INFO_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate cudaModuleCreateInfo_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_cudaModuleCreateInfo_NV() {}
        #endif

        #if EnableProvisional
            @Test("Validate cudaFunctionCreateInfo_NV")
            public func validate_cudaFunctionCreateInfo_NV() {
                #expect(
                    Ignite.StructureType.cudaFunctionCreateInfo_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_CUDA_FUNCTION_CREATE_INFO_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate cudaFunctionCreateInfo_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_cudaFunctionCreateInfo_NV() {}
        #endif

        #if EnableProvisional
            @Test("Validate cudaLaunchInfo_NV")
            public func validate_cudaLaunchInfo_NV() {
                #expect(
                    Ignite.StructureType.cudaLaunchInfo_NV.rawValue == CVulkan.VK_STRUCTURE_TYPE_CUDA_LAUNCH_INFO_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate cudaLaunchInfo_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_cudaLaunchInfo_NV() {}
        #endif

        #if EnableProvisional
            @Test("Validate physicalDeviceCudaKernelLaunchFeatures_NV")
            public func validate_physicalDeviceCudaKernelLaunchFeatures_NV() {
                #expect(
                    Ignite.StructureType.physicalDeviceCudaKernelLaunchFeatures_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_FEATURES_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDeviceCudaKernelLaunchFeatures_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDeviceCudaKernelLaunchFeatures_NV() {}
        #endif

        #if EnableProvisional
            @Test("Validate physicalDeviceCudaKernelLaunchProperties_NV")
            public func validate_physicalDeviceCudaKernelLaunchProperties_NV() {
                #expect(
                    Ignite.StructureType.physicalDeviceCudaKernelLaunchProperties_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_PROPERTIES_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDeviceCudaKernelLaunchProperties_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDeviceCudaKernelLaunchProperties_NV() {}
        #endif

        @Test("Validate physicalDeviceTileShadingFeatures_QCOM")
        public func validate_physicalDeviceTileShadingFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceTileShadingFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_SHADING_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceTileShadingProperties_QCOM")
        public func validate_physicalDeviceTileShadingProperties_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceTileShadingProperties_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_SHADING_PROPERTIES_QCOM.rawValue
            )
        }

        @Test("Validate renderPassTileShadingCreateInfo_QCOM")
        public func validate_renderPassTileShadingCreateInfo_QCOM() {
            #expect(
                Ignite.StructureType.renderPassTileShadingCreateInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_TILE_SHADING_CREATE_INFO_QCOM.rawValue
            )
        }

        @Test("Validate perTileBeginInfo_QCOM")
        public func validate_perTileBeginInfo_QCOM() {
            #expect(
                Ignite.StructureType.perTileBeginInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PER_TILE_BEGIN_INFO_QCOM.rawValue
            )
        }

        @Test("Validate perTileEndInfo_QCOM")
        public func validate_perTileEndInfo_QCOM() {
            #expect(
                Ignite.StructureType.perTileEndInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PER_TILE_END_INFO_QCOM.rawValue
            )
        }

        @Test("Validate dispatchTileInfo_QCOM")
        public func validate_dispatchTileInfo_QCOM() {
            #expect(
                Ignite.StructureType.dispatchTileInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPATCH_TILE_INFO_QCOM.rawValue
            )
        }

        @Test("Validate queryLowLatencySupport_NV")
        public func validate_queryLowLatencySupport_NV() {
            #expect(
                Ignite.StructureType.queryLowLatencySupport_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUERY_LOW_LATENCY_SUPPORT_NV.rawValue
            )
        }

        #if PlatformMetal
            @Test("Validate exportMetalObjectCreateInfo_EXT")
            public func validate_exportMetalObjectCreateInfo_EXT() {
                #expect(
                    Ignite.StructureType.exportMetalObjectCreateInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_METAL_OBJECT_CREATE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMetalObjectCreateInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMetalObjectCreateInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate exportMetalObjectsInfo_EXT")
            public func validate_exportMetalObjectsInfo_EXT() {
                #expect(
                    Ignite.StructureType.exportMetalObjectsInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_METAL_OBJECTS_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMetalObjectsInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMetalObjectsInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate exportMetalDeviceInfo_EXT")
            public func validate_exportMetalDeviceInfo_EXT() {
                #expect(
                    Ignite.StructureType.exportMetalDeviceInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_METAL_DEVICE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMetalDeviceInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMetalDeviceInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate exportMetalCommandQueueInfo_EXT")
            public func validate_exportMetalCommandQueueInfo_EXT() {
                #expect(
                    Ignite.StructureType.exportMetalCommandQueueInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_METAL_COMMAND_QUEUE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMetalCommandQueueInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMetalCommandQueueInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate exportMetalBufferInfo_EXT")
            public func validate_exportMetalBufferInfo_EXT() {
                #expect(
                    Ignite.StructureType.exportMetalBufferInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_METAL_BUFFER_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMetalBufferInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMetalBufferInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate importMetalBufferInfo_EXT")
            public func validate_importMetalBufferInfo_EXT() {
                #expect(
                    Ignite.StructureType.importMetalBufferInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_METAL_BUFFER_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate importMetalBufferInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importMetalBufferInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate exportMetalTextureInfo_EXT")
            public func validate_exportMetalTextureInfo_EXT() {
                #expect(
                    Ignite.StructureType.exportMetalTextureInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_METAL_TEXTURE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMetalTextureInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMetalTextureInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate importMetalTextureInfo_EXT")
            public func validate_importMetalTextureInfo_EXT() {
                #expect(
                    Ignite.StructureType.importMetalTextureInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_METAL_TEXTURE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate importMetalTextureInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importMetalTextureInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate exportMetalIoSurfaceInfo_EXT")
            public func validate_exportMetalIoSurfaceInfo_EXT() {
                #expect(
                    Ignite.StructureType.exportMetalIoSurfaceInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_METAL_IO_SURFACE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMetalIoSurfaceInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMetalIoSurfaceInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate importMetalIoSurfaceInfo_EXT")
            public func validate_importMetalIoSurfaceInfo_EXT() {
                #expect(
                    Ignite.StructureType.importMetalIoSurfaceInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_METAL_IO_SURFACE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate importMetalIoSurfaceInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importMetalIoSurfaceInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate exportMetalSharedEventInfo_EXT")
            public func validate_exportMetalSharedEventInfo_EXT() {
                #expect(
                    Ignite.StructureType.exportMetalSharedEventInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXPORT_METAL_SHARED_EVENT_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate exportMetalSharedEventInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_exportMetalSharedEventInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate importMetalSharedEventInfo_EXT")
            public func validate_importMetalSharedEventInfo_EXT() {
                #expect(
                    Ignite.StructureType.importMetalSharedEventInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_METAL_SHARED_EVENT_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate importMetalSharedEventInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importMetalSharedEventInfo_EXT() {}
        #endif

        @Test("Validate physicalDeviceDescriptorBufferProperties_EXT")
        public func validate_physicalDeviceDescriptorBufferProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDescriptorBufferProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDescriptorBufferDensityMapProperties_EXT")
        public func validate_physicalDeviceDescriptorBufferDensityMapProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDescriptorBufferDensityMapProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_DENSITY_MAP_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDescriptorBufferFeatures_EXT")
        public func validate_physicalDeviceDescriptorBufferFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDescriptorBufferFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate descriptorAddressInfo_EXT")
        public func validate_descriptorAddressInfo_EXT() {
            #expect(
                Ignite.StructureType.descriptorAddressInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_ADDRESS_INFO_EXT.rawValue
            )
        }

        @Test("Validate descriptorGetInfo_EXT")
        public func validate_descriptorGetInfo_EXT() {
            #expect(
                Ignite.StructureType.descriptorGetInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_GET_INFO_EXT.rawValue
            )
        }

        @Test("Validate bufferCaptureDescriptorDataInfo_EXT")
        public func validate_bufferCaptureDescriptorDataInfo_EXT() {
            #expect(
                Ignite.StructureType.bufferCaptureDescriptorDataInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT.rawValue
            )
        }

        @Test("Validate imageCaptureDescriptorDataInfo_EXT")
        public func validate_imageCaptureDescriptorDataInfo_EXT() {
            #expect(
                Ignite.StructureType.imageCaptureDescriptorDataInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT.rawValue
            )
        }

        @Test("Validate imageViewCaptureDescriptorDataInfo_EXT")
        public func validate_imageViewCaptureDescriptorDataInfo_EXT() {
            #expect(
                Ignite.StructureType.imageViewCaptureDescriptorDataInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_EXT.rawValue
            )
        }

        @Test("Validate samplerCaptureDescriptorDataInfo_EXT")
        public func validate_samplerCaptureDescriptorDataInfo_EXT() {
            #expect(
                Ignite.StructureType.samplerCaptureDescriptorDataInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT.rawValue
            )
        }

        @Test("Validate opaqueCaptureDescriptorDataCreateInfo_EXT")
        public func validate_opaqueCaptureDescriptorDataCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.opaqueCaptureDescriptorDataCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_OPAQUE_CAPTURE_DESCRIPTOR_DATA_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate descriptorBufferBindingInfo_EXT")
        public func validate_descriptorBufferBindingInfo_EXT() {
            #expect(
                Ignite.StructureType.descriptorBufferBindingInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_INFO_EXT.rawValue
            )
        }

        @Test("Validate descriptorBufferBindingPushDescriptorBufferHandle_EXT")
        public func validate_descriptorBufferBindingPushDescriptorBufferHandle_EXT() {
            #expect(
                Ignite.StructureType.descriptorBufferBindingPushDescriptorBufferHandle_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_PUSH_DESCRIPTOR_BUFFER_HANDLE_EXT.rawValue
            )
        }

        @Test("Validate accelerationStructureCaptureDescriptorDataInfo_EXT")
        public func validate_accelerationStructureCaptureDescriptorDataInfo_EXT() {
            #expect(
                Ignite.StructureType.accelerationStructureCaptureDescriptorDataInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceGraphicsPipelineLibraryFeatures_EXT")
        public func validate_physicalDeviceGraphicsPipelineLibraryFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceGraphicsPipelineLibraryFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceGraphicsPipelineLibraryProperties_EXT")
        public func validate_physicalDeviceGraphicsPipelineLibraryProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceGraphicsPipelineLibraryProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate graphicsPipelineLibraryCreateInfo_EXT")
        public func validate_graphicsPipelineLibraryCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.graphicsPipelineLibraryCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_LIBRARY_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderEarlyAndLateFragmentTestsFeatures_AMD")
        public func validate_physicalDeviceShaderEarlyAndLateFragmentTestsFeatures_AMD() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderEarlyAndLateFragmentTestsFeatures_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_FEATURES_AMD.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentShaderBarycentricFeatures_KHR")
        public func validate_physicalDeviceFragmentShaderBarycentricFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentShaderBarycentricFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentShaderBarycentricProperties_KHR")
        public func validate_physicalDeviceFragmentShaderBarycentricProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentShaderBarycentricProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderSubgroupUniformControlFlowFeatures_KHR")
        public func validate_physicalDeviceShaderSubgroupUniformControlFlowFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderSubgroupUniformControlFlowFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentShadingRateEnumsProperties_NV")
        public func validate_physicalDeviceFragmentShadingRateEnumsProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentShadingRateEnumsProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentShadingRateEnumsFeatures_NV")
        public func validate_physicalDeviceFragmentShadingRateEnumsFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentShadingRateEnumsFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_FEATURES_NV.rawValue
            )
        }

        @Test("Validate pipelineFragmentShadingRateEnumStateCreateInfo_NV")
        public func validate_pipelineFragmentShadingRateEnumStateCreateInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineFragmentShadingRateEnumStateCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_ENUM_STATE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureGeometryMotionTrianglesData_NV")
        public func validate_accelerationStructureGeometryMotionTrianglesData_NV() {
            #expect(
                Ignite.StructureType.accelerationStructureGeometryMotionTrianglesData_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_MOTION_TRIANGLES_DATA_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingMotionBlurFeatures_NV")
        public func validate_physicalDeviceRayTracingMotionBlurFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingMotionBlurFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MOTION_BLUR_FEATURES_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureMotionInfo_NV")
        public func validate_accelerationStructureMotionInfo_NV() {
            #expect(
                Ignite.StructureType.accelerationStructureMotionInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MOTION_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceMeshShaderFeatures_EXT")
        public func validate_physicalDeviceMeshShaderFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMeshShaderFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMeshShaderProperties_EXT")
        public func validate_physicalDeviceMeshShaderProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMeshShaderProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceYcbcr2Plane444FormatsFeatures_EXT")
        public func validate_physicalDeviceYcbcr2Plane444FormatsFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceYcbcr2Plane444FormatsFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_2_PLANE_444_FORMATS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentDensityMap2Features_EXT")
        public func validate_physicalDeviceFragmentDensityMap2Features_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentDensityMap2Features_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentDensityMap2Properties_EXT")
        public func validate_physicalDeviceFragmentDensityMap2Properties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentDensityMap2Properties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate copyCommandTransformInfo_QCOM")
        public func validate_copyCommandTransformInfo_QCOM() {
            #expect(
                Ignite.StructureType.copyCommandTransformInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_COMMAND_TRANSFORM_INFO_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceWorkgroupMemoryExplicitLayoutFeatures_KHR")
        public func validate_physicalDeviceWorkgroupMemoryExplicitLayoutFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceWorkgroupMemoryExplicitLayoutFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_WORKGROUP_MEMORY_EXPLICIT_LAYOUT_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceImageCompressionControlFeatures_EXT")
        public func validate_physicalDeviceImageCompressionControlFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceImageCompressionControlFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate imageCompressionControl_EXT")
        public func validate_imageCompressionControl_EXT() {
            #expect(
                Ignite.StructureType.imageCompressionControl_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_COMPRESSION_CONTROL_EXT.rawValue
            )
        }

        @Test("Validate imageCompressionProperties_EXT")
        public func validate_imageCompressionProperties_EXT() {
            #expect(
                Ignite.StructureType.imageCompressionProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_COMPRESSION_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceAttachmentFeedbackLoopLayoutFeatures_EXT")
        public func validate_physicalDeviceAttachmentFeedbackLoopLayoutFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceAttachmentFeedbackLoopLayoutFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDevice4444FormatsFeatures_EXT")
        public func validate_physicalDevice4444FormatsFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevice4444FormatsFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceFaultFeatures_EXT")
        public func validate_physicalDeviceFaultFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceFaultFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FAULT_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate deviceFaultCounts_EXT")
        public func validate_deviceFaultCounts_EXT() {
            #expect(
                Ignite.StructureType.deviceFaultCounts_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_FAULT_COUNTS_EXT.rawValue
            )
        }

        @Test("Validate deviceFaultInfo_EXT")
        public func validate_deviceFaultInfo_EXT() {
            #expect(
                Ignite.StructureType.deviceFaultInfo_EXT.rawValue == CVulkan.VK_STRUCTURE_TYPE_DEVICE_FAULT_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRgba10x6FormatsFeatures_EXT")
        public func validate_physicalDeviceRgba10x6FormatsFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceRgba10x6FormatsFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RGBA10X6_FORMATS_FEATURES_EXT.rawValue
            )
        }

        #if PlatformDirectfb
            @Test("Validate directfbSurfaceCreateInfo_EXT")
            public func validate_directfbSurfaceCreateInfo_EXT() {
                #expect(
                    Ignite.StructureType.directfbSurfaceCreateInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_DIRECTFB_SURFACE_CREATE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate directfbSurfaceCreateInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_directfbSurfaceCreateInfo_EXT() {}
        #endif

        @Test("Validate physicalDeviceVertexInputDynamicStateFeatures_EXT")
        public func validate_physicalDeviceVertexInputDynamicStateFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceVertexInputDynamicStateFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_INPUT_DYNAMIC_STATE_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate vertexInputBindingDescription2_EXT")
        public func validate_vertexInputBindingDescription2_EXT() {
            #expect(
                Ignite.StructureType.vertexInputBindingDescription2_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VERTEX_INPUT_BINDING_DESCRIPTION_2_EXT.rawValue
            )
        }

        @Test("Validate vertexInputAttributeDescription2_EXT")
        public func validate_vertexInputAttributeDescription2_EXT() {
            #expect(
                Ignite.StructureType.vertexInputAttributeDescription2_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VERTEX_INPUT_ATTRIBUTE_DESCRIPTION_2_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDrmProperties_EXT")
        public func validate_physicalDeviceDrmProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDrmProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRM_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceAddressBindingReportFeatures_EXT")
        public func validate_physicalDeviceAddressBindingReportFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceAddressBindingReportFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ADDRESS_BINDING_REPORT_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate deviceAddressBindingCallbackData_EXT")
        public func validate_deviceAddressBindingCallbackData_EXT() {
            #expect(
                Ignite.StructureType.deviceAddressBindingCallbackData_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_ADDRESS_BINDING_CALLBACK_DATA_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDepthClipControlFeatures_EXT")
        public func validate_physicalDeviceDepthClipControlFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDepthClipControlFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_CONTROL_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate pipelineViewportDepthClipControlCreateInfo_EXT")
        public func validate_pipelineViewportDepthClipControlCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineViewportDepthClipControlCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_DEPTH_CLIP_CONTROL_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePrimitiveTopologyListRestartFeatures_EXT")
        public func validate_physicalDevicePrimitiveTopologyListRestartFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePrimitiveTopologyListRestartFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVE_TOPOLOGY_LIST_RESTART_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePresentModeFifoLatestReadyFeatures_EXT")
        public func validate_physicalDevicePresentModeFifoLatestReadyFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePresentModeFifoLatestReadyFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_MODE_FIFO_LATEST_READY_FEATURES_EXT.rawValue
            )
        }

        #if PlatformFuchsia
            @Test("Validate importMemoryZirconHandleInfo_FUCHSIA")
            public func validate_importMemoryZirconHandleInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.importMemoryZirconHandleInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_MEMORY_ZIRCON_HANDLE_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate importMemoryZirconHandleInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importMemoryZirconHandleInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate memoryZirconHandleProperties_FUCHSIA")
            public func validate_memoryZirconHandleProperties_FUCHSIA() {
                #expect(
                    Ignite.StructureType.memoryZirconHandleProperties_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_MEMORY_ZIRCON_HANDLE_PROPERTIES_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate memoryZirconHandleProperties_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_memoryZirconHandleProperties_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate memoryGetZirconHandleInfo_FUCHSIA")
            public func validate_memoryGetZirconHandleInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.memoryGetZirconHandleInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_MEMORY_GET_ZIRCON_HANDLE_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate memoryGetZirconHandleInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_memoryGetZirconHandleInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate importSemaphoreZirconHandleInfo_FUCHSIA")
            public func validate_importSemaphoreZirconHandleInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.importSemaphoreZirconHandleInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_ZIRCON_HANDLE_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate importSemaphoreZirconHandleInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importSemaphoreZirconHandleInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate semaphoreGetZirconHandleInfo_FUCHSIA")
            public func validate_semaphoreGetZirconHandleInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.semaphoreGetZirconHandleInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_GET_ZIRCON_HANDLE_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate semaphoreGetZirconHandleInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_semaphoreGetZirconHandleInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate bufferCollectionCreateInfo_FUCHSIA")
            public func validate_bufferCollectionCreateInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.bufferCollectionCreateInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_BUFFER_COLLECTION_CREATE_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate bufferCollectionCreateInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_bufferCollectionCreateInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate importMemoryBufferCollection_FUCHSIA")
            public func validate_importMemoryBufferCollection_FUCHSIA() {
                #expect(
                    Ignite.StructureType.importMemoryBufferCollection_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_MEMORY_BUFFER_COLLECTION_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate importMemoryBufferCollection_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importMemoryBufferCollection_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate bufferCollectionImageCreateInfo_FUCHSIA")
            public func validate_bufferCollectionImageCreateInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.bufferCollectionImageCreateInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_BUFFER_COLLECTION_IMAGE_CREATE_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate bufferCollectionImageCreateInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_bufferCollectionImageCreateInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate bufferCollectionProperties_FUCHSIA")
            public func validate_bufferCollectionProperties_FUCHSIA() {
                #expect(
                    Ignite.StructureType.bufferCollectionProperties_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_BUFFER_COLLECTION_PROPERTIES_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate bufferCollectionProperties_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_bufferCollectionProperties_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate bufferConstraintsInfo_FUCHSIA")
            public func validate_bufferConstraintsInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.bufferConstraintsInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_BUFFER_CONSTRAINTS_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate bufferConstraintsInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_bufferConstraintsInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate bufferCollectionBufferCreateInfo_FUCHSIA")
            public func validate_bufferCollectionBufferCreateInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.bufferCollectionBufferCreateInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_BUFFER_COLLECTION_BUFFER_CREATE_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate bufferCollectionBufferCreateInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_bufferCollectionBufferCreateInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate imageConstraintsInfo_FUCHSIA")
            public func validate_imageConstraintsInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.imageConstraintsInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMAGE_CONSTRAINTS_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate imageConstraintsInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_imageConstraintsInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate imageFormatConstraintsInfo_FUCHSIA")
            public func validate_imageFormatConstraintsInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.imageFormatConstraintsInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMAGE_FORMAT_CONSTRAINTS_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate imageFormatConstraintsInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_imageFormatConstraintsInfo_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate sysmemColorSpace_FUCHSIA")
            public func validate_sysmemColorSpace_FUCHSIA() {
                #expect(
                    Ignite.StructureType.sysmemColorSpace_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SYSMEM_COLOR_SPACE_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate sysmemColorSpace_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_sysmemColorSpace_FUCHSIA() {}
        #endif

        #if PlatformFuchsia
            @Test("Validate bufferCollectionConstraintsInfo_FUCHSIA")
            public func validate_bufferCollectionConstraintsInfo_FUCHSIA() {
                #expect(
                    Ignite.StructureType.bufferCollectionConstraintsInfo_FUCHSIA.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_BUFFER_COLLECTION_CONSTRAINTS_INFO_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate bufferCollectionConstraintsInfo_FUCHSIA",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_bufferCollectionConstraintsInfo_FUCHSIA() {}
        #endif

        @Test("Validate subpassShadingPipelineCreateInfo_HUAWEI")
        public func validate_subpassShadingPipelineCreateInfo_HUAWEI() {
            #expect(
                Ignite.StructureType.subpassShadingPipelineCreateInfo_HUAWEI.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_SHADING_PIPELINE_CREATE_INFO_HUAWEI.rawValue
            )
        }

        @Test("Validate physicalDeviceSubpassShadingFeatures_HUAWEI")
        public func validate_physicalDeviceSubpassShadingFeatures_HUAWEI() {
            #expect(
                Ignite.StructureType.physicalDeviceSubpassShadingFeatures_HUAWEI.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_FEATURES_HUAWEI.rawValue
            )
        }

        @Test("Validate physicalDeviceSubpassShadingProperties_HUAWEI")
        public func validate_physicalDeviceSubpassShadingProperties_HUAWEI() {
            #expect(
                Ignite.StructureType.physicalDeviceSubpassShadingProperties_HUAWEI.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_PROPERTIES_HUAWEI.rawValue
            )
        }

        @Test("Validate physicalDeviceInvocationMaskFeatures_HUAWEI")
        public func validate_physicalDeviceInvocationMaskFeatures_HUAWEI() {
            #expect(
                Ignite.StructureType.physicalDeviceInvocationMaskFeatures_HUAWEI.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INVOCATION_MASK_FEATURES_HUAWEI.rawValue
            )
        }

        @Test("Validate memoryGetRemoteAddressInfo_NV")
        public func validate_memoryGetRemoteAddressInfo_NV() {
            #expect(
                Ignite.StructureType.memoryGetRemoteAddressInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_GET_REMOTE_ADDRESS_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalMemoryRdmaFeatures_NV")
        public func validate_physicalDeviceExternalMemoryRdmaFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalMemoryRdmaFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_RDMA_FEATURES_NV.rawValue
            )
        }

        @Test("Validate pipelinePropertiesIdentifier_EXT")
        public func validate_pipelinePropertiesIdentifier_EXT() {
            #expect(
                Ignite.StructureType.pipelinePropertiesIdentifier_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_PROPERTIES_IDENTIFIER_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePipelinePropertiesFeatures_EXT")
        public func validate_physicalDevicePipelinePropertiesFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePipelinePropertiesFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROPERTIES_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceFrameBoundaryFeatures_EXT")
        public func validate_physicalDeviceFrameBoundaryFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceFrameBoundaryFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAME_BOUNDARY_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate frameBoundary_EXT")
        public func validate_frameBoundary_EXT() {
            #expect(
                Ignite.StructureType.frameBoundary_EXT.rawValue == CVulkan.VK_STRUCTURE_TYPE_FRAME_BOUNDARY_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMultisampledRenderToSingleSampledFeatures_EXT")
        public func validate_physicalDeviceMultisampledRenderToSingleSampledFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMultisampledRenderToSingleSampledFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate subpassResolvePerformanceQuery_EXT")
        public func validate_subpassResolvePerformanceQuery_EXT() {
            #expect(
                Ignite.StructureType.subpassResolvePerformanceQuery_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_RESOLVE_PERFORMANCE_QUERY_EXT.rawValue
            )
        }

        @Test("Validate multisampledRenderToSingleSampledInfo_EXT")
        public func validate_multisampledRenderToSingleSampledInfo_EXT() {
            #expect(
                Ignite.StructureType.multisampledRenderToSingleSampledInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceExtendedDynamicState2Features_EXT")
        public func validate_physicalDeviceExtendedDynamicState2Features_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceExtendedDynamicState2Features_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_2_FEATURES_EXT.rawValue
            )
        }

        #if PlatformScreen
            @Test("Validate screenSurfaceCreateInfo_QNX")
            public func validate_screenSurfaceCreateInfo_QNX() {
                #expect(
                    Ignite.StructureType.screenSurfaceCreateInfo_QNX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SCREEN_SURFACE_CREATE_INFO_QNX.rawValue
                )
            }
        #else
            @Test(
                "Validate screenSurfaceCreateInfo_QNX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_screenSurfaceCreateInfo_QNX() {}
        #endif

        @Test("Validate physicalDeviceColorWriteEnableFeatures_EXT")
        public func validate_physicalDeviceColorWriteEnableFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceColorWriteEnableFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COLOR_WRITE_ENABLE_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate pipelineColorWriteCreateInfo_EXT")
        public func validate_pipelineColorWriteCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineColorWriteCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_COLOR_WRITE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePrimitivesGeneratedQueryFeatures_EXT")
        public func validate_physicalDevicePrimitivesGeneratedQueryFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePrimitivesGeneratedQueryFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVES_GENERATED_QUERY_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingMaintenance1Features_KHR")
        public func validate_physicalDeviceRayTracingMaintenance1Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingMaintenance1Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MAINTENANCE_1_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceImageViewMinLodFeatures_EXT")
        public func validate_physicalDeviceImageViewMinLodFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceImageViewMinLodFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_MIN_LOD_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate imageViewMinLodCreateInfo_EXT")
        public func validate_imageViewMinLodCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.imageViewMinLodCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_MIN_LOD_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMultiDrawFeatures_EXT")
        public func validate_physicalDeviceMultiDrawFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMultiDrawFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMultiDrawProperties_EXT")
        public func validate_physicalDeviceMultiDrawProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMultiDrawProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceImage2dViewOf3dFeatures_EXT")
        public func validate_physicalDeviceImage2dViewOf3dFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceImage2dViewOf3dFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_2D_VIEW_OF_3D_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderTileImageFeatures_EXT")
        public func validate_physicalDeviceShaderTileImageFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderTileImageFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TILE_IMAGE_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderTileImageProperties_EXT")
        public func validate_physicalDeviceShaderTileImageProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderTileImageProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TILE_IMAGE_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate micromapBuildInfo_EXT")
        public func validate_micromapBuildInfo_EXT() {
            #expect(
                Ignite.StructureType.micromapBuildInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MICROMAP_BUILD_INFO_EXT.rawValue
            )
        }

        @Test("Validate micromapVersionInfo_EXT")
        public func validate_micromapVersionInfo_EXT() {
            #expect(
                Ignite.StructureType.micromapVersionInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MICROMAP_VERSION_INFO_EXT.rawValue
            )
        }

        @Test("Validate copyMicromapInfo_EXT")
        public func validate_copyMicromapInfo_EXT() {
            #expect(
                Ignite.StructureType.copyMicromapInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_MICROMAP_INFO_EXT.rawValue
            )
        }

        @Test("Validate copyMicromapToMemoryInfo_EXT")
        public func validate_copyMicromapToMemoryInfo_EXT() {
            #expect(
                Ignite.StructureType.copyMicromapToMemoryInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_MICROMAP_TO_MEMORY_INFO_EXT.rawValue
            )
        }

        @Test("Validate copyMemoryToMicromapInfo_EXT")
        public func validate_copyMemoryToMicromapInfo_EXT() {
            #expect(
                Ignite.StructureType.copyMemoryToMicromapInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_MEMORY_TO_MICROMAP_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceOpacityMicromapFeatures_EXT")
        public func validate_physicalDeviceOpacityMicromapFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceOpacityMicromapFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPACITY_MICROMAP_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceOpacityMicromapProperties_EXT")
        public func validate_physicalDeviceOpacityMicromapProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceOpacityMicromapProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPACITY_MICROMAP_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate micromapCreateInfo_EXT")
        public func validate_micromapCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.micromapCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MICROMAP_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate micromapBuildSizesInfo_EXT")
        public func validate_micromapBuildSizesInfo_EXT() {
            #expect(
                Ignite.StructureType.micromapBuildSizesInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MICROMAP_BUILD_SIZES_INFO_EXT.rawValue
            )
        }

        @Test("Validate accelerationStructureTrianglesOpacityMicromap_EXT")
        public func validate_accelerationStructureTrianglesOpacityMicromap_EXT() {
            #expect(
                Ignite.StructureType.accelerationStructureTrianglesOpacityMicromap_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_TRIANGLES_OPACITY_MICROMAP_EXT.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate physicalDeviceDisplacementMicromapFeatures_NV")
            public func validate_physicalDeviceDisplacementMicromapFeatures_NV() {
                #expect(
                    Ignite.StructureType.physicalDeviceDisplacementMicromapFeatures_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_FEATURES_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDeviceDisplacementMicromapFeatures_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDeviceDisplacementMicromapFeatures_NV() {}
        #endif

        #if EnableProvisional
            @Test("Validate physicalDeviceDisplacementMicromapProperties_NV")
            public func validate_physicalDeviceDisplacementMicromapProperties_NV() {
                #expect(
                    Ignite.StructureType.physicalDeviceDisplacementMicromapProperties_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_PROPERTIES_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDeviceDisplacementMicromapProperties_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDeviceDisplacementMicromapProperties_NV() {}
        #endif

        #if EnableProvisional
            @Test("Validate accelerationStructureTrianglesDisplacementMicromap_NV")
            public func validate_accelerationStructureTrianglesDisplacementMicromap_NV() {
                #expect(
                    Ignite.StructureType.accelerationStructureTrianglesDisplacementMicromap_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_TRIANGLES_DISPLACEMENT_MICROMAP_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate accelerationStructureTrianglesDisplacementMicromap_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_accelerationStructureTrianglesDisplacementMicromap_NV() {}
        #endif

        @Test("Validate physicalDeviceClusterCullingShaderFeatures_HUAWEI")
        public func validate_physicalDeviceClusterCullingShaderFeatures_HUAWEI() {
            #expect(
                Ignite.StructureType.physicalDeviceClusterCullingShaderFeatures_HUAWEI.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_FEATURES_HUAWEI.rawValue
            )
        }

        @Test("Validate physicalDeviceClusterCullingShaderProperties_HUAWEI")
        public func validate_physicalDeviceClusterCullingShaderProperties_HUAWEI() {
            #expect(
                Ignite.StructureType.physicalDeviceClusterCullingShaderProperties_HUAWEI.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_PROPERTIES_HUAWEI.rawValue
            )
        }

        @Test("Validate physicalDeviceClusterCullingShaderVrsFeatures_HUAWEI")
        public func validate_physicalDeviceClusterCullingShaderVrsFeatures_HUAWEI() {
            #expect(
                Ignite.StructureType.physicalDeviceClusterCullingShaderVrsFeatures_HUAWEI.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_VRS_FEATURES_HUAWEI.rawValue
            )
        }

        @Test("Validate physicalDeviceBorderColorSwizzleFeatures_EXT")
        public func validate_physicalDeviceBorderColorSwizzleFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceBorderColorSwizzleFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BORDER_COLOR_SWIZZLE_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate samplerBorderColorComponentMappingCreateInfo_EXT")
        public func validate_samplerBorderColorComponentMappingCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.samplerBorderColorComponentMappingCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_BORDER_COLOR_COMPONENT_MAPPING_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePageableDeviceLocalMemoryFeatures_EXT")
        public func validate_physicalDevicePageableDeviceLocalMemoryFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePageableDeviceLocalMemoryFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PAGEABLE_DEVICE_LOCAL_MEMORY_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderCoreProperties_ARM")
        public func validate_physicalDeviceShaderCoreProperties_ARM() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderCoreProperties_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_ARM.rawValue
            )
        }

        @Test("Validate deviceQueueShaderCoreControlCreateInfo_ARM")
        public func validate_deviceQueueShaderCoreControlCreateInfo_ARM() {
            #expect(
                Ignite.StructureType.deviceQueueShaderCoreControlCreateInfo_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_QUEUE_SHADER_CORE_CONTROL_CREATE_INFO_ARM.rawValue
            )
        }

        @Test("Validate physicalDeviceSchedulingControlsFeatures_ARM")
        public func validate_physicalDeviceSchedulingControlsFeatures_ARM() {
            #expect(
                Ignite.StructureType.physicalDeviceSchedulingControlsFeatures_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCHEDULING_CONTROLS_FEATURES_ARM.rawValue
            )
        }

        @Test("Validate physicalDeviceSchedulingControlsProperties_ARM")
        public func validate_physicalDeviceSchedulingControlsProperties_ARM() {
            #expect(
                Ignite.StructureType.physicalDeviceSchedulingControlsProperties_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCHEDULING_CONTROLS_PROPERTIES_ARM.rawValue
            )
        }

        @Test("Validate physicalDeviceImageSlicedViewOf3dFeatures_EXT")
        public func validate_physicalDeviceImageSlicedViewOf3dFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceImageSlicedViewOf3dFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_SLICED_VIEW_OF_3D_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate imageViewSlicedCreateInfo_EXT")
        public func validate_imageViewSlicedCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.imageViewSlicedCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_SLICED_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDescriptorSetHostMappingFeatures_VALVE")
        public func validate_physicalDeviceDescriptorSetHostMappingFeatures_VALVE() {
            #expect(
                Ignite.StructureType.physicalDeviceDescriptorSetHostMappingFeatures_VALVE.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_SET_HOST_MAPPING_FEATURES_VALVE.rawValue
            )
        }

        @Test("Validate descriptorSetBindingReference_VALVE")
        public func validate_descriptorSetBindingReference_VALVE() {
            #expect(
                Ignite.StructureType.descriptorSetBindingReference_VALVE.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_BINDING_REFERENCE_VALVE.rawValue
            )
        }

        @Test("Validate descriptorSetLayoutHostMappingInfo_VALVE")
        public func validate_descriptorSetLayoutHostMappingInfo_VALVE() {
            #expect(
                Ignite.StructureType.descriptorSetLayoutHostMappingInfo_VALVE.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_HOST_MAPPING_INFO_VALVE.rawValue
            )
        }

        @Test("Validate physicalDeviceNonSeamlessCubeMapFeatures_EXT")
        public func validate_physicalDeviceNonSeamlessCubeMapFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceNonSeamlessCubeMapFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_NON_SEAMLESS_CUBE_MAP_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRenderPassStripedFeatures_ARM")
        public func validate_physicalDeviceRenderPassStripedFeatures_ARM() {
            #expect(
                Ignite.StructureType.physicalDeviceRenderPassStripedFeatures_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RENDER_PASS_STRIPED_FEATURES_ARM.rawValue
            )
        }

        @Test("Validate physicalDeviceRenderPassStripedProperties_ARM")
        public func validate_physicalDeviceRenderPassStripedProperties_ARM() {
            #expect(
                Ignite.StructureType.physicalDeviceRenderPassStripedProperties_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RENDER_PASS_STRIPED_PROPERTIES_ARM.rawValue
            )
        }

        @Test("Validate renderPassStripeBeginInfo_ARM")
        public func validate_renderPassStripeBeginInfo_ARM() {
            #expect(
                Ignite.StructureType.renderPassStripeBeginInfo_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_STRIPE_BEGIN_INFO_ARM.rawValue
            )
        }

        @Test("Validate renderPassStripeInfo_ARM")
        public func validate_renderPassStripeInfo_ARM() {
            #expect(
                Ignite.StructureType.renderPassStripeInfo_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_STRIPE_INFO_ARM.rawValue
            )
        }

        @Test("Validate renderPassStripeSubmitInfo_ARM")
        public func validate_renderPassStripeSubmitInfo_ARM() {
            #expect(
                Ignite.StructureType.renderPassStripeSubmitInfo_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_STRIPE_SUBMIT_INFO_ARM.rawValue
            )
        }

        @Test("Validate physicalDeviceCopyMemoryIndirectFeatures_NV")
        public func validate_physicalDeviceCopyMemoryIndirectFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCopyMemoryIndirectFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceCopyMemoryIndirectProperties_NV")
        public func validate_physicalDeviceCopyMemoryIndirectProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCopyMemoryIndirectProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceMemoryDecompressionFeatures_NV")
        public func validate_physicalDeviceMemoryDecompressionFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceMemoryDecompressionFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceMemoryDecompressionProperties_NV")
        public func validate_physicalDeviceMemoryDecompressionProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceMemoryDecompressionProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceDeviceGeneratedCommandsComputeFeatures_NV")
        public func validate_physicalDeviceDeviceGeneratedCommandsComputeFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceDeviceGeneratedCommandsComputeFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_COMPUTE_FEATURES_NV.rawValue
            )
        }

        @Test("Validate computePipelineIndirectBufferInfo_NV")
        public func validate_computePipelineIndirectBufferInfo_NV() {
            #expect(
                Ignite.StructureType.computePipelineIndirectBufferInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_INDIRECT_BUFFER_INFO_NV.rawValue
            )
        }

        @Test("Validate pipelineIndirectDeviceAddressInfo_NV")
        public func validate_pipelineIndirectDeviceAddressInfo_NV() {
            #expect(
                Ignite.StructureType.pipelineIndirectDeviceAddressInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_INDIRECT_DEVICE_ADDRESS_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingLinearSweptSpheresFeatures_NV")
        public func validate_physicalDeviceRayTracingLinearSweptSpheresFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingLinearSweptSpheresFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_LINEAR_SWEPT_SPHERES_FEATURES_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureGeometryLinearSweptSpheresData_NV")
        public func validate_accelerationStructureGeometryLinearSweptSpheresData_NV() {
            #expect(
                Ignite.StructureType.accelerationStructureGeometryLinearSweptSpheresData_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_LINEAR_SWEPT_SPHERES_DATA_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureGeometrySpheresData_NV")
        public func validate_accelerationStructureGeometrySpheresData_NV() {
            #expect(
                Ignite.StructureType.accelerationStructureGeometrySpheresData_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_SPHERES_DATA_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceLinearColorAttachmentFeatures_NV")
        public func validate_physicalDeviceLinearColorAttachmentFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceLinearColorAttachmentFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINEAR_COLOR_ATTACHMENT_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderMaximalReconvergenceFeatures_KHR")
        public func validate_physicalDeviceShaderMaximalReconvergenceFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderMaximalReconvergenceFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MAXIMAL_RECONVERGENCE_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceImageCompressionControlSwapchainFeatures_EXT")
        public func validate_physicalDeviceImageCompressionControlSwapchainFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceImageCompressionControlSwapchainFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_SWAPCHAIN_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceImageProcessingFeatures_QCOM")
        public func validate_physicalDeviceImageProcessingFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceImageProcessingFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceImageProcessingProperties_QCOM")
        public func validate_physicalDeviceImageProcessingProperties_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceImageProcessingProperties_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_PROPERTIES_QCOM.rawValue
            )
        }

        @Test("Validate imageViewSampleWeightCreateInfo_QCOM")
        public func validate_imageViewSampleWeightCreateInfo_QCOM() {
            #expect(
                Ignite.StructureType.imageViewSampleWeightCreateInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_SAMPLE_WEIGHT_CREATE_INFO_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceNestedCommandBufferFeatures_EXT")
        public func validate_physicalDeviceNestedCommandBufferFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceNestedCommandBufferFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceNestedCommandBufferProperties_EXT")
        public func validate_physicalDeviceNestedCommandBufferProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceNestedCommandBufferProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate externalMemoryAcquireUnmodified_EXT")
        public func validate_externalMemoryAcquireUnmodified_EXT() {
            #expect(
                Ignite.StructureType.externalMemoryAcquireUnmodified_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_ACQUIRE_UNMODIFIED_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceExtendedDynamicState3Features_EXT")
        public func validate_physicalDeviceExtendedDynamicState3Features_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceExtendedDynamicState3Features_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceExtendedDynamicState3Properties_EXT")
        public func validate_physicalDeviceExtendedDynamicState3Properties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceExtendedDynamicState3Properties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceSubpassMergeFeedbackFeatures_EXT")
        public func validate_physicalDeviceSubpassMergeFeedbackFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceSubpassMergeFeedbackFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_MERGE_FEEDBACK_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate renderPassCreationControl_EXT")
        public func validate_renderPassCreationControl_EXT() {
            #expect(
                Ignite.StructureType.renderPassCreationControl_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_CREATION_CONTROL_EXT.rawValue
            )
        }

        @Test("Validate renderPassCreationFeedbackCreateInfo_EXT")
        public func validate_renderPassCreationFeedbackCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.renderPassCreationFeedbackCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_CREATION_FEEDBACK_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate renderPassSubpassFeedbackCreateInfo_EXT")
        public func validate_renderPassSubpassFeedbackCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.renderPassSubpassFeedbackCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_SUBPASS_FEEDBACK_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate directDriverLoadingInfo_LUNARG")
        public func validate_directDriverLoadingInfo_LUNARG() {
            #expect(
                Ignite.StructureType.directDriverLoadingInfo_LUNARG.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DIRECT_DRIVER_LOADING_INFO_LUNARG.rawValue
            )
        }

        @Test("Validate directDriverLoadingList_LUNARG")
        public func validate_directDriverLoadingList_LUNARG() {
            #expect(
                Ignite.StructureType.directDriverLoadingList_LUNARG.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DIRECT_DRIVER_LOADING_LIST_LUNARG.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderModuleIdentifierFeatures_EXT")
        public func validate_physicalDeviceShaderModuleIdentifierFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderModuleIdentifierFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderModuleIdentifierProperties_EXT")
        public func validate_physicalDeviceShaderModuleIdentifierProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderModuleIdentifierProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate pipelineShaderStageModuleIdentifierCreateInfo_EXT")
        public func validate_pipelineShaderStageModuleIdentifierCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineShaderStageModuleIdentifierCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_MODULE_IDENTIFIER_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate shaderModuleIdentifier_EXT")
        public func validate_shaderModuleIdentifier_EXT() {
            #expect(
                Ignite.StructureType.shaderModuleIdentifier_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SHADER_MODULE_IDENTIFIER_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRasterizationOrderAttachmentAccessFeatures_EXT")
        public func validate_physicalDeviceRasterizationOrderAttachmentAccessFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceRasterizationOrderAttachmentAccessFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceOpticalFlowFeatures_NV")
        public func validate_physicalDeviceOpticalFlowFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceOpticalFlowFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPTICAL_FLOW_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceOpticalFlowProperties_NV")
        public func validate_physicalDeviceOpticalFlowProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceOpticalFlowProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPTICAL_FLOW_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate opticalFlowImageFormatInfo_NV")
        public func validate_opticalFlowImageFormatInfo_NV() {
            #expect(
                Ignite.StructureType.opticalFlowImageFormatInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_OPTICAL_FLOW_IMAGE_FORMAT_INFO_NV.rawValue
            )
        }

        @Test("Validate opticalFlowImageFormatProperties_NV")
        public func validate_opticalFlowImageFormatProperties_NV() {
            #expect(
                Ignite.StructureType.opticalFlowImageFormatProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_OPTICAL_FLOW_IMAGE_FORMAT_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate opticalFlowSessionCreateInfo_NV")
        public func validate_opticalFlowSessionCreateInfo_NV() {
            #expect(
                Ignite.StructureType.opticalFlowSessionCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_OPTICAL_FLOW_SESSION_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate opticalFlowExecuteInfo_NV")
        public func validate_opticalFlowExecuteInfo_NV() {
            #expect(
                Ignite.StructureType.opticalFlowExecuteInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_OPTICAL_FLOW_EXECUTE_INFO_NV.rawValue
            )
        }

        @Test("Validate opticalFlowSessionCreatePrivateDataInfo_NV")
        public func validate_opticalFlowSessionCreatePrivateDataInfo_NV() {
            #expect(
                Ignite.StructureType.opticalFlowSessionCreatePrivateDataInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_OPTICAL_FLOW_SESSION_CREATE_PRIVATE_DATA_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceLegacyDitheringFeatures_EXT")
        public func validate_physicalDeviceLegacyDitheringFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceLegacyDitheringFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_DITHERING_FEATURES_EXT.rawValue
            )
        }

        #if PlatformAndroid
            @Test("Validate physicalDeviceExternalFormatResolveFeatures_ANDROID")
            public func validate_physicalDeviceExternalFormatResolveFeatures_ANDROID() {
                #expect(
                    Ignite.StructureType.physicalDeviceExternalFormatResolveFeatures_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_FEATURES_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDeviceExternalFormatResolveFeatures_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDeviceExternalFormatResolveFeatures_ANDROID() {}
        #endif

        #if PlatformAndroid
            @Test("Validate physicalDeviceExternalFormatResolveProperties_ANDROID")
            public func validate_physicalDeviceExternalFormatResolveProperties_ANDROID() {
                #expect(
                    Ignite.StructureType.physicalDeviceExternalFormatResolveProperties_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_PROPERTIES_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDeviceExternalFormatResolveProperties_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDeviceExternalFormatResolveProperties_ANDROID() {}
        #endif

        #if PlatformAndroid
            @Test("Validate androidHardwareBufferFormatResolveProperties_ANDROID")
            public func validate_androidHardwareBufferFormatResolveProperties_ANDROID() {
                #expect(
                    Ignite.StructureType.androidHardwareBufferFormatResolveProperties_ANDROID.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_RESOLVE_PROPERTIES_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate androidHardwareBufferFormatResolveProperties_ANDROID",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_androidHardwareBufferFormatResolveProperties_ANDROID() {}
        #endif

        @Test("Validate physicalDeviceAntiLagFeatures_AMD")
        public func validate_physicalDeviceAntiLagFeatures_AMD() {
            #expect(
                Ignite.StructureType.physicalDeviceAntiLagFeatures_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ANTI_LAG_FEATURES_AMD.rawValue
            )
        }

        @Test("Validate antiLagData_AMD")
        public func validate_antiLagData_AMD() {
            #expect(
                Ignite.StructureType.antiLagData_AMD.rawValue == CVulkan.VK_STRUCTURE_TYPE_ANTI_LAG_DATA_AMD.rawValue
            )
        }

        @Test("Validate antiLagPresentationInfo_AMD")
        public func validate_antiLagPresentationInfo_AMD() {
            #expect(
                Ignite.StructureType.antiLagPresentationInfo_AMD.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ANTI_LAG_PRESENTATION_INFO_AMD.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingPositionFetchFeatures_KHR")
        public func validate_physicalDeviceRayTracingPositionFetchFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingPositionFetchFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_POSITION_FETCH_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderObjectFeatures_EXT")
        public func validate_physicalDeviceShaderObjectFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderObjectFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_OBJECT_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderObjectProperties_EXT")
        public func validate_physicalDeviceShaderObjectProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderObjectProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_OBJECT_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate shaderCreateInfo_EXT")
        public func validate_shaderCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.shaderCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SHADER_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineBinaryFeatures_KHR")
        public func validate_physicalDevicePipelineBinaryFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineBinaryFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_BINARY_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate pipelineBinaryCreateInfo_KHR")
        public func validate_pipelineBinaryCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineBinaryCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_BINARY_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate pipelineBinaryInfo_KHR")
        public func validate_pipelineBinaryInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineBinaryInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_BINARY_INFO_KHR.rawValue
            )
        }

        @Test("Validate pipelineBinaryKey_KHR")
        public func validate_pipelineBinaryKey_KHR() {
            #expect(
                Ignite.StructureType.pipelineBinaryKey_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_BINARY_KEY_KHR.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineBinaryProperties_KHR")
        public func validate_physicalDevicePipelineBinaryProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineBinaryProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_BINARY_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate releaseCapturedPipelineDataInfo_KHR")
        public func validate_releaseCapturedPipelineDataInfo_KHR() {
            #expect(
                Ignite.StructureType.releaseCapturedPipelineDataInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RELEASE_CAPTURED_PIPELINE_DATA_INFO_KHR.rawValue
            )
        }

        @Test("Validate pipelineBinaryDataInfo_KHR")
        public func validate_pipelineBinaryDataInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineBinaryDataInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_BINARY_DATA_INFO_KHR.rawValue
            )
        }

        @Test("Validate pipelineCreateInfo_KHR")
        public func validate_pipelineCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate devicePipelineBinaryInternalCacheControl_KHR")
        public func validate_devicePipelineBinaryInternalCacheControl_KHR() {
            #expect(
                Ignite.StructureType.devicePipelineBinaryInternalCacheControl_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_PIPELINE_BINARY_INTERNAL_CACHE_CONTROL_KHR.rawValue
            )
        }

        @Test("Validate pipelineBinaryHandlesInfo_KHR")
        public func validate_pipelineBinaryHandlesInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineBinaryHandlesInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_BINARY_HANDLES_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceTilePropertiesFeatures_QCOM")
        public func validate_physicalDeviceTilePropertiesFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceTilePropertiesFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_PROPERTIES_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate tileProperties_QCOM")
        public func validate_tileProperties_QCOM() {
            #expect(
                Ignite.StructureType.tileProperties_QCOM.rawValue == CVulkan.VK_STRUCTURE_TYPE_TILE_PROPERTIES_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceAmigoProfilingFeatures_SEC")
        public func validate_physicalDeviceAmigoProfilingFeatures_SEC() {
            #expect(
                Ignite.StructureType.physicalDeviceAmigoProfilingFeatures_SEC.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_AMIGO_PROFILING_FEATURES_SEC.rawValue
            )
        }

        @Test("Validate amigoProfilingSubmitInfo_SEC")
        public func validate_amigoProfilingSubmitInfo_SEC() {
            #expect(
                Ignite.StructureType.amigoProfilingSubmitInfo_SEC.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_AMIGO_PROFILING_SUBMIT_INFO_SEC.rawValue
            )
        }

        @Test("Validate physicalDeviceMultiviewPerViewViewportsFeatures_QCOM")
        public func validate_physicalDeviceMultiviewPerViewViewportsFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceMultiviewPerViewViewportsFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_VIEWPORTS_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingInvocationReorderFeatures_NV")
        public func validate_physicalDeviceRayTracingInvocationReorderFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingInvocationReorderFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingInvocationReorderProperties_NV")
        public func validate_physicalDeviceRayTracingInvocationReorderProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingInvocationReorderProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceCooperativeVectorFeatures_NV")
        public func validate_physicalDeviceCooperativeVectorFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCooperativeVectorFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_VECTOR_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceCooperativeVectorProperties_NV")
        public func validate_physicalDeviceCooperativeVectorProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCooperativeVectorProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_VECTOR_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate cooperativeVectorProperties_NV")
        public func validate_cooperativeVectorProperties_NV() {
            #expect(
                Ignite.StructureType.cooperativeVectorProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COOPERATIVE_VECTOR_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate convertCooperativeVectorMatrixInfo_NV")
        public func validate_convertCooperativeVectorMatrixInfo_NV() {
            #expect(
                Ignite.StructureType.convertCooperativeVectorMatrixInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CONVERT_COOPERATIVE_VECTOR_MATRIX_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceExtendedSparseAddressSpaceFeatures_NV")
        public func validate_physicalDeviceExtendedSparseAddressSpaceFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceExtendedSparseAddressSpaceFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceExtendedSparseAddressSpaceProperties_NV")
        public func validate_physicalDeviceExtendedSparseAddressSpaceProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceExtendedSparseAddressSpaceProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceMutableDescriptorTypeFeatures_EXT")
        public func validate_physicalDeviceMutableDescriptorTypeFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceMutableDescriptorTypeFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate mutableDescriptorTypeCreateInfo_EXT")
        public func validate_mutableDescriptorTypeCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.mutableDescriptorTypeCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceLegacyVertexAttributesFeatures_EXT")
        public func validate_physicalDeviceLegacyVertexAttributesFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceLegacyVertexAttributesFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceLegacyVertexAttributesProperties_EXT")
        public func validate_physicalDeviceLegacyVertexAttributesProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceLegacyVertexAttributesProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate layerSettingsCreateInfo_EXT")
        public func validate_layerSettingsCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.layerSettingsCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_LAYER_SETTINGS_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderCoreBuiltinsFeatures_ARM")
        public func validate_physicalDeviceShaderCoreBuiltinsFeatures_ARM() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderCoreBuiltinsFeatures_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_FEATURES_ARM.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderCoreBuiltinsProperties_ARM")
        public func validate_physicalDeviceShaderCoreBuiltinsProperties_ARM() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderCoreBuiltinsProperties_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_PROPERTIES_ARM.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineLibraryGroupHandlesFeatures_EXT")
        public func validate_physicalDevicePipelineLibraryGroupHandlesFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineLibraryGroupHandlesFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_LIBRARY_GROUP_HANDLES_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDynamicRenderingUnusedAttachmentsFeatures_EXT")
        public func validate_physicalDeviceDynamicRenderingUnusedAttachmentsFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDynamicRenderingUnusedAttachmentsFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_UNUSED_ATTACHMENTS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate latencySleepModeInfo_NV")
        public func validate_latencySleepModeInfo_NV() {
            #expect(
                Ignite.StructureType.latencySleepModeInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_LATENCY_SLEEP_MODE_INFO_NV.rawValue
            )
        }

        @Test("Validate latencySleepInfo_NV")
        public func validate_latencySleepInfo_NV() {
            #expect(
                Ignite.StructureType.latencySleepInfo_NV.rawValue == CVulkan.VK_STRUCTURE_TYPE_LATENCY_SLEEP_INFO_NV.rawValue
            )
        }

        @Test("Validate setLatencyMarkerInfo_NV")
        public func validate_setLatencyMarkerInfo_NV() {
            #expect(
                Ignite.StructureType.setLatencyMarkerInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SET_LATENCY_MARKER_INFO_NV.rawValue
            )
        }

        @Test("Validate getLatencyMarkerInfo_NV")
        public func validate_getLatencyMarkerInfo_NV() {
            #expect(
                Ignite.StructureType.getLatencyMarkerInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GET_LATENCY_MARKER_INFO_NV.rawValue
            )
        }

        @Test("Validate latencyTimingsFrameReport_NV")
        public func validate_latencyTimingsFrameReport_NV() {
            #expect(
                Ignite.StructureType.latencyTimingsFrameReport_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_LATENCY_TIMINGS_FRAME_REPORT_NV.rawValue
            )
        }

        @Test("Validate latencySubmissionPresentId_NV")
        public func validate_latencySubmissionPresentId_NV() {
            #expect(
                Ignite.StructureType.latencySubmissionPresentId_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_LATENCY_SUBMISSION_PRESENT_ID_NV.rawValue
            )
        }

        @Test("Validate outOfBandQueueTypeInfo_NV")
        public func validate_outOfBandQueueTypeInfo_NV() {
            #expect(
                Ignite.StructureType.outOfBandQueueTypeInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_OUT_OF_BAND_QUEUE_TYPE_INFO_NV.rawValue
            )
        }

        @Test("Validate swapchainLatencyCreateInfo_NV")
        public func validate_swapchainLatencyCreateInfo_NV() {
            #expect(
                Ignite.StructureType.swapchainLatencyCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SWAPCHAIN_LATENCY_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate latencySurfaceCapabilities_NV")
        public func validate_latencySurfaceCapabilities_NV() {
            #expect(
                Ignite.StructureType.latencySurfaceCapabilities_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_LATENCY_SURFACE_CAPABILITIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceCooperativeMatrixFeatures_KHR")
        public func validate_physicalDeviceCooperativeMatrixFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceCooperativeMatrixFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate cooperativeMatrixProperties_KHR")
        public func validate_cooperativeMatrixProperties_KHR() {
            #expect(
                Ignite.StructureType.cooperativeMatrixProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceCooperativeMatrixProperties_KHR")
        public func validate_physicalDeviceCooperativeMatrixProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceCooperativeMatrixProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMultiviewPerViewRenderAreasFeatures_QCOM")
        public func validate_physicalDeviceMultiviewPerViewRenderAreasFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceMultiviewPerViewRenderAreasFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_RENDER_AREAS_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate multiviewPerViewRenderAreasRenderPassBeginInfo_QCOM")
        public func validate_multiviewPerViewRenderAreasRenderPassBeginInfo_QCOM() {
            #expect(
                Ignite.StructureType.multiviewPerViewRenderAreasRenderPassBeginInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MULTIVIEW_PER_VIEW_RENDER_AREAS_RENDER_PASS_BEGIN_INFO_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceComputeShaderDerivativesFeatures_KHR")
        public func validate_physicalDeviceComputeShaderDerivativesFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceComputeShaderDerivativesFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceComputeShaderDerivativesProperties_KHR")
        public func validate_physicalDeviceComputeShaderDerivativesProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceComputeShaderDerivativesProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeAv1Capabilities_KHR")
        public func validate_videoDecodeAv1Capabilities_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeAv1Capabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_AV1_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeAv1PictureInfo_KHR")
        public func validate_videoDecodeAv1PictureInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeAv1PictureInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_AV1_PICTURE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeAv1ProfileInfo_KHR")
        public func validate_videoDecodeAv1ProfileInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeAv1ProfileInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_AV1_PROFILE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeAv1SessionParametersCreateInfo_KHR")
        public func validate_videoDecodeAv1SessionParametersCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeAv1SessionParametersCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeAv1DpbSlotInfo_KHR")
        public func validate_videoDecodeAv1DpbSlotInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeAv1DpbSlotInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_AV1_DPB_SLOT_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1Capabilities_KHR")
        public func validate_videoEncodeAv1Capabilities_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1Capabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1SessionParametersCreateInfo_KHR")
        public func validate_videoEncodeAv1SessionParametersCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1SessionParametersCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1PictureInfo_KHR")
        public func validate_videoEncodeAv1PictureInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1PictureInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_PICTURE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1DpbSlotInfo_KHR")
        public func validate_videoEncodeAv1DpbSlotInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1DpbSlotInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_DPB_SLOT_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceVideoEncodeAv1Features_KHR")
        public func validate_physicalDeviceVideoEncodeAv1Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVideoEncodeAv1Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_ENCODE_AV1_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1ProfileInfo_KHR")
        public func validate_videoEncodeAv1ProfileInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1ProfileInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_PROFILE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1RateControlInfo_KHR")
        public func validate_videoEncodeAv1RateControlInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1RateControlInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_RATE_CONTROL_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1RateControlLayerInfo_KHR")
        public func validate_videoEncodeAv1RateControlLayerInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1RateControlLayerInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_RATE_CONTROL_LAYER_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1QualityLevelProperties_KHR")
        public func validate_videoEncodeAv1QualityLevelProperties_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1QualityLevelProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_QUALITY_LEVEL_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1SessionCreateInfo_KHR")
        public func validate_videoEncodeAv1SessionCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1SessionCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_SESSION_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1GopRemainingFrameInfo_KHR")
        public func validate_videoEncodeAv1GopRemainingFrameInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1GopRemainingFrameInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_GOP_REMAINING_FRAME_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceVideoMaintenance1Features_KHR")
        public func validate_physicalDeviceVideoMaintenance1Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVideoMaintenance1Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_MAINTENANCE_1_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate videoInlineQueryInfo_KHR")
        public func validate_videoInlineQueryInfo_KHR() {
            #expect(
                Ignite.StructureType.videoInlineQueryInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_INLINE_QUERY_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDevicePerStageDescriptorSetFeatures_NV")
        public func validate_physicalDevicePerStageDescriptorSetFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDevicePerStageDescriptorSetFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PER_STAGE_DESCRIPTOR_SET_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceImageProcessing2Features_QCOM")
        public func validate_physicalDeviceImageProcessing2Features_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceImageProcessing2Features_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_2_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceImageProcessing2Properties_QCOM")
        public func validate_physicalDeviceImageProcessing2Properties_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceImageProcessing2Properties_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_2_PROPERTIES_QCOM.rawValue
            )
        }

        @Test("Validate samplerBlockMatchWindowCreateInfo_QCOM")
        public func validate_samplerBlockMatchWindowCreateInfo_QCOM() {
            #expect(
                Ignite.StructureType.samplerBlockMatchWindowCreateInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_BLOCK_MATCH_WINDOW_CREATE_INFO_QCOM.rawValue
            )
        }

        @Test("Validate samplerCubicWeightsCreateInfo_QCOM")
        public func validate_samplerCubicWeightsCreateInfo_QCOM() {
            #expect(
                Ignite.StructureType.samplerCubicWeightsCreateInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_CUBIC_WEIGHTS_CREATE_INFO_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceCubicWeightsFeatures_QCOM")
        public func validate_physicalDeviceCubicWeightsFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceCubicWeightsFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUBIC_WEIGHTS_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate blitImageCubicWeightsInfo_QCOM")
        public func validate_blitImageCubicWeightsInfo_QCOM() {
            #expect(
                Ignite.StructureType.blitImageCubicWeightsInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BLIT_IMAGE_CUBIC_WEIGHTS_INFO_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceYcbcrDegammaFeatures_QCOM")
        public func validate_physicalDeviceYcbcrDegammaFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceYcbcrDegammaFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_DEGAMMA_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversionYcbcrDegammaCreateInfo_QCOM")
        public func validate_samplerYcbcrConversionYcbcrDegammaCreateInfo_QCOM() {
            #expect(
                Ignite.StructureType.samplerYcbcrConversionYcbcrDegammaCreateInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_YCBCR_DEGAMMA_CREATE_INFO_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceCubicClampFeatures_QCOM")
        public func validate_physicalDeviceCubicClampFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceCubicClampFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUBIC_CLAMP_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceAttachmentFeedbackLoopDynamicStateFeatures_EXT")
        public func validate_physicalDeviceAttachmentFeedbackLoopDynamicStateFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceAttachmentFeedbackLoopDynamicStateFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_DYNAMIC_STATE_FEATURES_EXT.rawValue
            )
        }

        #if PlatformScreen
            @Test("Validate screenBufferProperties_QNX")
            public func validate_screenBufferProperties_QNX() {
                #expect(
                    Ignite.StructureType.screenBufferProperties_QNX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SCREEN_BUFFER_PROPERTIES_QNX.rawValue
                )
            }
        #else
            @Test(
                "Validate screenBufferProperties_QNX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_screenBufferProperties_QNX() {}
        #endif

        #if PlatformScreen
            @Test("Validate screenBufferFormatProperties_QNX")
            public func validate_screenBufferFormatProperties_QNX() {
                #expect(
                    Ignite.StructureType.screenBufferFormatProperties_QNX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SCREEN_BUFFER_FORMAT_PROPERTIES_QNX.rawValue
                )
            }
        #else
            @Test(
                "Validate screenBufferFormatProperties_QNX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_screenBufferFormatProperties_QNX() {}
        #endif

        #if PlatformScreen
            @Test("Validate importScreenBufferInfo_QNX")
            public func validate_importScreenBufferInfo_QNX() {
                #expect(
                    Ignite.StructureType.importScreenBufferInfo_QNX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_SCREEN_BUFFER_INFO_QNX.rawValue
                )
            }
        #else
            @Test(
                "Validate importScreenBufferInfo_QNX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importScreenBufferInfo_QNX() {}
        #endif

        #if PlatformScreen
            @Test("Validate externalFormat_QNX")
            public func validate_externalFormat_QNX() {
                #expect(
                    Ignite.StructureType.externalFormat_QNX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_FORMAT_QNX.rawValue
                )
            }
        #else
            @Test(
                "Validate externalFormat_QNX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_externalFormat_QNX() {}
        #endif

        #if PlatformScreen
            @Test("Validate physicalDeviceExternalMemoryScreenBufferFeatures_QNX")
            public func validate_physicalDeviceExternalMemoryScreenBufferFeatures_QNX() {
                #expect(
                    Ignite.StructureType.physicalDeviceExternalMemoryScreenBufferFeatures_QNX.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCREEN_BUFFER_FEATURES_QNX.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDeviceExternalMemoryScreenBufferFeatures_QNX",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDeviceExternalMemoryScreenBufferFeatures_QNX() {}
        #endif

        @Test("Validate physicalDeviceLayeredDriverProperties_MSFT")
        public func validate_physicalDeviceLayeredDriverProperties_MSFT() {
            #expect(
                Ignite.StructureType.physicalDeviceLayeredDriverProperties_MSFT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_DRIVER_PROPERTIES_MSFT.rawValue
            )
        }

        @Test("Validate calibratedTimestampInfo_KHR")
        public func validate_calibratedTimestampInfo_KHR() {
            #expect(
                Ignite.StructureType.calibratedTimestampInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_KHR.rawValue
            )
        }

        @Test("Validate setDescriptorBufferOffsetsInfo_EXT")
        public func validate_setDescriptorBufferOffsetsInfo_EXT() {
            #expect(
                Ignite.StructureType.setDescriptorBufferOffsetsInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SET_DESCRIPTOR_BUFFER_OFFSETS_INFO_EXT.rawValue
            )
        }

        @Test("Validate bindDescriptorBufferEmbeddedSamplersInfo_EXT")
        public func validate_bindDescriptorBufferEmbeddedSamplersInfo_EXT() {
            #expect(
                Ignite.StructureType.bindDescriptorBufferEmbeddedSamplersInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_DESCRIPTOR_BUFFER_EMBEDDED_SAMPLERS_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDescriptorPoolOverallocationFeatures_NV")
        public func validate_physicalDeviceDescriptorPoolOverallocationFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceDescriptorPoolOverallocationFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_POOL_OVERALLOCATION_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceTileMemoryHeapFeatures_QCOM")
        public func validate_physicalDeviceTileMemoryHeapFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceTileMemoryHeapFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_MEMORY_HEAP_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceTileMemoryHeapProperties_QCOM")
        public func validate_physicalDeviceTileMemoryHeapProperties_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceTileMemoryHeapProperties_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_MEMORY_HEAP_PROPERTIES_QCOM.rawValue
            )
        }

        @Test("Validate tileMemoryRequirements_QCOM")
        public func validate_tileMemoryRequirements_QCOM() {
            #expect(
                Ignite.StructureType.tileMemoryRequirements_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_TILE_MEMORY_REQUIREMENTS_QCOM.rawValue
            )
        }

        @Test("Validate tileMemoryBindInfo_QCOM")
        public func validate_tileMemoryBindInfo_QCOM() {
            #expect(
                Ignite.StructureType.tileMemoryBindInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_TILE_MEMORY_BIND_INFO_QCOM.rawValue
            )
        }

        @Test("Validate tileMemorySizeInfo_QCOM")
        public func validate_tileMemorySizeInfo_QCOM() {
            #expect(
                Ignite.StructureType.tileMemorySizeInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_TILE_MEMORY_SIZE_INFO_QCOM.rawValue
            )
        }

        @Test("Validate displaySurfaceStereoCreateInfo_NV")
        public func validate_displaySurfaceStereoCreateInfo_NV() {
            #expect(
                Ignite.StructureType.displaySurfaceStereoCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_SURFACE_STEREO_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate displayModeStereoProperties_NV")
        public func validate_displayModeStereoProperties_NV() {
            #expect(
                Ignite.StructureType.displayModeStereoProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DISPLAY_MODE_STEREO_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate videoEncodeQuantizationMapCapabilities_KHR")
        public func validate_videoEncodeQuantizationMapCapabilities_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeQuantizationMapCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_QUANTIZATION_MAP_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoFormatQuantizationMapProperties_KHR")
        public func validate_videoFormatQuantizationMapProperties_KHR() {
            #expect(
                Ignite.StructureType.videoFormatQuantizationMapProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_FORMAT_QUANTIZATION_MAP_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeQuantizationMapInfo_KHR")
        public func validate_videoEncodeQuantizationMapInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeQuantizationMapInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_QUANTIZATION_MAP_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeQuantizationMapSessionParametersCreateInfo_KHR")
        public func validate_videoEncodeQuantizationMapSessionParametersCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeQuantizationMapSessionParametersCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_QUANTIZATION_MAP_SESSION_PARAMETERS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceVideoEncodeQuantizationMapFeatures_KHR")
        public func validate_physicalDeviceVideoEncodeQuantizationMapFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVideoEncodeQuantizationMapFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_ENCODE_QUANTIZATION_MAP_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH264QuantizationMapCapabilities_KHR")
        public func validate_videoEncodeH264QuantizationMapCapabilities_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH264QuantizationMapCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_QUANTIZATION_MAP_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeH265QuantizationMapCapabilities_KHR")
        public func validate_videoEncodeH265QuantizationMapCapabilities_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeH265QuantizationMapCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_QUANTIZATION_MAP_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoFormatH265QuantizationMapProperties_KHR")
        public func validate_videoFormatH265QuantizationMapProperties_KHR() {
            #expect(
                Ignite.StructureType.videoFormatH265QuantizationMapProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_FORMAT_H265_QUANTIZATION_MAP_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeAv1QuantizationMapCapabilities_KHR")
        public func validate_videoEncodeAv1QuantizationMapCapabilities_KHR() {
            #expect(
                Ignite.StructureType.videoEncodeAv1QuantizationMapCapabilities_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_ENCODE_AV1_QUANTIZATION_MAP_CAPABILITIES_KHR.rawValue
            )
        }

        @Test("Validate videoFormatAv1QuantizationMapProperties_KHR")
        public func validate_videoFormatAv1QuantizationMapProperties_KHR() {
            #expect(
                Ignite.StructureType.videoFormatAv1QuantizationMapProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_FORMAT_AV1_QUANTIZATION_MAP_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceRawAccessChainsFeatures_NV")
        public func validate_physicalDeviceRawAccessChainsFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceRawAccessChainsFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAW_ACCESS_CHAINS_FEATURES_NV.rawValue
            )
        }

        @Test("Validate externalComputeQueueDeviceCreateInfo_NV")
        public func validate_externalComputeQueueDeviceCreateInfo_NV() {
            #expect(
                Ignite.StructureType.externalComputeQueueDeviceCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_COMPUTE_QUEUE_DEVICE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate externalComputeQueueCreateInfo_NV")
        public func validate_externalComputeQueueCreateInfo_NV() {
            #expect(
                Ignite.StructureType.externalComputeQueueCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_COMPUTE_QUEUE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate externalComputeQueueDataParams_NV")
        public func validate_externalComputeQueueDataParams_NV() {
            #expect(
                Ignite.StructureType.externalComputeQueueDataParams_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_COMPUTE_QUEUE_DATA_PARAMS_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalComputeQueueProperties_NV")
        public func validate_physicalDeviceExternalComputeQueueProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalComputeQueueProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_COMPUTE_QUEUE_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderRelaxedExtendedInstructionFeatures_KHR")
        public func validate_physicalDeviceShaderRelaxedExtendedInstructionFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderRelaxedExtendedInstructionFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_RELAXED_EXTENDED_INSTRUCTION_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceCommandBufferInheritanceFeatures_NV")
        public func validate_physicalDeviceCommandBufferInheritanceFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCommandBufferInheritanceFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMMAND_BUFFER_INHERITANCE_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance7Features_KHR")
        public func validate_physicalDeviceMaintenance7Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance7Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_7_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance7Properties_KHR")
        public func validate_physicalDeviceMaintenance7Properties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance7Properties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_7_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceLayeredApiPropertiesList_KHR")
        public func validate_physicalDeviceLayeredApiPropertiesList_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceLayeredApiPropertiesList_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_LIST_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceLayeredApiProperties_KHR")
        public func validate_physicalDeviceLayeredApiProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceLayeredApiProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceLayeredApiVulkanProperties_KHR")
        public func validate_physicalDeviceLayeredApiVulkanProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceLayeredApiVulkanProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_VULKAN_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderAtomicFloat16VectorFeatures_NV")
        public func validate_physicalDeviceShaderAtomicFloat16VectorFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderAtomicFloat16VectorFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT16_VECTOR_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderReplicatedCompositesFeatures_EXT")
        public func validate_physicalDeviceShaderReplicatedCompositesFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderReplicatedCompositesFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_REPLICATED_COMPOSITES_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRayTracingValidationFeatures_NV")
        public func validate_physicalDeviceRayTracingValidationFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceRayTracingValidationFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_VALIDATION_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceClusterAccelerationStructureFeatures_NV")
        public func validate_physicalDeviceClusterAccelerationStructureFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceClusterAccelerationStructureFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_ACCELERATION_STRUCTURE_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceClusterAccelerationStructureProperties_NV")
        public func validate_physicalDeviceClusterAccelerationStructureProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceClusterAccelerationStructureProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_ACCELERATION_STRUCTURE_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate clusterAccelerationStructureClustersBottomLevelInput_NV")
        public func validate_clusterAccelerationStructureClustersBottomLevelInput_NV() {
            #expect(
                Ignite.StructureType.clusterAccelerationStructureClustersBottomLevelInput_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CLUSTER_ACCELERATION_STRUCTURE_CLUSTERS_BOTTOM_LEVEL_INPUT_NV.rawValue
            )
        }

        @Test("Validate clusterAccelerationStructureTriangleClusterInput_NV")
        public func validate_clusterAccelerationStructureTriangleClusterInput_NV() {
            #expect(
                Ignite.StructureType.clusterAccelerationStructureTriangleClusterInput_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CLUSTER_ACCELERATION_STRUCTURE_TRIANGLE_CLUSTER_INPUT_NV.rawValue
            )
        }

        @Test("Validate clusterAccelerationStructureMoveObjectsInput_NV")
        public func validate_clusterAccelerationStructureMoveObjectsInput_NV() {
            #expect(
                Ignite.StructureType.clusterAccelerationStructureMoveObjectsInput_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CLUSTER_ACCELERATION_STRUCTURE_MOVE_OBJECTS_INPUT_NV.rawValue
            )
        }

        @Test("Validate clusterAccelerationStructureInputInfo_NV")
        public func validate_clusterAccelerationStructureInputInfo_NV() {
            #expect(
                Ignite.StructureType.clusterAccelerationStructureInputInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CLUSTER_ACCELERATION_STRUCTURE_INPUT_INFO_NV.rawValue
            )
        }

        @Test("Validate clusterAccelerationStructureCommandsInfo_NV")
        public func validate_clusterAccelerationStructureCommandsInfo_NV() {
            #expect(
                Ignite.StructureType.clusterAccelerationStructureCommandsInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CLUSTER_ACCELERATION_STRUCTURE_COMMANDS_INFO_NV.rawValue
            )
        }

        @Test("Validate rayTracingPipelineClusterAccelerationStructureCreateInfo_NV")
        public func validate_rayTracingPipelineClusterAccelerationStructureCreateInfo_NV() {
            #expect(
                Ignite.StructureType.rayTracingPipelineClusterAccelerationStructureCreateInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CLUSTER_ACCELERATION_STRUCTURE_CREATE_INFO_NV.rawValue
            )
        }

        @Test("Validate physicalDevicePartitionedAccelerationStructureFeatures_NV")
        public func validate_physicalDevicePartitionedAccelerationStructureFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDevicePartitionedAccelerationStructureFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PARTITIONED_ACCELERATION_STRUCTURE_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDevicePartitionedAccelerationStructureProperties_NV")
        public func validate_physicalDevicePartitionedAccelerationStructureProperties_NV() {
            #expect(
                Ignite.StructureType.physicalDevicePartitionedAccelerationStructureProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PARTITIONED_ACCELERATION_STRUCTURE_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate writeDescriptorSetPartitionedAccelerationStructure_NV")
        public func validate_writeDescriptorSetPartitionedAccelerationStructure_NV() {
            #expect(
                Ignite.StructureType.writeDescriptorSetPartitionedAccelerationStructure_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_PARTITIONED_ACCELERATION_STRUCTURE_NV.rawValue
            )
        }

        @Test("Validate partitionedAccelerationStructureInstancesInput_NV")
        public func validate_partitionedAccelerationStructureInstancesInput_NV() {
            #expect(
                Ignite.StructureType.partitionedAccelerationStructureInstancesInput_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PARTITIONED_ACCELERATION_STRUCTURE_INSTANCES_INPUT_NV.rawValue
            )
        }

        @Test("Validate buildPartitionedAccelerationStructureInfo_NV")
        public func validate_buildPartitionedAccelerationStructureInfo_NV() {
            #expect(
                Ignite.StructureType.buildPartitionedAccelerationStructureInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUILD_PARTITIONED_ACCELERATION_STRUCTURE_INFO_NV.rawValue
            )
        }

        @Test("Validate partitionedAccelerationStructureFlags_NV")
        public func validate_partitionedAccelerationStructureFlags_NV() {
            #expect(
                Ignite.StructureType.partitionedAccelerationStructureFlags_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PARTITIONED_ACCELERATION_STRUCTURE_FLAGS_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceDeviceGeneratedCommandsFeatures_EXT")
        public func validate_physicalDeviceDeviceGeneratedCommandsFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDeviceGeneratedCommandsFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDeviceGeneratedCommandsProperties_EXT")
        public func validate_physicalDeviceDeviceGeneratedCommandsProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDeviceGeneratedCommandsProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate generatedCommandsMemoryRequirementsInfo_EXT")
        public func validate_generatedCommandsMemoryRequirementsInfo_EXT() {
            #expect(
                Ignite.StructureType.generatedCommandsMemoryRequirementsInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_EXT.rawValue
            )
        }

        @Test("Validate indirectExecutionSetCreateInfo_EXT")
        public func validate_indirectExecutionSetCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.indirectExecutionSetCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_INDIRECT_EXECUTION_SET_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate generatedCommandsInfo_EXT")
        public func validate_generatedCommandsInfo_EXT() {
            #expect(
                Ignite.StructureType.generatedCommandsInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_EXT.rawValue
            )
        }

        @Test("Validate indirectCommandsLayoutCreateInfo_EXT")
        public func validate_indirectCommandsLayoutCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.indirectCommandsLayoutCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate indirectCommandsLayoutToken_EXT")
        public func validate_indirectCommandsLayoutToken_EXT() {
            #expect(
                Ignite.StructureType.indirectCommandsLayoutToken_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_EXT.rawValue
            )
        }

        @Test("Validate writeIndirectExecutionSetPipeline_EXT")
        public func validate_writeIndirectExecutionSetPipeline_EXT() {
            #expect(
                Ignite.StructureType.writeIndirectExecutionSetPipeline_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_WRITE_INDIRECT_EXECUTION_SET_PIPELINE_EXT.rawValue
            )
        }

        @Test("Validate writeIndirectExecutionSetShader_EXT")
        public func validate_writeIndirectExecutionSetShader_EXT() {
            #expect(
                Ignite.StructureType.writeIndirectExecutionSetShader_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_WRITE_INDIRECT_EXECUTION_SET_SHADER_EXT.rawValue
            )
        }

        @Test("Validate indirectExecutionSetPipelineInfo_EXT")
        public func validate_indirectExecutionSetPipelineInfo_EXT() {
            #expect(
                Ignite.StructureType.indirectExecutionSetPipelineInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_INDIRECT_EXECUTION_SET_PIPELINE_INFO_EXT.rawValue
            )
        }

        @Test("Validate indirectExecutionSetShaderInfo_EXT")
        public func validate_indirectExecutionSetShaderInfo_EXT() {
            #expect(
                Ignite.StructureType.indirectExecutionSetShaderInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_INDIRECT_EXECUTION_SET_SHADER_INFO_EXT.rawValue
            )
        }

        @Test("Validate indirectExecutionSetShaderLayoutInfo_EXT")
        public func validate_indirectExecutionSetShaderLayoutInfo_EXT() {
            #expect(
                Ignite.StructureType.indirectExecutionSetShaderLayoutInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_INDIRECT_EXECUTION_SET_SHADER_LAYOUT_INFO_EXT.rawValue
            )
        }

        @Test("Validate generatedCommandsPipelineInfo_EXT")
        public func validate_generatedCommandsPipelineInfo_EXT() {
            #expect(
                Ignite.StructureType.generatedCommandsPipelineInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GENERATED_COMMANDS_PIPELINE_INFO_EXT.rawValue
            )
        }

        @Test("Validate generatedCommandsShaderInfo_EXT")
        public func validate_generatedCommandsShaderInfo_EXT() {
            #expect(
                Ignite.StructureType.generatedCommandsShaderInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_GENERATED_COMMANDS_SHADER_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance8Features_KHR")
        public func validate_physicalDeviceMaintenance8Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance8Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_8_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate memoryBarrierAccessFlags3_KHR")
        public func validate_memoryBarrierAccessFlags3_KHR() {
            #expect(
                Ignite.StructureType.memoryBarrierAccessFlags3_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_BARRIER_ACCESS_FLAGS_3_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceImageAlignmentControlFeatures_MESA")
        public func validate_physicalDeviceImageAlignmentControlFeatures_MESA() {
            #expect(
                Ignite.StructureType.physicalDeviceImageAlignmentControlFeatures_MESA.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_FEATURES_MESA.rawValue
            )
        }

        @Test("Validate physicalDeviceImageAlignmentControlProperties_MESA")
        public func validate_physicalDeviceImageAlignmentControlProperties_MESA() {
            #expect(
                Ignite.StructureType.physicalDeviceImageAlignmentControlProperties_MESA.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_PROPERTIES_MESA.rawValue
            )
        }

        @Test("Validate imageAlignmentControlCreateInfo_MESA")
        public func validate_imageAlignmentControlCreateInfo_MESA() {
            #expect(
                Ignite.StructureType.imageAlignmentControlCreateInfo_MESA.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_ALIGNMENT_CONTROL_CREATE_INFO_MESA.rawValue
            )
        }

        @Test("Validate physicalDeviceDepthClampControlFeatures_EXT")
        public func validate_physicalDeviceDepthClampControlFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDepthClampControlFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLAMP_CONTROL_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate pipelineViewportDepthClampControlCreateInfo_EXT")
        public func validate_pipelineViewportDepthClampControlCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineViewportDepthClampControlCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_DEPTH_CLAMP_CONTROL_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceVideoMaintenance2Features_KHR")
        public func validate_physicalDeviceVideoMaintenance2Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVideoMaintenance2Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_MAINTENANCE_2_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH264InlineSessionParametersInfo_KHR")
        public func validate_videoDecodeH264InlineSessionParametersInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH264InlineSessionParametersInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_INLINE_SESSION_PARAMETERS_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeH265InlineSessionParametersInfo_KHR")
        public func validate_videoDecodeH265InlineSessionParametersInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeH265InlineSessionParametersInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_INLINE_SESSION_PARAMETERS_INFO_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeAv1InlineSessionParametersInfo_KHR")
        public func validate_videoDecodeAv1InlineSessionParametersInfo_KHR() {
            #expect(
                Ignite.StructureType.videoDecodeAv1InlineSessionParametersInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_VIDEO_DECODE_AV1_INLINE_SESSION_PARAMETERS_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceHdrVividFeatures_HUAWEI")
        public func validate_physicalDeviceHdrVividFeatures_HUAWEI() {
            #expect(
                Ignite.StructureType.physicalDeviceHdrVividFeatures_HUAWEI.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HDR_VIVID_FEATURES_HUAWEI.rawValue
            )
        }

        @Test("Validate hdrVividDynamicMetadata_HUAWEI")
        public func validate_hdrVividDynamicMetadata_HUAWEI() {
            #expect(
                Ignite.StructureType.hdrVividDynamicMetadata_HUAWEI.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_HDR_VIVID_DYNAMIC_METADATA_HUAWEI.rawValue
            )
        }

        @Test("Validate physicalDeviceCooperativeMatrix2Features_NV")
        public func validate_physicalDeviceCooperativeMatrix2Features_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCooperativeMatrix2Features_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_FEATURES_NV.rawValue
            )
        }

        @Test("Validate cooperativeMatrixFlexibleDimensionsProperties_NV")
        public func validate_cooperativeMatrixFlexibleDimensionsProperties_NV() {
            #expect(
                Ignite.StructureType.cooperativeMatrixFlexibleDimensionsProperties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_FLEXIBLE_DIMENSIONS_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceCooperativeMatrix2Properties_NV")
        public func validate_physicalDeviceCooperativeMatrix2Properties_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceCooperativeMatrix2Properties_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_PROPERTIES_NV.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineOpacityMicromapFeatures_ARM")
        public func validate_physicalDevicePipelineOpacityMicromapFeatures_ARM() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineOpacityMicromapFeatures_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_OPACITY_MICROMAP_FEATURES_ARM.rawValue
            )
        }

        #if PlatformMetal
            @Test("Validate importMemoryMetalHandleInfo_EXT")
            public func validate_importMemoryMetalHandleInfo_EXT() {
                #expect(
                    Ignite.StructureType.importMemoryMetalHandleInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_IMPORT_MEMORY_METAL_HANDLE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate importMemoryMetalHandleInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_importMemoryMetalHandleInfo_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate memoryMetalHandleProperties_EXT")
            public func validate_memoryMetalHandleProperties_EXT() {
                #expect(
                    Ignite.StructureType.memoryMetalHandleProperties_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_MEMORY_METAL_HANDLE_PROPERTIES_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate memoryMetalHandleProperties_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_memoryMetalHandleProperties_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate memoryGetMetalHandleInfo_EXT")
            public func validate_memoryGetMetalHandleInfo_EXT() {
                #expect(
                    Ignite.StructureType.memoryGetMetalHandleInfo_EXT.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_MEMORY_GET_METAL_HANDLE_INFO_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate memoryGetMetalHandleInfo_EXT",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_memoryGetMetalHandleInfo_EXT() {}
        #endif

        @Test("Validate physicalDeviceDepthClampZeroOneFeatures_KHR")
        public func validate_physicalDeviceDepthClampZeroOneFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceDepthClampZeroOneFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLAMP_ZERO_ONE_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceVertexAttributeRobustnessFeatures_EXT")
        public func validate_physicalDeviceVertexAttributeRobustnessFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceVertexAttributeRobustnessFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_ROBUSTNESS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRobustness2Features_KHR")
        public func validate_physicalDeviceRobustness2Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceRobustness2Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceRobustness2Properties_KHR")
        public func validate_physicalDeviceRobustness2Properties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceRobustness2Properties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_KHR.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate setPresentConfig_NV")
            public func validate_setPresentConfig_NV() {
                #expect(
                    Ignite.StructureType.setPresentConfig_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_SET_PRESENT_CONFIG_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate setPresentConfig_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_setPresentConfig_NV() {}
        #endif

        #if EnableProvisional
            @Test("Validate physicalDevicePresentMeteringFeatures_NV")
            public func validate_physicalDevicePresentMeteringFeatures_NV() {
                #expect(
                    Ignite.StructureType.physicalDevicePresentMeteringFeatures_NV.rawValue
                        == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_METERING_FEATURES_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate physicalDevicePresentMeteringFeatures_NV",
                .disabled("This case is only available when the following trait is enabled: unknown."))
            public func validate_physicalDevicePresentMeteringFeatures_NV() {}
        #endif

        @Test("Validate physicalDeviceFragmentDensityMapOffsetFeatures_EXT")
        public func validate_physicalDeviceFragmentDensityMapOffsetFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentDensityMapOffsetFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentDensityMapOffsetProperties_EXT")
        public func validate_physicalDeviceFragmentDensityMapOffsetProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentDensityMapOffsetProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate renderPassFragmentDensityMapOffsetEndInfo_EXT")
        public func validate_renderPassFragmentDensityMapOffsetEndInfo_EXT() {
            #expect(
                Ignite.StructureType.renderPassFragmentDensityMapOffsetEndInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_EXT.rawValue
            )
        }

        @Test("Validate renderingEndInfo_EXT")
        public func validate_renderingEndInfo_EXT() {
            #expect(
                Ignite.StructureType.renderingEndInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_END_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceZeroInitializeDeviceMemoryFeatures_EXT")
        public func validate_physicalDeviceZeroInitializeDeviceMemoryFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceZeroInitializeDeviceMemoryFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_DEVICE_MEMORY_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceVariablePointerFeatures")
        public func validate_physicalDeviceVariablePointerFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceVariablePointerFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderDrawParameterFeatures")
        public func validate_physicalDeviceShaderDrawParameterFeatures() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderDrawParameterFeatures.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETER_FEATURES.rawValue
            )
        }

        @Test("Validate debugReportCreateInfo_EXT")
        public func validate_debugReportCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.debugReportCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate renderingInfo_KHR")
        public func validate_renderingInfo_KHR() {
            #expect(
                Ignite.StructureType.renderingInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_RENDERING_INFO_KHR.rawValue
            )
        }

        @Test("Validate renderingAttachmentInfo_KHR")
        public func validate_renderingAttachmentInfo_KHR() {
            #expect(
                Ignite.StructureType.renderingAttachmentInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO_KHR.rawValue
            )
        }

        @Test("Validate pipelineRenderingCreateInfo_KHR")
        public func validate_pipelineRenderingCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineRenderingCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceDynamicRenderingFeatures_KHR")
        public func validate_physicalDeviceDynamicRenderingFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceDynamicRenderingFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate commandBufferInheritanceRenderingInfo_KHR")
        public func validate_commandBufferInheritanceRenderingInfo_KHR() {
            #expect(
                Ignite.StructureType.commandBufferInheritanceRenderingInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO_KHR.rawValue
            )
        }

        @Test("Validate renderPassMultiviewCreateInfo_KHR")
        public func validate_renderPassMultiviewCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.renderPassMultiviewCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMultiviewFeatures_KHR")
        public func validate_physicalDeviceMultiviewFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMultiviewFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMultiviewProperties_KHR")
        public func validate_physicalDeviceMultiviewProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMultiviewProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceFeatures2_KHR")
        public func validate_physicalDeviceFeatures2_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceFeatures2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceProperties2_KHR")
        public func validate_physicalDeviceProperties2_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceProperties2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2_KHR.rawValue
            )
        }

        @Test("Validate formatProperties2_KHR")
        public func validate_formatProperties2_KHR() {
            #expect(
                Ignite.StructureType.formatProperties2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2_KHR.rawValue
            )
        }

        @Test("Validate imageFormatProperties2_KHR")
        public func validate_imageFormatProperties2_KHR() {
            #expect(
                Ignite.StructureType.imageFormatProperties2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceImageFormatInfo2_KHR")
        public func validate_physicalDeviceImageFormatInfo2_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceImageFormatInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate queueFamilyProperties2_KHR")
        public func validate_queueFamilyProperties2_KHR() {
            #expect(
                Ignite.StructureType.queueFamilyProperties2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMemoryProperties2_KHR")
        public func validate_physicalDeviceMemoryProperties2_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMemoryProperties2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2_KHR.rawValue
            )
        }

        @Test("Validate sparseImageFormatProperties2_KHR")
        public func validate_sparseImageFormatProperties2_KHR() {
            #expect(
                Ignite.StructureType.sparseImageFormatProperties2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceSparseImageFormatInfo2_KHR")
        public func validate_physicalDeviceSparseImageFormatInfo2_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceSparseImageFormatInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate memoryAllocateFlagsInfo_KHR")
        public func validate_memoryAllocateFlagsInfo_KHR() {
            #expect(
                Ignite.StructureType.memoryAllocateFlagsInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceGroupRenderPassBeginInfo_KHR")
        public func validate_deviceGroupRenderPassBeginInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceGroupRenderPassBeginInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceGroupCommandBufferBeginInfo_KHR")
        public func validate_deviceGroupCommandBufferBeginInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceGroupCommandBufferBeginInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceGroupSubmitInfo_KHR")
        public func validate_deviceGroupSubmitInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceGroupSubmitInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceGroupBindSparseInfo_KHR")
        public func validate_deviceGroupBindSparseInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceGroupBindSparseInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHR.rawValue
            )
        }

        @Test("Validate bindBufferMemoryDeviceGroupInfo_KHR")
        public func validate_bindBufferMemoryDeviceGroupInfo_KHR() {
            #expect(
                Ignite.StructureType.bindBufferMemoryDeviceGroupInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHR.rawValue
            )
        }

        @Test("Validate bindImageMemoryDeviceGroupInfo_KHR")
        public func validate_bindImageMemoryDeviceGroupInfo_KHR() {
            #expect(
                Ignite.StructureType.bindImageMemoryDeviceGroupInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceTextureCompressionAstcHdrFeatures_EXT")
        public func validate_physicalDeviceTextureCompressionAstcHdrFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceTextureCompressionAstcHdrFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate pipelineRobustnessCreateInfo_EXT")
        public func validate_pipelineRobustnessCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineRobustnessCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_ROBUSTNESS_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineRobustnessFeatures_EXT")
        public func validate_physicalDevicePipelineRobustnessFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineRobustnessFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineRobustnessProperties_EXT")
        public func validate_physicalDevicePipelineRobustnessProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineRobustnessProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceGroupProperties_KHR")
        public func validate_physicalDeviceGroupProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceGroupProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate deviceGroupDeviceCreateInfo_KHR")
        public func validate_deviceGroupDeviceCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceGroupDeviceCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalImageFormatInfo_KHR")
        public func validate_physicalDeviceExternalImageFormatInfo_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalImageFormatInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO_KHR.rawValue
            )
        }

        @Test("Validate externalImageFormatProperties_KHR")
        public func validate_externalImageFormatProperties_KHR() {
            #expect(
                Ignite.StructureType.externalImageFormatProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalBufferInfo_KHR")
        public func validate_physicalDeviceExternalBufferInfo_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalBufferInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO_KHR.rawValue
            )
        }

        @Test("Validate externalBufferProperties_KHR")
        public func validate_externalBufferProperties_KHR() {
            #expect(
                Ignite.StructureType.externalBufferProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceIdProperties_KHR")
        public func validate_physicalDeviceIdProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceIdProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate externalMemoryBufferCreateInfo_KHR")
        public func validate_externalMemoryBufferCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.externalMemoryBufferCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate externalMemoryImageCreateInfo_KHR")
        public func validate_externalMemoryImageCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.externalMemoryImageCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate exportMemoryAllocateInfo_KHR")
        public func validate_exportMemoryAllocateInfo_KHR() {
            #expect(
                Ignite.StructureType.exportMemoryAllocateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalSemaphoreInfo_KHR")
        public func validate_physicalDeviceExternalSemaphoreInfo_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalSemaphoreInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR.rawValue
            )
        }

        @Test("Validate externalSemaphoreProperties_KHR")
        public func validate_externalSemaphoreProperties_KHR() {
            #expect(
                Ignite.StructureType.externalSemaphoreProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate exportSemaphoreCreateInfo_KHR")
        public func validate_exportSemaphoreCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.exportSemaphoreCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDevicePushDescriptorProperties_KHR")
        public func validate_physicalDevicePushDescriptorProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDevicePushDescriptorProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderFloat16Int8Features_KHR")
        public func validate_physicalDeviceShaderFloat16Int8Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderFloat16Int8Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceFloat16Int8Features_KHR")
        public func validate_physicalDeviceFloat16Int8Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceFloat16Int8Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT16_INT8_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDevice16bitStorageFeatures_KHR")
        public func validate_physicalDevice16bitStorageFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDevice16bitStorageFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate descriptorUpdateTemplateCreateInfo_KHR")
        public func validate_descriptorUpdateTemplateCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.descriptorUpdateTemplateCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceImagelessFramebufferFeatures_KHR")
        public func validate_physicalDeviceImagelessFramebufferFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceImagelessFramebufferFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate framebufferAttachmentsCreateInfo_KHR")
        public func validate_framebufferAttachmentsCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.framebufferAttachmentsCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate framebufferAttachmentImageInfo_KHR")
        public func validate_framebufferAttachmentImageInfo_KHR() {
            #expect(
                Ignite.StructureType.framebufferAttachmentImageInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO_KHR.rawValue
            )
        }

        @Test("Validate renderPassAttachmentBeginInfo_KHR")
        public func validate_renderPassAttachmentBeginInfo_KHR() {
            #expect(
                Ignite.StructureType.renderPassAttachmentBeginInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO_KHR.rawValue
            )
        }

        @Test("Validate attachmentDescription2_KHR")
        public func validate_attachmentDescription2_KHR() {
            #expect(
                Ignite.StructureType.attachmentDescription2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2_KHR.rawValue
            )
        }

        @Test("Validate attachmentReference2_KHR")
        public func validate_attachmentReference2_KHR() {
            #expect(
                Ignite.StructureType.attachmentReference2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2_KHR.rawValue
            )
        }

        @Test("Validate subpassDescription2_KHR")
        public func validate_subpassDescription2_KHR() {
            #expect(
                Ignite.StructureType.subpassDescription2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2_KHR.rawValue
            )
        }

        @Test("Validate subpassDependency2_KHR")
        public func validate_subpassDependency2_KHR() {
            #expect(
                Ignite.StructureType.subpassDependency2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2_KHR.rawValue
            )
        }

        @Test("Validate renderPassCreateInfo2_KHR")
        public func validate_renderPassCreateInfo2_KHR() {
            #expect(
                Ignite.StructureType.renderPassCreateInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate subpassBeginInfo_KHR")
        public func validate_subpassBeginInfo_KHR() {
            #expect(
                Ignite.StructureType.subpassBeginInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO_KHR.rawValue
            )
        }

        @Test("Validate subpassEndInfo_KHR")
        public func validate_subpassEndInfo_KHR() {
            #expect(
                Ignite.StructureType.subpassEndInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_END_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceExternalFenceInfo_KHR")
        public func validate_physicalDeviceExternalFenceInfo_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceExternalFenceInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO_KHR.rawValue
            )
        }

        @Test("Validate externalFenceProperties_KHR")
        public func validate_externalFenceProperties_KHR() {
            #expect(
                Ignite.StructureType.externalFenceProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate exportFenceCreateInfo_KHR")
        public func validate_exportFenceCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.exportFenceCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDevicePointClippingProperties_KHR")
        public func validate_physicalDevicePointClippingProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDevicePointClippingProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate renderPassInputAttachmentAspectCreateInfo_KHR")
        public func validate_renderPassInputAttachmentAspectCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.renderPassInputAttachmentAspectCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate imageViewUsageCreateInfo_KHR")
        public func validate_imageViewUsageCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.imageViewUsageCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate pipelineTessellationDomainOriginStateCreateInfo_KHR")
        public func validate_pipelineTessellationDomainOriginStateCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineTessellationDomainOriginStateCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceVariablePointersFeatures_KHR")
        public func validate_physicalDeviceVariablePointersFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVariablePointersFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceVariablePointerFeatures_KHR")
        public func validate_physicalDeviceVariablePointerFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVariablePointerFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate memoryDedicatedRequirements_KHR")
        public func validate_memoryDedicatedRequirements_KHR() {
            #expect(
                Ignite.StructureType.memoryDedicatedRequirements_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS_KHR.rawValue
            )
        }

        @Test("Validate memoryDedicatedAllocateInfo_KHR")
        public func validate_memoryDedicatedAllocateInfo_KHR() {
            #expect(
                Ignite.StructureType.memoryDedicatedAllocateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceSamplerFilterMinmaxProperties_EXT")
        public func validate_physicalDeviceSamplerFilterMinmaxProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceSamplerFilterMinmaxProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate samplerReductionModeCreateInfo_EXT")
        public func validate_samplerReductionModeCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.samplerReductionModeCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceInlineUniformBlockFeatures_EXT")
        public func validate_physicalDeviceInlineUniformBlockFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceInlineUniformBlockFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceInlineUniformBlockProperties_EXT")
        public func validate_physicalDeviceInlineUniformBlockProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceInlineUniformBlockProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate writeDescriptorSetInlineUniformBlock_EXT")
        public func validate_writeDescriptorSetInlineUniformBlock_EXT() {
            #expect(
                Ignite.StructureType.writeDescriptorSetInlineUniformBlock_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT.rawValue
            )
        }

        @Test("Validate descriptorPoolInlineUniformBlockCreateInfo_EXT")
        public func validate_descriptorPoolInlineUniformBlockCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.descriptorPoolInlineUniformBlockCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate bufferMemoryRequirementsInfo2_KHR")
        public func validate_bufferMemoryRequirementsInfo2_KHR() {
            #expect(
                Ignite.StructureType.bufferMemoryRequirementsInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate imageMemoryRequirementsInfo2_KHR")
        public func validate_imageMemoryRequirementsInfo2_KHR() {
            #expect(
                Ignite.StructureType.imageMemoryRequirementsInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate imageSparseMemoryRequirementsInfo2_KHR")
        public func validate_imageSparseMemoryRequirementsInfo2_KHR() {
            #expect(
                Ignite.StructureType.imageSparseMemoryRequirementsInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate memoryRequirements2_KHR")
        public func validate_memoryRequirements2_KHR() {
            #expect(
                Ignite.StructureType.memoryRequirements2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2_KHR.rawValue
            )
        }

        @Test("Validate sparseImageMemoryRequirements2_KHR")
        public func validate_sparseImageMemoryRequirements2_KHR() {
            #expect(
                Ignite.StructureType.sparseImageMemoryRequirements2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR.rawValue
            )
        }

        @Test("Validate imageFormatListCreateInfo_KHR")
        public func validate_imageFormatListCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.imageFormatListCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate attachmentSampleCountInfo_NV")
        public func validate_attachmentSampleCountInfo_NV() {
            #expect(
                Ignite.StructureType.attachmentSampleCountInfo_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_NV.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversionCreateInfo_KHR")
        public func validate_samplerYcbcrConversionCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.samplerYcbcrConversionCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversionInfo_KHR")
        public func validate_samplerYcbcrConversionInfo_KHR() {
            #expect(
                Ignite.StructureType.samplerYcbcrConversionInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO_KHR.rawValue
            )
        }

        @Test("Validate bindImagePlaneMemoryInfo_KHR")
        public func validate_bindImagePlaneMemoryInfo_KHR() {
            #expect(
                Ignite.StructureType.bindImagePlaneMemoryInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO_KHR.rawValue
            )
        }

        @Test("Validate imagePlaneMemoryRequirementsInfo_KHR")
        public func validate_imagePlaneMemoryRequirementsInfo_KHR() {
            #expect(
                Ignite.StructureType.imagePlaneMemoryRequirementsInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceSamplerYcbcrConversionFeatures_KHR")
        public func validate_physicalDeviceSamplerYcbcrConversionFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceSamplerYcbcrConversionFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate samplerYcbcrConversionImageFormatProperties_KHR")
        public func validate_samplerYcbcrConversionImageFormatProperties_KHR() {
            #expect(
                Ignite.StructureType.samplerYcbcrConversionImageFormatProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate bindBufferMemoryInfo_KHR")
        public func validate_bindBufferMemoryInfo_KHR() {
            #expect(
                Ignite.StructureType.bindBufferMemoryInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO_KHR.rawValue
            )
        }

        @Test("Validate bindImageMemoryInfo_KHR")
        public func validate_bindImageMemoryInfo_KHR() {
            #expect(
                Ignite.StructureType.bindImageMemoryInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO_KHR.rawValue
            )
        }

        @Test("Validate descriptorSetLayoutBindingFlagsCreateInfo_EXT")
        public func validate_descriptorSetLayoutBindingFlagsCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.descriptorSetLayoutBindingFlagsCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDescriptorIndexingFeatures_EXT")
        public func validate_physicalDeviceDescriptorIndexingFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDescriptorIndexingFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDescriptorIndexingProperties_EXT")
        public func validate_physicalDeviceDescriptorIndexingProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDescriptorIndexingProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate descriptorSetVariableDescriptorCountAllocateInfo_EXT")
        public func validate_descriptorSetVariableDescriptorCountAllocateInfo_EXT() {
            #expect(
                Ignite.StructureType.descriptorSetVariableDescriptorCountAllocateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate descriptorSetVariableDescriptorCountLayoutSupport_EXT")
        public func validate_descriptorSetVariableDescriptorCountLayoutSupport_EXT() {
            #expect(
                Ignite.StructureType.descriptorSetVariableDescriptorCountLayoutSupport_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance3Properties_KHR")
        public func validate_physicalDeviceMaintenance3Properties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance3Properties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate descriptorSetLayoutSupport_KHR")
        public func validate_descriptorSetLayoutSupport_KHR() {
            #expect(
                Ignite.StructureType.descriptorSetLayoutSupport_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT_KHR.rawValue
            )
        }

        @Test("Validate deviceQueueGlobalPriorityCreateInfo_EXT")
        public func validate_deviceQueueGlobalPriorityCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.deviceQueueGlobalPriorityCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderSubgroupExtendedTypesFeatures_KHR")
        public func validate_physicalDeviceShaderSubgroupExtendedTypesFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderSubgroupExtendedTypesFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDevice8bitStorageFeatures_KHR")
        public func validate_physicalDevice8bitStorageFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDevice8bitStorageFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderAtomicInt64Features_KHR")
        public func validate_physicalDeviceShaderAtomicInt64Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderAtomicInt64Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate calibratedTimestampInfo_EXT")
        public func validate_calibratedTimestampInfo_EXT() {
            #expect(
                Ignite.StructureType.calibratedTimestampInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT.rawValue
            )
        }

        @Test("Validate deviceQueueGlobalPriorityCreateInfo_KHR")
        public func validate_deviceQueueGlobalPriorityCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceQueueGlobalPriorityCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceGlobalPriorityQueryFeatures_KHR")
        public func validate_physicalDeviceGlobalPriorityQueryFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceGlobalPriorityQueryFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate queueFamilyGlobalPriorityProperties_KHR")
        public func validate_queueFamilyGlobalPriorityProperties_KHR() {
            #expect(
                Ignite.StructureType.queueFamilyGlobalPriorityProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate pipelineVertexInputDivisorStateCreateInfo_EXT")
        public func validate_pipelineVertexInputDivisorStateCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineVertexInputDivisorStateCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceVertexAttributeDivisorFeatures_EXT")
        public func validate_physicalDeviceVertexAttributeDivisorFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceVertexAttributeDivisorFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate pipelineCreationFeedbackCreateInfo_EXT")
        public func validate_pipelineCreationFeedbackCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineCreationFeedbackCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDriverProperties_KHR")
        public func validate_physicalDeviceDriverProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceDriverProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceFloatControlsProperties_KHR")
        public func validate_physicalDeviceFloatControlsProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceFloatControlsProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceDepthStencilResolveProperties_KHR")
        public func validate_physicalDeviceDepthStencilResolveProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceDepthStencilResolveProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate subpassDescriptionDepthStencilResolve_KHR")
        public func validate_subpassDescriptionDepthStencilResolve_KHR() {
            #expect(
                Ignite.StructureType.subpassDescriptionDepthStencilResolve_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceComputeShaderDerivativesFeatures_NV")
        public func validate_physicalDeviceComputeShaderDerivativesFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceComputeShaderDerivativesFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentShaderBarycentricFeatures_NV")
        public func validate_physicalDeviceFragmentShaderBarycentricFeatures_NV() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentShaderBarycentricFeatures_NV.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV.rawValue
            )
        }

        @Test("Validate physicalDeviceTimelineSemaphoreFeatures_KHR")
        public func validate_physicalDeviceTimelineSemaphoreFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceTimelineSemaphoreFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceTimelineSemaphoreProperties_KHR")
        public func validate_physicalDeviceTimelineSemaphoreProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceTimelineSemaphoreProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate semaphoreTypeCreateInfo_KHR")
        public func validate_semaphoreTypeCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.semaphoreTypeCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate timelineSemaphoreSubmitInfo_KHR")
        public func validate_timelineSemaphoreSubmitInfo_KHR() {
            #expect(
                Ignite.StructureType.timelineSemaphoreSubmitInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO_KHR.rawValue
            )
        }

        @Test("Validate semaphoreWaitInfo_KHR")
        public func validate_semaphoreWaitInfo_KHR() {
            #expect(
                Ignite.StructureType.semaphoreWaitInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO_KHR.rawValue
            )
        }

        @Test("Validate semaphoreSignalInfo_KHR")
        public func validate_semaphoreSignalInfo_KHR() {
            #expect(
                Ignite.StructureType.semaphoreSignalInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO_KHR.rawValue
            )
        }

        @Test("Validate queryPoolCreateInfo_INTEL")
        public func validate_queryPoolCreateInfo_INTEL() {
            #expect(
                Ignite.StructureType.queryPoolCreateInfo_INTEL.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO_INTEL.rawValue
            )
        }

        @Test("Validate physicalDeviceVulkanMemoryModelFeatures_KHR")
        public func validate_physicalDeviceVulkanMemoryModelFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVulkanMemoryModelFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderTerminateInvocationFeatures_KHR")
        public func validate_physicalDeviceShaderTerminateInvocationFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderTerminateInvocationFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceScalarBlockLayoutFeatures_EXT")
        public func validate_physicalDeviceScalarBlockLayoutFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceScalarBlockLayoutFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceSubgroupSizeControlProperties_EXT")
        public func validate_physicalDeviceSubgroupSizeControlProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceSubgroupSizeControlProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate pipelineShaderStageRequiredSubgroupSizeCreateInfo_EXT")
        public func validate_pipelineShaderStageRequiredSubgroupSizeCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineShaderStageRequiredSubgroupSizeCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceSubgroupSizeControlFeatures_EXT")
        public func validate_physicalDeviceSubgroupSizeControlFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceSubgroupSizeControlFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceDynamicRenderingLocalReadFeatures_KHR")
        public func validate_physicalDeviceDynamicRenderingLocalReadFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceDynamicRenderingLocalReadFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_LOCAL_READ_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate renderingAttachmentLocationInfo_KHR")
        public func validate_renderingAttachmentLocationInfo_KHR() {
            #expect(
                Ignite.StructureType.renderingAttachmentLocationInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_LOCATION_INFO_KHR.rawValue
            )
        }

        @Test("Validate renderingInputAttachmentIndexInfo_KHR")
        public func validate_renderingInputAttachmentIndexInfo_KHR() {
            #expect(
                Ignite.StructureType.renderingInputAttachmentIndexInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_INPUT_ATTACHMENT_INDEX_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceSeparateDepthStencilLayoutsFeatures_KHR")
        public func validate_physicalDeviceSeparateDepthStencilLayoutsFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceSeparateDepthStencilLayoutsFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate attachmentReferenceStencilLayout_KHR")
        public func validate_attachmentReferenceStencilLayout_KHR() {
            #expect(
                Ignite.StructureType.attachmentReferenceStencilLayout_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT_KHR.rawValue
            )
        }

        @Test("Validate attachmentDescriptionStencilLayout_KHR")
        public func validate_attachmentDescriptionStencilLayout_KHR() {
            #expect(
                Ignite.StructureType.attachmentDescriptionStencilLayout_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceBufferAddressFeatures_EXT")
        public func validate_physicalDeviceBufferAddressFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceBufferAddressFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_ADDRESS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate bufferDeviceAddressInfo_EXT")
        public func validate_bufferDeviceAddressInfo_EXT() {
            #expect(
                Ignite.StructureType.bufferDeviceAddressInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceToolProperties_EXT")
        public func validate_physicalDeviceToolProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceToolProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate imageStencilUsageCreateInfo_EXT")
        public func validate_imageStencilUsageCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.imageStencilUsageCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceUniformBufferStandardLayoutFeatures_KHR")
        public func validate_physicalDeviceUniformBufferStandardLayoutFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceUniformBufferStandardLayoutFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceBufferDeviceAddressFeatures_KHR")
        public func validate_physicalDeviceBufferDeviceAddressFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceBufferDeviceAddressFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate bufferDeviceAddressInfo_KHR")
        public func validate_bufferDeviceAddressInfo_KHR() {
            #expect(
                Ignite.StructureType.bufferDeviceAddressInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_KHR.rawValue
            )
        }

        @Test("Validate bufferOpaqueCaptureAddressCreateInfo_KHR")
        public func validate_bufferOpaqueCaptureAddressCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.bufferOpaqueCaptureAddressCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate memoryOpaqueCaptureAddressAllocateInfo_KHR")
        public func validate_memoryOpaqueCaptureAddressAllocateInfo_KHR() {
            #expect(
                Ignite.StructureType.memoryOpaqueCaptureAddressAllocateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceMemoryOpaqueCaptureAddressInfo_KHR")
        public func validate_deviceMemoryOpaqueCaptureAddressInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceMemoryOpaqueCaptureAddressInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceLineRasterizationFeatures_EXT")
        public func validate_physicalDeviceLineRasterizationFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceLineRasterizationFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate pipelineRasterizationLineStateCreateInfo_EXT")
        public func validate_pipelineRasterizationLineStateCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineRasterizationLineStateCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceLineRasterizationProperties_EXT")
        public func validate_physicalDeviceLineRasterizationProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceLineRasterizationProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceHostQueryResetFeatures_EXT")
        public func validate_physicalDeviceHostQueryResetFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceHostQueryResetFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceIndexTypeUint8Features_EXT")
        public func validate_physicalDeviceIndexTypeUint8Features_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceIndexTypeUint8Features_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceHostImageCopyFeatures_EXT")
        public func validate_physicalDeviceHostImageCopyFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceHostImageCopyFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceHostImageCopyProperties_EXT")
        public func validate_physicalDeviceHostImageCopyProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceHostImageCopyProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate memoryToImageCopy_EXT")
        public func validate_memoryToImageCopy_EXT() {
            #expect(
                Ignite.StructureType.memoryToImageCopy_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MEMORY_TO_IMAGE_COPY_EXT.rawValue
            )
        }

        @Test("Validate imageToMemoryCopy_EXT")
        public func validate_imageToMemoryCopy_EXT() {
            #expect(
                Ignite.StructureType.imageToMemoryCopy_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_TO_MEMORY_COPY_EXT.rawValue
            )
        }

        @Test("Validate copyImageToMemoryInfo_EXT")
        public func validate_copyImageToMemoryInfo_EXT() {
            #expect(
                Ignite.StructureType.copyImageToMemoryInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_IMAGE_TO_MEMORY_INFO_EXT.rawValue
            )
        }

        @Test("Validate copyMemoryToImageInfo_EXT")
        public func validate_copyMemoryToImageInfo_EXT() {
            #expect(
                Ignite.StructureType.copyMemoryToImageInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_MEMORY_TO_IMAGE_INFO_EXT.rawValue
            )
        }

        @Test("Validate hostImageLayoutTransitionInfo_EXT")
        public func validate_hostImageLayoutTransitionInfo_EXT() {
            #expect(
                Ignite.StructureType.hostImageLayoutTransitionInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_HOST_IMAGE_LAYOUT_TRANSITION_INFO_EXT.rawValue
            )
        }

        @Test("Validate copyImageToImageInfo_EXT")
        public func validate_copyImageToImageInfo_EXT() {
            #expect(
                Ignite.StructureType.copyImageToImageInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_IMAGE_TO_IMAGE_INFO_EXT.rawValue
            )
        }

        @Test("Validate subresourceHostMemcpySize_EXT")
        public func validate_subresourceHostMemcpySize_EXT() {
            #expect(
                Ignite.StructureType.subresourceHostMemcpySize_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBRESOURCE_HOST_MEMCPY_SIZE_EXT.rawValue
            )
        }

        @Test("Validate hostImageCopyDevicePerformanceQuery_EXT")
        public func validate_hostImageCopyDevicePerformanceQuery_EXT() {
            #expect(
                Ignite.StructureType.hostImageCopyDevicePerformanceQuery_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_HOST_IMAGE_COPY_DEVICE_PERFORMANCE_QUERY_EXT.rawValue
            )
        }

        @Test("Validate memoryMapInfo_KHR")
        public func validate_memoryMapInfo_KHR() {
            #expect(
                Ignite.StructureType.memoryMapInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_MAP_INFO_KHR.rawValue
            )
        }

        @Test("Validate memoryUnmapInfo_KHR")
        public func validate_memoryUnmapInfo_KHR() {
            #expect(
                Ignite.StructureType.memoryUnmapInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_UNMAP_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderDemoteToHelperInvocationFeatures_EXT")
        public func validate_physicalDeviceShaderDemoteToHelperInvocationFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderDemoteToHelperInvocationFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderIntegerDotProductFeatures_KHR")
        public func validate_physicalDeviceShaderIntegerDotProductFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderIntegerDotProductFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderIntegerDotProductProperties_KHR")
        public func validate_physicalDeviceShaderIntegerDotProductProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderIntegerDotProductProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceTexelBufferAlignmentProperties_EXT")
        public func validate_physicalDeviceTexelBufferAlignmentProperties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceTexelBufferAlignmentProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRobustness2Features_EXT")
        public func validate_physicalDeviceRobustness2Features_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceRobustness2Features_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRobustness2Properties_EXT")
        public func validate_physicalDeviceRobustness2Properties_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceRobustness2Properties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePrivateDataFeatures_EXT")
        public func validate_physicalDevicePrivateDataFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePrivateDataFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate devicePrivateDataCreateInfo_EXT")
        public func validate_devicePrivateDataCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.devicePrivateDataCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate privateDataSlotCreateInfo_EXT")
        public func validate_privateDataSlotCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.privateDataSlotCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineCreationCacheControlFeatures_EXT")
        public func validate_physicalDevicePipelineCreationCacheControlFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineCreationCacheControlFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate memoryBarrier2_KHR")
        public func validate_memoryBarrier2_KHR() {
            #expect(
                Ignite.StructureType.memoryBarrier2_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_MEMORY_BARRIER_2_KHR.rawValue
            )
        }

        @Test("Validate bufferMemoryBarrier2_KHR")
        public func validate_bufferMemoryBarrier2_KHR() {
            #expect(
                Ignite.StructureType.bufferMemoryBarrier2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2_KHR.rawValue
            )
        }

        @Test("Validate imageMemoryBarrier2_KHR")
        public func validate_imageMemoryBarrier2_KHR() {
            #expect(
                Ignite.StructureType.imageMemoryBarrier2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2_KHR.rawValue
            )
        }

        @Test("Validate dependencyInfo_KHR")
        public func validate_dependencyInfo_KHR() {
            #expect(
                Ignite.StructureType.dependencyInfo_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_DEPENDENCY_INFO_KHR.rawValue
            )
        }

        @Test("Validate submitInfo2_KHR")
        public func validate_submitInfo2_KHR() {
            #expect(
                Ignite.StructureType.submitInfo2_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_SUBMIT_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate semaphoreSubmitInfo_KHR")
        public func validate_semaphoreSubmitInfo_KHR() {
            #expect(
                Ignite.StructureType.semaphoreSubmitInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO_KHR.rawValue
            )
        }

        @Test("Validate commandBufferSubmitInfo_KHR")
        public func validate_commandBufferSubmitInfo_KHR() {
            #expect(
                Ignite.StructureType.commandBufferSubmitInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceSynchronization2Features_KHR")
        public func validate_physicalDeviceSynchronization2Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceSynchronization2Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceZeroInitializeWorkgroupMemoryFeatures_KHR")
        public func validate_physicalDeviceZeroInitializeWorkgroupMemoryFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceZeroInitializeWorkgroupMemoryFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceImageRobustnessFeatures_EXT")
        public func validate_physicalDeviceImageRobustnessFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceImageRobustnessFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate copyBufferInfo2_KHR")
        public func validate_copyBufferInfo2_KHR() {
            #expect(
                Ignite.StructureType.copyBufferInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_BUFFER_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate copyImageInfo2_KHR")
        public func validate_copyImageInfo2_KHR() {
            #expect(
                Ignite.StructureType.copyImageInfo2_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_COPY_IMAGE_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate copyBufferToImageInfo2_KHR")
        public func validate_copyBufferToImageInfo2_KHR() {
            #expect(
                Ignite.StructureType.copyBufferToImageInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate copyImageToBufferInfo2_KHR")
        public func validate_copyImageToBufferInfo2_KHR() {
            #expect(
                Ignite.StructureType.copyImageToBufferInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate blitImageInfo2_KHR")
        public func validate_blitImageInfo2_KHR() {
            #expect(
                Ignite.StructureType.blitImageInfo2_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_BLIT_IMAGE_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate resolveImageInfo2_KHR")
        public func validate_resolveImageInfo2_KHR() {
            #expect(
                Ignite.StructureType.resolveImageInfo2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2_KHR.rawValue
            )
        }

        @Test("Validate bufferCopy2_KHR")
        public func validate_bufferCopy2_KHR() {
            #expect(
                Ignite.StructureType.bufferCopy2_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_BUFFER_COPY_2_KHR.rawValue
            )
        }

        @Test("Validate imageCopy2_KHR")
        public func validate_imageCopy2_KHR() {
            #expect(
                Ignite.StructureType.imageCopy2_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_COPY_2_KHR.rawValue
            )
        }

        @Test("Validate imageBlit2_KHR")
        public func validate_imageBlit2_KHR() {
            #expect(
                Ignite.StructureType.imageBlit2_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_BLIT_2_KHR.rawValue
            )
        }

        @Test("Validate bufferImageCopy2_KHR")
        public func validate_bufferImageCopy2_KHR() {
            #expect(
                Ignite.StructureType.bufferImageCopy2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2_KHR.rawValue
            )
        }

        @Test("Validate imageResolve2_KHR")
        public func validate_imageResolve2_KHR() {
            #expect(
                Ignite.StructureType.imageResolve2_KHR.rawValue == CVulkan.VK_STRUCTURE_TYPE_IMAGE_RESOLVE_2_KHR.rawValue
            )
        }

        @Test("Validate subresourceLayout2_EXT")
        public func validate_subresourceLayout2_EXT() {
            #expect(
                Ignite.StructureType.subresourceLayout2_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2_EXT.rawValue
            )
        }

        @Test("Validate imageSubresource2_EXT")
        public func validate_imageSubresource2_EXT() {
            #expect(
                Ignite.StructureType.imageSubresource2_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceRasterizationOrderAttachmentAccessFeatures_ARM")
        public func validate_physicalDeviceRasterizationOrderAttachmentAccessFeatures_ARM() {
            #expect(
                Ignite.StructureType.physicalDeviceRasterizationOrderAttachmentAccessFeatures_ARM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_ARM.rawValue
            )
        }

        @Test("Validate physicalDeviceMutableDescriptorTypeFeatures_VALVE")
        public func validate_physicalDeviceMutableDescriptorTypeFeatures_VALVE() {
            #expect(
                Ignite.StructureType.physicalDeviceMutableDescriptorTypeFeatures_VALVE.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_VALVE.rawValue
            )
        }

        @Test("Validate mutableDescriptorTypeCreateInfo_VALVE")
        public func validate_mutableDescriptorTypeCreateInfo_VALVE() {
            #expect(
                Ignite.StructureType.mutableDescriptorTypeCreateInfo_VALVE.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_VALVE.rawValue
            )
        }

        @Test("Validate formatProperties3_KHR")
        public func validate_formatProperties3_KHR() {
            #expect(
                Ignite.StructureType.formatProperties3_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_3_KHR.rawValue
            )
        }

        @Test("Validate pipelineInfo_EXT")
        public func validate_pipelineInfo_EXT() {
            #expect(
                Ignite.StructureType.pipelineInfo_EXT.rawValue == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceGlobalPriorityQueryFeatures_EXT")
        public func validate_physicalDeviceGlobalPriorityQueryFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceGlobalPriorityQueryFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate queueFamilyGlobalPriorityProperties_EXT")
        public func validate_queueFamilyGlobalPriorityProperties_EXT() {
            #expect(
                Ignite.StructureType.queueFamilyGlobalPriorityProperties_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance4Features_KHR")
        public func validate_physicalDeviceMaintenance4Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance4Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance4Properties_KHR")
        public func validate_physicalDeviceMaintenance4Properties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance4Properties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate deviceBufferMemoryRequirements_KHR")
        public func validate_deviceBufferMemoryRequirements_KHR() {
            #expect(
                Ignite.StructureType.deviceBufferMemoryRequirements_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS_KHR.rawValue
            )
        }

        @Test("Validate deviceImageMemoryRequirements_KHR")
        public func validate_deviceImageMemoryRequirements_KHR() {
            #expect(
                Ignite.StructureType.deviceImageMemoryRequirements_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderSubgroupRotateFeatures_KHR")
        public func validate_physicalDeviceShaderSubgroupRotateFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderSubgroupRotateFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_ROTATE_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceDepthClampZeroOneFeatures_EXT")
        public func validate_physicalDeviceDepthClampZeroOneFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDeviceDepthClampZeroOneFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLAMP_ZERO_ONE_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentDensityMapOffsetFeatures_QCOM")
        public func validate_physicalDeviceFragmentDensityMapOffsetFeatures_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentDensityMapOffsetFeatures_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_QCOM.rawValue
            )
        }

        @Test("Validate physicalDeviceFragmentDensityMapOffsetProperties_QCOM")
        public func validate_physicalDeviceFragmentDensityMapOffsetProperties_QCOM() {
            #expect(
                Ignite.StructureType.physicalDeviceFragmentDensityMapOffsetProperties_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_QCOM.rawValue
            )
        }

        @Test("Validate subpassFragmentDensityMapOffsetEndInfo_QCOM")
        public func validate_subpassFragmentDensityMapOffsetEndInfo_QCOM() {
            #expect(
                Ignite.StructureType.subpassFragmentDensityMapOffsetEndInfo_QCOM.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBPASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_QCOM.rawValue
            )
        }

        @Test("Validate physicalDevicePipelineProtectedAccessFeatures_EXT")
        public func validate_physicalDevicePipelineProtectedAccessFeatures_EXT() {
            #expect(
                Ignite.StructureType.physicalDevicePipelineProtectedAccessFeatures_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance5Features_KHR")
        public func validate_physicalDeviceMaintenance5Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance5Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance5Properties_KHR")
        public func validate_physicalDeviceMaintenance5Properties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance5Properties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate renderingAreaInfo_KHR")
        public func validate_renderingAreaInfo_KHR() {
            #expect(
                Ignite.StructureType.renderingAreaInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_RENDERING_AREA_INFO_KHR.rawValue
            )
        }

        @Test("Validate deviceImageSubresourceInfo_KHR")
        public func validate_deviceImageSubresourceInfo_KHR() {
            #expect(
                Ignite.StructureType.deviceImageSubresourceInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_DEVICE_IMAGE_SUBRESOURCE_INFO_KHR.rawValue
            )
        }

        @Test("Validate subresourceLayout2_KHR")
        public func validate_subresourceLayout2_KHR() {
            #expect(
                Ignite.StructureType.subresourceLayout2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2_KHR.rawValue
            )
        }

        @Test("Validate imageSubresource2_KHR")
        public func validate_imageSubresource2_KHR() {
            #expect(
                Ignite.StructureType.imageSubresource2_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2_KHR.rawValue
            )
        }

        @Test("Validate pipelineCreateFlags2CreateInfo_KHR")
        public func validate_pipelineCreateFlags2CreateInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineCreateFlags2CreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_CREATE_FLAGS_2_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate bufferUsageFlags2CreateInfo_KHR")
        public func validate_bufferUsageFlags2CreateInfo_KHR() {
            #expect(
                Ignite.StructureType.bufferUsageFlags2CreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BUFFER_USAGE_FLAGS_2_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate shaderRequiredSubgroupSizeCreateInfo_EXT")
        public func validate_shaderRequiredSubgroupSizeCreateInfo_EXT() {
            #expect(
                Ignite.StructureType.shaderRequiredSubgroupSizeCreateInfo_EXT.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_SHADER_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT.rawValue
            )
        }

        @Test("Validate physicalDeviceVertexAttributeDivisorProperties_KHR")
        public func validate_physicalDeviceVertexAttributeDivisorProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVertexAttributeDivisorProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate pipelineVertexInputDivisorStateCreateInfo_KHR")
        public func validate_pipelineVertexInputDivisorStateCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineVertexInputDivisorStateCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceVertexAttributeDivisorFeatures_KHR")
        public func validate_physicalDeviceVertexAttributeDivisorFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceVertexAttributeDivisorFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderFloatControls2Features_KHR")
        public func validate_physicalDeviceShaderFloatControls2Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderFloatControls2Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceIndexTypeUint8Features_KHR")
        public func validate_physicalDeviceIndexTypeUint8Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceIndexTypeUint8Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceLineRasterizationFeatures_KHR")
        public func validate_physicalDeviceLineRasterizationFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceLineRasterizationFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate pipelineRasterizationLineStateCreateInfo_KHR")
        public func validate_pipelineRasterizationLineStateCreateInfo_KHR() {
            #expect(
                Ignite.StructureType.pipelineRasterizationLineStateCreateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceLineRasterizationProperties_KHR")
        public func validate_physicalDeviceLineRasterizationProperties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceLineRasterizationProperties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceShaderExpectAssumeFeatures_KHR")
        public func validate_physicalDeviceShaderExpectAssumeFeatures_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceShaderExpectAssumeFeatures_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EXPECT_ASSUME_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance6Features_KHR")
        public func validate_physicalDeviceMaintenance6Features_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance6Features_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_FEATURES_KHR.rawValue
            )
        }

        @Test("Validate physicalDeviceMaintenance6Properties_KHR")
        public func validate_physicalDeviceMaintenance6Properties_KHR() {
            #expect(
                Ignite.StructureType.physicalDeviceMaintenance6Properties_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_PROPERTIES_KHR.rawValue
            )
        }

        @Test("Validate bindMemoryStatus_KHR")
        public func validate_bindMemoryStatus_KHR() {
            #expect(
                Ignite.StructureType.bindMemoryStatus_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_MEMORY_STATUS_KHR.rawValue
            )
        }

        @Test("Validate bindDescriptorSetsInfo_KHR")
        public func validate_bindDescriptorSetsInfo_KHR() {
            #expect(
                Ignite.StructureType.bindDescriptorSetsInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_BIND_DESCRIPTOR_SETS_INFO_KHR.rawValue
            )
        }

        @Test("Validate pushConstantsInfo_KHR")
        public func validate_pushConstantsInfo_KHR() {
            #expect(
                Ignite.StructureType.pushConstantsInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PUSH_CONSTANTS_INFO_KHR.rawValue
            )
        }

        @Test("Validate pushDescriptorSetInfo_KHR")
        public func validate_pushDescriptorSetInfo_KHR() {
            #expect(
                Ignite.StructureType.pushDescriptorSetInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PUSH_DESCRIPTOR_SET_INFO_KHR.rawValue
            )
        }

        @Test("Validate pushDescriptorSetWithTemplateInfo_KHR")
        public func validate_pushDescriptorSetWithTemplateInfo_KHR() {
            #expect(
                Ignite.StructureType.pushDescriptorSetWithTemplateInfo_KHR.rawValue
                    == CVulkan.VK_STRUCTURE_TYPE_PUSH_DESCRIPTOR_SET_WITH_TEMPLATE_INFO_KHR.rawValue
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
