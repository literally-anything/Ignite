/**
 * Bitmasks.swift
 * ValidationTests
 *
 * Created by Hunter Baker on 5/25/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import Testing

@testable import CVulkan
@testable import Ignite

// This file contains the bitmask validity tests for Vulkan.
// These are automatically generated from the Vulkan specification.

@Suite("Bitmasks")
public struct BitmaskTests {
    // BEGIN_GENERATE_BITMASK_TESTS
    // Generated using header version: 315

    /// Tests for the AccelerationStructureCreateFlagsKHR bitmask.
    @Suite("AccelerationStructureCreateFlagsKHR")
    public struct AccelerationStructureCreateFlagsKHRTests {
        @Test("Validate deviceAddressCaptureReplay_KHR")
        public func validate_deviceAddressCaptureReplay_KHR() {
            #expect(
                Ignite.AccelerationStructureCreateFlagsKHR.deviceAddressCaptureReplay_KHR.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR.rawValue
            )
        }

        @Test("Validate descriptorBufferCaptureReplay_EXT")
        public func validate_descriptorBufferCaptureReplay_EXT() {
            #expect(
                Ignite.AccelerationStructureCreateFlagsKHR.descriptorBufferCaptureReplay_EXT.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT.rawValue
            )
        }

        @Test("Validate motion_NV")
        public func validate_motion_NV() {
            #expect(
                Ignite.AccelerationStructureCreateFlagsKHR.motion_NV.rawValue
                    == CVulkan.VK_ACCELERATION_STRUCTURE_CREATE_MOTION_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the AccessFlags bitmask.
    @Suite("AccessFlags")
    public struct AccessFlagsTests {
        @Test("Validate indirectCommandReadBit")
        public func validate_indirectCommandReadBit() {
            #expect(
                Ignite.AccessFlags.indirectCommandReadBit.rawValue == CVulkan.VK_ACCESS_INDIRECT_COMMAND_READ_BIT.rawValue
            )
        }

        @Test("Validate indexReadBit")
        public func validate_indexReadBit() {
            #expect(
                Ignite.AccessFlags.indexReadBit.rawValue == CVulkan.VK_ACCESS_INDEX_READ_BIT.rawValue
            )
        }

        @Test("Validate vertexAttributeReadBit")
        public func validate_vertexAttributeReadBit() {
            #expect(
                Ignite.AccessFlags.vertexAttributeReadBit.rawValue == CVulkan.VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT.rawValue
            )
        }

        @Test("Validate uniformReadBit")
        public func validate_uniformReadBit() {
            #expect(
                Ignite.AccessFlags.uniformReadBit.rawValue == CVulkan.VK_ACCESS_UNIFORM_READ_BIT.rawValue
            )
        }

        @Test("Validate inputAttachmentReadBit")
        public func validate_inputAttachmentReadBit() {
            #expect(
                Ignite.AccessFlags.inputAttachmentReadBit.rawValue == CVulkan.VK_ACCESS_INPUT_ATTACHMENT_READ_BIT.rawValue
            )
        }

        @Test("Validate shaderReadBit")
        public func validate_shaderReadBit() {
            #expect(
                Ignite.AccessFlags.shaderReadBit.rawValue == CVulkan.VK_ACCESS_SHADER_READ_BIT.rawValue
            )
        }

        @Test("Validate shaderWriteBit")
        public func validate_shaderWriteBit() {
            #expect(
                Ignite.AccessFlags.shaderWriteBit.rawValue == CVulkan.VK_ACCESS_SHADER_WRITE_BIT.rawValue
            )
        }

        @Test("Validate colorAttachmentReadBit")
        public func validate_colorAttachmentReadBit() {
            #expect(
                Ignite.AccessFlags.colorAttachmentReadBit.rawValue == CVulkan.VK_ACCESS_COLOR_ATTACHMENT_READ_BIT.rawValue
            )
        }

        @Test("Validate colorAttachmentWriteBit")
        public func validate_colorAttachmentWriteBit() {
            #expect(
                Ignite.AccessFlags.colorAttachmentWriteBit.rawValue == CVulkan.VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT.rawValue
            )
        }

        @Test("Validate depthStencilAttachmentReadBit")
        public func validate_depthStencilAttachmentReadBit() {
            #expect(
                Ignite.AccessFlags.depthStencilAttachmentReadBit.rawValue
                    == CVulkan.VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT.rawValue
            )
        }

        @Test("Validate depthStencilAttachmentWriteBit")
        public func validate_depthStencilAttachmentWriteBit() {
            #expect(
                Ignite.AccessFlags.depthStencilAttachmentWriteBit.rawValue
                    == CVulkan.VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT.rawValue
            )
        }

        @Test("Validate transferReadBit")
        public func validate_transferReadBit() {
            #expect(
                Ignite.AccessFlags.transferReadBit.rawValue == CVulkan.VK_ACCESS_TRANSFER_READ_BIT.rawValue
            )
        }

        @Test("Validate transferWriteBit")
        public func validate_transferWriteBit() {
            #expect(
                Ignite.AccessFlags.transferWriteBit.rawValue == CVulkan.VK_ACCESS_TRANSFER_WRITE_BIT.rawValue
            )
        }

        @Test("Validate hostReadBit")
        public func validate_hostReadBit() {
            #expect(
                Ignite.AccessFlags.hostReadBit.rawValue == CVulkan.VK_ACCESS_HOST_READ_BIT.rawValue
            )
        }

        @Test("Validate hostWriteBit")
        public func validate_hostWriteBit() {
            #expect(
                Ignite.AccessFlags.hostWriteBit.rawValue == CVulkan.VK_ACCESS_HOST_WRITE_BIT.rawValue
            )
        }

        @Test("Validate memoryReadBit")
        public func validate_memoryReadBit() {
            #expect(
                Ignite.AccessFlags.memoryReadBit.rawValue == CVulkan.VK_ACCESS_MEMORY_READ_BIT.rawValue
            )
        }

        @Test("Validate memoryWriteBit")
        public func validate_memoryWriteBit() {
            #expect(
                Ignite.AccessFlags.memoryWriteBit.rawValue == CVulkan.VK_ACCESS_MEMORY_WRITE_BIT.rawValue
            )
        }

        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.AccessFlags.none.rawValue == CVulkan.VK_ACCESS_NONE.rawValue
            )
        }

        @Test("Validate transformFeedbackWriteBit_EXT")
        public func validate_transformFeedbackWriteBit_EXT() {
            #expect(
                Ignite.AccessFlags.transformFeedbackWriteBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT.rawValue
            )
        }

        @Test("Validate transformFeedbackCounterReadBit_EXT")
        public func validate_transformFeedbackCounterReadBit_EXT() {
            #expect(
                Ignite.AccessFlags.transformFeedbackCounterReadBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT.rawValue
            )
        }

        @Test("Validate transformFeedbackCounterWriteBit_EXT")
        public func validate_transformFeedbackCounterWriteBit_EXT() {
            #expect(
                Ignite.AccessFlags.transformFeedbackCounterWriteBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT.rawValue
            )
        }

        @Test("Validate conditionalRenderingReadBit_EXT")
        public func validate_conditionalRenderingReadBit_EXT() {
            #expect(
                Ignite.AccessFlags.conditionalRenderingReadBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT.rawValue
            )
        }

        @Test("Validate colorAttachmentReadNoncoherentBit_EXT")
        public func validate_colorAttachmentReadNoncoherentBit_EXT() {
            #expect(
                Ignite.AccessFlags.colorAttachmentReadNoncoherentBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT.rawValue
            )
        }

        @Test("Validate accelerationStructureReadBit_KHR")
        public func validate_accelerationStructureReadBit_KHR() {
            #expect(
                Ignite.AccessFlags.accelerationStructureReadBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureWriteBit_KHR")
        public func validate_accelerationStructureWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags.accelerationStructureWriteBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR.rawValue
            )
        }

        @Test("Validate fragmentDensityMapReadBit_EXT")
        public func validate_fragmentDensityMapReadBit_EXT() {
            #expect(
                Ignite.AccessFlags.fragmentDensityMapReadBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentShadingRateAttachmentReadBit_KHR")
        public func validate_fragmentShadingRateAttachmentReadBit_KHR() {
            #expect(
                Ignite.AccessFlags.fragmentShadingRateAttachmentReadBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR.rawValue
            )
        }

        @Test("Validate commandPreprocessReadBit_EXT")
        public func validate_commandPreprocessReadBit_EXT() {
            #expect(
                Ignite.AccessFlags.commandPreprocessReadBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_COMMAND_PREPROCESS_READ_BIT_EXT.rawValue
            )
        }

        @Test("Validate commandPreprocessWriteBit_EXT")
        public func validate_commandPreprocessWriteBit_EXT() {
            #expect(
                Ignite.AccessFlags.commandPreprocessWriteBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_COMMAND_PREPROCESS_WRITE_BIT_EXT.rawValue
            )
        }

        @Test("Validate shadingRateImageReadBit_NV")
        public func validate_shadingRateImageReadBit_NV() {
            #expect(
                Ignite.AccessFlags.shadingRateImageReadBit_NV.rawValue
                    == CVulkan.VK_ACCESS_SHADING_RATE_IMAGE_READ_BIT_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureReadBit_NV")
        public func validate_accelerationStructureReadBit_NV() {
            #expect(
                Ignite.AccessFlags.accelerationStructureReadBit_NV.rawValue
                    == CVulkan.VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureWriteBit_NV")
        public func validate_accelerationStructureWriteBit_NV() {
            #expect(
                Ignite.AccessFlags.accelerationStructureWriteBit_NV.rawValue
                    == CVulkan.VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV.rawValue
            )
        }

        @Test("Validate commandPreprocessReadBit_NV")
        public func validate_commandPreprocessReadBit_NV() {
            #expect(
                Ignite.AccessFlags.commandPreprocessReadBit_NV.rawValue
                    == CVulkan.VK_ACCESS_COMMAND_PREPROCESS_READ_BIT_NV.rawValue
            )
        }

        @Test("Validate commandPreprocessWriteBit_NV")
        public func validate_commandPreprocessWriteBit_NV() {
            #expect(
                Ignite.AccessFlags.commandPreprocessWriteBit_NV.rawValue
                    == CVulkan.VK_ACCESS_COMMAND_PREPROCESS_WRITE_BIT_NV.rawValue
            )
        }

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.AccessFlags.none_KHR.rawValue == CVulkan.VK_ACCESS_NONE_KHR.rawValue
            )
        }
    }


    /// Tests for the AccessFlags2 bitmask.
    @Suite("AccessFlags2")
    public struct AccessFlags2Tests {
        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.AccessFlags2.none.rawValue == CVulkan.VK_ACCESS_2_NONE
            )
        }

        @Test("Validate indirectCommandReadBit")
        public func validate_indirectCommandReadBit() {
            #expect(
                Ignite.AccessFlags2.indirectCommandReadBit.rawValue == CVulkan.VK_ACCESS_2_INDIRECT_COMMAND_READ_BIT
            )
        }

        @Test("Validate indexReadBit")
        public func validate_indexReadBit() {
            #expect(
                Ignite.AccessFlags2.indexReadBit.rawValue == CVulkan.VK_ACCESS_2_INDEX_READ_BIT
            )
        }

        @Test("Validate vertexAttributeReadBit")
        public func validate_vertexAttributeReadBit() {
            #expect(
                Ignite.AccessFlags2.vertexAttributeReadBit.rawValue == CVulkan.VK_ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT
            )
        }

        @Test("Validate uniformReadBit")
        public func validate_uniformReadBit() {
            #expect(
                Ignite.AccessFlags2.uniformReadBit.rawValue == CVulkan.VK_ACCESS_2_UNIFORM_READ_BIT
            )
        }

        @Test("Validate inputAttachmentReadBit")
        public func validate_inputAttachmentReadBit() {
            #expect(
                Ignite.AccessFlags2.inputAttachmentReadBit.rawValue == CVulkan.VK_ACCESS_2_INPUT_ATTACHMENT_READ_BIT
            )
        }

        @Test("Validate shaderReadBit")
        public func validate_shaderReadBit() {
            #expect(
                Ignite.AccessFlags2.shaderReadBit.rawValue == CVulkan.VK_ACCESS_2_SHADER_READ_BIT
            )
        }

        @Test("Validate shaderWriteBit")
        public func validate_shaderWriteBit() {
            #expect(
                Ignite.AccessFlags2.shaderWriteBit.rawValue == CVulkan.VK_ACCESS_2_SHADER_WRITE_BIT
            )
        }

        @Test("Validate colorAttachmentReadBit")
        public func validate_colorAttachmentReadBit() {
            #expect(
                Ignite.AccessFlags2.colorAttachmentReadBit.rawValue == CVulkan.VK_ACCESS_2_COLOR_ATTACHMENT_READ_BIT
            )
        }

        @Test("Validate colorAttachmentWriteBit")
        public func validate_colorAttachmentWriteBit() {
            #expect(
                Ignite.AccessFlags2.colorAttachmentWriteBit.rawValue == CVulkan.VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT
            )
        }

        @Test("Validate depthStencilAttachmentReadBit")
        public func validate_depthStencilAttachmentReadBit() {
            #expect(
                Ignite.AccessFlags2.depthStencilAttachmentReadBit.rawValue
                    == CVulkan.VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT
            )
        }

        @Test("Validate depthStencilAttachmentWriteBit")
        public func validate_depthStencilAttachmentWriteBit() {
            #expect(
                Ignite.AccessFlags2.depthStencilAttachmentWriteBit.rawValue
                    == CVulkan.VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
            )
        }

        @Test("Validate transferReadBit")
        public func validate_transferReadBit() {
            #expect(
                Ignite.AccessFlags2.transferReadBit.rawValue == CVulkan.VK_ACCESS_2_TRANSFER_READ_BIT
            )
        }

        @Test("Validate transferWriteBit")
        public func validate_transferWriteBit() {
            #expect(
                Ignite.AccessFlags2.transferWriteBit.rawValue == CVulkan.VK_ACCESS_2_TRANSFER_WRITE_BIT
            )
        }

        @Test("Validate hostReadBit")
        public func validate_hostReadBit() {
            #expect(
                Ignite.AccessFlags2.hostReadBit.rawValue == CVulkan.VK_ACCESS_2_HOST_READ_BIT
            )
        }

        @Test("Validate hostWriteBit")
        public func validate_hostWriteBit() {
            #expect(
                Ignite.AccessFlags2.hostWriteBit.rawValue == CVulkan.VK_ACCESS_2_HOST_WRITE_BIT
            )
        }

        @Test("Validate memoryReadBit")
        public func validate_memoryReadBit() {
            #expect(
                Ignite.AccessFlags2.memoryReadBit.rawValue == CVulkan.VK_ACCESS_2_MEMORY_READ_BIT
            )
        }

        @Test("Validate memoryWriteBit")
        public func validate_memoryWriteBit() {
            #expect(
                Ignite.AccessFlags2.memoryWriteBit.rawValue == CVulkan.VK_ACCESS_2_MEMORY_WRITE_BIT
            )
        }

        @Test("Validate shaderSampledReadBit")
        public func validate_shaderSampledReadBit() {
            #expect(
                Ignite.AccessFlags2.shaderSampledReadBit.rawValue == CVulkan.VK_ACCESS_2_SHADER_SAMPLED_READ_BIT
            )
        }

        @Test("Validate shaderStorageReadBit")
        public func validate_shaderStorageReadBit() {
            #expect(
                Ignite.AccessFlags2.shaderStorageReadBit.rawValue == CVulkan.VK_ACCESS_2_SHADER_STORAGE_READ_BIT
            )
        }

        @Test("Validate shaderStorageWriteBit")
        public func validate_shaderStorageWriteBit() {
            #expect(
                Ignite.AccessFlags2.shaderStorageWriteBit.rawValue == CVulkan.VK_ACCESS_2_SHADER_STORAGE_WRITE_BIT
            )
        }

        @Test("Validate videoDecodeReadBit_KHR")
        public func validate_videoDecodeReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.videoDecodeReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_VIDEO_DECODE_READ_BIT_KHR
            )
        }

        @Test("Validate videoDecodeWriteBit_KHR")
        public func validate_videoDecodeWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.videoDecodeWriteBit_KHR.rawValue == CVulkan.VK_ACCESS_2_VIDEO_DECODE_WRITE_BIT_KHR
            )
        }

        @Test("Validate videoEncodeReadBit_KHR")
        public func validate_videoEncodeReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.videoEncodeReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_VIDEO_ENCODE_READ_BIT_KHR
            )
        }

        @Test("Validate videoEncodeWriteBit_KHR")
        public func validate_videoEncodeWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.videoEncodeWriteBit_KHR.rawValue == CVulkan.VK_ACCESS_2_VIDEO_ENCODE_WRITE_BIT_KHR
            )
        }

        @Test("Validate shaderTileAttachmentReadBit_QCOM")
        public func validate_shaderTileAttachmentReadBit_QCOM() {
            #expect(
                Ignite.AccessFlags2.shaderTileAttachmentReadBit_QCOM.rawValue
                    == CVulkan.VK_ACCESS_2_SHADER_TILE_ATTACHMENT_READ_BIT_QCOM
            )
        }

        @Test("Validate shaderTileAttachmentWriteBit_QCOM")
        public func validate_shaderTileAttachmentWriteBit_QCOM() {
            #expect(
                Ignite.AccessFlags2.shaderTileAttachmentWriteBit_QCOM.rawValue
                    == CVulkan.VK_ACCESS_2_SHADER_TILE_ATTACHMENT_WRITE_BIT_QCOM
            )
        }

        @Test("Validate transformFeedbackWriteBit_EXT")
        public func validate_transformFeedbackWriteBit_EXT() {
            #expect(
                Ignite.AccessFlags2.transformFeedbackWriteBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_2_TRANSFORM_FEEDBACK_WRITE_BIT_EXT
            )
        }

        @Test("Validate transformFeedbackCounterReadBit_EXT")
        public func validate_transformFeedbackCounterReadBit_EXT() {
            #expect(
                Ignite.AccessFlags2.transformFeedbackCounterReadBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT
            )
        }

        @Test("Validate transformFeedbackCounterWriteBit_EXT")
        public func validate_transformFeedbackCounterWriteBit_EXT() {
            #expect(
                Ignite.AccessFlags2.transformFeedbackCounterWriteBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT
            )
        }

        @Test("Validate conditionalRenderingReadBit_EXT")
        public func validate_conditionalRenderingReadBit_EXT() {
            #expect(
                Ignite.AccessFlags2.conditionalRenderingReadBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_2_CONDITIONAL_RENDERING_READ_BIT_EXT
            )
        }

        @Test("Validate commandPreprocessReadBit_EXT")
        public func validate_commandPreprocessReadBit_EXT() {
            #expect(
                Ignite.AccessFlags2.commandPreprocessReadBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_2_COMMAND_PREPROCESS_READ_BIT_EXT
            )
        }

        @Test("Validate commandPreprocessWriteBit_EXT")
        public func validate_commandPreprocessWriteBit_EXT() {
            #expect(
                Ignite.AccessFlags2.commandPreprocessWriteBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_2_COMMAND_PREPROCESS_WRITE_BIT_EXT
            )
        }

        @Test("Validate fragmentShadingRateAttachmentReadBit_KHR")
        public func validate_fragmentShadingRateAttachmentReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.fragmentShadingRateAttachmentReadBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_2_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR
            )
        }

        @Test("Validate accelerationStructureReadBit_KHR")
        public func validate_accelerationStructureReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.accelerationStructureReadBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_KHR
            )
        }

        @Test("Validate accelerationStructureWriteBit_KHR")
        public func validate_accelerationStructureWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.accelerationStructureWriteBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_KHR
            )
        }

        @Test("Validate fragmentDensityMapReadBit_EXT")
        public func validate_fragmentDensityMapReadBit_EXT() {
            #expect(
                Ignite.AccessFlags2.fragmentDensityMapReadBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_2_FRAGMENT_DENSITY_MAP_READ_BIT_EXT
            )
        }

        @Test("Validate colorAttachmentReadNoncoherentBit_EXT")
        public func validate_colorAttachmentReadNoncoherentBit_EXT() {
            #expect(
                Ignite.AccessFlags2.colorAttachmentReadNoncoherentBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_2_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT
            )
        }

        @Test("Validate descriptorBufferReadBit_EXT")
        public func validate_descriptorBufferReadBit_EXT() {
            #expect(
                Ignite.AccessFlags2.descriptorBufferReadBit_EXT.rawValue
                    == CVulkan.VK_ACCESS_2_DESCRIPTOR_BUFFER_READ_BIT_EXT
            )
        }

        @Test("Validate invocationMaskReadBit_HUAWEI")
        public func validate_invocationMaskReadBit_HUAWEI() {
            #expect(
                Ignite.AccessFlags2.invocationMaskReadBit_HUAWEI.rawValue
                    == CVulkan.VK_ACCESS_2_INVOCATION_MASK_READ_BIT_HUAWEI
            )
        }

        @Test("Validate shaderBindingTableReadBit_KHR")
        public func validate_shaderBindingTableReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.shaderBindingTableReadBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_2_SHADER_BINDING_TABLE_READ_BIT_KHR
            )
        }

        @Test("Validate micromapReadBit_EXT")
        public func validate_micromapReadBit_EXT() {
            #expect(
                Ignite.AccessFlags2.micromapReadBit_EXT.rawValue == CVulkan.VK_ACCESS_2_MICROMAP_READ_BIT_EXT
            )
        }

        @Test("Validate micromapWriteBit_EXT")
        public func validate_micromapWriteBit_EXT() {
            #expect(
                Ignite.AccessFlags2.micromapWriteBit_EXT.rawValue == CVulkan.VK_ACCESS_2_MICROMAP_WRITE_BIT_EXT
            )
        }

        @Test("Validate opticalFlowReadBit_NV")
        public func validate_opticalFlowReadBit_NV() {
            #expect(
                Ignite.AccessFlags2.opticalFlowReadBit_NV.rawValue == CVulkan.VK_ACCESS_2_OPTICAL_FLOW_READ_BIT_NV
            )
        }

        @Test("Validate opticalFlowWriteBit_NV")
        public func validate_opticalFlowWriteBit_NV() {
            #expect(
                Ignite.AccessFlags2.opticalFlowWriteBit_NV.rawValue == CVulkan.VK_ACCESS_2_OPTICAL_FLOW_WRITE_BIT_NV
            )
        }

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.AccessFlags2.none_KHR.rawValue == CVulkan.VK_ACCESS_2_NONE_KHR
            )
        }

        @Test("Validate indirectCommandReadBit_KHR")
        public func validate_indirectCommandReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.indirectCommandReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_INDIRECT_COMMAND_READ_BIT_KHR
            )
        }

        @Test("Validate indexReadBit_KHR")
        public func validate_indexReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.indexReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_INDEX_READ_BIT_KHR
            )
        }

        @Test("Validate vertexAttributeReadBit_KHR")
        public func validate_vertexAttributeReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.vertexAttributeReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT_KHR
            )
        }

        @Test("Validate uniformReadBit_KHR")
        public func validate_uniformReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.uniformReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_UNIFORM_READ_BIT_KHR
            )
        }

        @Test("Validate inputAttachmentReadBit_KHR")
        public func validate_inputAttachmentReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.inputAttachmentReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_INPUT_ATTACHMENT_READ_BIT_KHR
            )
        }

        @Test("Validate shaderReadBit_KHR")
        public func validate_shaderReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.shaderReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_SHADER_READ_BIT_KHR
            )
        }

        @Test("Validate shaderWriteBit_KHR")
        public func validate_shaderWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.shaderWriteBit_KHR.rawValue == CVulkan.VK_ACCESS_2_SHADER_WRITE_BIT_KHR
            )
        }

        @Test("Validate colorAttachmentReadBit_KHR")
        public func validate_colorAttachmentReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.colorAttachmentReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_COLOR_ATTACHMENT_READ_BIT_KHR
            )
        }

        @Test("Validate colorAttachmentWriteBit_KHR")
        public func validate_colorAttachmentWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.colorAttachmentWriteBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT_KHR
            )
        }

        @Test("Validate depthStencilAttachmentReadBit_KHR")
        public func validate_depthStencilAttachmentReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.depthStencilAttachmentReadBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT_KHR
            )
        }

        @Test("Validate depthStencilAttachmentWriteBit_KHR")
        public func validate_depthStencilAttachmentWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.depthStencilAttachmentWriteBit_KHR.rawValue
                    == CVulkan.VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT_KHR
            )
        }

        @Test("Validate transferReadBit_KHR")
        public func validate_transferReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.transferReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_TRANSFER_READ_BIT_KHR
            )
        }

        @Test("Validate transferWriteBit_KHR")
        public func validate_transferWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.transferWriteBit_KHR.rawValue == CVulkan.VK_ACCESS_2_TRANSFER_WRITE_BIT_KHR
            )
        }

        @Test("Validate hostReadBit_KHR")
        public func validate_hostReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.hostReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_HOST_READ_BIT_KHR
            )
        }

        @Test("Validate hostWriteBit_KHR")
        public func validate_hostWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.hostWriteBit_KHR.rawValue == CVulkan.VK_ACCESS_2_HOST_WRITE_BIT_KHR
            )
        }

        @Test("Validate memoryReadBit_KHR")
        public func validate_memoryReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.memoryReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_MEMORY_READ_BIT_KHR
            )
        }

        @Test("Validate memoryWriteBit_KHR")
        public func validate_memoryWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.memoryWriteBit_KHR.rawValue == CVulkan.VK_ACCESS_2_MEMORY_WRITE_BIT_KHR
            )
        }

        @Test("Validate shaderSampledReadBit_KHR")
        public func validate_shaderSampledReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.shaderSampledReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_SHADER_SAMPLED_READ_BIT_KHR
            )
        }

        @Test("Validate shaderStorageReadBit_KHR")
        public func validate_shaderStorageReadBit_KHR() {
            #expect(
                Ignite.AccessFlags2.shaderStorageReadBit_KHR.rawValue == CVulkan.VK_ACCESS_2_SHADER_STORAGE_READ_BIT_KHR
            )
        }

        @Test("Validate shaderStorageWriteBit_KHR")
        public func validate_shaderStorageWriteBit_KHR() {
            #expect(
                Ignite.AccessFlags2.shaderStorageWriteBit_KHR.rawValue == CVulkan.VK_ACCESS_2_SHADER_STORAGE_WRITE_BIT_KHR
            )
        }

        @Test("Validate commandPreprocessReadBit_NV")
        public func validate_commandPreprocessReadBit_NV() {
            #expect(
                Ignite.AccessFlags2.commandPreprocessReadBit_NV.rawValue
                    == CVulkan.VK_ACCESS_2_COMMAND_PREPROCESS_READ_BIT_NV
            )
        }

        @Test("Validate commandPreprocessWriteBit_NV")
        public func validate_commandPreprocessWriteBit_NV() {
            #expect(
                Ignite.AccessFlags2.commandPreprocessWriteBit_NV.rawValue
                    == CVulkan.VK_ACCESS_2_COMMAND_PREPROCESS_WRITE_BIT_NV
            )
        }

        @Test("Validate shadingRateImageReadBit_NV")
        public func validate_shadingRateImageReadBit_NV() {
            #expect(
                Ignite.AccessFlags2.shadingRateImageReadBit_NV.rawValue == CVulkan.VK_ACCESS_2_SHADING_RATE_IMAGE_READ_BIT_NV
            )
        }

        @Test("Validate accelerationStructureReadBit_NV")
        public func validate_accelerationStructureReadBit_NV() {
            #expect(
                Ignite.AccessFlags2.accelerationStructureReadBit_NV.rawValue
                    == CVulkan.VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_NV
            )
        }

        @Test("Validate accelerationStructureWriteBit_NV")
        public func validate_accelerationStructureWriteBit_NV() {
            #expect(
                Ignite.AccessFlags2.accelerationStructureWriteBit_NV.rawValue
                    == CVulkan.VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_NV
            )
        }
    }


    /// Tests for the AccessFlags3KHR bitmask.
    @Suite("AccessFlags3KHR")
    public struct AccessFlags3KHRTests {
        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.AccessFlags3KHR.none_KHR.rawValue == CVulkan.VK_ACCESS_3_NONE_KHR
            )
        }
    }


    /// Tests for the AcquireProfilingLockFlagsKHR bitmask.
    @Suite("AcquireProfilingLockFlagsKHR")
    public struct AcquireProfilingLockFlagsKHRTests {

    }


    /// Tests for the AttachmentDescriptionFlags bitmask.
    @Suite("AttachmentDescriptionFlags")
    public struct AttachmentDescriptionFlagsTests {
        @Test("Validate mayAlias")
        public func validate_mayAlias() {
            #expect(
                Ignite.AttachmentDescriptionFlags.mayAlias.rawValue
                    == CVulkan.VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT.rawValue
            )
        }
    }


    /// Tests for the BufferCreateFlags bitmask.
    @Suite("BufferCreateFlags")
    public struct BufferCreateFlagsTests {
        @Test("Validate sparseBinding")
        public func validate_sparseBinding() {
            #expect(
                Ignite.BufferCreateFlags.sparseBinding.rawValue == CVulkan.VK_BUFFER_CREATE_SPARSE_BINDING_BIT.rawValue
            )
        }

        @Test("Validate sparseResidency")
        public func validate_sparseResidency() {
            #expect(
                Ignite.BufferCreateFlags.sparseResidency.rawValue == CVulkan.VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT.rawValue
            )
        }

        @Test("Validate sparseAliased")
        public func validate_sparseAliased() {
            #expect(
                Ignite.BufferCreateFlags.sparseAliased.rawValue == CVulkan.VK_BUFFER_CREATE_SPARSE_ALIASED_BIT.rawValue
            )
        }

        @Test("Validate protected")
        public func validate_protected() {
            #expect(
                Ignite.BufferCreateFlags.protected.rawValue == CVulkan.VK_BUFFER_CREATE_PROTECTED_BIT.rawValue
            )
        }

        @Test("Validate deviceAddressCaptureReplay")
        public func validate_deviceAddressCaptureReplay() {
            #expect(
                Ignite.BufferCreateFlags.deviceAddressCaptureReplay.rawValue
                    == CVulkan.VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT.rawValue
            )
        }

        @Test("Validate descriptorBufferCaptureReplay_EXT")
        public func validate_descriptorBufferCaptureReplay_EXT() {
            #expect(
                Ignite.BufferCreateFlags.descriptorBufferCaptureReplay_EXT.rawValue
                    == CVulkan.VK_BUFFER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT.rawValue
            )
        }

        @Test("Validate videoProfileIndependent_KHR")
        public func validate_videoProfileIndependent_KHR() {
            #expect(
                Ignite.BufferCreateFlags.videoProfileIndependent_KHR.rawValue
                    == CVulkan.VK_BUFFER_CREATE_VIDEO_PROFILE_INDEPENDENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate deviceAddressCaptureReplay_EXT")
        public func validate_deviceAddressCaptureReplay_EXT() {
            #expect(
                Ignite.BufferCreateFlags.deviceAddressCaptureReplay_EXT.rawValue
                    == CVulkan.VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT.rawValue
            )
        }

        @Test("Validate deviceAddressCaptureReplay_KHR")
        public func validate_deviceAddressCaptureReplay_KHR() {
            #expect(
                Ignite.BufferCreateFlags.deviceAddressCaptureReplay_KHR.rawValue
                    == CVulkan.VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the BufferUsageFlags bitmask.
    @Suite("BufferUsageFlags")
    public struct BufferUsageFlagsTests {
        @Test("Validate transferSrc")
        public func validate_transferSrc() {
            #expect(
                Ignite.BufferUsageFlags.transferSrc.rawValue == CVulkan.VK_BUFFER_USAGE_TRANSFER_SRC_BIT.rawValue
            )
        }

        @Test("Validate transferDst")
        public func validate_transferDst() {
            #expect(
                Ignite.BufferUsageFlags.transferDst.rawValue == CVulkan.VK_BUFFER_USAGE_TRANSFER_DST_BIT.rawValue
            )
        }

        @Test("Validate uniformTexelBuffer")
        public func validate_uniformTexelBuffer() {
            #expect(
                Ignite.BufferUsageFlags.uniformTexelBuffer.rawValue
                    == CVulkan.VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate storageTexelBuffer")
        public func validate_storageTexelBuffer() {
            #expect(
                Ignite.BufferUsageFlags.storageTexelBuffer.rawValue
                    == CVulkan.VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate uniformBuffer")
        public func validate_uniformBuffer() {
            #expect(
                Ignite.BufferUsageFlags.uniformBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate storageBuffer")
        public func validate_storageBuffer() {
            #expect(
                Ignite.BufferUsageFlags.storageBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_STORAGE_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate indexBuffer")
        public func validate_indexBuffer() {
            #expect(
                Ignite.BufferUsageFlags.indexBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_INDEX_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate vertexBuffer")
        public func validate_vertexBuffer() {
            #expect(
                Ignite.BufferUsageFlags.vertexBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_VERTEX_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate indirectBuffer")
        public func validate_indirectBuffer() {
            #expect(
                Ignite.BufferUsageFlags.indirectBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate shaderDeviceAddress")
        public func validate_shaderDeviceAddress() {
            #expect(
                Ignite.BufferUsageFlags.shaderDeviceAddress.rawValue
                    == CVulkan.VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT.rawValue
            )
        }

        @Test("Validate videoDecodeSrc_KHR")
        public func validate_videoDecodeSrc_KHR() {
            #expect(
                Ignite.BufferUsageFlags.videoDecodeSrc_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_VIDEO_DECODE_SRC_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeDst_KHR")
        public func validate_videoDecodeDst_KHR() {
            #expect(
                Ignite.BufferUsageFlags.videoDecodeDst_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_VIDEO_DECODE_DST_BIT_KHR.rawValue
            )
        }

        @Test("Validate transformFeedbackBuffer_EXT")
        public func validate_transformFeedbackBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags.transformFeedbackBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT.rawValue
            )
        }

        @Test("Validate transformFeedbackCounterBuffer_EXT")
        public func validate_transformFeedbackCounterBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags.transformFeedbackCounterBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT.rawValue
            )
        }

        @Test("Validate conditionalRendering_EXT")
        public func validate_conditionalRendering_EXT() {
            #expect(
                Ignite.BufferUsageFlags.conditionalRendering_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate executionGraphScratch_AMDX")
            public func validate_executionGraphScratch_AMDX() {
                #expect(
                    Ignite.BufferUsageFlags.executionGraphScratch_AMDX.rawValue
                        == CVulkan.VK_BUFFER_USAGE_EXECUTION_GRAPH_SCRATCH_BIT_AMDX.rawValue
                )
            }
        #else
            @Test(
                "Validate executionGraphScratch_AMDX",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_executionGraphScratch_AMDX() {}
        #endif

        @Test("Validate accelerationStructureBuildInputReadOnly_KHR")
        public func validate_accelerationStructureBuildInputReadOnly_KHR() {
            #expect(
                Ignite.BufferUsageFlags.accelerationStructureBuildInputReadOnly_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureStorage_KHR")
        public func validate_accelerationStructureStorage_KHR() {
            #expect(
                Ignite.BufferUsageFlags.accelerationStructureStorage_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_STORAGE_BIT_KHR.rawValue
            )
        }

        @Test("Validate shaderBindingTable_KHR")
        public func validate_shaderBindingTable_KHR() {
            #expect(
                Ignite.BufferUsageFlags.shaderBindingTable_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_SHADER_BINDING_TABLE_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeDst_KHR")
        public func validate_videoEncodeDst_KHR() {
            #expect(
                Ignite.BufferUsageFlags.videoEncodeDst_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_VIDEO_ENCODE_DST_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeSrc_KHR")
        public func validate_videoEncodeSrc_KHR() {
            #expect(
                Ignite.BufferUsageFlags.videoEncodeSrc_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_VIDEO_ENCODE_SRC_BIT_KHR.rawValue
            )
        }

        @Test("Validate samplerDescriptorBuffer_EXT")
        public func validate_samplerDescriptorBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags.samplerDescriptorBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_SAMPLER_DESCRIPTOR_BUFFER_BIT_EXT.rawValue
            )
        }

        @Test("Validate resourceDescriptorBuffer_EXT")
        public func validate_resourceDescriptorBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags.resourceDescriptorBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT.rawValue
            )
        }

        @Test("Validate pushDescriptorsDescriptorBuffer_EXT")
        public func validate_pushDescriptorsDescriptorBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags.pushDescriptorsDescriptorBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_PUSH_DESCRIPTORS_DESCRIPTOR_BUFFER_BIT_EXT.rawValue
            )
        }

        @Test("Validate micromapBuildInputReadOnly_EXT")
        public func validate_micromapBuildInputReadOnly_EXT() {
            #expect(
                Ignite.BufferUsageFlags.micromapBuildInputReadOnly_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_MICROMAP_BUILD_INPUT_READ_ONLY_BIT_EXT.rawValue
            )
        }

        @Test("Validate micromapStorage_EXT")
        public func validate_micromapStorage_EXT() {
            #expect(
                Ignite.BufferUsageFlags.micromapStorage_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_MICROMAP_STORAGE_BIT_EXT.rawValue
            )
        }

        @Test("Validate tileMemory_QCOM")
        public func validate_tileMemory_QCOM() {
            #expect(
                Ignite.BufferUsageFlags.tileMemory_QCOM.rawValue == CVulkan.VK_BUFFER_USAGE_TILE_MEMORY_BIT_QCOM.rawValue
            )
        }

        @Test("Validate rayTracing_NV")
        public func validate_rayTracing_NV() {
            #expect(
                Ignite.BufferUsageFlags.rayTracing_NV.rawValue == CVulkan.VK_BUFFER_USAGE_RAY_TRACING_BIT_NV.rawValue
            )
        }

        @Test("Validate shaderDeviceAddress_EXT")
        public func validate_shaderDeviceAddress_EXT() {
            #expect(
                Ignite.BufferUsageFlags.shaderDeviceAddress_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT.rawValue
            )
        }

        @Test("Validate shaderDeviceAddress_KHR")
        public func validate_shaderDeviceAddress_KHR() {
            #expect(
                Ignite.BufferUsageFlags.shaderDeviceAddress_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the BufferUsageFlags2 bitmask.
    @Suite("BufferUsageFlags2")
    public struct BufferUsageFlags2Tests {
        @Test("Validate transferSrc")
        public func validate_transferSrc() {
            #expect(
                Ignite.BufferUsageFlags2.transferSrc.rawValue == CVulkan.VK_BUFFER_USAGE_2_TRANSFER_SRC_BIT
            )
        }

        @Test("Validate transferDst")
        public func validate_transferDst() {
            #expect(
                Ignite.BufferUsageFlags2.transferDst.rawValue == CVulkan.VK_BUFFER_USAGE_2_TRANSFER_DST_BIT
            )
        }

        @Test("Validate uniformTexelBuffer")
        public func validate_uniformTexelBuffer() {
            #expect(
                Ignite.BufferUsageFlags2.uniformTexelBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_2_UNIFORM_TEXEL_BUFFER_BIT
            )
        }

        @Test("Validate storageTexelBuffer")
        public func validate_storageTexelBuffer() {
            #expect(
                Ignite.BufferUsageFlags2.storageTexelBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_2_STORAGE_TEXEL_BUFFER_BIT
            )
        }

        @Test("Validate uniformBuffer")
        public func validate_uniformBuffer() {
            #expect(
                Ignite.BufferUsageFlags2.uniformBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_2_UNIFORM_BUFFER_BIT
            )
        }

        @Test("Validate storageBuffer")
        public func validate_storageBuffer() {
            #expect(
                Ignite.BufferUsageFlags2.storageBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_2_STORAGE_BUFFER_BIT
            )
        }

        @Test("Validate indexBuffer")
        public func validate_indexBuffer() {
            #expect(
                Ignite.BufferUsageFlags2.indexBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_2_INDEX_BUFFER_BIT
            )
        }

        @Test("Validate vertexBuffer")
        public func validate_vertexBuffer() {
            #expect(
                Ignite.BufferUsageFlags2.vertexBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_2_VERTEX_BUFFER_BIT
            )
        }

        @Test("Validate indirectBuffer")
        public func validate_indirectBuffer() {
            #expect(
                Ignite.BufferUsageFlags2.indirectBuffer.rawValue == CVulkan.VK_BUFFER_USAGE_2_INDIRECT_BUFFER_BIT
            )
        }

        @Test("Validate shaderDeviceAddress")
        public func validate_shaderDeviceAddress() {
            #expect(
                Ignite.BufferUsageFlags2.shaderDeviceAddress.rawValue == CVulkan.VK_BUFFER_USAGE_2_SHADER_DEVICE_ADDRESS_BIT
            )
        }

        #if EnableProvisional
            @Test("Validate executionGraphScratch_AMDX")
            public func validate_executionGraphScratch_AMDX() {
                #expect(
                    Ignite.BufferUsageFlags2.executionGraphScratch_AMDX.rawValue
                        == CVulkan.VK_BUFFER_USAGE_2_EXECUTION_GRAPH_SCRATCH_BIT_AMDX
                )
            }
        #else
            @Test(
                "Validate executionGraphScratch_AMDX",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_executionGraphScratch_AMDX() {}
        #endif

        @Test("Validate conditionalRendering_EXT")
        public func validate_conditionalRendering_EXT() {
            #expect(
                Ignite.BufferUsageFlags2.conditionalRendering_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_CONDITIONAL_RENDERING_BIT_EXT
            )
        }

        @Test("Validate shaderBindingTable_KHR")
        public func validate_shaderBindingTable_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.shaderBindingTable_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_SHADER_BINDING_TABLE_BIT_KHR
            )
        }

        @Test("Validate transformFeedbackBuffer_EXT")
        public func validate_transformFeedbackBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags2.transformFeedbackBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT
            )
        }

        @Test("Validate transformFeedbackCounterBuffer_EXT")
        public func validate_transformFeedbackCounterBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags2.transformFeedbackCounterBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT
            )
        }

        @Test("Validate videoDecodeSrc_KHR")
        public func validate_videoDecodeSrc_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.videoDecodeSrc_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_VIDEO_DECODE_SRC_BIT_KHR
            )
        }

        @Test("Validate videoDecodeDst_KHR")
        public func validate_videoDecodeDst_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.videoDecodeDst_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_VIDEO_DECODE_DST_BIT_KHR
            )
        }

        @Test("Validate videoEncodeDst_KHR")
        public func validate_videoEncodeDst_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.videoEncodeDst_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_VIDEO_ENCODE_DST_BIT_KHR
            )
        }

        @Test("Validate videoEncodeSrc_KHR")
        public func validate_videoEncodeSrc_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.videoEncodeSrc_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_VIDEO_ENCODE_SRC_BIT_KHR
            )
        }

        @Test("Validate accelerationStructureBuildInputReadOnly_KHR")
        public func validate_accelerationStructureBuildInputReadOnly_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.accelerationStructureBuildInputReadOnly_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT_KHR
            )
        }

        @Test("Validate accelerationStructureStorage_KHR")
        public func validate_accelerationStructureStorage_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.accelerationStructureStorage_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_ACCELERATION_STRUCTURE_STORAGE_BIT_KHR
            )
        }

        @Test("Validate samplerDescriptorBuffer_EXT")
        public func validate_samplerDescriptorBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags2.samplerDescriptorBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_SAMPLER_DESCRIPTOR_BUFFER_BIT_EXT
            )
        }

        @Test("Validate resourceDescriptorBuffer_EXT")
        public func validate_resourceDescriptorBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags2.resourceDescriptorBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT
            )
        }

        @Test("Validate pushDescriptorsDescriptorBuffer_EXT")
        public func validate_pushDescriptorsDescriptorBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags2.pushDescriptorsDescriptorBuffer_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_PUSH_DESCRIPTORS_DESCRIPTOR_BUFFER_BIT_EXT
            )
        }

        @Test("Validate micromapBuildInputReadOnly_EXT")
        public func validate_micromapBuildInputReadOnly_EXT() {
            #expect(
                Ignite.BufferUsageFlags2.micromapBuildInputReadOnly_EXT.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_MICROMAP_BUILD_INPUT_READ_ONLY_BIT_EXT
            )
        }

        @Test("Validate micromapStorage_EXT")
        public func validate_micromapStorage_EXT() {
            #expect(
                Ignite.BufferUsageFlags2.micromapStorage_EXT.rawValue == CVulkan.VK_BUFFER_USAGE_2_MICROMAP_STORAGE_BIT_EXT
            )
        }

        @Test("Validate tileMemory_QCOM")
        public func validate_tileMemory_QCOM() {
            #expect(
                Ignite.BufferUsageFlags2.tileMemory_QCOM.rawValue == CVulkan.VK_BUFFER_USAGE_2_TILE_MEMORY_BIT_QCOM
            )
        }

        @Test("Validate preprocessBuffer_EXT")
        public func validate_preprocessBuffer_EXT() {
            #expect(
                Ignite.BufferUsageFlags2.preprocessBuffer_EXT.rawValue == CVulkan.VK_BUFFER_USAGE_2_PREPROCESS_BUFFER_BIT_EXT
            )
        }

        @Test("Validate transferSrc_KHR")
        public func validate_transferSrc_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.transferSrc_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_TRANSFER_SRC_BIT_KHR
            )
        }

        @Test("Validate transferDst_KHR")
        public func validate_transferDst_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.transferDst_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_TRANSFER_DST_BIT_KHR
            )
        }

        @Test("Validate uniformTexelBuffer_KHR")
        public func validate_uniformTexelBuffer_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.uniformTexelBuffer_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_UNIFORM_TEXEL_BUFFER_BIT_KHR
            )
        }

        @Test("Validate storageTexelBuffer_KHR")
        public func validate_storageTexelBuffer_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.storageTexelBuffer_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_STORAGE_TEXEL_BUFFER_BIT_KHR
            )
        }

        @Test("Validate uniformBuffer_KHR")
        public func validate_uniformBuffer_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.uniformBuffer_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_UNIFORM_BUFFER_BIT_KHR
            )
        }

        @Test("Validate storageBuffer_KHR")
        public func validate_storageBuffer_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.storageBuffer_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_STORAGE_BUFFER_BIT_KHR
            )
        }

        @Test("Validate indexBuffer_KHR")
        public func validate_indexBuffer_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.indexBuffer_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_INDEX_BUFFER_BIT_KHR
            )
        }

        @Test("Validate vertexBuffer_KHR")
        public func validate_vertexBuffer_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.vertexBuffer_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_VERTEX_BUFFER_BIT_KHR
            )
        }

        @Test("Validate indirectBuffer_KHR")
        public func validate_indirectBuffer_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.indirectBuffer_KHR.rawValue == CVulkan.VK_BUFFER_USAGE_2_INDIRECT_BUFFER_BIT_KHR
            )
        }

        @Test("Validate rayTracing_NV")
        public func validate_rayTracing_NV() {
            #expect(
                Ignite.BufferUsageFlags2.rayTracing_NV.rawValue == CVulkan.VK_BUFFER_USAGE_2_RAY_TRACING_BIT_NV
            )
        }

        @Test("Validate shaderDeviceAddress_KHR")
        public func validate_shaderDeviceAddress_KHR() {
            #expect(
                Ignite.BufferUsageFlags2.shaderDeviceAddress_KHR.rawValue
                    == CVulkan.VK_BUFFER_USAGE_2_SHADER_DEVICE_ADDRESS_BIT_KHR
            )
        }
    }


    /// Tests for the BuildAccelerationStructureFlagsKHR bitmask.
    @Suite("BuildAccelerationStructureFlagsKHR")
    public struct BuildAccelerationStructureFlagsKHRTests {
        @Test("Validate allowUpdateBit_KHR")
        public func validate_allowUpdateBit_KHR() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.allowUpdateBit_KHR.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_KHR.rawValue
            )
        }

        @Test("Validate allowCompactionBit_KHR")
        public func validate_allowCompactionBit_KHR() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.allowCompactionBit_KHR.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_KHR.rawValue
            )
        }

        @Test("Validate preferFastTraceBit_KHR")
        public func validate_preferFastTraceBit_KHR() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.preferFastTraceBit_KHR.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_KHR.rawValue
            )
        }

        @Test("Validate preferFastBuildBit_KHR")
        public func validate_preferFastBuildBit_KHR() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.preferFastBuildBit_KHR.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_KHR.rawValue
            )
        }

        @Test("Validate lowMemoryBit_KHR")
        public func validate_lowMemoryBit_KHR() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.lowMemoryBit_KHR.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_KHR.rawValue
            )
        }

        @Test("Validate motionBit_NV")
        public func validate_motionBit_NV() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.motionBit_NV.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_MOTION_BIT_NV.rawValue
            )
        }

        @Test("Validate allowOpacityMicromapUpdate_EXT")
        public func validate_allowOpacityMicromapUpdate_EXT() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.allowOpacityMicromapUpdate_EXT.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_OPACITY_MICROMAP_UPDATE_EXT.rawValue
            )
        }

        @Test("Validate allowDisableOpacityMicromaps_EXT")
        public func validate_allowDisableOpacityMicromaps_EXT() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.allowDisableOpacityMicromaps_EXT.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_DISABLE_OPACITY_MICROMAPS_EXT.rawValue
            )
        }

        @Test("Validate allowOpacityMicromapDataUpdate_EXT")
        public func validate_allowOpacityMicromapDataUpdate_EXT() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.allowOpacityMicromapDataUpdate_EXT.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_OPACITY_MICROMAP_DATA_UPDATE_EXT.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate allowDisplacementMicromapUpdate_NV")
            public func validate_allowDisplacementMicromapUpdate_NV() {
                #expect(
                    Ignite.BuildAccelerationStructureFlagsKHR.allowDisplacementMicromapUpdate_NV.rawValue
                        == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_DISPLACEMENT_MICROMAP_UPDATE_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate allowDisplacementMicromapUpdate_NV",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_allowDisplacementMicromapUpdate_NV() {}
        #endif

        @Test("Validate allowDataAccess_KHR")
        public func validate_allowDataAccess_KHR() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.allowDataAccess_KHR.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_DATA_ACCESS_KHR.rawValue
            )
        }

        @Test("Validate allowUpdateBit_NV")
        public func validate_allowUpdateBit_NV() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.allowUpdateBit_NV.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_NV.rawValue
            )
        }

        @Test("Validate allowCompactionBit_NV")
        public func validate_allowCompactionBit_NV() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.allowCompactionBit_NV.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_NV.rawValue
            )
        }

        @Test("Validate preferFastTraceBit_NV")
        public func validate_preferFastTraceBit_NV() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.preferFastTraceBit_NV.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_NV.rawValue
            )
        }

        @Test("Validate preferFastBuildBit_NV")
        public func validate_preferFastBuildBit_NV() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.preferFastBuildBit_NV.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_NV.rawValue
            )
        }

        @Test("Validate lowMemoryBit_NV")
        public func validate_lowMemoryBit_NV() {
            #expect(
                Ignite.BuildAccelerationStructureFlagsKHR.lowMemoryBit_NV.rawValue
                    == CVulkan.VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the BuildMicromapFlagsEXT bitmask.
    @Suite("BuildMicromapFlagsEXT")
    public struct BuildMicromapFlagsEXTTests {
        @Test("Validate preferFastTrace_EXT")
        public func validate_preferFastTrace_EXT() {
            #expect(
                Ignite.BuildMicromapFlagsEXT.preferFastTrace_EXT.rawValue
                    == CVulkan.VK_BUILD_MICROMAP_PREFER_FAST_TRACE_BIT_EXT.rawValue
            )
        }

        @Test("Validate preferFastBuild_EXT")
        public func validate_preferFastBuild_EXT() {
            #expect(
                Ignite.BuildMicromapFlagsEXT.preferFastBuild_EXT.rawValue
                    == CVulkan.VK_BUILD_MICROMAP_PREFER_FAST_BUILD_BIT_EXT.rawValue
            )
        }

        @Test("Validate allowCompaction_EXT")
        public func validate_allowCompaction_EXT() {
            #expect(
                Ignite.BuildMicromapFlagsEXT.allowCompaction_EXT.rawValue
                    == CVulkan.VK_BUILD_MICROMAP_ALLOW_COMPACTION_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the ClusterAccelerationStructureAddressResolutionFlagsNV bitmask.
    @Suite("ClusterAccelerationStructureAddressResolutionFlagsNV")
    public struct ClusterAccelerationStructureAddressResolutionFlagsNVTests {
        @Test("Validate indirectedDstImplicitData_NV")
        public func validate_indirectedDstImplicitData_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureAddressResolutionFlagsNV.indirectedDstImplicitData_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_ADDRESS_RESOLUTION_INDIRECTED_DST_IMPLICIT_DATA_BIT_NV
                    .rawValue
            )
        }

        @Test("Validate indirectedScratchData_NV")
        public func validate_indirectedScratchData_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureAddressResolutionFlagsNV.indirectedScratchData_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_ADDRESS_RESOLUTION_INDIRECTED_SCRATCH_DATA_BIT_NV.rawValue
            )
        }

        @Test("Validate indirectedDstAddressArray_NV")
        public func validate_indirectedDstAddressArray_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureAddressResolutionFlagsNV.indirectedDstAddressArray_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_ADDRESS_RESOLUTION_INDIRECTED_DST_ADDRESS_ARRAY_BIT_NV
                    .rawValue
            )
        }

        @Test("Validate indirectedDstSizesArray_NV")
        public func validate_indirectedDstSizesArray_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureAddressResolutionFlagsNV.indirectedDstSizesArray_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_ADDRESS_RESOLUTION_INDIRECTED_DST_SIZES_ARRAY_BIT_NV
                    .rawValue
            )
        }

        @Test("Validate indirectedSrcInfosArray_NV")
        public func validate_indirectedSrcInfosArray_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureAddressResolutionFlagsNV.indirectedSrcInfosArray_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_ADDRESS_RESOLUTION_INDIRECTED_SRC_INFOS_ARRAY_BIT_NV
                    .rawValue
            )
        }

        @Test("Validate indirectedSrcInfosCount_NV")
        public func validate_indirectedSrcInfosCount_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureAddressResolutionFlagsNV.indirectedSrcInfosCount_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_ADDRESS_RESOLUTION_INDIRECTED_SRC_INFOS_COUNT_BIT_NV
                    .rawValue
            )
        }
    }


    /// Tests for the ClusterAccelerationStructureClusterFlagsNV bitmask.
    @Suite("ClusterAccelerationStructureClusterFlagsNV")
    public struct ClusterAccelerationStructureClusterFlagsNVTests {
        @Test("Validate allowDisableOpacityMicromaps_NV")
        public func validate_allowDisableOpacityMicromaps_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureClusterFlagsNV.allowDisableOpacityMicromaps_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_CLUSTER_ALLOW_DISABLE_OPACITY_MICROMAPS_NV.rawValue
            )
        }
    }


    /// Tests for the ClusterAccelerationStructureGeometryFlagsNV bitmask.
    @Suite("ClusterAccelerationStructureGeometryFlagsNV")
    public struct ClusterAccelerationStructureGeometryFlagsNVTests {
        @Test("Validate cullDisable_NV")
        public func validate_cullDisable_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureGeometryFlagsNV.cullDisable_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_GEOMETRY_CULL_DISABLE_BIT_NV.rawValue
            )
        }

        @Test("Validate noDuplicateAnyhitInvocation_NV")
        public func validate_noDuplicateAnyhitInvocation_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureGeometryFlagsNV.noDuplicateAnyhitInvocation_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_GEOMETRY_NO_DUPLICATE_ANYHIT_INVOCATION_BIT_NV.rawValue
            )
        }

        @Test("Validate opaque_NV")
        public func validate_opaque_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureGeometryFlagsNV.opaque_NV.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_GEOMETRY_OPAQUE_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the ClusterAccelerationStructureIndexFormatFlagsNV bitmask.
    @Suite("ClusterAccelerationStructureIndexFormatFlagsNV")
    public struct ClusterAccelerationStructureIndexFormatFlagsNVTests {
        @Test("Validate 8bit_NV")
        public func validate_8bit_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureIndexFormatFlagsNV.`8bit_NV`.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_INDEX_FORMAT_8BIT_NV.rawValue
            )
        }

        @Test("Validate 16bit_NV")
        public func validate_16bit_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureIndexFormatFlagsNV.`16bit_NV`.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_INDEX_FORMAT_16BIT_NV.rawValue
            )
        }

        @Test("Validate 32bit_NV")
        public func validate_32bit_NV() {
            #expect(
                Ignite.ClusterAccelerationStructureIndexFormatFlagsNV.`32bit_NV`.rawValue
                    == CVulkan.VK_CLUSTER_ACCELERATION_STRUCTURE_INDEX_FORMAT_32BIT_NV.rawValue
            )
        }
    }


    /// Tests for the ColorComponentFlags bitmask.
    @Suite("ColorComponentFlags")
    public struct ColorComponentFlagsTests {
        @Test("Validate r")
        public func validate_r() {
            #expect(
                Ignite.ColorComponentFlags.r.rawValue == CVulkan.VK_COLOR_COMPONENT_R_BIT.rawValue
            )
        }

        @Test("Validate g")
        public func validate_g() {
            #expect(
                Ignite.ColorComponentFlags.g.rawValue == CVulkan.VK_COLOR_COMPONENT_G_BIT.rawValue
            )
        }

        @Test("Validate b")
        public func validate_b() {
            #expect(
                Ignite.ColorComponentFlags.b.rawValue == CVulkan.VK_COLOR_COMPONENT_B_BIT.rawValue
            )
        }

        @Test("Validate a")
        public func validate_a() {
            #expect(
                Ignite.ColorComponentFlags.a.rawValue == CVulkan.VK_COLOR_COMPONENT_A_BIT.rawValue
            )
        }
    }


    /// Tests for the CommandBufferResetFlags bitmask.
    @Suite("CommandBufferResetFlags")
    public struct CommandBufferResetFlagsTests {
        @Test("Validate releaseResources")
        public func validate_releaseResources() {
            #expect(
                Ignite.CommandBufferResetFlags.releaseResources.rawValue
                    == CVulkan.VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT.rawValue
            )
        }
    }


    /// Tests for the CommandBufferUsageFlags bitmask.
    @Suite("CommandBufferUsageFlags")
    public struct CommandBufferUsageFlagsTests {
        @Test("Validate oneTimeSubmit")
        public func validate_oneTimeSubmit() {
            #expect(
                Ignite.CommandBufferUsageFlags.oneTimeSubmit.rawValue
                    == CVulkan.VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT.rawValue
            )
        }

        @Test("Validate renderPassContinue")
        public func validate_renderPassContinue() {
            #expect(
                Ignite.CommandBufferUsageFlags.renderPassContinue.rawValue
                    == CVulkan.VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT.rawValue
            )
        }

        @Test("Validate simultaneousUse")
        public func validate_simultaneousUse() {
            #expect(
                Ignite.CommandBufferUsageFlags.simultaneousUse.rawValue
                    == CVulkan.VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT.rawValue
            )
        }
    }


    /// Tests for the CommandPoolCreateFlags bitmask.
    @Suite("CommandPoolCreateFlags")
    public struct CommandPoolCreateFlagsTests {
        @Test("Validate transient")
        public func validate_transient() {
            #expect(
                Ignite.CommandPoolCreateFlags.transient.rawValue == CVulkan.VK_COMMAND_POOL_CREATE_TRANSIENT_BIT.rawValue
            )
        }

        @Test("Validate resetCommandBuffer")
        public func validate_resetCommandBuffer() {
            #expect(
                Ignite.CommandPoolCreateFlags.resetCommandBuffer.rawValue
                    == CVulkan.VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate protected")
        public func validate_protected() {
            #expect(
                Ignite.CommandPoolCreateFlags.protected.rawValue == CVulkan.VK_COMMAND_POOL_CREATE_PROTECTED_BIT.rawValue
            )
        }
    }


    /// Tests for the CommandPoolResetFlags bitmask.
    @Suite("CommandPoolResetFlags")
    public struct CommandPoolResetFlagsTests {
        @Test("Validate releaseResources")
        public func validate_releaseResources() {
            #expect(
                Ignite.CommandPoolResetFlags.releaseResources.rawValue
                    == CVulkan.VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT.rawValue
            )
        }
    }


    /// Tests for the CompositeAlphaFlagsKHR bitmask.
    @Suite("CompositeAlphaFlagsKHR")
    public struct CompositeAlphaFlagsKHRTests {
        @Test("Validate opaque_KHR")
        public func validate_opaque_KHR() {
            #expect(
                Ignite.CompositeAlphaFlagsKHR.opaque_KHR.rawValue == CVulkan.VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR.rawValue
            )
        }

        @Test("Validate preMultiplied_KHR")
        public func validate_preMultiplied_KHR() {
            #expect(
                Ignite.CompositeAlphaFlagsKHR.preMultiplied_KHR.rawValue
                    == CVulkan.VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR.rawValue
            )
        }

        @Test("Validate postMultiplied_KHR")
        public func validate_postMultiplied_KHR() {
            #expect(
                Ignite.CompositeAlphaFlagsKHR.postMultiplied_KHR.rawValue
                    == CVulkan.VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR.rawValue
            )
        }

        @Test("Validate inherit_KHR")
        public func validate_inherit_KHR() {
            #expect(
                Ignite.CompositeAlphaFlagsKHR.inherit_KHR.rawValue == CVulkan.VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the ConditionalRenderingFlagsEXT bitmask.
    @Suite("ConditionalRenderingFlagsEXT")
    public struct ConditionalRenderingFlagsEXTTests {
        @Test("Validate inverted_EXT")
        public func validate_inverted_EXT() {
            #expect(
                Ignite.ConditionalRenderingFlagsEXT.inverted_EXT.rawValue
                    == CVulkan.VK_CONDITIONAL_RENDERING_INVERTED_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the CullModeFlags bitmask.
    @Suite("CullModeFlags")
    public struct CullModeFlagsTests {
        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.CullModeFlags.none.rawValue == CVulkan.VK_CULL_MODE_NONE.rawValue
            )
        }

        @Test("Validate frontBit")
        public func validate_frontBit() {
            #expect(
                Ignite.CullModeFlags.frontBit.rawValue == CVulkan.VK_CULL_MODE_FRONT_BIT.rawValue
            )
        }

        @Test("Validate backBit")
        public func validate_backBit() {
            #expect(
                Ignite.CullModeFlags.backBit.rawValue == CVulkan.VK_CULL_MODE_BACK_BIT.rawValue
            )
        }

        @Test("Validate frontAndBack")
        public func validate_frontAndBack() {
            #expect(
                Ignite.CullModeFlags.frontAndBack.rawValue == CVulkan.VK_CULL_MODE_FRONT_AND_BACK.rawValue
            )
        }
    }


    /// Tests for the DebugReportFlagsEXT bitmask.
    @Suite("DebugReportFlagsEXT")
    public struct DebugReportFlagsEXTTests {
        @Test("Validate information_EXT")
        public func validate_information_EXT() {
            #expect(
                Ignite.DebugReportFlagsEXT.information_EXT.rawValue == CVulkan.VK_DEBUG_REPORT_INFORMATION_BIT_EXT.rawValue
            )
        }

        @Test("Validate warning_EXT")
        public func validate_warning_EXT() {
            #expect(
                Ignite.DebugReportFlagsEXT.warning_EXT.rawValue == CVulkan.VK_DEBUG_REPORT_WARNING_BIT_EXT.rawValue
            )
        }

        @Test("Validate performanceWarning_EXT")
        public func validate_performanceWarning_EXT() {
            #expect(
                Ignite.DebugReportFlagsEXT.performanceWarning_EXT.rawValue
                    == CVulkan.VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT.rawValue
            )
        }

        @Test("Validate error_EXT")
        public func validate_error_EXT() {
            #expect(
                Ignite.DebugReportFlagsEXT.error_EXT.rawValue == CVulkan.VK_DEBUG_REPORT_ERROR_BIT_EXT.rawValue
            )
        }

        @Test("Validate debug_EXT")
        public func validate_debug_EXT() {
            #expect(
                Ignite.DebugReportFlagsEXT.debug_EXT.rawValue == CVulkan.VK_DEBUG_REPORT_DEBUG_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the DebugUtilsMessageSeverityFlagsEXT bitmask.
    @Suite("DebugUtilsMessageSeverityFlagsEXT")
    public struct DebugUtilsMessageSeverityFlagsEXTTests {
        @Test("Validate verbose_EXT")
        public func validate_verbose_EXT() {
            #expect(
                Ignite.DebugUtilsMessageSeverityFlagsEXT.verbose_EXT.rawValue
                    == CVulkan.VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT.rawValue
            )
        }

        @Test("Validate info_EXT")
        public func validate_info_EXT() {
            #expect(
                Ignite.DebugUtilsMessageSeverityFlagsEXT.info_EXT.rawValue
                    == CVulkan.VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT.rawValue
            )
        }

        @Test("Validate warning_EXT")
        public func validate_warning_EXT() {
            #expect(
                Ignite.DebugUtilsMessageSeverityFlagsEXT.warning_EXT.rawValue
                    == CVulkan.VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT.rawValue
            )
        }

        @Test("Validate error_EXT")
        public func validate_error_EXT() {
            #expect(
                Ignite.DebugUtilsMessageSeverityFlagsEXT.error_EXT.rawValue
                    == CVulkan.VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the DebugUtilsMessageTypeFlagsEXT bitmask.
    @Suite("DebugUtilsMessageTypeFlagsEXT")
    public struct DebugUtilsMessageTypeFlagsEXTTests {
        @Test("Validate general_EXT")
        public func validate_general_EXT() {
            #expect(
                Ignite.DebugUtilsMessageTypeFlagsEXT.general_EXT.rawValue
                    == CVulkan.VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT.rawValue
            )
        }

        @Test("Validate validation_EXT")
        public func validate_validation_EXT() {
            #expect(
                Ignite.DebugUtilsMessageTypeFlagsEXT.validation_EXT.rawValue
                    == CVulkan.VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT.rawValue
            )
        }

        @Test("Validate performance_EXT")
        public func validate_performance_EXT() {
            #expect(
                Ignite.DebugUtilsMessageTypeFlagsEXT.performance_EXT.rawValue
                    == CVulkan.VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT.rawValue
            )
        }

        @Test("Validate deviceAddressBinding_EXT")
        public func validate_deviceAddressBinding_EXT() {
            #expect(
                Ignite.DebugUtilsMessageTypeFlagsEXT.deviceAddressBinding_EXT.rawValue
                    == CVulkan.VK_DEBUG_UTILS_MESSAGE_TYPE_DEVICE_ADDRESS_BINDING_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the DependencyFlags bitmask.
    @Suite("DependencyFlags")
    public struct DependencyFlagsTests {
        @Test("Validate byRegion")
        public func validate_byRegion() {
            #expect(
                Ignite.DependencyFlags.byRegion.rawValue == CVulkan.VK_DEPENDENCY_BY_REGION_BIT.rawValue
            )
        }

        @Test("Validate deviceGroup")
        public func validate_deviceGroup() {
            #expect(
                Ignite.DependencyFlags.deviceGroup.rawValue == CVulkan.VK_DEPENDENCY_DEVICE_GROUP_BIT.rawValue
            )
        }

        @Test("Validate viewLocal")
        public func validate_viewLocal() {
            #expect(
                Ignite.DependencyFlags.viewLocal.rawValue == CVulkan.VK_DEPENDENCY_VIEW_LOCAL_BIT.rawValue
            )
        }

        @Test("Validate feedbackLoop_EXT")
        public func validate_feedbackLoop_EXT() {
            #expect(
                Ignite.DependencyFlags.feedbackLoop_EXT.rawValue == CVulkan.VK_DEPENDENCY_FEEDBACK_LOOP_BIT_EXT.rawValue
            )
        }

        @Test("Validate queueFamilyOwnershipTransferUseAllStages_KHR")
        public func validate_queueFamilyOwnershipTransferUseAllStages_KHR() {
            #expect(
                Ignite.DependencyFlags.queueFamilyOwnershipTransferUseAllStages_KHR.rawValue
                    == CVulkan.VK_DEPENDENCY_QUEUE_FAMILY_OWNERSHIP_TRANSFER_USE_ALL_STAGES_BIT_KHR.rawValue
            )
        }

        @Test("Validate viewLocal_KHR")
        public func validate_viewLocal_KHR() {
            #expect(
                Ignite.DependencyFlags.viewLocal_KHR.rawValue == CVulkan.VK_DEPENDENCY_VIEW_LOCAL_BIT_KHR.rawValue
            )
        }

        @Test("Validate deviceGroup_KHR")
        public func validate_deviceGroup_KHR() {
            #expect(
                Ignite.DependencyFlags.deviceGroup_KHR.rawValue == CVulkan.VK_DEPENDENCY_DEVICE_GROUP_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the DescriptorBindingFlags bitmask.
    @Suite("DescriptorBindingFlags")
    public struct DescriptorBindingFlagsTests {
        @Test("Validate updateAfterBind")
        public func validate_updateAfterBind() {
            #expect(
                Ignite.DescriptorBindingFlags.updateAfterBind.rawValue
                    == CVulkan.VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT.rawValue
            )
        }

        @Test("Validate updateUnusedWhilePending")
        public func validate_updateUnusedWhilePending() {
            #expect(
                Ignite.DescriptorBindingFlags.updateUnusedWhilePending.rawValue
                    == CVulkan.VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT.rawValue
            )
        }

        @Test("Validate partiallyBound")
        public func validate_partiallyBound() {
            #expect(
                Ignite.DescriptorBindingFlags.partiallyBound.rawValue
                    == CVulkan.VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT.rawValue
            )
        }

        @Test("Validate variableDescriptorCount")
        public func validate_variableDescriptorCount() {
            #expect(
                Ignite.DescriptorBindingFlags.variableDescriptorCount.rawValue
                    == CVulkan.VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT.rawValue
            )
        }

        @Test("Validate updateAfterBind_EXT")
        public func validate_updateAfterBind_EXT() {
            #expect(
                Ignite.DescriptorBindingFlags.updateAfterBind_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT.rawValue
            )
        }

        @Test("Validate updateUnusedWhilePending_EXT")
        public func validate_updateUnusedWhilePending_EXT() {
            #expect(
                Ignite.DescriptorBindingFlags.updateUnusedWhilePending_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT_EXT.rawValue
            )
        }

        @Test("Validate partiallyBound_EXT")
        public func validate_partiallyBound_EXT() {
            #expect(
                Ignite.DescriptorBindingFlags.partiallyBound_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT.rawValue
            )
        }

        @Test("Validate variableDescriptorCount_EXT")
        public func validate_variableDescriptorCount_EXT() {
            #expect(
                Ignite.DescriptorBindingFlags.variableDescriptorCount_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the DescriptorPoolCreateFlags bitmask.
    @Suite("DescriptorPoolCreateFlags")
    public struct DescriptorPoolCreateFlagsTests {
        @Test("Validate freeDescriptorSet")
        public func validate_freeDescriptorSet() {
            #expect(
                Ignite.DescriptorPoolCreateFlags.freeDescriptorSet.rawValue
                    == CVulkan.VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT.rawValue
            )
        }

        @Test("Validate updateAfterBind")
        public func validate_updateAfterBind() {
            #expect(
                Ignite.DescriptorPoolCreateFlags.updateAfterBind.rawValue
                    == CVulkan.VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT.rawValue
            )
        }

        @Test("Validate hostOnly_EXT")
        public func validate_hostOnly_EXT() {
            #expect(
                Ignite.DescriptorPoolCreateFlags.hostOnly_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_EXT.rawValue
            )
        }

        @Test("Validate allowOverallocationSets_NV")
        public func validate_allowOverallocationSets_NV() {
            #expect(
                Ignite.DescriptorPoolCreateFlags.allowOverallocationSets_NV.rawValue
                    == CVulkan.VK_DESCRIPTOR_POOL_CREATE_ALLOW_OVERALLOCATION_SETS_BIT_NV.rawValue
            )
        }

        @Test("Validate allowOverallocationPools_NV")
        public func validate_allowOverallocationPools_NV() {
            #expect(
                Ignite.DescriptorPoolCreateFlags.allowOverallocationPools_NV.rawValue
                    == CVulkan.VK_DESCRIPTOR_POOL_CREATE_ALLOW_OVERALLOCATION_POOLS_BIT_NV.rawValue
            )
        }

        @Test("Validate updateAfterBind_EXT")
        public func validate_updateAfterBind_EXT() {
            #expect(
                Ignite.DescriptorPoolCreateFlags.updateAfterBind_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT.rawValue
            )
        }

        @Test("Validate hostOnly_VALVE")
        public func validate_hostOnly_VALVE() {
            #expect(
                Ignite.DescriptorPoolCreateFlags.hostOnly_VALVE.rawValue
                    == CVulkan.VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_VALVE.rawValue
            )
        }
    }


    /// Tests for the DescriptorSetLayoutCreateFlags bitmask.
    @Suite("DescriptorSetLayoutCreateFlags")
    public struct DescriptorSetLayoutCreateFlagsTests {
        @Test("Validate updateAfterBindPool")
        public func validate_updateAfterBindPool() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.updateAfterBindPool.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT.rawValue
            )
        }

        @Test("Validate pushDescriptor")
        public func validate_pushDescriptor() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.pushDescriptor.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT.rawValue
            )
        }

        @Test("Validate descriptorBuffer_EXT")
        public func validate_descriptorBuffer_EXT() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.descriptorBuffer_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_DESCRIPTOR_BUFFER_BIT_EXT.rawValue
            )
        }

        @Test("Validate embeddedImmutableSamplers_EXT")
        public func validate_embeddedImmutableSamplers_EXT() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.embeddedImmutableSamplers_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_EMBEDDED_IMMUTABLE_SAMPLERS_BIT_EXT.rawValue
            )
        }

        @Test("Validate indirectBindable_NV")
        public func validate_indirectBindable_NV() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.indirectBindable_NV.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_INDIRECT_BINDABLE_BIT_NV.rawValue
            )
        }

        @Test("Validate hostOnlyPool_EXT")
        public func validate_hostOnlyPool_EXT() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.hostOnlyPool_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_EXT.rawValue
            )
        }

        @Test("Validate perStage_NV")
        public func validate_perStage_NV() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.perStage_NV.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_PER_STAGE_BIT_NV.rawValue
            )
        }

        @Test("Validate pushDescriptor_KHR")
        public func validate_pushDescriptor_KHR() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.pushDescriptor_KHR.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR.rawValue
            )
        }

        @Test("Validate updateAfterBindPool_EXT")
        public func validate_updateAfterBindPool_EXT() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.updateAfterBindPool_EXT.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT.rawValue
            )
        }

        @Test("Validate hostOnlyPool_VALVE")
        public func validate_hostOnlyPool_VALVE() {
            #expect(
                Ignite.DescriptorSetLayoutCreateFlags.hostOnlyPool_VALVE.rawValue
                    == CVulkan.VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_VALVE.rawValue
            )
        }
    }


    /// Tests for the DeviceAddressBindingFlagsEXT bitmask.
    @Suite("DeviceAddressBindingFlagsEXT")
    public struct DeviceAddressBindingFlagsEXTTests {
        @Test("Validate internalObject_EXT")
        public func validate_internalObject_EXT() {
            #expect(
                Ignite.DeviceAddressBindingFlagsEXT.internalObject_EXT.rawValue
                    == CVulkan.VK_DEVICE_ADDRESS_BINDING_INTERNAL_OBJECT_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the DeviceDiagnosticsConfigFlagsNV bitmask.
    @Suite("DeviceDiagnosticsConfigFlagsNV")
    public struct DeviceDiagnosticsConfigFlagsNVTests {
        @Test("Validate enableShaderDebugInfo_NV")
        public func validate_enableShaderDebugInfo_NV() {
            #expect(
                Ignite.DeviceDiagnosticsConfigFlagsNV.enableShaderDebugInfo_NV.rawValue
                    == CVulkan.VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV.rawValue
            )
        }

        @Test("Validate enableResourceTracking_NV")
        public func validate_enableResourceTracking_NV() {
            #expect(
                Ignite.DeviceDiagnosticsConfigFlagsNV.enableResourceTracking_NV.rawValue
                    == CVulkan.VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV.rawValue
            )
        }

        @Test("Validate enableAutomaticCheckpoints_NV")
        public func validate_enableAutomaticCheckpoints_NV() {
            #expect(
                Ignite.DeviceDiagnosticsConfigFlagsNV.enableAutomaticCheckpoints_NV.rawValue
                    == CVulkan.VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV.rawValue
            )
        }

        @Test("Validate enableShaderErrorReporting_NV")
        public func validate_enableShaderErrorReporting_NV() {
            #expect(
                Ignite.DeviceDiagnosticsConfigFlagsNV.enableShaderErrorReporting_NV.rawValue
                    == CVulkan.VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_ERROR_REPORTING_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the DeviceGroupPresentModeFlagsKHR bitmask.
    @Suite("DeviceGroupPresentModeFlagsKHR")
    public struct DeviceGroupPresentModeFlagsKHRTests {
        @Test("Validate local_KHR")
        public func validate_local_KHR() {
            #expect(
                Ignite.DeviceGroupPresentModeFlagsKHR.local_KHR.rawValue
                    == CVulkan.VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR.rawValue
            )
        }

        @Test("Validate remote_KHR")
        public func validate_remote_KHR() {
            #expect(
                Ignite.DeviceGroupPresentModeFlagsKHR.remote_KHR.rawValue
                    == CVulkan.VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR.rawValue
            )
        }

        @Test("Validate sum_KHR")
        public func validate_sum_KHR() {
            #expect(
                Ignite.DeviceGroupPresentModeFlagsKHR.sum_KHR.rawValue
                    == CVulkan.VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR.rawValue
            )
        }

        @Test("Validate localMultiDevice_KHR")
        public func validate_localMultiDevice_KHR() {
            #expect(
                Ignite.DeviceGroupPresentModeFlagsKHR.localMultiDevice_KHR.rawValue
                    == CVulkan.VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the DeviceQueueCreateFlags bitmask.
    @Suite("DeviceQueueCreateFlags")
    public struct DeviceQueueCreateFlagsTests {
        @Test("Validate protected")
        public func validate_protected() {
            #expect(
                Ignite.DeviceQueueCreateFlags.protected.rawValue == CVulkan.VK_DEVICE_QUEUE_CREATE_PROTECTED_BIT.rawValue
            )
        }
    }


    /// Tests for the DisplayPlaneAlphaFlagsKHR bitmask.
    @Suite("DisplayPlaneAlphaFlagsKHR")
    public struct DisplayPlaneAlphaFlagsKHRTests {
        @Test("Validate opaque_KHR")
        public func validate_opaque_KHR() {
            #expect(
                Ignite.DisplayPlaneAlphaFlagsKHR.opaque_KHR.rawValue
                    == CVulkan.VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR.rawValue
            )
        }

        @Test("Validate global_KHR")
        public func validate_global_KHR() {
            #expect(
                Ignite.DisplayPlaneAlphaFlagsKHR.global_KHR.rawValue
                    == CVulkan.VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR.rawValue
            )
        }

        @Test("Validate perPixel_KHR")
        public func validate_perPixel_KHR() {
            #expect(
                Ignite.DisplayPlaneAlphaFlagsKHR.perPixel_KHR.rawValue
                    == CVulkan.VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR.rawValue
            )
        }

        @Test("Validate perPixelPremultiplied_KHR")
        public func validate_perPixelPremultiplied_KHR() {
            #expect(
                Ignite.DisplayPlaneAlphaFlagsKHR.perPixelPremultiplied_KHR.rawValue
                    == CVulkan.VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the EventCreateFlags bitmask.
    @Suite("EventCreateFlags")
    public struct EventCreateFlagsTests {
        @Test("Validate deviceOnly")
        public func validate_deviceOnly() {
            #expect(
                Ignite.EventCreateFlags.deviceOnly.rawValue == CVulkan.VK_EVENT_CREATE_DEVICE_ONLY_BIT.rawValue
            )
        }

        @Test("Validate deviceOnly_KHR")
        public func validate_deviceOnly_KHR() {
            #expect(
                Ignite.EventCreateFlags.deviceOnly_KHR.rawValue == CVulkan.VK_EVENT_CREATE_DEVICE_ONLY_BIT_KHR.rawValue
            )
        }
    }


    #if PlatformMetal
        /// Tests for the ExportMetalObjectTypeFlagsEXT bitmask.
        @Suite("ExportMetalObjectTypeFlagsEXT")
        public struct ExportMetalObjectTypeFlagsEXTTests {
            @Test("Validate metalDevice_EXT")
            public func validate_metalDevice_EXT() {
                #expect(
                    Ignite.ExportMetalObjectTypeFlagsEXT.metalDevice_EXT.rawValue
                        == CVulkan.VK_EXPORT_METAL_OBJECT_TYPE_METAL_DEVICE_BIT_EXT.rawValue
                )
            }

            @Test("Validate metalCommandQueue_EXT")
            public func validate_metalCommandQueue_EXT() {
                #expect(
                    Ignite.ExportMetalObjectTypeFlagsEXT.metalCommandQueue_EXT.rawValue
                        == CVulkan.VK_EXPORT_METAL_OBJECT_TYPE_METAL_COMMAND_QUEUE_BIT_EXT.rawValue
                )
            }

            @Test("Validate metalBuffer_EXT")
            public func validate_metalBuffer_EXT() {
                #expect(
                    Ignite.ExportMetalObjectTypeFlagsEXT.metalBuffer_EXT.rawValue
                        == CVulkan.VK_EXPORT_METAL_OBJECT_TYPE_METAL_BUFFER_BIT_EXT.rawValue
                )
            }

            @Test("Validate metalTexture_EXT")
            public func validate_metalTexture_EXT() {
                #expect(
                    Ignite.ExportMetalObjectTypeFlagsEXT.metalTexture_EXT.rawValue
                        == CVulkan.VK_EXPORT_METAL_OBJECT_TYPE_METAL_TEXTURE_BIT_EXT.rawValue
                )
            }

            @Test("Validate metalIosurface_EXT")
            public func validate_metalIosurface_EXT() {
                #expect(
                    Ignite.ExportMetalObjectTypeFlagsEXT.metalIosurface_EXT.rawValue
                        == CVulkan.VK_EXPORT_METAL_OBJECT_TYPE_METAL_IOSURFACE_BIT_EXT.rawValue
                )
            }

            @Test("Validate metalSharedEvent_EXT")
            public func validate_metalSharedEvent_EXT() {
                #expect(
                    Ignite.ExportMetalObjectTypeFlagsEXT.metalSharedEvent_EXT.rawValue
                        == CVulkan.VK_EXPORT_METAL_OBJECT_TYPE_METAL_SHARED_EVENT_BIT_EXT.rawValue
                )
            }
        }
    #else
        @Suite(
            "ExportMetalObjectTypeFlagsEXT",
            .disabled("This bitmask is only available when the following trait is enabled: PlatformMetal."))
        public struct ExportMetalObjectTypeFlagsEXTTests {}
    #endif


    /// Tests for the ExternalFenceFeatureFlags bitmask.
    @Suite("ExternalFenceFeatureFlags")
    public struct ExternalFenceFeatureFlagsTests {
        @Test("Validate exportable")
        public func validate_exportable() {
            #expect(
                Ignite.ExternalFenceFeatureFlags.exportable.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT.rawValue
            )
        }

        @Test("Validate importable")
        public func validate_importable() {
            #expect(
                Ignite.ExternalFenceFeatureFlags.importable.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT.rawValue
            )
        }

        @Test("Validate exportable_KHR")
        public func validate_exportable_KHR() {
            #expect(
                Ignite.ExternalFenceFeatureFlags.exportable_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR.rawValue
            )
        }

        @Test("Validate importable_KHR")
        public func validate_importable_KHR() {
            #expect(
                Ignite.ExternalFenceFeatureFlags.importable_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the ExternalFenceHandleTypeFlags bitmask.
    @Suite("ExternalFenceHandleTypeFlags")
    public struct ExternalFenceHandleTypeFlagsTests {
        @Test("Validate opaqueFd")
        public func validate_opaqueFd() {
            #expect(
                Ignite.ExternalFenceHandleTypeFlags.opaqueFd.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT.rawValue
            )
        }

        @Test("Validate opaqueWin32")
        public func validate_opaqueWin32() {
            #expect(
                Ignite.ExternalFenceHandleTypeFlags.opaqueWin32.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT.rawValue
            )
        }

        @Test("Validate opaqueWin32Kmt")
        public func validate_opaqueWin32Kmt() {
            #expect(
                Ignite.ExternalFenceHandleTypeFlags.opaqueWin32Kmt.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT.rawValue
            )
        }

        @Test("Validate syncFd")
        public func validate_syncFd() {
            #expect(
                Ignite.ExternalFenceHandleTypeFlags.syncFd.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT.rawValue
            )
        }

        @Test("Validate opaqueFd_KHR")
        public func validate_opaqueFd_KHR() {
            #expect(
                Ignite.ExternalFenceHandleTypeFlags.opaqueFd_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR.rawValue
            )
        }

        @Test("Validate opaqueWin32_KHR")
        public func validate_opaqueWin32_KHR() {
            #expect(
                Ignite.ExternalFenceHandleTypeFlags.opaqueWin32_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR.rawValue
            )
        }

        @Test("Validate opaqueWin32Kmt_KHR")
        public func validate_opaqueWin32Kmt_KHR() {
            #expect(
                Ignite.ExternalFenceHandleTypeFlags.opaqueWin32Kmt_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR.rawValue
            )
        }

        @Test("Validate syncFd_KHR")
        public func validate_syncFd_KHR() {
            #expect(
                Ignite.ExternalFenceHandleTypeFlags.syncFd_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the ExternalMemoryFeatureFlags bitmask.
    @Suite("ExternalMemoryFeatureFlags")
    public struct ExternalMemoryFeatureFlagsTests {
        @Test("Validate dedicatedOnly")
        public func validate_dedicatedOnly() {
            #expect(
                Ignite.ExternalMemoryFeatureFlags.dedicatedOnly.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT.rawValue
            )
        }

        @Test("Validate exportable")
        public func validate_exportable() {
            #expect(
                Ignite.ExternalMemoryFeatureFlags.exportable.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT.rawValue
            )
        }

        @Test("Validate importable")
        public func validate_importable() {
            #expect(
                Ignite.ExternalMemoryFeatureFlags.importable.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT.rawValue
            )
        }

        @Test("Validate dedicatedOnly_KHR")
        public func validate_dedicatedOnly_KHR() {
            #expect(
                Ignite.ExternalMemoryFeatureFlags.dedicatedOnly_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR.rawValue
            )
        }

        @Test("Validate exportable_KHR")
        public func validate_exportable_KHR() {
            #expect(
                Ignite.ExternalMemoryFeatureFlags.exportable_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR.rawValue
            )
        }

        @Test("Validate importable_KHR")
        public func validate_importable_KHR() {
            #expect(
                Ignite.ExternalMemoryFeatureFlags.importable_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the ExternalMemoryFeatureFlagsNV bitmask.
    @Suite("ExternalMemoryFeatureFlagsNV")
    public struct ExternalMemoryFeatureFlagsNVTests {
        @Test("Validate dedicatedOnly_NV")
        public func validate_dedicatedOnly_NV() {
            #expect(
                Ignite.ExternalMemoryFeatureFlagsNV.dedicatedOnly_NV.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV.rawValue
            )
        }

        @Test("Validate exportable_NV")
        public func validate_exportable_NV() {
            #expect(
                Ignite.ExternalMemoryFeatureFlagsNV.exportable_NV.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV.rawValue
            )
        }

        @Test("Validate importable_NV")
        public func validate_importable_NV() {
            #expect(
                Ignite.ExternalMemoryFeatureFlagsNV.importable_NV.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the ExternalMemoryHandleTypeFlags bitmask.
    @Suite("ExternalMemoryHandleTypeFlags")
    public struct ExternalMemoryHandleTypeFlagsTests {
        @Test("Validate opaqueFd")
        public func validate_opaqueFd() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.opaqueFd.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT.rawValue
            )
        }

        @Test("Validate opaqueWin32")
        public func validate_opaqueWin32() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.opaqueWin32.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT.rawValue
            )
        }

        @Test("Validate opaqueWin32Kmt")
        public func validate_opaqueWin32Kmt() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.opaqueWin32Kmt.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT.rawValue
            )
        }

        @Test("Validate d3d11Texture")
        public func validate_d3d11Texture() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.d3d11Texture.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT.rawValue
            )
        }

        @Test("Validate d3d11TextureKmt")
        public func validate_d3d11TextureKmt() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.d3d11TextureKmt.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT.rawValue
            )
        }

        @Test("Validate d3d12Heap")
        public func validate_d3d12Heap() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.d3d12Heap.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT.rawValue
            )
        }

        @Test("Validate d3d12Resource")
        public func validate_d3d12Resource() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.d3d12Resource.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT.rawValue
            )
        }

        @Test("Validate dmaBuf_EXT")
        public func validate_dmaBuf_EXT() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.dmaBuf_EXT.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT.rawValue
            )
        }

        #if PlatformAndroid
            @Test("Validate androidHardwareBuffer_ANDROID")
            public func validate_androidHardwareBuffer_ANDROID() {
                #expect(
                    Ignite.ExternalMemoryHandleTypeFlags.androidHardwareBuffer_ANDROID.rawValue
                        == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate androidHardwareBuffer_ANDROID",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_androidHardwareBuffer_ANDROID() {}
        #endif

        @Test("Validate hostAllocation_EXT")
        public func validate_hostAllocation_EXT() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.hostAllocation_EXT.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT.rawValue
            )
        }

        @Test("Validate hostMappedForeignMemory_EXT")
        public func validate_hostMappedForeignMemory_EXT() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.hostMappedForeignMemory_EXT.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT.rawValue
            )
        }

        #if PlatformFuchsia
            @Test("Validate zirconVmo_FUCHSIA")
            public func validate_zirconVmo_FUCHSIA() {
                #expect(
                    Ignite.ExternalMemoryHandleTypeFlags.zirconVmo_FUCHSIA.rawValue
                        == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_ZIRCON_VMO_BIT_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate zirconVmo_FUCHSIA",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_zirconVmo_FUCHSIA() {}
        #endif

        @Test("Validate rdmaAddress_NV")
        public func validate_rdmaAddress_NV() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.rdmaAddress_NV.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_RDMA_ADDRESS_BIT_NV.rawValue
            )
        }

        #if PlatformScreen
            @Test("Validate screenBuffer_QNX")
            public func validate_screenBuffer_QNX() {
                #expect(
                    Ignite.ExternalMemoryHandleTypeFlags.screenBuffer_QNX.rawValue
                        == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_SCREEN_BUFFER_BIT_QNX.rawValue
                )
            }
        #else
            @Test(
                "Validate screenBuffer_QNX",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_screenBuffer_QNX() {}
        #endif

        #if PlatformMetal
            @Test("Validate mtlbuffer_EXT")
            public func validate_mtlbuffer_EXT() {
                #expect(
                    Ignite.ExternalMemoryHandleTypeFlags.mtlbuffer_EXT.rawValue
                        == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_MTLBUFFER_BIT_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate mtlbuffer_EXT",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_mtlbuffer_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate mtltexture_EXT")
            public func validate_mtltexture_EXT() {
                #expect(
                    Ignite.ExternalMemoryHandleTypeFlags.mtltexture_EXT.rawValue
                        == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_MTLTEXTURE_BIT_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate mtltexture_EXT",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_mtltexture_EXT() {}
        #endif

        #if PlatformMetal
            @Test("Validate mtlheap_EXT")
            public func validate_mtlheap_EXT() {
                #expect(
                    Ignite.ExternalMemoryHandleTypeFlags.mtlheap_EXT.rawValue
                        == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_MTLHEAP_BIT_EXT.rawValue
                )
            }
        #else
            @Test(
                "Validate mtlheap_EXT",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_mtlheap_EXT() {}
        #endif

        @Test("Validate opaqueFd_KHR")
        public func validate_opaqueFd_KHR() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.opaqueFd_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR.rawValue
            )
        }

        @Test("Validate opaqueWin32_KHR")
        public func validate_opaqueWin32_KHR() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.opaqueWin32_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR.rawValue
            )
        }

        @Test("Validate opaqueWin32Kmt_KHR")
        public func validate_opaqueWin32Kmt_KHR() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.opaqueWin32Kmt_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR.rawValue
            )
        }

        @Test("Validate d3d11Texture_KHR")
        public func validate_d3d11Texture_KHR() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.d3d11Texture_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR.rawValue
            )
        }

        @Test("Validate d3d11TextureKmt_KHR")
        public func validate_d3d11TextureKmt_KHR() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.d3d11TextureKmt_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR.rawValue
            )
        }

        @Test("Validate d3d12Heap_KHR")
        public func validate_d3d12Heap_KHR() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.d3d12Heap_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR.rawValue
            )
        }

        @Test("Validate d3d12Resource_KHR")
        public func validate_d3d12Resource_KHR() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlags.d3d12Resource_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the ExternalMemoryHandleTypeFlagsNV bitmask.
    @Suite("ExternalMemoryHandleTypeFlagsNV")
    public struct ExternalMemoryHandleTypeFlagsNVTests {
        @Test("Validate opaqueWin32_NV")
        public func validate_opaqueWin32_NV() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlagsNV.opaqueWin32_NV.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV.rawValue
            )
        }

        @Test("Validate opaqueWin32Kmt_NV")
        public func validate_opaqueWin32Kmt_NV() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlagsNV.opaqueWin32Kmt_NV.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV.rawValue
            )
        }

        @Test("Validate d3d11Image_NV")
        public func validate_d3d11Image_NV() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlagsNV.d3d11Image_NV.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV.rawValue
            )
        }

        @Test("Validate d3d11ImageKmt_NV")
        public func validate_d3d11ImageKmt_NV() {
            #expect(
                Ignite.ExternalMemoryHandleTypeFlagsNV.d3d11ImageKmt_NV.rawValue
                    == CVulkan.VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the ExternalSemaphoreFeatureFlags bitmask.
    @Suite("ExternalSemaphoreFeatureFlags")
    public struct ExternalSemaphoreFeatureFlagsTests {
        @Test("Validate exportable")
        public func validate_exportable() {
            #expect(
                Ignite.ExternalSemaphoreFeatureFlags.exportable.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT.rawValue
            )
        }

        @Test("Validate importable")
        public func validate_importable() {
            #expect(
                Ignite.ExternalSemaphoreFeatureFlags.importable.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT.rawValue
            )
        }

        @Test("Validate exportable_KHR")
        public func validate_exportable_KHR() {
            #expect(
                Ignite.ExternalSemaphoreFeatureFlags.exportable_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR.rawValue
            )
        }

        @Test("Validate importable_KHR")
        public func validate_importable_KHR() {
            #expect(
                Ignite.ExternalSemaphoreFeatureFlags.importable_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the ExternalSemaphoreHandleTypeFlags bitmask.
    @Suite("ExternalSemaphoreHandleTypeFlags")
    public struct ExternalSemaphoreHandleTypeFlagsTests {
        @Test("Validate opaqueFd")
        public func validate_opaqueFd() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.opaqueFd.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT.rawValue
            )
        }

        @Test("Validate opaqueWin32")
        public func validate_opaqueWin32() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.opaqueWin32.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT.rawValue
            )
        }

        @Test("Validate opaqueWin32Kmt")
        public func validate_opaqueWin32Kmt() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.opaqueWin32Kmt.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT.rawValue
            )
        }

        @Test("Validate d3d12Fence")
        public func validate_d3d12Fence() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.d3d12Fence.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT.rawValue
            )
        }

        @Test("Validate syncFd")
        public func validate_syncFd() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.syncFd.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT.rawValue
            )
        }

        #if PlatformFuchsia
            @Test("Validate zirconEvent_FUCHSIA")
            public func validate_zirconEvent_FUCHSIA() {
                #expect(
                    Ignite.ExternalSemaphoreHandleTypeFlags.zirconEvent_FUCHSIA.rawValue
                        == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_ZIRCON_EVENT_BIT_FUCHSIA.rawValue
                )
            }
        #else
            @Test(
                "Validate zirconEvent_FUCHSIA",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_zirconEvent_FUCHSIA() {}
        #endif

        @Test("Validate d3d11Fence")
        public func validate_d3d11Fence() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.d3d11Fence.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D11_FENCE_BIT.rawValue
            )
        }

        @Test("Validate opaqueFd_KHR")
        public func validate_opaqueFd_KHR() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.opaqueFd_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR.rawValue
            )
        }

        @Test("Validate opaqueWin32_KHR")
        public func validate_opaqueWin32_KHR() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.opaqueWin32_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR.rawValue
            )
        }

        @Test("Validate opaqueWin32Kmt_KHR")
        public func validate_opaqueWin32Kmt_KHR() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.opaqueWin32Kmt_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR.rawValue
            )
        }

        @Test("Validate d3d12Fence_KHR")
        public func validate_d3d12Fence_KHR() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.d3d12Fence_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR.rawValue
            )
        }

        @Test("Validate syncFd_KHR")
        public func validate_syncFd_KHR() {
            #expect(
                Ignite.ExternalSemaphoreHandleTypeFlags.syncFd_KHR.rawValue
                    == CVulkan.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the FenceCreateFlags bitmask.
    @Suite("FenceCreateFlags")
    public struct FenceCreateFlagsTests {
        @Test("Validate signaled")
        public func validate_signaled() {
            #expect(
                Ignite.FenceCreateFlags.signaled.rawValue == CVulkan.VK_FENCE_CREATE_SIGNALED_BIT.rawValue
            )
        }
    }


    /// Tests for the FenceImportFlags bitmask.
    @Suite("FenceImportFlags")
    public struct FenceImportFlagsTests {
        @Test("Validate temporary")
        public func validate_temporary() {
            #expect(
                Ignite.FenceImportFlags.temporary.rawValue == CVulkan.VK_FENCE_IMPORT_TEMPORARY_BIT.rawValue
            )
        }

        @Test("Validate temporary_KHR")
        public func validate_temporary_KHR() {
            #expect(
                Ignite.FenceImportFlags.temporary_KHR.rawValue == CVulkan.VK_FENCE_IMPORT_TEMPORARY_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the FormatFeatureFlags bitmask.
    @Suite("FormatFeatureFlags")
    public struct FormatFeatureFlagsTests {
        @Test("Validate sampledImage")
        public func validate_sampledImage() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImage.rawValue == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT.rawValue
            )
        }

        @Test("Validate storageImage")
        public func validate_storageImage() {
            #expect(
                Ignite.FormatFeatureFlags.storageImage.rawValue == CVulkan.VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT.rawValue
            )
        }

        @Test("Validate storageImageAtomic")
        public func validate_storageImageAtomic() {
            #expect(
                Ignite.FormatFeatureFlags.storageImageAtomic.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT.rawValue
            )
        }

        @Test("Validate uniformTexelBuffer")
        public func validate_uniformTexelBuffer() {
            #expect(
                Ignite.FormatFeatureFlags.uniformTexelBuffer.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate storageTexelBuffer")
        public func validate_storageTexelBuffer() {
            #expect(
                Ignite.FormatFeatureFlags.storageTexelBuffer.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate storageTexelBufferAtomic")
        public func validate_storageTexelBufferAtomic() {
            #expect(
                Ignite.FormatFeatureFlags.storageTexelBufferAtomic.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT.rawValue
            )
        }

        @Test("Validate vertexBuffer")
        public func validate_vertexBuffer() {
            #expect(
                Ignite.FormatFeatureFlags.vertexBuffer.rawValue == CVulkan.VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT.rawValue
            )
        }

        @Test("Validate colorAttachment")
        public func validate_colorAttachment() {
            #expect(
                Ignite.FormatFeatureFlags.colorAttachment.rawValue == CVulkan.VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT.rawValue
            )
        }

        @Test("Validate colorAttachmentBlend")
        public func validate_colorAttachmentBlend() {
            #expect(
                Ignite.FormatFeatureFlags.colorAttachmentBlend.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT.rawValue
            )
        }

        @Test("Validate depthStencilAttachment")
        public func validate_depthStencilAttachment() {
            #expect(
                Ignite.FormatFeatureFlags.depthStencilAttachment.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT.rawValue
            )
        }

        @Test("Validate blitSrc")
        public func validate_blitSrc() {
            #expect(
                Ignite.FormatFeatureFlags.blitSrc.rawValue == CVulkan.VK_FORMAT_FEATURE_BLIT_SRC_BIT.rawValue
            )
        }

        @Test("Validate blitDst")
        public func validate_blitDst() {
            #expect(
                Ignite.FormatFeatureFlags.blitDst.rawValue == CVulkan.VK_FORMAT_FEATURE_BLIT_DST_BIT.rawValue
            )
        }

        @Test("Validate sampledImageFilterLinear")
        public func validate_sampledImageFilterLinear() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageFilterLinear.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT.rawValue
            )
        }

        @Test("Validate transferSrc")
        public func validate_transferSrc() {
            #expect(
                Ignite.FormatFeatureFlags.transferSrc.rawValue == CVulkan.VK_FORMAT_FEATURE_TRANSFER_SRC_BIT.rawValue
            )
        }

        @Test("Validate transferDst")
        public func validate_transferDst() {
            #expect(
                Ignite.FormatFeatureFlags.transferDst.rawValue == CVulkan.VK_FORMAT_FEATURE_TRANSFER_DST_BIT.rawValue
            )
        }

        @Test("Validate midpointChromaSamples")
        public func validate_midpointChromaSamples() {
            #expect(
                Ignite.FormatFeatureFlags.midpointChromaSamples.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT.rawValue
            )
        }

        @Test("Validate sampledImageYcbcrConversionLinearFilter")
        public func validate_sampledImageYcbcrConversionLinearFilter() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageYcbcrConversionLinearFilter.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT.rawValue
            )
        }

        @Test("Validate sampledImageYcbcrConversionSeparateReconstructionFilter")
        public func validate_sampledImageYcbcrConversionSeparateReconstructionFilter() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageYcbcrConversionSeparateReconstructionFilter.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT.rawValue
            )
        }

        @Test("Validate sampledImageYcbcrConversionChromaReconstructionExplicit")
        public func validate_sampledImageYcbcrConversionChromaReconstructionExplicit() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageYcbcrConversionChromaReconstructionExplicit.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT.rawValue
            )
        }

        @Test("Validate sampledImageYcbcrConversionChromaReconstructionExplicitForceable")
        public func validate_sampledImageYcbcrConversionChromaReconstructionExplicitForceable() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageYcbcrConversionChromaReconstructionExplicitForceable.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT
                    .rawValue
            )
        }

        @Test("Validate disjoint")
        public func validate_disjoint() {
            #expect(
                Ignite.FormatFeatureFlags.disjoint.rawValue == CVulkan.VK_FORMAT_FEATURE_DISJOINT_BIT.rawValue
            )
        }

        @Test("Validate cositedChromaSamples")
        public func validate_cositedChromaSamples() {
            #expect(
                Ignite.FormatFeatureFlags.cositedChromaSamples.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT.rawValue
            )
        }

        @Test("Validate sampledImageFilterMinmax")
        public func validate_sampledImageFilterMinmax() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageFilterMinmax.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT.rawValue
            )
        }

        @Test("Validate videoDecodeOutput_KHR")
        public func validate_videoDecodeOutput_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.videoDecodeOutput_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_VIDEO_DECODE_OUTPUT_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeDpb_KHR")
        public func validate_videoDecodeDpb_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.videoDecodeDpb_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_VIDEO_DECODE_DPB_BIT_KHR.rawValue
            )
        }

        @Test("Validate accelerationStructureVertexBuffer_KHR")
        public func validate_accelerationStructureVertexBuffer_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.accelerationStructureVertexBuffer_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR.rawValue
            )
        }

        @Test("Validate sampledImageFilterCubic_EXT")
        public func validate_sampledImageFilterCubic_EXT() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageFilterCubic_EXT.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentDensityMap_EXT")
        public func validate_fragmentDensityMap_EXT() {
            #expect(
                Ignite.FormatFeatureFlags.fragmentDensityMap_EXT.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentShadingRateAttachment_KHR")
        public func validate_fragmentShadingRateAttachment_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.fragmentShadingRateAttachment_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeInput_KHR")
        public func validate_videoEncodeInput_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.videoEncodeInput_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_VIDEO_ENCODE_INPUT_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeDpb_KHR")
        public func validate_videoEncodeDpb_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.videoEncodeDpb_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_VIDEO_ENCODE_DPB_BIT_KHR.rawValue
            )
        }

        @Test("Validate sampledImageFilterCubic_IMG")
        public func validate_sampledImageFilterCubic_IMG() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageFilterCubic_IMG.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG.rawValue
            )
        }

        @Test("Validate transferSrc_KHR")
        public func validate_transferSrc_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.transferSrc_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR.rawValue
            )
        }

        @Test("Validate transferDst_KHR")
        public func validate_transferDst_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.transferDst_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR.rawValue
            )
        }

        @Test("Validate sampledImageFilterMinmax_EXT")
        public func validate_sampledImageFilterMinmax_EXT() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageFilterMinmax_EXT.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT.rawValue
            )
        }

        @Test("Validate midpointChromaSamples_KHR")
        public func validate_midpointChromaSamples_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.midpointChromaSamples_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR.rawValue
            )
        }

        @Test("Validate sampledImageYcbcrConversionLinearFilter_KHR")
        public func validate_sampledImageYcbcrConversionLinearFilter_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageYcbcrConversionLinearFilter_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR.rawValue
            )
        }

        @Test("Validate sampledImageYcbcrConversionSeparateReconstructionFilter_KHR")
        public func validate_sampledImageYcbcrConversionSeparateReconstructionFilter_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageYcbcrConversionSeparateReconstructionFilter_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR
                    .rawValue
            )
        }

        @Test("Validate sampledImageYcbcrConversionChromaReconstructionExplicit_KHR")
        public func validate_sampledImageYcbcrConversionChromaReconstructionExplicit_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageYcbcrConversionChromaReconstructionExplicit_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR
                    .rawValue
            )
        }

        @Test("Validate sampledImageYcbcrConversionChromaReconstructionExplicitForceable_KHR")
        public func validate_sampledImageYcbcrConversionChromaReconstructionExplicitForceable_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.sampledImageYcbcrConversionChromaReconstructionExplicitForceable_KHR.rawValue
                    == CVulkan
                    .VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR
                    .rawValue
            )
        }

        @Test("Validate disjoint_KHR")
        public func validate_disjoint_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.disjoint_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_DISJOINT_BIT_KHR.rawValue
            )
        }

        @Test("Validate cositedChromaSamples_KHR")
        public func validate_cositedChromaSamples_KHR() {
            #expect(
                Ignite.FormatFeatureFlags.cositedChromaSamples_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the FormatFeatureFlags2 bitmask.
    @Suite("FormatFeatureFlags2")
    public struct FormatFeatureFlags2Tests {
        @Test("Validate sampledImage")
        public func validate_sampledImage() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImage.rawValue == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT
            )
        }

        @Test("Validate storageImage")
        public func validate_storageImage() {
            #expect(
                Ignite.FormatFeatureFlags2.storageImage.rawValue == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT
            )
        }

        @Test("Validate storageImageAtomic")
        public func validate_storageImageAtomic() {
            #expect(
                Ignite.FormatFeatureFlags2.storageImageAtomic.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT
            )
        }

        @Test("Validate uniformTexelBuffer")
        public func validate_uniformTexelBuffer() {
            #expect(
                Ignite.FormatFeatureFlags2.uniformTexelBuffer.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT
            )
        }

        @Test("Validate storageTexelBuffer")
        public func validate_storageTexelBuffer() {
            #expect(
                Ignite.FormatFeatureFlags2.storageTexelBuffer.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT
            )
        }

        @Test("Validate storageTexelBufferAtomic")
        public func validate_storageTexelBufferAtomic() {
            #expect(
                Ignite.FormatFeatureFlags2.storageTexelBufferAtomic.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
            )
        }

        @Test("Validate vertexBuffer")
        public func validate_vertexBuffer() {
            #expect(
                Ignite.FormatFeatureFlags2.vertexBuffer.rawValue == CVulkan.VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT
            )
        }

        @Test("Validate colorAttachment")
        public func validate_colorAttachment() {
            #expect(
                Ignite.FormatFeatureFlags2.colorAttachment.rawValue == CVulkan.VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT
            )
        }

        @Test("Validate colorAttachmentBlend")
        public func validate_colorAttachmentBlend() {
            #expect(
                Ignite.FormatFeatureFlags2.colorAttachmentBlend.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT
            )
        }

        @Test("Validate depthStencilAttachment")
        public func validate_depthStencilAttachment() {
            #expect(
                Ignite.FormatFeatureFlags2.depthStencilAttachment.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT
            )
        }

        @Test("Validate blitSrc")
        public func validate_blitSrc() {
            #expect(
                Ignite.FormatFeatureFlags2.blitSrc.rawValue == CVulkan.VK_FORMAT_FEATURE_2_BLIT_SRC_BIT
            )
        }

        @Test("Validate blitDst")
        public func validate_blitDst() {
            #expect(
                Ignite.FormatFeatureFlags2.blitDst.rawValue == CVulkan.VK_FORMAT_FEATURE_2_BLIT_DST_BIT
            )
        }

        @Test("Validate sampledImageFilterLinear")
        public func validate_sampledImageFilterLinear() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageFilterLinear.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT
            )
        }

        @Test("Validate transferSrc")
        public func validate_transferSrc() {
            #expect(
                Ignite.FormatFeatureFlags2.transferSrc.rawValue == CVulkan.VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT
            )
        }

        @Test("Validate transferDst")
        public func validate_transferDst() {
            #expect(
                Ignite.FormatFeatureFlags2.transferDst.rawValue == CVulkan.VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT
            )
        }

        @Test("Validate sampledImageFilterMinmax")
        public func validate_sampledImageFilterMinmax() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageFilterMinmax.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT
            )
        }

        @Test("Validate midpointChromaSamples")
        public func validate_midpointChromaSamples() {
            #expect(
                Ignite.FormatFeatureFlags2.midpointChromaSamples.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT
            )
        }

        @Test("Validate sampledImageYcbcrConversionLinearFilter")
        public func validate_sampledImageYcbcrConversionLinearFilter() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageYcbcrConversionLinearFilter.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT
            )
        }

        @Test("Validate sampledImageYcbcrConversionSeparateReconstructionFilter")
        public func validate_sampledImageYcbcrConversionSeparateReconstructionFilter() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageYcbcrConversionSeparateReconstructionFilter.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT
            )
        }

        @Test("Validate sampledImageYcbcrConversionChromaReconstructionExplicit")
        public func validate_sampledImageYcbcrConversionChromaReconstructionExplicit() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageYcbcrConversionChromaReconstructionExplicit.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT
            )
        }

        @Test("Validate sampledImageYcbcrConversionChromaReconstructionExplicitForceable")
        public func validate_sampledImageYcbcrConversionChromaReconstructionExplicitForceable() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageYcbcrConversionChromaReconstructionExplicitForceable.rawValue
                    == CVulkan
                    .VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT
            )
        }

        @Test("Validate disjoint")
        public func validate_disjoint() {
            #expect(
                Ignite.FormatFeatureFlags2.disjoint.rawValue == CVulkan.VK_FORMAT_FEATURE_2_DISJOINT_BIT
            )
        }

        @Test("Validate cositedChromaSamples")
        public func validate_cositedChromaSamples() {
            #expect(
                Ignite.FormatFeatureFlags2.cositedChromaSamples.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT
            )
        }

        @Test("Validate storageReadWithoutFormat")
        public func validate_storageReadWithoutFormat() {
            #expect(
                Ignite.FormatFeatureFlags2.storageReadWithoutFormat.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT
            )
        }

        @Test("Validate storageWriteWithoutFormat")
        public func validate_storageWriteWithoutFormat() {
            #expect(
                Ignite.FormatFeatureFlags2.storageWriteWithoutFormat.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT
            )
        }

        @Test("Validate sampledImageDepthComparison")
        public func validate_sampledImageDepthComparison() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageDepthComparison.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT
            )
        }

        @Test("Validate sampledImageFilterCubic")
        public func validate_sampledImageFilterCubic() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageFilterCubic.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT
            )
        }

        @Test("Validate hostImageTransfer")
        public func validate_hostImageTransfer() {
            #expect(
                Ignite.FormatFeatureFlags2.hostImageTransfer.rawValue == CVulkan.VK_FORMAT_FEATURE_2_HOST_IMAGE_TRANSFER_BIT
            )
        }

        @Test("Validate videoDecodeOutput_KHR")
        public func validate_videoDecodeOutput_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.videoDecodeOutput_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_VIDEO_DECODE_OUTPUT_BIT_KHR
            )
        }

        @Test("Validate videoDecodeDpb_KHR")
        public func validate_videoDecodeDpb_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.videoDecodeDpb_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_VIDEO_DECODE_DPB_BIT_KHR
            )
        }

        @Test("Validate accelerationStructureVertexBuffer_KHR")
        public func validate_accelerationStructureVertexBuffer_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.accelerationStructureVertexBuffer_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR
            )
        }

        @Test("Validate fragmentDensityMap_EXT")
        public func validate_fragmentDensityMap_EXT() {
            #expect(
                Ignite.FormatFeatureFlags2.fragmentDensityMap_EXT.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_FRAGMENT_DENSITY_MAP_BIT_EXT
            )
        }

        @Test("Validate fragmentShadingRateAttachment_KHR")
        public func validate_fragmentShadingRateAttachment_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.fragmentShadingRateAttachment_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
            )
        }

        @Test("Validate videoEncodeInput_KHR")
        public func validate_videoEncodeInput_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.videoEncodeInput_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_VIDEO_ENCODE_INPUT_BIT_KHR
            )
        }

        @Test("Validate videoEncodeDpb_KHR")
        public func validate_videoEncodeDpb_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.videoEncodeDpb_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_VIDEO_ENCODE_DPB_BIT_KHR
            )
        }

        @Test("Validate accelerationStructureRadiusBuffer_NV")
        public func validate_accelerationStructureRadiusBuffer_NV() {
            #expect(
                Ignite.FormatFeatureFlags2.accelerationStructureRadiusBuffer_NV.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_ACCELERATION_STRUCTURE_RADIUS_BUFFER_BIT_NV
            )
        }

        @Test("Validate linearColorAttachment_NV")
        public func validate_linearColorAttachment_NV() {
            #expect(
                Ignite.FormatFeatureFlags2.linearColorAttachment_NV.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_LINEAR_COLOR_ATTACHMENT_BIT_NV
            )
        }

        @Test("Validate weightImage_QCOM")
        public func validate_weightImage_QCOM() {
            #expect(
                Ignite.FormatFeatureFlags2.weightImage_QCOM.rawValue == CVulkan.VK_FORMAT_FEATURE_2_WEIGHT_IMAGE_BIT_QCOM
            )
        }

        @Test("Validate weightSampledImage_QCOM")
        public func validate_weightSampledImage_QCOM() {
            #expect(
                Ignite.FormatFeatureFlags2.weightSampledImage_QCOM.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_WEIGHT_SAMPLED_IMAGE_BIT_QCOM
            )
        }

        @Test("Validate blockMatching_QCOM")
        public func validate_blockMatching_QCOM() {
            #expect(
                Ignite.FormatFeatureFlags2.blockMatching_QCOM.rawValue == CVulkan.VK_FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM
            )
        }

        @Test("Validate boxFilterSampled_QCOM")
        public func validate_boxFilterSampled_QCOM() {
            #expect(
                Ignite.FormatFeatureFlags2.boxFilterSampled_QCOM.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_BOX_FILTER_SAMPLED_BIT_QCOM
            )
        }

        @Test("Validate opticalFlowImage_NV")
        public func validate_opticalFlowImage_NV() {
            #expect(
                Ignite.FormatFeatureFlags2.opticalFlowImage_NV.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_OPTICAL_FLOW_IMAGE_BIT_NV
            )
        }

        @Test("Validate opticalFlowVector_NV")
        public func validate_opticalFlowVector_NV() {
            #expect(
                Ignite.FormatFeatureFlags2.opticalFlowVector_NV.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_OPTICAL_FLOW_VECTOR_BIT_NV
            )
        }

        @Test("Validate opticalFlowCost_NV")
        public func validate_opticalFlowCost_NV() {
            #expect(
                Ignite.FormatFeatureFlags2.opticalFlowCost_NV.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_OPTICAL_FLOW_COST_BIT_NV
            )
        }

        @Test("Validate videoEncodeQuantizationDeltaMap_KHR")
        public func validate_videoEncodeQuantizationDeltaMap_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.videoEncodeQuantizationDeltaMap_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_VIDEO_ENCODE_QUANTIZATION_DELTA_MAP_BIT_KHR
            )
        }

        @Test("Validate videoEncodeEmphasisMap_KHR")
        public func validate_videoEncodeEmphasisMap_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.videoEncodeEmphasisMap_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_VIDEO_ENCODE_EMPHASIS_MAP_BIT_KHR
            )
        }

        @Test("Validate hostImageTransfer_EXT")
        public func validate_hostImageTransfer_EXT() {
            #expect(
                Ignite.FormatFeatureFlags2.hostImageTransfer_EXT.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_HOST_IMAGE_TRANSFER_BIT_EXT
            )
        }

        @Test("Validate sampledImage_KHR")
        public func validate_sampledImage_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImage_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT_KHR
            )
        }

        @Test("Validate storageImage_KHR")
        public func validate_storageImage_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.storageImage_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT_KHR
            )
        }

        @Test("Validate storageImageAtomic_KHR")
        public func validate_storageImageAtomic_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.storageImageAtomic_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT_KHR
            )
        }

        @Test("Validate uniformTexelBuffer_KHR")
        public func validate_uniformTexelBuffer_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.uniformTexelBuffer_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT_KHR
            )
        }

        @Test("Validate storageTexelBuffer_KHR")
        public func validate_storageTexelBuffer_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.storageTexelBuffer_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT_KHR
            )
        }

        @Test("Validate storageTexelBufferAtomic_KHR")
        public func validate_storageTexelBufferAtomic_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.storageTexelBufferAtomic_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT_KHR
            )
        }

        @Test("Validate vertexBuffer_KHR")
        public func validate_vertexBuffer_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.vertexBuffer_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT_KHR
            )
        }

        @Test("Validate colorAttachment_KHR")
        public func validate_colorAttachment_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.colorAttachment_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT_KHR
            )
        }

        @Test("Validate colorAttachmentBlend_KHR")
        public func validate_colorAttachmentBlend_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.colorAttachmentBlend_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT_KHR
            )
        }

        @Test("Validate depthStencilAttachment_KHR")
        public func validate_depthStencilAttachment_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.depthStencilAttachment_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT_KHR
            )
        }

        @Test("Validate blitSrc_KHR")
        public func validate_blitSrc_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.blitSrc_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_2_BLIT_SRC_BIT_KHR
            )
        }

        @Test("Validate blitDst_KHR")
        public func validate_blitDst_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.blitDst_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_2_BLIT_DST_BIT_KHR
            )
        }

        @Test("Validate sampledImageFilterLinear_KHR")
        public func validate_sampledImageFilterLinear_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageFilterLinear_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT_KHR
            )
        }

        @Test("Validate transferSrc_KHR")
        public func validate_transferSrc_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.transferSrc_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT_KHR
            )
        }

        @Test("Validate transferDst_KHR")
        public func validate_transferDst_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.transferDst_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT_KHR
            )
        }

        @Test("Validate midpointChromaSamples_KHR")
        public func validate_midpointChromaSamples_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.midpointChromaSamples_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT_KHR
            )
        }

        @Test("Validate sampledImageYcbcrConversionLinearFilter_KHR")
        public func validate_sampledImageYcbcrConversionLinearFilter_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageYcbcrConversionLinearFilter_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR
            )
        }

        @Test("Validate sampledImageYcbcrConversionSeparateReconstructionFilter_KHR")
        public func validate_sampledImageYcbcrConversionSeparateReconstructionFilter_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageYcbcrConversionSeparateReconstructionFilter_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR
            )
        }

        @Test("Validate sampledImageYcbcrConversionChromaReconstructionExplicit_KHR")
        public func validate_sampledImageYcbcrConversionChromaReconstructionExplicit_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageYcbcrConversionChromaReconstructionExplicit_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR
            )
        }

        @Test("Validate sampledImageYcbcrConversionChromaReconstructionExplicitForceable_KHR")
        public func validate_sampledImageYcbcrConversionChromaReconstructionExplicitForceable_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageYcbcrConversionChromaReconstructionExplicitForceable_KHR.rawValue
                    == CVulkan
                    .VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR
            )
        }

        @Test("Validate disjoint_KHR")
        public func validate_disjoint_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.disjoint_KHR.rawValue == CVulkan.VK_FORMAT_FEATURE_2_DISJOINT_BIT_KHR
            )
        }

        @Test("Validate cositedChromaSamples_KHR")
        public func validate_cositedChromaSamples_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.cositedChromaSamples_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT_KHR
            )
        }

        @Test("Validate storageReadWithoutFormat_KHR")
        public func validate_storageReadWithoutFormat_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.storageReadWithoutFormat_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT_KHR
            )
        }

        @Test("Validate storageWriteWithoutFormat_KHR")
        public func validate_storageWriteWithoutFormat_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.storageWriteWithoutFormat_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT_KHR
            )
        }

        @Test("Validate sampledImageDepthComparison_KHR")
        public func validate_sampledImageDepthComparison_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageDepthComparison_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT_KHR
            )
        }

        @Test("Validate sampledImageFilterMinmax_KHR")
        public func validate_sampledImageFilterMinmax_KHR() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageFilterMinmax_KHR.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT_KHR
            )
        }

        @Test("Validate sampledImageFilterCubic_EXT")
        public func validate_sampledImageFilterCubic_EXT() {
            #expect(
                Ignite.FormatFeatureFlags2.sampledImageFilterCubic_EXT.rawValue
                    == CVulkan.VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT
            )
        }
    }


    /// Tests for the FrameBoundaryFlagsEXT bitmask.
    @Suite("FrameBoundaryFlagsEXT")
    public struct FrameBoundaryFlagsEXTTests {
        @Test("Validate frameEnd_EXT")
        public func validate_frameEnd_EXT() {
            #expect(
                Ignite.FrameBoundaryFlagsEXT.frameEnd_EXT.rawValue == CVulkan.VK_FRAME_BOUNDARY_FRAME_END_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the FramebufferCreateFlags bitmask.
    @Suite("FramebufferCreateFlags")
    public struct FramebufferCreateFlagsTests {
        @Test("Validate imageless")
        public func validate_imageless() {
            #expect(
                Ignite.FramebufferCreateFlags.imageless.rawValue == CVulkan.VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT.rawValue
            )
        }

        @Test("Validate imageless_KHR")
        public func validate_imageless_KHR() {
            #expect(
                Ignite.FramebufferCreateFlags.imageless_KHR.rawValue
                    == CVulkan.VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the GeometryFlagsKHR bitmask.
    @Suite("GeometryFlagsKHR")
    public struct GeometryFlagsKHRTests {
        @Test("Validate opaque_KHR")
        public func validate_opaque_KHR() {
            #expect(
                Ignite.GeometryFlagsKHR.opaque_KHR.rawValue == CVulkan.VK_GEOMETRY_OPAQUE_BIT_KHR.rawValue
            )
        }

        @Test("Validate noDuplicateAnyHitInvocation_KHR")
        public func validate_noDuplicateAnyHitInvocation_KHR() {
            #expect(
                Ignite.GeometryFlagsKHR.noDuplicateAnyHitInvocation_KHR.rawValue
                    == CVulkan.VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR.rawValue
            )
        }

        @Test("Validate opaque_NV")
        public func validate_opaque_NV() {
            #expect(
                Ignite.GeometryFlagsKHR.opaque_NV.rawValue == CVulkan.VK_GEOMETRY_OPAQUE_BIT_NV.rawValue
            )
        }

        @Test("Validate noDuplicateAnyHitInvocation_NV")
        public func validate_noDuplicateAnyHitInvocation_NV() {
            #expect(
                Ignite.GeometryFlagsKHR.noDuplicateAnyHitInvocation_NV.rawValue
                    == CVulkan.VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the GeometryInstanceFlagsKHR bitmask.
    @Suite("GeometryInstanceFlagsKHR")
    public struct GeometryInstanceFlagsKHRTests {
        @Test("Validate triangleFacingCullDisableBit_KHR")
        public func validate_triangleFacingCullDisableBit_KHR() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.triangleFacingCullDisableBit_KHR.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR.rawValue
            )
        }

        @Test("Validate triangleFlipFacingBit_KHR")
        public func validate_triangleFlipFacingBit_KHR() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.triangleFlipFacingBit_KHR.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_TRIANGLE_FLIP_FACING_BIT_KHR.rawValue
            )
        }

        @Test("Validate forceOpaqueBit_KHR")
        public func validate_forceOpaqueBit_KHR() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.forceOpaqueBit_KHR.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR.rawValue
            )
        }

        @Test("Validate forceNoOpaqueBit_KHR")
        public func validate_forceNoOpaqueBit_KHR() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.forceNoOpaqueBit_KHR.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR.rawValue
            )
        }

        @Test("Validate forceOpacityMicromap2State_EXT")
        public func validate_forceOpacityMicromap2State_EXT() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.forceOpacityMicromap2State_EXT.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_FORCE_OPACITY_MICROMAP_2_STATE_EXT.rawValue
            )
        }

        @Test("Validate disableOpacityMicromaps_EXT")
        public func validate_disableOpacityMicromaps_EXT() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.disableOpacityMicromaps_EXT.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_DISABLE_OPACITY_MICROMAPS_EXT.rawValue
            )
        }

        @Test("Validate triangleFrontCounterclockwiseBit_KHR")
        public func validate_triangleFrontCounterclockwiseBit_KHR() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.triangleFrontCounterclockwiseBit_KHR.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_KHR.rawValue
            )
        }

        @Test("Validate triangleCullDisableBit_NV")
        public func validate_triangleCullDisableBit_NV() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.triangleCullDisableBit_NV.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV.rawValue
            )
        }

        @Test("Validate triangleFrontCounterclockwiseBit_NV")
        public func validate_triangleFrontCounterclockwiseBit_NV() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.triangleFrontCounterclockwiseBit_NV.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_NV.rawValue
            )
        }

        @Test("Validate forceOpaqueBit_NV")
        public func validate_forceOpaqueBit_NV() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.forceOpaqueBit_NV.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV.rawValue
            )
        }

        @Test("Validate forceNoOpaqueBit_NV")
        public func validate_forceNoOpaqueBit_NV() {
            #expect(
                Ignite.GeometryInstanceFlagsKHR.forceNoOpaqueBit_NV.rawValue
                    == CVulkan.VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the GraphicsPipelineLibraryFlagsEXT bitmask.
    @Suite("GraphicsPipelineLibraryFlagsEXT")
    public struct GraphicsPipelineLibraryFlagsEXTTests {
        @Test("Validate vertexInputInterface_EXT")
        public func validate_vertexInputInterface_EXT() {
            #expect(
                Ignite.GraphicsPipelineLibraryFlagsEXT.vertexInputInterface_EXT.rawValue
                    == CVulkan.VK_GRAPHICS_PIPELINE_LIBRARY_VERTEX_INPUT_INTERFACE_BIT_EXT.rawValue
            )
        }

        @Test("Validate preRasterizationShaders_EXT")
        public func validate_preRasterizationShaders_EXT() {
            #expect(
                Ignite.GraphicsPipelineLibraryFlagsEXT.preRasterizationShaders_EXT.rawValue
                    == CVulkan.VK_GRAPHICS_PIPELINE_LIBRARY_PRE_RASTERIZATION_SHADERS_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentShader_EXT")
        public func validate_fragmentShader_EXT() {
            #expect(
                Ignite.GraphicsPipelineLibraryFlagsEXT.fragmentShader_EXT.rawValue
                    == CVulkan.VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_SHADER_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentOutputInterface_EXT")
        public func validate_fragmentOutputInterface_EXT() {
            #expect(
                Ignite.GraphicsPipelineLibraryFlagsEXT.fragmentOutputInterface_EXT.rawValue
                    == CVulkan.VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_OUTPUT_INTERFACE_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the HostImageCopyFlags bitmask.
    @Suite("HostImageCopyFlags")
    public struct HostImageCopyFlagsTests {
        @Test("Validate memcpy")
        public func validate_memcpy() {
            #expect(
                Ignite.HostImageCopyFlags.memcpy.rawValue == CVulkan.VK_HOST_IMAGE_COPY_MEMCPY.rawValue
            )
        }

        @Test("Validate memcpy_EXT")
        public func validate_memcpy_EXT() {
            #expect(
                Ignite.HostImageCopyFlags.memcpy_EXT.rawValue == CVulkan.VK_HOST_IMAGE_COPY_MEMCPY_EXT.rawValue
            )
        }
    }


    /// Tests for the ImageAspectFlags bitmask.
    @Suite("ImageAspectFlags")
    public struct ImageAspectFlagsTests {
        @Test("Validate colorBit")
        public func validate_colorBit() {
            #expect(
                Ignite.ImageAspectFlags.colorBit.rawValue == CVulkan.VK_IMAGE_ASPECT_COLOR_BIT.rawValue
            )
        }

        @Test("Validate depthBit")
        public func validate_depthBit() {
            #expect(
                Ignite.ImageAspectFlags.depthBit.rawValue == CVulkan.VK_IMAGE_ASPECT_DEPTH_BIT.rawValue
            )
        }

        @Test("Validate stencilBit")
        public func validate_stencilBit() {
            #expect(
                Ignite.ImageAspectFlags.stencilBit.rawValue == CVulkan.VK_IMAGE_ASPECT_STENCIL_BIT.rawValue
            )
        }

        @Test("Validate metadataBit")
        public func validate_metadataBit() {
            #expect(
                Ignite.ImageAspectFlags.metadataBit.rawValue == CVulkan.VK_IMAGE_ASPECT_METADATA_BIT.rawValue
            )
        }

        @Test("Validate plane0Bit")
        public func validate_plane0Bit() {
            #expect(
                Ignite.ImageAspectFlags.plane0Bit.rawValue == CVulkan.VK_IMAGE_ASPECT_PLANE_0_BIT.rawValue
            )
        }

        @Test("Validate plane1Bit")
        public func validate_plane1Bit() {
            #expect(
                Ignite.ImageAspectFlags.plane1Bit.rawValue == CVulkan.VK_IMAGE_ASPECT_PLANE_1_BIT.rawValue
            )
        }

        @Test("Validate plane2Bit")
        public func validate_plane2Bit() {
            #expect(
                Ignite.ImageAspectFlags.plane2Bit.rawValue == CVulkan.VK_IMAGE_ASPECT_PLANE_2_BIT.rawValue
            )
        }

        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.ImageAspectFlags.none.rawValue == CVulkan.VK_IMAGE_ASPECT_NONE.rawValue
            )
        }

        @Test("Validate memoryPlane0Bit_EXT")
        public func validate_memoryPlane0Bit_EXT() {
            #expect(
                Ignite.ImageAspectFlags.memoryPlane0Bit_EXT.rawValue
                    == CVulkan.VK_IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT.rawValue
            )
        }

        @Test("Validate memoryPlane1Bit_EXT")
        public func validate_memoryPlane1Bit_EXT() {
            #expect(
                Ignite.ImageAspectFlags.memoryPlane1Bit_EXT.rawValue
                    == CVulkan.VK_IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT.rawValue
            )
        }

        @Test("Validate memoryPlane2Bit_EXT")
        public func validate_memoryPlane2Bit_EXT() {
            #expect(
                Ignite.ImageAspectFlags.memoryPlane2Bit_EXT.rawValue
                    == CVulkan.VK_IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT.rawValue
            )
        }

        @Test("Validate memoryPlane3Bit_EXT")
        public func validate_memoryPlane3Bit_EXT() {
            #expect(
                Ignite.ImageAspectFlags.memoryPlane3Bit_EXT.rawValue
                    == CVulkan.VK_IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT.rawValue
            )
        }

        @Test("Validate plane0Bit_KHR")
        public func validate_plane0Bit_KHR() {
            #expect(
                Ignite.ImageAspectFlags.plane0Bit_KHR.rawValue == CVulkan.VK_IMAGE_ASPECT_PLANE_0_BIT_KHR.rawValue
            )
        }

        @Test("Validate plane1Bit_KHR")
        public func validate_plane1Bit_KHR() {
            #expect(
                Ignite.ImageAspectFlags.plane1Bit_KHR.rawValue == CVulkan.VK_IMAGE_ASPECT_PLANE_1_BIT_KHR.rawValue
            )
        }

        @Test("Validate plane2Bit_KHR")
        public func validate_plane2Bit_KHR() {
            #expect(
                Ignite.ImageAspectFlags.plane2Bit_KHR.rawValue == CVulkan.VK_IMAGE_ASPECT_PLANE_2_BIT_KHR.rawValue
            )
        }

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.ImageAspectFlags.none_KHR.rawValue == CVulkan.VK_IMAGE_ASPECT_NONE_KHR.rawValue
            )
        }
    }


    /// Tests for the ImageCompressionFixedRateFlagsEXT bitmask.
    @Suite("ImageCompressionFixedRateFlagsEXT")
    public struct ImageCompressionFixedRateFlagsEXTTests {
        @Test("Validate none_EXT")
        public func validate_none_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.none_EXT.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_NONE_EXT.rawValue
            )
        }

        @Test("Validate 1bpcBit_EXT")
        public func validate_1bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`1bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_1BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 2bpcBit_EXT")
        public func validate_2bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`2bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_2BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 3bpcBit_EXT")
        public func validate_3bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`3bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_3BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 4bpcBit_EXT")
        public func validate_4bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`4bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_4BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 5bpcBit_EXT")
        public func validate_5bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`5bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_5BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 6bpcBit_EXT")
        public func validate_6bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`6bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_6BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 7bpcBit_EXT")
        public func validate_7bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`7bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_7BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 8bpcBit_EXT")
        public func validate_8bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`8bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_8BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 9bpcBit_EXT")
        public func validate_9bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`9bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_9BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 10bpcBit_EXT")
        public func validate_10bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`10bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_10BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 11bpcBit_EXT")
        public func validate_11bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`11bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_11BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 12bpcBit_EXT")
        public func validate_12bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`12bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_12BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 13bpcBit_EXT")
        public func validate_13bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`13bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_13BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 14bpcBit_EXT")
        public func validate_14bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`14bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_14BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 15bpcBit_EXT")
        public func validate_15bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`15bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_15BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 16bpcBit_EXT")
        public func validate_16bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`16bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_16BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 17bpcBit_EXT")
        public func validate_17bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`17bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_17BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 18bpcBit_EXT")
        public func validate_18bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`18bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_18BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 19bpcBit_EXT")
        public func validate_19bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`19bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_19BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 20bpcBit_EXT")
        public func validate_20bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`20bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_20BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 21bpcBit_EXT")
        public func validate_21bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`21bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_21BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 22bpcBit_EXT")
        public func validate_22bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`22bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_22BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 23bpcBit_EXT")
        public func validate_23bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`23bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_23BPC_BIT_EXT.rawValue
            )
        }

        @Test("Validate 24bpcBit_EXT")
        public func validate_24bpcBit_EXT() {
            #expect(
                Ignite.ImageCompressionFixedRateFlagsEXT.`24bpcBit_EXT`.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_24BPC_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the ImageCompressionFlagsEXT bitmask.
    @Suite("ImageCompressionFlagsEXT")
    public struct ImageCompressionFlagsEXTTests {
        @Test("Validate default_EXT")
        public func validate_default_EXT() {
            #expect(
                Ignite.ImageCompressionFlagsEXT.default_EXT.rawValue == CVulkan.VK_IMAGE_COMPRESSION_DEFAULT_EXT.rawValue
            )
        }

        @Test("Validate fixedRateDefault_EXT")
        public func validate_fixedRateDefault_EXT() {
            #expect(
                Ignite.ImageCompressionFlagsEXT.fixedRateDefault_EXT.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_DEFAULT_EXT.rawValue
            )
        }

        @Test("Validate fixedRateExplicit_EXT")
        public func validate_fixedRateExplicit_EXT() {
            #expect(
                Ignite.ImageCompressionFlagsEXT.fixedRateExplicit_EXT.rawValue
                    == CVulkan.VK_IMAGE_COMPRESSION_FIXED_RATE_EXPLICIT_EXT.rawValue
            )
        }

        @Test("Validate disabled_EXT")
        public func validate_disabled_EXT() {
            #expect(
                Ignite.ImageCompressionFlagsEXT.disabled_EXT.rawValue == CVulkan.VK_IMAGE_COMPRESSION_DISABLED_EXT.rawValue
            )
        }
    }


    #if PlatformFuchsia
        /// Tests for the ImageConstraintsInfoFlagsFUCHSIA bitmask.
        @Suite("ImageConstraintsInfoFlagsFUCHSIA")
        public struct ImageConstraintsInfoFlagsFUCHSIATests {
            @Test("Validate cpuReadRarely_FUCHSIA")
            public func validate_cpuReadRarely_FUCHSIA() {
                #expect(
                    Ignite.ImageConstraintsInfoFlagsFUCHSIA.cpuReadRarely_FUCHSIA.rawValue
                        == CVulkan.VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_RARELY_FUCHSIA.rawValue
                )
            }

            @Test("Validate cpuReadOften_FUCHSIA")
            public func validate_cpuReadOften_FUCHSIA() {
                #expect(
                    Ignite.ImageConstraintsInfoFlagsFUCHSIA.cpuReadOften_FUCHSIA.rawValue
                        == CVulkan.VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_OFTEN_FUCHSIA.rawValue
                )
            }

            @Test("Validate cpuWriteRarely_FUCHSIA")
            public func validate_cpuWriteRarely_FUCHSIA() {
                #expect(
                    Ignite.ImageConstraintsInfoFlagsFUCHSIA.cpuWriteRarely_FUCHSIA.rawValue
                        == CVulkan.VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_RARELY_FUCHSIA.rawValue
                )
            }

            @Test("Validate cpuWriteOften_FUCHSIA")
            public func validate_cpuWriteOften_FUCHSIA() {
                #expect(
                    Ignite.ImageConstraintsInfoFlagsFUCHSIA.cpuWriteOften_FUCHSIA.rawValue
                        == CVulkan.VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_OFTEN_FUCHSIA.rawValue
                )
            }

            @Test("Validate protectedOptional_FUCHSIA")
            public func validate_protectedOptional_FUCHSIA() {
                #expect(
                    Ignite.ImageConstraintsInfoFlagsFUCHSIA.protectedOptional_FUCHSIA.rawValue
                        == CVulkan.VK_IMAGE_CONSTRAINTS_INFO_PROTECTED_OPTIONAL_FUCHSIA.rawValue
                )
            }
        }
    #else
        @Suite(
            "ImageConstraintsInfoFlagsFUCHSIA",
            .disabled("This bitmask is only available when the following trait is enabled: PlatformFuchsia."))
        public struct ImageConstraintsInfoFlagsFUCHSIATests {}
    #endif


    /// Tests for the ImageCreateFlags bitmask.
    @Suite("ImageCreateFlags")
    public struct ImageCreateFlagsTests {
        @Test("Validate sparseBinding")
        public func validate_sparseBinding() {
            #expect(
                Ignite.ImageCreateFlags.sparseBinding.rawValue == CVulkan.VK_IMAGE_CREATE_SPARSE_BINDING_BIT.rawValue
            )
        }

        @Test("Validate sparseResidency")
        public func validate_sparseResidency() {
            #expect(
                Ignite.ImageCreateFlags.sparseResidency.rawValue == CVulkan.VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT.rawValue
            )
        }

        @Test("Validate sparseAliased")
        public func validate_sparseAliased() {
            #expect(
                Ignite.ImageCreateFlags.sparseAliased.rawValue == CVulkan.VK_IMAGE_CREATE_SPARSE_ALIASED_BIT.rawValue
            )
        }

        @Test("Validate mutableFormat")
        public func validate_mutableFormat() {
            #expect(
                Ignite.ImageCreateFlags.mutableFormat.rawValue == CVulkan.VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT.rawValue
            )
        }

        @Test("Validate cubeCompatible")
        public func validate_cubeCompatible() {
            #expect(
                Ignite.ImageCreateFlags.cubeCompatible.rawValue == CVulkan.VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT.rawValue
            )
        }

        @Test("Validate alias")
        public func validate_alias() {
            #expect(
                Ignite.ImageCreateFlags.alias.rawValue == CVulkan.VK_IMAGE_CREATE_ALIAS_BIT.rawValue
            )
        }

        @Test("Validate splitInstanceBindRegions")
        public func validate_splitInstanceBindRegions() {
            #expect(
                Ignite.ImageCreateFlags.splitInstanceBindRegions.rawValue
                    == CVulkan.VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT.rawValue
            )
        }

        @Test("Validate 2dArrayCompatible")
        public func validate_2dArrayCompatible() {
            #expect(
                Ignite.ImageCreateFlags.`2dArrayCompatible`.rawValue
                    == CVulkan.VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT.rawValue
            )
        }

        @Test("Validate blockTexelViewCompatible")
        public func validate_blockTexelViewCompatible() {
            #expect(
                Ignite.ImageCreateFlags.blockTexelViewCompatible.rawValue
                    == CVulkan.VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT.rawValue
            )
        }

        @Test("Validate extendedUsage")
        public func validate_extendedUsage() {
            #expect(
                Ignite.ImageCreateFlags.extendedUsage.rawValue == CVulkan.VK_IMAGE_CREATE_EXTENDED_USAGE_BIT.rawValue
            )
        }

        @Test("Validate protected")
        public func validate_protected() {
            #expect(
                Ignite.ImageCreateFlags.protected.rawValue == CVulkan.VK_IMAGE_CREATE_PROTECTED_BIT.rawValue
            )
        }

        @Test("Validate disjoint")
        public func validate_disjoint() {
            #expect(
                Ignite.ImageCreateFlags.disjoint.rawValue == CVulkan.VK_IMAGE_CREATE_DISJOINT_BIT.rawValue
            )
        }

        @Test("Validate cornerSampled_NV")
        public func validate_cornerSampled_NV() {
            #expect(
                Ignite.ImageCreateFlags.cornerSampled_NV.rawValue == CVulkan.VK_IMAGE_CREATE_CORNER_SAMPLED_BIT_NV.rawValue
            )
        }

        @Test("Validate sampleLocationsCompatibleDepth_EXT")
        public func validate_sampleLocationsCompatibleDepth_EXT() {
            #expect(
                Ignite.ImageCreateFlags.sampleLocationsCompatibleDepth_EXT.rawValue
                    == CVulkan.VK_IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT.rawValue
            )
        }

        @Test("Validate subsampled_EXT")
        public func validate_subsampled_EXT() {
            #expect(
                Ignite.ImageCreateFlags.subsampled_EXT.rawValue == CVulkan.VK_IMAGE_CREATE_SUBSAMPLED_BIT_EXT.rawValue
            )
        }

        @Test("Validate descriptorBufferCaptureReplay_EXT")
        public func validate_descriptorBufferCaptureReplay_EXT() {
            #expect(
                Ignite.ImageCreateFlags.descriptorBufferCaptureReplay_EXT.rawValue
                    == CVulkan.VK_IMAGE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT.rawValue
            )
        }

        @Test("Validate multisampledRenderToSingleSampled_EXT")
        public func validate_multisampledRenderToSingleSampled_EXT() {
            #expect(
                Ignite.ImageCreateFlags.multisampledRenderToSingleSampled_EXT.rawValue
                    == CVulkan.VK_IMAGE_CREATE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_BIT_EXT.rawValue
            )
        }

        @Test("Validate 2dViewCompatible_EXT")
        public func validate_2dViewCompatible_EXT() {
            #expect(
                Ignite.ImageCreateFlags.`2dViewCompatible_EXT`.rawValue
                    == CVulkan.VK_IMAGE_CREATE_2D_VIEW_COMPATIBLE_BIT_EXT.rawValue
            )
        }

        @Test("Validate videoProfileIndependent_KHR")
        public func validate_videoProfileIndependent_KHR() {
            #expect(
                Ignite.ImageCreateFlags.videoProfileIndependent_KHR.rawValue
                    == CVulkan.VK_IMAGE_CREATE_VIDEO_PROFILE_INDEPENDENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate fragmentDensityMapOffset_EXT")
        public func validate_fragmentDensityMapOffset_EXT() {
            #expect(
                Ignite.ImageCreateFlags.fragmentDensityMapOffset_EXT.rawValue
                    == CVulkan.VK_IMAGE_CREATE_FRAGMENT_DENSITY_MAP_OFFSET_BIT_EXT.rawValue
            )
        }

        @Test("Validate splitInstanceBindRegions_KHR")
        public func validate_splitInstanceBindRegions_KHR() {
            #expect(
                Ignite.ImageCreateFlags.splitInstanceBindRegions_KHR.rawValue
                    == CVulkan.VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR.rawValue
            )
        }

        @Test("Validate 2dArrayCompatible_KHR")
        public func validate_2dArrayCompatible_KHR() {
            #expect(
                Ignite.ImageCreateFlags.`2dArrayCompatible_KHR`.rawValue
                    == CVulkan.VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR.rawValue
            )
        }

        @Test("Validate blockTexelViewCompatible_KHR")
        public func validate_blockTexelViewCompatible_KHR() {
            #expect(
                Ignite.ImageCreateFlags.blockTexelViewCompatible_KHR.rawValue
                    == CVulkan.VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR.rawValue
            )
        }

        @Test("Validate extendedUsage_KHR")
        public func validate_extendedUsage_KHR() {
            #expect(
                Ignite.ImageCreateFlags.extendedUsage_KHR.rawValue == CVulkan.VK_IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR.rawValue
            )
        }

        @Test("Validate disjoint_KHR")
        public func validate_disjoint_KHR() {
            #expect(
                Ignite.ImageCreateFlags.disjoint_KHR.rawValue == CVulkan.VK_IMAGE_CREATE_DISJOINT_BIT_KHR.rawValue
            )
        }

        @Test("Validate alias_KHR")
        public func validate_alias_KHR() {
            #expect(
                Ignite.ImageCreateFlags.alias_KHR.rawValue == CVulkan.VK_IMAGE_CREATE_ALIAS_BIT_KHR.rawValue
            )
        }

        @Test("Validate fragmentDensityMapOffset_QCOM")
        public func validate_fragmentDensityMapOffset_QCOM() {
            #expect(
                Ignite.ImageCreateFlags.fragmentDensityMapOffset_QCOM.rawValue
                    == CVulkan.VK_IMAGE_CREATE_FRAGMENT_DENSITY_MAP_OFFSET_BIT_QCOM.rawValue
            )
        }
    }


    /// Tests for the ImageUsageFlags bitmask.
    @Suite("ImageUsageFlags")
    public struct ImageUsageFlagsTests {
        @Test("Validate transferSrc")
        public func validate_transferSrc() {
            #expect(
                Ignite.ImageUsageFlags.transferSrc.rawValue == CVulkan.VK_IMAGE_USAGE_TRANSFER_SRC_BIT.rawValue
            )
        }

        @Test("Validate transferDst")
        public func validate_transferDst() {
            #expect(
                Ignite.ImageUsageFlags.transferDst.rawValue == CVulkan.VK_IMAGE_USAGE_TRANSFER_DST_BIT.rawValue
            )
        }

        @Test("Validate sampled")
        public func validate_sampled() {
            #expect(
                Ignite.ImageUsageFlags.sampled.rawValue == CVulkan.VK_IMAGE_USAGE_SAMPLED_BIT.rawValue
            )
        }

        @Test("Validate storage")
        public func validate_storage() {
            #expect(
                Ignite.ImageUsageFlags.storage.rawValue == CVulkan.VK_IMAGE_USAGE_STORAGE_BIT.rawValue
            )
        }

        @Test("Validate colorAttachment")
        public func validate_colorAttachment() {
            #expect(
                Ignite.ImageUsageFlags.colorAttachment.rawValue == CVulkan.VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT.rawValue
            )
        }

        @Test("Validate depthStencilAttachment")
        public func validate_depthStencilAttachment() {
            #expect(
                Ignite.ImageUsageFlags.depthStencilAttachment.rawValue
                    == CVulkan.VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT.rawValue
            )
        }

        @Test("Validate transientAttachment")
        public func validate_transientAttachment() {
            #expect(
                Ignite.ImageUsageFlags.transientAttachment.rawValue
                    == CVulkan.VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT.rawValue
            )
        }

        @Test("Validate inputAttachment")
        public func validate_inputAttachment() {
            #expect(
                Ignite.ImageUsageFlags.inputAttachment.rawValue == CVulkan.VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT.rawValue
            )
        }

        @Test("Validate hostTransfer")
        public func validate_hostTransfer() {
            #expect(
                Ignite.ImageUsageFlags.hostTransfer.rawValue == CVulkan.VK_IMAGE_USAGE_HOST_TRANSFER_BIT.rawValue
            )
        }

        @Test("Validate videoDecodeDst_KHR")
        public func validate_videoDecodeDst_KHR() {
            #expect(
                Ignite.ImageUsageFlags.videoDecodeDst_KHR.rawValue
                    == CVulkan.VK_IMAGE_USAGE_VIDEO_DECODE_DST_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeSrc_KHR")
        public func validate_videoDecodeSrc_KHR() {
            #expect(
                Ignite.ImageUsageFlags.videoDecodeSrc_KHR.rawValue
                    == CVulkan.VK_IMAGE_USAGE_VIDEO_DECODE_SRC_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoDecodeDpb_KHR")
        public func validate_videoDecodeDpb_KHR() {
            #expect(
                Ignite.ImageUsageFlags.videoDecodeDpb_KHR.rawValue
                    == CVulkan.VK_IMAGE_USAGE_VIDEO_DECODE_DPB_BIT_KHR.rawValue
            )
        }

        @Test("Validate fragmentDensityMap_EXT")
        public func validate_fragmentDensityMap_EXT() {
            #expect(
                Ignite.ImageUsageFlags.fragmentDensityMap_EXT.rawValue
                    == CVulkan.VK_IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentShadingRateAttachment_KHR")
        public func validate_fragmentShadingRateAttachment_KHR() {
            #expect(
                Ignite.ImageUsageFlags.fragmentShadingRateAttachment_KHR.rawValue
                    == CVulkan.VK_IMAGE_USAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeDst_KHR")
        public func validate_videoEncodeDst_KHR() {
            #expect(
                Ignite.ImageUsageFlags.videoEncodeDst_KHR.rawValue
                    == CVulkan.VK_IMAGE_USAGE_VIDEO_ENCODE_DST_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeSrc_KHR")
        public func validate_videoEncodeSrc_KHR() {
            #expect(
                Ignite.ImageUsageFlags.videoEncodeSrc_KHR.rawValue
                    == CVulkan.VK_IMAGE_USAGE_VIDEO_ENCODE_SRC_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeDpb_KHR")
        public func validate_videoEncodeDpb_KHR() {
            #expect(
                Ignite.ImageUsageFlags.videoEncodeDpb_KHR.rawValue
                    == CVulkan.VK_IMAGE_USAGE_VIDEO_ENCODE_DPB_BIT_KHR.rawValue
            )
        }

        @Test("Validate attachmentFeedbackLoop_EXT")
        public func validate_attachmentFeedbackLoop_EXT() {
            #expect(
                Ignite.ImageUsageFlags.attachmentFeedbackLoop_EXT.rawValue
                    == CVulkan.VK_IMAGE_USAGE_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT.rawValue
            )
        }

        @Test("Validate invocationMask_HUAWEI")
        public func validate_invocationMask_HUAWEI() {
            #expect(
                Ignite.ImageUsageFlags.invocationMask_HUAWEI.rawValue
                    == CVulkan.VK_IMAGE_USAGE_INVOCATION_MASK_BIT_HUAWEI.rawValue
            )
        }

        @Test("Validate sampleWeight_QCOM")
        public func validate_sampleWeight_QCOM() {
            #expect(
                Ignite.ImageUsageFlags.sampleWeight_QCOM.rawValue == CVulkan.VK_IMAGE_USAGE_SAMPLE_WEIGHT_BIT_QCOM.rawValue
            )
        }

        @Test("Validate sampleBlockMatch_QCOM")
        public func validate_sampleBlockMatch_QCOM() {
            #expect(
                Ignite.ImageUsageFlags.sampleBlockMatch_QCOM.rawValue
                    == CVulkan.VK_IMAGE_USAGE_SAMPLE_BLOCK_MATCH_BIT_QCOM.rawValue
            )
        }

        @Test("Validate tileMemory_QCOM")
        public func validate_tileMemory_QCOM() {
            #expect(
                Ignite.ImageUsageFlags.tileMemory_QCOM.rawValue == CVulkan.VK_IMAGE_USAGE_TILE_MEMORY_BIT_QCOM.rawValue
            )
        }

        @Test("Validate videoEncodeQuantizationDeltaMap_KHR")
        public func validate_videoEncodeQuantizationDeltaMap_KHR() {
            #expect(
                Ignite.ImageUsageFlags.videoEncodeQuantizationDeltaMap_KHR.rawValue
                    == CVulkan.VK_IMAGE_USAGE_VIDEO_ENCODE_QUANTIZATION_DELTA_MAP_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoEncodeEmphasisMap_KHR")
        public func validate_videoEncodeEmphasisMap_KHR() {
            #expect(
                Ignite.ImageUsageFlags.videoEncodeEmphasisMap_KHR.rawValue
                    == CVulkan.VK_IMAGE_USAGE_VIDEO_ENCODE_EMPHASIS_MAP_BIT_KHR.rawValue
            )
        }

        @Test("Validate shadingRateImage_NV")
        public func validate_shadingRateImage_NV() {
            #expect(
                Ignite.ImageUsageFlags.shadingRateImage_NV.rawValue
                    == CVulkan.VK_IMAGE_USAGE_SHADING_RATE_IMAGE_BIT_NV.rawValue
            )
        }

        @Test("Validate hostTransfer_EXT")
        public func validate_hostTransfer_EXT() {
            #expect(
                Ignite.ImageUsageFlags.hostTransfer_EXT.rawValue == CVulkan.VK_IMAGE_USAGE_HOST_TRANSFER_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the ImageViewCreateFlags bitmask.
    @Suite("ImageViewCreateFlags")
    public struct ImageViewCreateFlagsTests {
        @Test("Validate fragmentDensityMapDynamic_EXT")
        public func validate_fragmentDensityMapDynamic_EXT() {
            #expect(
                Ignite.ImageViewCreateFlags.fragmentDensityMapDynamic_EXT.rawValue
                    == CVulkan.VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT.rawValue
            )
        }

        @Test("Validate descriptorBufferCaptureReplay_EXT")
        public func validate_descriptorBufferCaptureReplay_EXT() {
            #expect(
                Ignite.ImageViewCreateFlags.descriptorBufferCaptureReplay_EXT.rawValue
                    == CVulkan.VK_IMAGE_VIEW_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentDensityMapDeferred_EXT")
        public func validate_fragmentDensityMapDeferred_EXT() {
            #expect(
                Ignite.ImageViewCreateFlags.fragmentDensityMapDeferred_EXT.rawValue
                    == CVulkan.VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DEFERRED_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the IndirectCommandsInputModeFlagsEXT bitmask.
    @Suite("IndirectCommandsInputModeFlagsEXT")
    public struct IndirectCommandsInputModeFlagsEXTTests {
        @Test("Validate vulkanIndexBuffer_EXT")
        public func validate_vulkanIndexBuffer_EXT() {
            #expect(
                Ignite.IndirectCommandsInputModeFlagsEXT.vulkanIndexBuffer_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_INPUT_MODE_VULKAN_INDEX_BUFFER_EXT.rawValue
            )
        }

        @Test("Validate dxgiIndexBuffer_EXT")
        public func validate_dxgiIndexBuffer_EXT() {
            #expect(
                Ignite.IndirectCommandsInputModeFlagsEXT.dxgiIndexBuffer_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_INPUT_MODE_DXGI_INDEX_BUFFER_EXT.rawValue
            )
        }
    }


    /// Tests for the IndirectCommandsLayoutUsageFlagsEXT bitmask.
    @Suite("IndirectCommandsLayoutUsageFlagsEXT")
    public struct IndirectCommandsLayoutUsageFlagsEXTTests {
        @Test("Validate explicitPreprocess_EXT")
        public func validate_explicitPreprocess_EXT() {
            #expect(
                Ignite.IndirectCommandsLayoutUsageFlagsEXT.explicitPreprocess_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_EXT.rawValue
            )
        }

        @Test("Validate unorderedSequences_EXT")
        public func validate_unorderedSequences_EXT() {
            #expect(
                Ignite.IndirectCommandsLayoutUsageFlagsEXT.unorderedSequences_EXT.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the IndirectCommandsLayoutUsageFlagsNV bitmask.
    @Suite("IndirectCommandsLayoutUsageFlagsNV")
    public struct IndirectCommandsLayoutUsageFlagsNVTests {
        @Test("Validate explicitPreprocess_NV")
        public func validate_explicitPreprocess_NV() {
            #expect(
                Ignite.IndirectCommandsLayoutUsageFlagsNV.explicitPreprocess_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV.rawValue
            )
        }

        @Test("Validate indexedSequences_NV")
        public func validate_indexedSequences_NV() {
            #expect(
                Ignite.IndirectCommandsLayoutUsageFlagsNV.indexedSequences_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV.rawValue
            )
        }

        @Test("Validate unorderedSequences_NV")
        public func validate_unorderedSequences_NV() {
            #expect(
                Ignite.IndirectCommandsLayoutUsageFlagsNV.unorderedSequences_NV.rawValue
                    == CVulkan.VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the IndirectStateFlagsNV bitmask.
    @Suite("IndirectStateFlagsNV")
    public struct IndirectStateFlagsNVTests {
        @Test("Validate flagFrontface_NV")
        public func validate_flagFrontface_NV() {
            #expect(
                Ignite.IndirectStateFlagsNV.flagFrontface_NV.rawValue
                    == CVulkan.VK_INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the InstanceCreateFlags bitmask.
    @Suite("InstanceCreateFlags")
    public struct InstanceCreateFlagsTests {
        @Test("Validate enumeratePortability_KHR")
        public func validate_enumeratePortability_KHR() {
            #expect(
                Ignite.InstanceCreateFlags.enumeratePortability_KHR.rawValue
                    == CVulkan.VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the MemoryAllocateFlags bitmask.
    @Suite("MemoryAllocateFlags")
    public struct MemoryAllocateFlagsTests {
        @Test("Validate deviceMask")
        public func validate_deviceMask() {
            #expect(
                Ignite.MemoryAllocateFlags.deviceMask.rawValue == CVulkan.VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT.rawValue
            )
        }

        @Test("Validate deviceAddress")
        public func validate_deviceAddress() {
            #expect(
                Ignite.MemoryAllocateFlags.deviceAddress.rawValue == CVulkan.VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT.rawValue
            )
        }

        @Test("Validate deviceAddressCaptureReplay")
        public func validate_deviceAddressCaptureReplay() {
            #expect(
                Ignite.MemoryAllocateFlags.deviceAddressCaptureReplay.rawValue
                    == CVulkan.VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT.rawValue
            )
        }

        @Test("Validate zeroInitialize_EXT")
        public func validate_zeroInitialize_EXT() {
            #expect(
                Ignite.MemoryAllocateFlags.zeroInitialize_EXT.rawValue
                    == CVulkan.VK_MEMORY_ALLOCATE_ZERO_INITIALIZE_BIT_EXT.rawValue
            )
        }

        @Test("Validate deviceMask_KHR")
        public func validate_deviceMask_KHR() {
            #expect(
                Ignite.MemoryAllocateFlags.deviceMask_KHR.rawValue == CVulkan.VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR.rawValue
            )
        }

        @Test("Validate deviceAddress_KHR")
        public func validate_deviceAddress_KHR() {
            #expect(
                Ignite.MemoryAllocateFlags.deviceAddress_KHR.rawValue
                    == CVulkan.VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR.rawValue
            )
        }

        @Test("Validate deviceAddressCaptureReplay_KHR")
        public func validate_deviceAddressCaptureReplay_KHR() {
            #expect(
                Ignite.MemoryAllocateFlags.deviceAddressCaptureReplay_KHR.rawValue
                    == CVulkan.VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the MemoryDecompressionMethodFlagsNV bitmask.
    @Suite("MemoryDecompressionMethodFlagsNV")
    public struct MemoryDecompressionMethodFlagsNVTests {
        @Test("Validate gdeflate10_NV")
        public func validate_gdeflate10_NV() {
            #expect(
                Ignite.MemoryDecompressionMethodFlagsNV.gdeflate10_NV.rawValue
                    == CVulkan.VK_MEMORY_DECOMPRESSION_METHOD_GDEFLATE_1_0_BIT_NV
            )
        }
    }


    /// Tests for the MemoryHeapFlags bitmask.
    @Suite("MemoryHeapFlags")
    public struct MemoryHeapFlagsTests {
        @Test("Validate deviceLocal")
        public func validate_deviceLocal() {
            #expect(
                Ignite.MemoryHeapFlags.deviceLocal.rawValue == CVulkan.VK_MEMORY_HEAP_DEVICE_LOCAL_BIT.rawValue
            )
        }

        @Test("Validate multiInstance")
        public func validate_multiInstance() {
            #expect(
                Ignite.MemoryHeapFlags.multiInstance.rawValue == CVulkan.VK_MEMORY_HEAP_MULTI_INSTANCE_BIT.rawValue
            )
        }

        @Test("Validate tileMemory_QCOM")
        public func validate_tileMemory_QCOM() {
            #expect(
                Ignite.MemoryHeapFlags.tileMemory_QCOM.rawValue == CVulkan.VK_MEMORY_HEAP_TILE_MEMORY_BIT_QCOM.rawValue
            )
        }

        @Test("Validate multiInstance_KHR")
        public func validate_multiInstance_KHR() {
            #expect(
                Ignite.MemoryHeapFlags.multiInstance_KHR.rawValue == CVulkan.VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the MemoryMapFlags bitmask.
    @Suite("MemoryMapFlags")
    public struct MemoryMapFlagsTests {
        @Test("Validate placed_EXT")
        public func validate_placed_EXT() {
            #expect(
                Ignite.MemoryMapFlags.placed_EXT.rawValue == CVulkan.VK_MEMORY_MAP_PLACED_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the MemoryPropertyFlags bitmask.
    @Suite("MemoryPropertyFlags")
    public struct MemoryPropertyFlagsTests {
        @Test("Validate deviceLocal")
        public func validate_deviceLocal() {
            #expect(
                Ignite.MemoryPropertyFlags.deviceLocal.rawValue == CVulkan.VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT.rawValue
            )
        }

        @Test("Validate hostVisible")
        public func validate_hostVisible() {
            #expect(
                Ignite.MemoryPropertyFlags.hostVisible.rawValue == CVulkan.VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT.rawValue
            )
        }

        @Test("Validate hostCoherent")
        public func validate_hostCoherent() {
            #expect(
                Ignite.MemoryPropertyFlags.hostCoherent.rawValue == CVulkan.VK_MEMORY_PROPERTY_HOST_COHERENT_BIT.rawValue
            )
        }

        @Test("Validate hostCached")
        public func validate_hostCached() {
            #expect(
                Ignite.MemoryPropertyFlags.hostCached.rawValue == CVulkan.VK_MEMORY_PROPERTY_HOST_CACHED_BIT.rawValue
            )
        }

        @Test("Validate lazilyAllocated")
        public func validate_lazilyAllocated() {
            #expect(
                Ignite.MemoryPropertyFlags.lazilyAllocated.rawValue
                    == CVulkan.VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT.rawValue
            )
        }

        @Test("Validate protected")
        public func validate_protected() {
            #expect(
                Ignite.MemoryPropertyFlags.protected.rawValue == CVulkan.VK_MEMORY_PROPERTY_PROTECTED_BIT.rawValue
            )
        }

        @Test("Validate deviceCoherent_AMD")
        public func validate_deviceCoherent_AMD() {
            #expect(
                Ignite.MemoryPropertyFlags.deviceCoherent_AMD.rawValue
                    == CVulkan.VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD.rawValue
            )
        }

        @Test("Validate deviceUncached_AMD")
        public func validate_deviceUncached_AMD() {
            #expect(
                Ignite.MemoryPropertyFlags.deviceUncached_AMD.rawValue
                    == CVulkan.VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD.rawValue
            )
        }

        @Test("Validate rdmaCapable_NV")
        public func validate_rdmaCapable_NV() {
            #expect(
                Ignite.MemoryPropertyFlags.rdmaCapable_NV.rawValue == CVulkan.VK_MEMORY_PROPERTY_RDMA_CAPABLE_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the MemoryUnmapFlags bitmask.
    @Suite("MemoryUnmapFlags")
    public struct MemoryUnmapFlagsTests {
        @Test("Validate reserve_EXT")
        public func validate_reserve_EXT() {
            #expect(
                Ignite.MemoryUnmapFlags.reserve_EXT.rawValue == CVulkan.VK_MEMORY_UNMAP_RESERVE_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the MicromapCreateFlagsEXT bitmask.
    @Suite("MicromapCreateFlagsEXT")
    public struct MicromapCreateFlagsEXTTests {
        @Test("Validate deviceAddressCaptureReplay_EXT")
        public func validate_deviceAddressCaptureReplay_EXT() {
            #expect(
                Ignite.MicromapCreateFlagsEXT.deviceAddressCaptureReplay_EXT.rawValue
                    == CVulkan.VK_MICROMAP_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the OpticalFlowExecuteFlagsNV bitmask.
    @Suite("OpticalFlowExecuteFlagsNV")
    public struct OpticalFlowExecuteFlagsNVTests {
        @Test("Validate disableTemporalHints_NV")
        public func validate_disableTemporalHints_NV() {
            #expect(
                Ignite.OpticalFlowExecuteFlagsNV.disableTemporalHints_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_EXECUTE_DISABLE_TEMPORAL_HINTS_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the OpticalFlowGridSizeFlagsNV bitmask.
    @Suite("OpticalFlowGridSizeFlagsNV")
    public struct OpticalFlowGridSizeFlagsNVTests {
        @Test("Validate unknown_NV")
        public func validate_unknown_NV() {
            #expect(
                Ignite.OpticalFlowGridSizeFlagsNV.unknown_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_GRID_SIZE_UNKNOWN_NV.rawValue
            )
        }

        @Test("Validate 1x1Bit_NV")
        public func validate_1x1Bit_NV() {
            #expect(
                Ignite.OpticalFlowGridSizeFlagsNV.`1x1Bit_NV`.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_GRID_SIZE_1X1_BIT_NV.rawValue
            )
        }

        @Test("Validate 2x2Bit_NV")
        public func validate_2x2Bit_NV() {
            #expect(
                Ignite.OpticalFlowGridSizeFlagsNV.`2x2Bit_NV`.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_GRID_SIZE_2X2_BIT_NV.rawValue
            )
        }

        @Test("Validate 4x4Bit_NV")
        public func validate_4x4Bit_NV() {
            #expect(
                Ignite.OpticalFlowGridSizeFlagsNV.`4x4Bit_NV`.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_GRID_SIZE_4X4_BIT_NV.rawValue
            )
        }

        @Test("Validate 8x8Bit_NV")
        public func validate_8x8Bit_NV() {
            #expect(
                Ignite.OpticalFlowGridSizeFlagsNV.`8x8Bit_NV`.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_GRID_SIZE_8X8_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the OpticalFlowSessionCreateFlagsNV bitmask.
    @Suite("OpticalFlowSessionCreateFlagsNV")
    public struct OpticalFlowSessionCreateFlagsNVTests {
        @Test("Validate enableHint_NV")
        public func validate_enableHint_NV() {
            #expect(
                Ignite.OpticalFlowSessionCreateFlagsNV.enableHint_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_HINT_BIT_NV.rawValue
            )
        }

        @Test("Validate enableCost_NV")
        public func validate_enableCost_NV() {
            #expect(
                Ignite.OpticalFlowSessionCreateFlagsNV.enableCost_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_COST_BIT_NV.rawValue
            )
        }

        @Test("Validate enableGlobalFlow_NV")
        public func validate_enableGlobalFlow_NV() {
            #expect(
                Ignite.OpticalFlowSessionCreateFlagsNV.enableGlobalFlow_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_GLOBAL_FLOW_BIT_NV.rawValue
            )
        }

        @Test("Validate allowRegions_NV")
        public func validate_allowRegions_NV() {
            #expect(
                Ignite.OpticalFlowSessionCreateFlagsNV.allowRegions_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_CREATE_ALLOW_REGIONS_BIT_NV.rawValue
            )
        }

        @Test("Validate bothDirections_NV")
        public func validate_bothDirections_NV() {
            #expect(
                Ignite.OpticalFlowSessionCreateFlagsNV.bothDirections_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_SESSION_CREATE_BOTH_DIRECTIONS_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the OpticalFlowUsageFlagsNV bitmask.
    @Suite("OpticalFlowUsageFlagsNV")
    public struct OpticalFlowUsageFlagsNVTests {
        @Test("Validate unknown_NV")
        public func validate_unknown_NV() {
            #expect(
                Ignite.OpticalFlowUsageFlagsNV.unknown_NV.rawValue == CVulkan.VK_OPTICAL_FLOW_USAGE_UNKNOWN_NV.rawValue
            )
        }

        @Test("Validate inputBit_NV")
        public func validate_inputBit_NV() {
            #expect(
                Ignite.OpticalFlowUsageFlagsNV.inputBit_NV.rawValue == CVulkan.VK_OPTICAL_FLOW_USAGE_INPUT_BIT_NV.rawValue
            )
        }

        @Test("Validate outputBit_NV")
        public func validate_outputBit_NV() {
            #expect(
                Ignite.OpticalFlowUsageFlagsNV.outputBit_NV.rawValue == CVulkan.VK_OPTICAL_FLOW_USAGE_OUTPUT_BIT_NV.rawValue
            )
        }

        @Test("Validate hintBit_NV")
        public func validate_hintBit_NV() {
            #expect(
                Ignite.OpticalFlowUsageFlagsNV.hintBit_NV.rawValue == CVulkan.VK_OPTICAL_FLOW_USAGE_HINT_BIT_NV.rawValue
            )
        }

        @Test("Validate costBit_NV")
        public func validate_costBit_NV() {
            #expect(
                Ignite.OpticalFlowUsageFlagsNV.costBit_NV.rawValue == CVulkan.VK_OPTICAL_FLOW_USAGE_COST_BIT_NV.rawValue
            )
        }

        @Test("Validate globalFlowBit_NV")
        public func validate_globalFlowBit_NV() {
            #expect(
                Ignite.OpticalFlowUsageFlagsNV.globalFlowBit_NV.rawValue
                    == CVulkan.VK_OPTICAL_FLOW_USAGE_GLOBAL_FLOW_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the PartitionedAccelerationStructureInstanceFlagsNV bitmask.
    @Suite("PartitionedAccelerationStructureInstanceFlagsNV")
    public struct PartitionedAccelerationStructureInstanceFlagsNVTests {
        @Test("Validate flagTriangleFacingCullDisableBit_NV")
        public func validate_flagTriangleFacingCullDisableBit_NV() {
            #expect(
                Ignite.PartitionedAccelerationStructureInstanceFlagsNV.flagTriangleFacingCullDisableBit_NV.rawValue
                    == CVulkan.VK_PARTITIONED_ACCELERATION_STRUCTURE_INSTANCE_FLAG_TRIANGLE_FACING_CULL_DISABLE_BIT_NV
                    .rawValue
            )
        }

        @Test("Validate flagTriangleFlipFacingBit_NV")
        public func validate_flagTriangleFlipFacingBit_NV() {
            #expect(
                Ignite.PartitionedAccelerationStructureInstanceFlagsNV.flagTriangleFlipFacingBit_NV.rawValue
                    == CVulkan.VK_PARTITIONED_ACCELERATION_STRUCTURE_INSTANCE_FLAG_TRIANGLE_FLIP_FACING_BIT_NV.rawValue
            )
        }

        @Test("Validate flagForceOpaqueBit_NV")
        public func validate_flagForceOpaqueBit_NV() {
            #expect(
                Ignite.PartitionedAccelerationStructureInstanceFlagsNV.flagForceOpaqueBit_NV.rawValue
                    == CVulkan.VK_PARTITIONED_ACCELERATION_STRUCTURE_INSTANCE_FLAG_FORCE_OPAQUE_BIT_NV.rawValue
            )
        }

        @Test("Validate flagForceNoOpaqueBit_NV")
        public func validate_flagForceNoOpaqueBit_NV() {
            #expect(
                Ignite.PartitionedAccelerationStructureInstanceFlagsNV.flagForceNoOpaqueBit_NV.rawValue
                    == CVulkan.VK_PARTITIONED_ACCELERATION_STRUCTURE_INSTANCE_FLAG_FORCE_NO_OPAQUE_BIT_NV.rawValue
            )
        }

        @Test("Validate flagEnableExplicitBoundingBox_NV")
        public func validate_flagEnableExplicitBoundingBox_NV() {
            #expect(
                Ignite.PartitionedAccelerationStructureInstanceFlagsNV.flagEnableExplicitBoundingBox_NV.rawValue
                    == CVulkan.VK_PARTITIONED_ACCELERATION_STRUCTURE_INSTANCE_FLAG_ENABLE_EXPLICIT_BOUNDING_BOX_NV.rawValue
            )
        }
    }


    /// Tests for the PeerMemoryFeatureFlags bitmask.
    @Suite("PeerMemoryFeatureFlags")
    public struct PeerMemoryFeatureFlagsTests {
        @Test("Validate copySrc")
        public func validate_copySrc() {
            #expect(
                Ignite.PeerMemoryFeatureFlags.copySrc.rawValue == CVulkan.VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT.rawValue
            )
        }

        @Test("Validate copyDst")
        public func validate_copyDst() {
            #expect(
                Ignite.PeerMemoryFeatureFlags.copyDst.rawValue == CVulkan.VK_PEER_MEMORY_FEATURE_COPY_DST_BIT.rawValue
            )
        }

        @Test("Validate genericSrc")
        public func validate_genericSrc() {
            #expect(
                Ignite.PeerMemoryFeatureFlags.genericSrc.rawValue == CVulkan.VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT.rawValue
            )
        }

        @Test("Validate genericDst")
        public func validate_genericDst() {
            #expect(
                Ignite.PeerMemoryFeatureFlags.genericDst.rawValue == CVulkan.VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT.rawValue
            )
        }

        @Test("Validate copySrc_KHR")
        public func validate_copySrc_KHR() {
            #expect(
                Ignite.PeerMemoryFeatureFlags.copySrc_KHR.rawValue
                    == CVulkan.VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR.rawValue
            )
        }

        @Test("Validate copyDst_KHR")
        public func validate_copyDst_KHR() {
            #expect(
                Ignite.PeerMemoryFeatureFlags.copyDst_KHR.rawValue
                    == CVulkan.VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR.rawValue
            )
        }

        @Test("Validate genericSrc_KHR")
        public func validate_genericSrc_KHR() {
            #expect(
                Ignite.PeerMemoryFeatureFlags.genericSrc_KHR.rawValue
                    == CVulkan.VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR.rawValue
            )
        }

        @Test("Validate genericDst_KHR")
        public func validate_genericDst_KHR() {
            #expect(
                Ignite.PeerMemoryFeatureFlags.genericDst_KHR.rawValue
                    == CVulkan.VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the PerformanceCounterDescriptionFlagsKHR bitmask.
    @Suite("PerformanceCounterDescriptionFlagsKHR")
    public struct PerformanceCounterDescriptionFlagsKHRTests {
        @Test("Validate performanceImpactingBit_KHR")
        public func validate_performanceImpactingBit_KHR() {
            #expect(
                Ignite.PerformanceCounterDescriptionFlagsKHR.performanceImpactingBit_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_BIT_KHR.rawValue
            )
        }

        @Test("Validate concurrentlyImpactedBit_KHR")
        public func validate_concurrentlyImpactedBit_KHR() {
            #expect(
                Ignite.PerformanceCounterDescriptionFlagsKHR.concurrentlyImpactedBit_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_BIT_KHR.rawValue
            )
        }

        @Test("Validate performanceImpacting_KHR")
        public func validate_performanceImpacting_KHR() {
            #expect(
                Ignite.PerformanceCounterDescriptionFlagsKHR.performanceImpacting_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_KHR.rawValue
            )
        }

        @Test("Validate concurrentlyImpacted_KHR")
        public func validate_concurrentlyImpacted_KHR() {
            #expect(
                Ignite.PerformanceCounterDescriptionFlagsKHR.concurrentlyImpacted_KHR.rawValue
                    == CVulkan.VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_KHR.rawValue
            )
        }
    }


    /// Tests for the PhysicalDeviceSchedulingControlsFlagsARM bitmask.
    @Suite("PhysicalDeviceSchedulingControlsFlagsARM")
    public struct PhysicalDeviceSchedulingControlsFlagsARMTests {
        @Test("Validate shaderCoreCount_ARM")
        public func validate_shaderCoreCount_ARM() {
            #expect(
                Ignite.PhysicalDeviceSchedulingControlsFlagsARM.shaderCoreCount_ARM.rawValue
                    == CVulkan.VK_PHYSICAL_DEVICE_SCHEDULING_CONTROLS_SHADER_CORE_COUNT_ARM
            )
        }
    }


    /// Tests for the PipelineCacheCreateFlags bitmask.
    @Suite("PipelineCacheCreateFlags")
    public struct PipelineCacheCreateFlagsTests {
        @Test("Validate externallySynchronized")
        public func validate_externallySynchronized() {
            #expect(
                Ignite.PipelineCacheCreateFlags.externallySynchronized.rawValue
                    == CVulkan.VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT.rawValue
            )
        }

        @Test("Validate internallySynchronizedMerge_KHR")
        public func validate_internallySynchronizedMerge_KHR() {
            #expect(
                Ignite.PipelineCacheCreateFlags.internallySynchronizedMerge_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CACHE_CREATE_INTERNALLY_SYNCHRONIZED_MERGE_BIT_KHR.rawValue
            )
        }

        @Test("Validate externallySynchronized_EXT")
        public func validate_externallySynchronized_EXT() {
            #expect(
                Ignite.PipelineCacheCreateFlags.externallySynchronized_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the PipelineColorBlendStateCreateFlags bitmask.
    @Suite("PipelineColorBlendStateCreateFlags")
    public struct PipelineColorBlendStateCreateFlagsTests {
        @Test("Validate rasterizationOrderAttachmentAccess_EXT")
        public func validate_rasterizationOrderAttachmentAccess_EXT() {
            #expect(
                Ignite.PipelineColorBlendStateCreateFlags.rasterizationOrderAttachmentAccess_EXT.rawValue
                    == CVulkan.VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_EXT.rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentAccess_ARM")
        public func validate_rasterizationOrderAttachmentAccess_ARM() {
            #expect(
                Ignite.PipelineColorBlendStateCreateFlags.rasterizationOrderAttachmentAccess_ARM.rawValue
                    == CVulkan.VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_ARM.rawValue
            )
        }
    }


    /// Tests for the PipelineCompilerControlFlagsAMD bitmask.
    @Suite("PipelineCompilerControlFlagsAMD")
    public struct PipelineCompilerControlFlagsAMDTests {

    }


    /// Tests for the PipelineCreateFlags bitmask.
    @Suite("PipelineCreateFlags")
    public struct PipelineCreateFlagsTests {
        @Test("Validate disableOptimizationBit")
        public func validate_disableOptimizationBit() {
            #expect(
                Ignite.PipelineCreateFlags.disableOptimizationBit.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT.rawValue
            )
        }

        @Test("Validate allowDerivativesBit")
        public func validate_allowDerivativesBit() {
            #expect(
                Ignite.PipelineCreateFlags.allowDerivativesBit.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT.rawValue
            )
        }

        @Test("Validate derivativeBit")
        public func validate_derivativeBit() {
            #expect(
                Ignite.PipelineCreateFlags.derivativeBit.rawValue == CVulkan.VK_PIPELINE_CREATE_DERIVATIVE_BIT.rawValue
            )
        }

        @Test("Validate viewIndexFromDeviceIndexBit")
        public func validate_viewIndexFromDeviceIndexBit() {
            #expect(
                Ignite.PipelineCreateFlags.viewIndexFromDeviceIndexBit.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT.rawValue
            )
        }

        @Test("Validate dispatchBaseBit")
        public func validate_dispatchBaseBit() {
            #expect(
                Ignite.PipelineCreateFlags.dispatchBaseBit.rawValue == CVulkan.VK_PIPELINE_CREATE_DISPATCH_BASE_BIT.rawValue
            )
        }

        @Test("Validate failOnPipelineCompileRequiredBit")
        public func validate_failOnPipelineCompileRequiredBit() {
            #expect(
                Ignite.PipelineCreateFlags.failOnPipelineCompileRequiredBit.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT.rawValue
            )
        }

        @Test("Validate earlyReturnOnFailureBit")
        public func validate_earlyReturnOnFailureBit() {
            #expect(
                Ignite.PipelineCreateFlags.earlyReturnOnFailureBit.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT.rawValue
            )
        }

        @Test("Validate noProtectedAccessBit")
        public func validate_noProtectedAccessBit() {
            #expect(
                Ignite.PipelineCreateFlags.noProtectedAccessBit.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_NO_PROTECTED_ACCESS_BIT.rawValue
            )
        }

        @Test("Validate protectedAccessOnlyBit")
        public func validate_protectedAccessOnlyBit() {
            #expect(
                Ignite.PipelineCreateFlags.protectedAccessOnlyBit.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_PROTECTED_ACCESS_ONLY_BIT.rawValue
            )
        }

        @Test("Validate rayTracingNoNullAnyHitShadersBit_KHR")
        public func validate_rayTracingNoNullAnyHitShadersBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.rayTracingNoNullAnyHitShadersBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR.rawValue
            )
        }

        @Test("Validate rayTracingNoNullClosestHitShadersBit_KHR")
        public func validate_rayTracingNoNullClosestHitShadersBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.rayTracingNoNullClosestHitShadersBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR.rawValue
            )
        }

        @Test("Validate rayTracingNoNullMissShadersBit_KHR")
        public func validate_rayTracingNoNullMissShadersBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.rayTracingNoNullMissShadersBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR.rawValue
            )
        }

        @Test("Validate rayTracingNoNullIntersectionShadersBit_KHR")
        public func validate_rayTracingNoNullIntersectionShadersBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.rayTracingNoNullIntersectionShadersBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR.rawValue
            )
        }

        @Test("Validate rayTracingSkipTrianglesBit_KHR")
        public func validate_rayTracingSkipTrianglesBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.rayTracingSkipTrianglesBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR.rawValue
            )
        }

        @Test("Validate rayTracingSkipAabbsBit_KHR")
        public func validate_rayTracingSkipAabbsBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.rayTracingSkipAabbsBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_SKIP_AABBS_BIT_KHR.rawValue
            )
        }

        @Test("Validate rayTracingShaderGroupHandleCaptureReplayBit_KHR")
        public func validate_rayTracingShaderGroupHandleCaptureReplayBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.rayTracingShaderGroupHandleCaptureReplayBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_BIT_KHR.rawValue
            )
        }

        @Test("Validate deferCompileBit_NV")
        public func validate_deferCompileBit_NV() {
            #expect(
                Ignite.PipelineCreateFlags.deferCompileBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_DEFER_COMPILE_BIT_NV.rawValue
            )
        }

        @Test("Validate renderingFragmentDensityMapAttachmentBit_EXT")
        public func validate_renderingFragmentDensityMapAttachmentBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.renderingFragmentDensityMapAttachmentBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT.rawValue
            )
        }

        @Test("Validate renderingFragmentShadingRateAttachmentBit_KHR")
        public func validate_renderingFragmentShadingRateAttachmentBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.renderingFragmentShadingRateAttachmentBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate captureStatisticsBit_KHR")
        public func validate_captureStatisticsBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.captureStatisticsBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR.rawValue
            )
        }

        @Test("Validate captureInternalRepresentationsBit_KHR")
        public func validate_captureInternalRepresentationsBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.captureInternalRepresentationsBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR.rawValue
            )
        }

        @Test("Validate indirectBindableBit_NV")
        public func validate_indirectBindableBit_NV() {
            #expect(
                Ignite.PipelineCreateFlags.indirectBindableBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_INDIRECT_BINDABLE_BIT_NV.rawValue
            )
        }

        @Test("Validate libraryBit_KHR")
        public func validate_libraryBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.libraryBit_KHR.rawValue == CVulkan.VK_PIPELINE_CREATE_LIBRARY_BIT_KHR.rawValue
            )
        }

        @Test("Validate descriptorBufferBit_EXT")
        public func validate_descriptorBufferBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.descriptorBufferBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_DESCRIPTOR_BUFFER_BIT_EXT.rawValue
            )
        }

        @Test("Validate retainLinkTimeOptimizationInfoBit_EXT")
        public func validate_retainLinkTimeOptimizationInfoBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.retainLinkTimeOptimizationInfoBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RETAIN_LINK_TIME_OPTIMIZATION_INFO_BIT_EXT.rawValue
            )
        }

        @Test("Validate linkTimeOptimizationBit_EXT")
        public func validate_linkTimeOptimizationBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.linkTimeOptimizationBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_LINK_TIME_OPTIMIZATION_BIT_EXT.rawValue
            )
        }

        @Test("Validate rayTracingAllowMotionBit_NV")
        public func validate_rayTracingAllowMotionBit_NV() {
            #expect(
                Ignite.PipelineCreateFlags.rayTracingAllowMotionBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_ALLOW_MOTION_BIT_NV.rawValue
            )
        }

        @Test("Validate colorAttachmentFeedbackLoopBit_EXT")
        public func validate_colorAttachmentFeedbackLoopBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.colorAttachmentFeedbackLoopBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_COLOR_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT.rawValue
            )
        }

        @Test("Validate depthStencilAttachmentFeedbackLoopBit_EXT")
        public func validate_depthStencilAttachmentFeedbackLoopBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.depthStencilAttachmentFeedbackLoopBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_DEPTH_STENCIL_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT.rawValue
            )
        }

        @Test("Validate rayTracingOpacityMicromapBit_EXT")
        public func validate_rayTracingOpacityMicromapBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.rayTracingOpacityMicromapBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_OPACITY_MICROMAP_BIT_EXT.rawValue
            )
        }

        #if EnableProvisional
            @Test("Validate rayTracingDisplacementMicromapBit_NV")
            public func validate_rayTracingDisplacementMicromapBit_NV() {
                #expect(
                    Ignite.PipelineCreateFlags.rayTracingDisplacementMicromapBit_NV.rawValue
                        == CVulkan.VK_PIPELINE_CREATE_RAY_TRACING_DISPLACEMENT_MICROMAP_BIT_NV.rawValue
                )
            }
        #else
            @Test(
                "Validate rayTracingDisplacementMicromapBit_NV",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_rayTracingDisplacementMicromapBit_NV() {}
        #endif

        @Test("Validate dispatchBase")
        public func validate_dispatchBase() {
            #expect(
                Ignite.PipelineCreateFlags.dispatchBase.rawValue == CVulkan.VK_PIPELINE_CREATE_DISPATCH_BASE.rawValue
            )
        }

        @Test("Validate viewIndexFromDeviceIndexBit_KHR")
        public func validate_viewIndexFromDeviceIndexBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.viewIndexFromDeviceIndexBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR.rawValue
            )
        }

        @Test("Validate dispatchBase_KHR")
        public func validate_dispatchBase_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.dispatchBase_KHR.rawValue == CVulkan.VK_PIPELINE_CREATE_DISPATCH_BASE_KHR.rawValue
            )
        }

        @Test("Validate rasterizationStateCreateFragmentDensityMapAttachmentBit_EXT")
        public func validate_rasterizationStateCreateFragmentDensityMapAttachmentBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.rasterizationStateCreateFragmentDensityMapAttachmentBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT.rawValue
            )
        }

        @Test("Validate rasterizationStateCreateFragmentShadingRateAttachmentBit_KHR")
        public func validate_rasterizationStateCreateFragmentShadingRateAttachmentBit_KHR() {
            #expect(
                Ignite.PipelineCreateFlags.rasterizationStateCreateFragmentShadingRateAttachmentBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate failOnPipelineCompileRequiredBit_EXT")
        public func validate_failOnPipelineCompileRequiredBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.failOnPipelineCompileRequiredBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_EXT.rawValue
            )
        }

        @Test("Validate earlyReturnOnFailureBit_EXT")
        public func validate_earlyReturnOnFailureBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.earlyReturnOnFailureBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT_EXT.rawValue
            )
        }

        @Test("Validate noProtectedAccessBit_EXT")
        public func validate_noProtectedAccessBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.noProtectedAccessBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_NO_PROTECTED_ACCESS_BIT_EXT.rawValue
            )
        }

        @Test("Validate protectedAccessOnlyBit_EXT")
        public func validate_protectedAccessOnlyBit_EXT() {
            #expect(
                Ignite.PipelineCreateFlags.protectedAccessOnlyBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_PROTECTED_ACCESS_ONLY_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the PipelineCreateFlags2 bitmask.
    @Suite("PipelineCreateFlags2")
    public struct PipelineCreateFlags2Tests {
        @Test("Validate disableOptimization")
        public func validate_disableOptimization() {
            #expect(
                Ignite.PipelineCreateFlags2.disableOptimization.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_DISABLE_OPTIMIZATION_BIT
            )
        }

        @Test("Validate allowDerivatives")
        public func validate_allowDerivatives() {
            #expect(
                Ignite.PipelineCreateFlags2.allowDerivatives.rawValue == CVulkan.VK_PIPELINE_CREATE_2_ALLOW_DERIVATIVES_BIT
            )
        }

        @Test("Validate derivative")
        public func validate_derivative() {
            #expect(
                Ignite.PipelineCreateFlags2.derivative.rawValue == CVulkan.VK_PIPELINE_CREATE_2_DERIVATIVE_BIT
            )
        }

        @Test("Validate viewIndexFromDeviceIndex")
        public func validate_viewIndexFromDeviceIndex() {
            #expect(
                Ignite.PipelineCreateFlags2.viewIndexFromDeviceIndex.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_VIEW_INDEX_FROM_DEVICE_INDEX_BIT
            )
        }

        @Test("Validate dispatchBase")
        public func validate_dispatchBase() {
            #expect(
                Ignite.PipelineCreateFlags2.dispatchBase.rawValue == CVulkan.VK_PIPELINE_CREATE_2_DISPATCH_BASE_BIT
            )
        }

        @Test("Validate failOnPipelineCompileRequired")
        public func validate_failOnPipelineCompileRequired() {
            #expect(
                Ignite.PipelineCreateFlags2.failOnPipelineCompileRequired.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT
            )
        }

        @Test("Validate earlyReturnOnFailure")
        public func validate_earlyReturnOnFailure() {
            #expect(
                Ignite.PipelineCreateFlags2.earlyReturnOnFailure.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_EARLY_RETURN_ON_FAILURE_BIT
            )
        }

        @Test("Validate noProtectedAccess")
        public func validate_noProtectedAccess() {
            #expect(
                Ignite.PipelineCreateFlags2.noProtectedAccess.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_NO_PROTECTED_ACCESS_BIT
            )
        }

        @Test("Validate protectedAccessOnly")
        public func validate_protectedAccessOnly() {
            #expect(
                Ignite.PipelineCreateFlags2.protectedAccessOnly.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_PROTECTED_ACCESS_ONLY_BIT
            )
        }

        #if EnableProvisional
            @Test("Validate executionGraph_AMDX")
            public func validate_executionGraph_AMDX() {
                #expect(
                    Ignite.PipelineCreateFlags2.executionGraph_AMDX.rawValue
                        == CVulkan.VK_PIPELINE_CREATE_2_EXECUTION_GRAPH_BIT_AMDX
                )
            }
        #else
            @Test(
                "Validate executionGraph_AMDX",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_executionGraph_AMDX() {}
        #endif

        @Test("Validate rayTracingAllowSpheresAndLinearSweptSpheres_NV")
        public func validate_rayTracingAllowSpheresAndLinearSweptSpheres_NV() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingAllowSpheresAndLinearSweptSpheres_NV.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_ALLOW_SPHERES_AND_LINEAR_SWEPT_SPHERES_BIT_NV
            )
        }

        @Test("Validate enableLegacyDithering_EXT")
        public func validate_enableLegacyDithering_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.enableLegacyDithering_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_ENABLE_LEGACY_DITHERING_BIT_EXT
            )
        }

        @Test("Validate deferCompile_NV")
        public func validate_deferCompile_NV() {
            #expect(
                Ignite.PipelineCreateFlags2.deferCompile_NV.rawValue == CVulkan.VK_PIPELINE_CREATE_2_DEFER_COMPILE_BIT_NV
            )
        }

        @Test("Validate captureStatistics_KHR")
        public func validate_captureStatistics_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.captureStatistics_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_CAPTURE_STATISTICS_BIT_KHR
            )
        }

        @Test("Validate captureInternalRepresentations_KHR")
        public func validate_captureInternalRepresentations_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.captureInternalRepresentations_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR
            )
        }

        @Test("Validate linkTimeOptimization_EXT")
        public func validate_linkTimeOptimization_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.linkTimeOptimization_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_LINK_TIME_OPTIMIZATION_BIT_EXT
            )
        }

        @Test("Validate retainLinkTimeOptimizationInfo_EXT")
        public func validate_retainLinkTimeOptimizationInfo_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.retainLinkTimeOptimizationInfo_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RETAIN_LINK_TIME_OPTIMIZATION_INFO_BIT_EXT
            )
        }

        @Test("Validate library_KHR")
        public func validate_library_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.library_KHR.rawValue == CVulkan.VK_PIPELINE_CREATE_2_LIBRARY_BIT_KHR
            )
        }

        @Test("Validate rayTracingSkipTriangles_KHR")
        public func validate_rayTracingSkipTriangles_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingSkipTriangles_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR
            )
        }

        @Test("Validate rayTracingSkipAabbs_KHR")
        public func validate_rayTracingSkipAabbs_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingSkipAabbs_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_SKIP_AABBS_BIT_KHR
            )
        }

        @Test("Validate rayTracingNoNullAnyHitShaders_KHR")
        public func validate_rayTracingNoNullAnyHitShaders_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingNoNullAnyHitShaders_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR
            )
        }

        @Test("Validate rayTracingNoNullClosestHitShaders_KHR")
        public func validate_rayTracingNoNullClosestHitShaders_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingNoNullClosestHitShaders_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR
            )
        }

        @Test("Validate rayTracingNoNullMissShaders_KHR")
        public func validate_rayTracingNoNullMissShaders_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingNoNullMissShaders_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR
            )
        }

        @Test("Validate rayTracingNoNullIntersectionShaders_KHR")
        public func validate_rayTracingNoNullIntersectionShaders_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingNoNullIntersectionShaders_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR
            )
        }

        @Test("Validate rayTracingShaderGroupHandleCaptureReplay_KHR")
        public func validate_rayTracingShaderGroupHandleCaptureReplay_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingShaderGroupHandleCaptureReplay_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_BIT_KHR
            )
        }

        @Test("Validate indirectBindable_NV")
        public func validate_indirectBindable_NV() {
            #expect(
                Ignite.PipelineCreateFlags2.indirectBindable_NV.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_INDIRECT_BINDABLE_BIT_NV
            )
        }

        @Test("Validate rayTracingAllowMotion_NV")
        public func validate_rayTracingAllowMotion_NV() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingAllowMotion_NV.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_ALLOW_MOTION_BIT_NV
            )
        }

        @Test("Validate renderingFragmentShadingRateAttachment_KHR")
        public func validate_renderingFragmentShadingRateAttachment_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.renderingFragmentShadingRateAttachment_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
            )
        }

        @Test("Validate renderingFragmentDensityMapAttachment_EXT")
        public func validate_renderingFragmentDensityMapAttachment_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.renderingFragmentDensityMapAttachment_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT
            )
        }

        @Test("Validate rayTracingOpacityMicromap_EXT")
        public func validate_rayTracingOpacityMicromap_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingOpacityMicromap_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_OPACITY_MICROMAP_BIT_EXT
            )
        }

        @Test("Validate colorAttachmentFeedbackLoop_EXT")
        public func validate_colorAttachmentFeedbackLoop_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.colorAttachmentFeedbackLoop_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_COLOR_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT
            )
        }

        @Test("Validate depthStencilAttachmentFeedbackLoop_EXT")
        public func validate_depthStencilAttachmentFeedbackLoop_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.depthStencilAttachmentFeedbackLoop_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_DEPTH_STENCIL_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT
            )
        }

        @Test("Validate rayTracingDisplacementMicromap_NV")
        public func validate_rayTracingDisplacementMicromap_NV() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingDisplacementMicromap_NV.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_DISPLACEMENT_MICROMAP_BIT_NV
            )
        }

        @Test("Validate descriptorBuffer_EXT")
        public func validate_descriptorBuffer_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.descriptorBuffer_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_DESCRIPTOR_BUFFER_BIT_EXT
            )
        }

        @Test("Validate disallowOpacityMicromap_ARM")
        public func validate_disallowOpacityMicromap_ARM() {
            #expect(
                Ignite.PipelineCreateFlags2.disallowOpacityMicromap_ARM.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_DISALLOW_OPACITY_MICROMAP_BIT_ARM
            )
        }

        @Test("Validate captureData_KHR")
        public func validate_captureData_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.captureData_KHR.rawValue == CVulkan.VK_PIPELINE_CREATE_2_CAPTURE_DATA_BIT_KHR
            )
        }

        @Test("Validate indirectBindable_EXT")
        public func validate_indirectBindable_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.indirectBindable_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_INDIRECT_BINDABLE_BIT_EXT
            )
        }

        @Test("Validate rayTracingSkipBuiltInPrimitives_KHR")
        public func validate_rayTracingSkipBuiltInPrimitives_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.rayTracingSkipBuiltInPrimitives_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_RAY_TRACING_SKIP_BUILT_IN_PRIMITIVES_BIT_KHR
            )
        }

        @Test("Validate disableOptimization_KHR")
        public func validate_disableOptimization_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.disableOptimization_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_DISABLE_OPTIMIZATION_BIT_KHR
            )
        }

        @Test("Validate allowDerivatives_KHR")
        public func validate_allowDerivatives_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.allowDerivatives_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_ALLOW_DERIVATIVES_BIT_KHR
            )
        }

        @Test("Validate derivative_KHR")
        public func validate_derivative_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.derivative_KHR.rawValue == CVulkan.VK_PIPELINE_CREATE_2_DERIVATIVE_BIT_KHR
            )
        }

        @Test("Validate viewIndexFromDeviceIndex_KHR")
        public func validate_viewIndexFromDeviceIndex_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.viewIndexFromDeviceIndex_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR
            )
        }

        @Test("Validate dispatchBase_KHR")
        public func validate_dispatchBase_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.dispatchBase_KHR.rawValue == CVulkan.VK_PIPELINE_CREATE_2_DISPATCH_BASE_BIT_KHR
            )
        }

        @Test("Validate failOnPipelineCompileRequired_KHR")
        public func validate_failOnPipelineCompileRequired_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.failOnPipelineCompileRequired_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_KHR
            )
        }

        @Test("Validate earlyReturnOnFailure_KHR")
        public func validate_earlyReturnOnFailure_KHR() {
            #expect(
                Ignite.PipelineCreateFlags2.earlyReturnOnFailure_KHR.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_EARLY_RETURN_ON_FAILURE_BIT_KHR
            )
        }

        @Test("Validate noProtectedAccess_EXT")
        public func validate_noProtectedAccess_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.noProtectedAccess_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_NO_PROTECTED_ACCESS_BIT_EXT
            )
        }

        @Test("Validate protectedAccessOnly_EXT")
        public func validate_protectedAccessOnly_EXT() {
            #expect(
                Ignite.PipelineCreateFlags2.protectedAccessOnly_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATE_2_PROTECTED_ACCESS_ONLY_BIT_EXT
            )
        }
    }


    /// Tests for the PipelineCreationFeedbackFlags bitmask.
    @Suite("PipelineCreationFeedbackFlags")
    public struct PipelineCreationFeedbackFlagsTests {
        @Test("Validate valid")
        public func validate_valid() {
            #expect(
                Ignite.PipelineCreationFeedbackFlags.valid.rawValue
                    == CVulkan.VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT.rawValue
            )
        }

        @Test("Validate applicationPipelineCacheHit")
        public func validate_applicationPipelineCacheHit() {
            #expect(
                Ignite.PipelineCreationFeedbackFlags.applicationPipelineCacheHit.rawValue
                    == CVulkan.VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT.rawValue
            )
        }

        @Test("Validate basePipelineAcceleration")
        public func validate_basePipelineAcceleration() {
            #expect(
                Ignite.PipelineCreationFeedbackFlags.basePipelineAcceleration.rawValue
                    == CVulkan.VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT.rawValue
            )
        }

        @Test("Validate valid_EXT")
        public func validate_valid_EXT() {
            #expect(
                Ignite.PipelineCreationFeedbackFlags.valid_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT.rawValue
            )
        }

        @Test("Validate applicationPipelineCacheHit_EXT")
        public func validate_applicationPipelineCacheHit_EXT() {
            #expect(
                Ignite.PipelineCreationFeedbackFlags.applicationPipelineCacheHit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT.rawValue
            )
        }

        @Test("Validate basePipelineAcceleration_EXT")
        public func validate_basePipelineAcceleration_EXT() {
            #expect(
                Ignite.PipelineCreationFeedbackFlags.basePipelineAcceleration_EXT.rawValue
                    == CVulkan.VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the PipelineDepthStencilStateCreateFlags bitmask.
    @Suite("PipelineDepthStencilStateCreateFlags")
    public struct PipelineDepthStencilStateCreateFlagsTests {
        @Test("Validate rasterizationOrderAttachmentDepthAccess_EXT")
        public func validate_rasterizationOrderAttachmentDepthAccess_EXT() {
            #expect(
                Ignite.PipelineDepthStencilStateCreateFlags.rasterizationOrderAttachmentDepthAccess_EXT.rawValue
                    == CVulkan.VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_EXT
                    .rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentStencilAccess_EXT")
        public func validate_rasterizationOrderAttachmentStencilAccess_EXT() {
            #expect(
                Ignite.PipelineDepthStencilStateCreateFlags.rasterizationOrderAttachmentStencilAccess_EXT.rawValue
                    == CVulkan.VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_EXT
                    .rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentDepthAccess_ARM")
        public func validate_rasterizationOrderAttachmentDepthAccess_ARM() {
            #expect(
                Ignite.PipelineDepthStencilStateCreateFlags.rasterizationOrderAttachmentDepthAccess_ARM.rawValue
                    == CVulkan.VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_ARM
                    .rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentStencilAccess_ARM")
        public func validate_rasterizationOrderAttachmentStencilAccess_ARM() {
            #expect(
                Ignite.PipelineDepthStencilStateCreateFlags.rasterizationOrderAttachmentStencilAccess_ARM.rawValue
                    == CVulkan.VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_ARM
                    .rawValue
            )
        }
    }


    /// Tests for the PipelineLayoutCreateFlags bitmask.
    @Suite("PipelineLayoutCreateFlags")
    public struct PipelineLayoutCreateFlagsTests {
        @Test("Validate independentSets_EXT")
        public func validate_independentSets_EXT() {
            #expect(
                Ignite.PipelineLayoutCreateFlags.independentSets_EXT.rawValue
                    == CVulkan.VK_PIPELINE_LAYOUT_CREATE_INDEPENDENT_SETS_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the PipelineShaderStageCreateFlags bitmask.
    @Suite("PipelineShaderStageCreateFlags")
    public struct PipelineShaderStageCreateFlagsTests {
        @Test("Validate allowVaryingSubgroupSize")
        public func validate_allowVaryingSubgroupSize() {
            #expect(
                Ignite.PipelineShaderStageCreateFlags.allowVaryingSubgroupSize.rawValue
                    == CVulkan.VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT.rawValue
            )
        }

        @Test("Validate requireFullSubgroups")
        public func validate_requireFullSubgroups() {
            #expect(
                Ignite.PipelineShaderStageCreateFlags.requireFullSubgroups.rawValue
                    == CVulkan.VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT.rawValue
            )
        }

        @Test("Validate allowVaryingSubgroupSize_EXT")
        public func validate_allowVaryingSubgroupSize_EXT() {
            #expect(
                Ignite.PipelineShaderStageCreateFlags.allowVaryingSubgroupSize_EXT.rawValue
                    == CVulkan.VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT.rawValue
            )
        }

        @Test("Validate requireFullSubgroups_EXT")
        public func validate_requireFullSubgroups_EXT() {
            #expect(
                Ignite.PipelineShaderStageCreateFlags.requireFullSubgroups_EXT.rawValue
                    == CVulkan.VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the PipelineStageFlags bitmask.
    @Suite("PipelineStageFlags")
    public struct PipelineStageFlagsTests {
        @Test("Validate topOfPipeBit")
        public func validate_topOfPipeBit() {
            #expect(
                Ignite.PipelineStageFlags.topOfPipeBit.rawValue == CVulkan.VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT.rawValue
            )
        }

        @Test("Validate drawIndirectBit")
        public func validate_drawIndirectBit() {
            #expect(
                Ignite.PipelineStageFlags.drawIndirectBit.rawValue == CVulkan.VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT.rawValue
            )
        }

        @Test("Validate vertexInputBit")
        public func validate_vertexInputBit() {
            #expect(
                Ignite.PipelineStageFlags.vertexInputBit.rawValue == CVulkan.VK_PIPELINE_STAGE_VERTEX_INPUT_BIT.rawValue
            )
        }

        @Test("Validate vertexShaderBit")
        public func validate_vertexShaderBit() {
            #expect(
                Ignite.PipelineStageFlags.vertexShaderBit.rawValue == CVulkan.VK_PIPELINE_STAGE_VERTEX_SHADER_BIT.rawValue
            )
        }

        @Test("Validate tessellationControlShaderBit")
        public func validate_tessellationControlShaderBit() {
            #expect(
                Ignite.PipelineStageFlags.tessellationControlShaderBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT.rawValue
            )
        }

        @Test("Validate tessellationEvaluationShaderBit")
        public func validate_tessellationEvaluationShaderBit() {
            #expect(
                Ignite.PipelineStageFlags.tessellationEvaluationShaderBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT.rawValue
            )
        }

        @Test("Validate geometryShaderBit")
        public func validate_geometryShaderBit() {
            #expect(
                Ignite.PipelineStageFlags.geometryShaderBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT.rawValue
            )
        }

        @Test("Validate fragmentShaderBit")
        public func validate_fragmentShaderBit() {
            #expect(
                Ignite.PipelineStageFlags.fragmentShaderBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT.rawValue
            )
        }

        @Test("Validate earlyFragmentTestsBit")
        public func validate_earlyFragmentTestsBit() {
            #expect(
                Ignite.PipelineStageFlags.earlyFragmentTestsBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT.rawValue
            )
        }

        @Test("Validate lateFragmentTestsBit")
        public func validate_lateFragmentTestsBit() {
            #expect(
                Ignite.PipelineStageFlags.lateFragmentTestsBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT.rawValue
            )
        }

        @Test("Validate colorAttachmentOutputBit")
        public func validate_colorAttachmentOutputBit() {
            #expect(
                Ignite.PipelineStageFlags.colorAttachmentOutputBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT.rawValue
            )
        }

        @Test("Validate computeShaderBit")
        public func validate_computeShaderBit() {
            #expect(
                Ignite.PipelineStageFlags.computeShaderBit.rawValue == CVulkan.VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT.rawValue
            )
        }

        @Test("Validate transferBit")
        public func validate_transferBit() {
            #expect(
                Ignite.PipelineStageFlags.transferBit.rawValue == CVulkan.VK_PIPELINE_STAGE_TRANSFER_BIT.rawValue
            )
        }

        @Test("Validate bottomOfPipeBit")
        public func validate_bottomOfPipeBit() {
            #expect(
                Ignite.PipelineStageFlags.bottomOfPipeBit.rawValue == CVulkan.VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT.rawValue
            )
        }

        @Test("Validate hostBit")
        public func validate_hostBit() {
            #expect(
                Ignite.PipelineStageFlags.hostBit.rawValue == CVulkan.VK_PIPELINE_STAGE_HOST_BIT.rawValue
            )
        }

        @Test("Validate allGraphicsBit")
        public func validate_allGraphicsBit() {
            #expect(
                Ignite.PipelineStageFlags.allGraphicsBit.rawValue == CVulkan.VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT.rawValue
            )
        }

        @Test("Validate allCommandsBit")
        public func validate_allCommandsBit() {
            #expect(
                Ignite.PipelineStageFlags.allCommandsBit.rawValue == CVulkan.VK_PIPELINE_STAGE_ALL_COMMANDS_BIT.rawValue
            )
        }

        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.PipelineStageFlags.none.rawValue == CVulkan.VK_PIPELINE_STAGE_NONE.rawValue
            )
        }

        @Test("Validate transformFeedbackBit_EXT")
        public func validate_transformFeedbackBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags.transformFeedbackBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT.rawValue
            )
        }

        @Test("Validate conditionalRenderingBit_EXT")
        public func validate_conditionalRenderingBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags.conditionalRenderingBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT.rawValue
            )
        }

        @Test("Validate accelerationStructureBuildBit_KHR")
        public func validate_accelerationStructureBuildBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags.accelerationStructureBuildBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_KHR.rawValue
            )
        }

        @Test("Validate rayTracingShaderBit_KHR")
        public func validate_rayTracingShaderBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags.rayTracingShaderBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_KHR.rawValue
            )
        }

        @Test("Validate fragmentDensityProcessBit_EXT")
        public func validate_fragmentDensityProcessBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags.fragmentDensityProcessBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentShadingRateAttachmentBit_KHR")
        public func validate_fragmentShadingRateAttachmentBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags.fragmentShadingRateAttachmentBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate taskShaderBit_EXT")
        public func validate_taskShaderBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags.taskShaderBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_TASK_SHADER_BIT_EXT.rawValue
            )
        }

        @Test("Validate meshShaderBit_EXT")
        public func validate_meshShaderBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags.meshShaderBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_MESH_SHADER_BIT_EXT.rawValue
            )
        }

        @Test("Validate commandPreprocessBit_EXT")
        public func validate_commandPreprocessBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags.commandPreprocessBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_EXT.rawValue
            )
        }

        @Test("Validate shadingRateImageBit_NV")
        public func validate_shadingRateImageBit_NV() {
            #expect(
                Ignite.PipelineStageFlags.shadingRateImageBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_SHADING_RATE_IMAGE_BIT_NV.rawValue
            )
        }

        @Test("Validate rayTracingShaderBit_NV")
        public func validate_rayTracingShaderBit_NV() {
            #expect(
                Ignite.PipelineStageFlags.rayTracingShaderBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV.rawValue
            )
        }

        @Test("Validate accelerationStructureBuildBit_NV")
        public func validate_accelerationStructureBuildBit_NV() {
            #expect(
                Ignite.PipelineStageFlags.accelerationStructureBuildBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV.rawValue
            )
        }

        @Test("Validate taskShaderBit_NV")
        public func validate_taskShaderBit_NV() {
            #expect(
                Ignite.PipelineStageFlags.taskShaderBit_NV.rawValue == CVulkan.VK_PIPELINE_STAGE_TASK_SHADER_BIT_NV.rawValue
            )
        }

        @Test("Validate meshShaderBit_NV")
        public func validate_meshShaderBit_NV() {
            #expect(
                Ignite.PipelineStageFlags.meshShaderBit_NV.rawValue == CVulkan.VK_PIPELINE_STAGE_MESH_SHADER_BIT_NV.rawValue
            )
        }

        @Test("Validate commandPreprocessBit_NV")
        public func validate_commandPreprocessBit_NV() {
            #expect(
                Ignite.PipelineStageFlags.commandPreprocessBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_NV.rawValue
            )
        }

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.PipelineStageFlags.none_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_NONE_KHR.rawValue
            )
        }
    }


    /// Tests for the PipelineStageFlags2 bitmask.
    @Suite("PipelineStageFlags2")
    public struct PipelineStageFlags2Tests {
        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.PipelineStageFlags2.none.rawValue == CVulkan.VK_PIPELINE_STAGE_2_NONE
            )
        }

        @Test("Validate topOfPipeBit")
        public func validate_topOfPipeBit() {
            #expect(
                Ignite.PipelineStageFlags2.topOfPipeBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT
            )
        }

        @Test("Validate drawIndirectBit")
        public func validate_drawIndirectBit() {
            #expect(
                Ignite.PipelineStageFlags2.drawIndirectBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT
            )
        }

        @Test("Validate vertexInputBit")
        public func validate_vertexInputBit() {
            #expect(
                Ignite.PipelineStageFlags2.vertexInputBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT
            )
        }

        @Test("Validate vertexShaderBit")
        public func validate_vertexShaderBit() {
            #expect(
                Ignite.PipelineStageFlags2.vertexShaderBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT
            )
        }

        @Test("Validate tessellationControlShaderBit")
        public func validate_tessellationControlShaderBit() {
            #expect(
                Ignite.PipelineStageFlags2.tessellationControlShaderBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT
            )
        }

        @Test("Validate tessellationEvaluationShaderBit")
        public func validate_tessellationEvaluationShaderBit() {
            #expect(
                Ignite.PipelineStageFlags2.tessellationEvaluationShaderBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT
            )
        }

        @Test("Validate geometryShaderBit")
        public func validate_geometryShaderBit() {
            #expect(
                Ignite.PipelineStageFlags2.geometryShaderBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT
            )
        }

        @Test("Validate fragmentShaderBit")
        public func validate_fragmentShaderBit() {
            #expect(
                Ignite.PipelineStageFlags2.fragmentShaderBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT
            )
        }

        @Test("Validate earlyFragmentTestsBit")
        public func validate_earlyFragmentTestsBit() {
            #expect(
                Ignite.PipelineStageFlags2.earlyFragmentTestsBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT
            )
        }

        @Test("Validate lateFragmentTestsBit")
        public func validate_lateFragmentTestsBit() {
            #expect(
                Ignite.PipelineStageFlags2.lateFragmentTestsBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT
            )
        }

        @Test("Validate colorAttachmentOutputBit")
        public func validate_colorAttachmentOutputBit() {
            #expect(
                Ignite.PipelineStageFlags2.colorAttachmentOutputBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT
            )
        }

        @Test("Validate computeShaderBit")
        public func validate_computeShaderBit() {
            #expect(
                Ignite.PipelineStageFlags2.computeShaderBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT
            )
        }

        @Test("Validate allTransferBit")
        public func validate_allTransferBit() {
            #expect(
                Ignite.PipelineStageFlags2.allTransferBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT
            )
        }

        @Test("Validate bottomOfPipeBit")
        public func validate_bottomOfPipeBit() {
            #expect(
                Ignite.PipelineStageFlags2.bottomOfPipeBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT
            )
        }

        @Test("Validate hostBit")
        public func validate_hostBit() {
            #expect(
                Ignite.PipelineStageFlags2.hostBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_HOST_BIT
            )
        }

        @Test("Validate allGraphicsBit")
        public func validate_allGraphicsBit() {
            #expect(
                Ignite.PipelineStageFlags2.allGraphicsBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT
            )
        }

        @Test("Validate allCommandsBit")
        public func validate_allCommandsBit() {
            #expect(
                Ignite.PipelineStageFlags2.allCommandsBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT
            )
        }

        @Test("Validate copyBit")
        public func validate_copyBit() {
            #expect(
                Ignite.PipelineStageFlags2.copyBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_COPY_BIT
            )
        }

        @Test("Validate resolveBit")
        public func validate_resolveBit() {
            #expect(
                Ignite.PipelineStageFlags2.resolveBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_RESOLVE_BIT
            )
        }

        @Test("Validate blitBit")
        public func validate_blitBit() {
            #expect(
                Ignite.PipelineStageFlags2.blitBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_BLIT_BIT
            )
        }

        @Test("Validate clearBit")
        public func validate_clearBit() {
            #expect(
                Ignite.PipelineStageFlags2.clearBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_CLEAR_BIT
            )
        }

        @Test("Validate indexInputBit")
        public func validate_indexInputBit() {
            #expect(
                Ignite.PipelineStageFlags2.indexInputBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT
            )
        }

        @Test("Validate vertexAttributeInputBit")
        public func validate_vertexAttributeInputBit() {
            #expect(
                Ignite.PipelineStageFlags2.vertexAttributeInputBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT
            )
        }

        @Test("Validate preRasterizationShadersBit")
        public func validate_preRasterizationShadersBit() {
            #expect(
                Ignite.PipelineStageFlags2.preRasterizationShadersBit.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT
            )
        }

        @Test("Validate videoDecodeBit_KHR")
        public func validate_videoDecodeBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.videoDecodeBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_VIDEO_DECODE_BIT_KHR
            )
        }

        @Test("Validate videoEncodeBit_KHR")
        public func validate_videoEncodeBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.videoEncodeBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_VIDEO_ENCODE_BIT_KHR
            )
        }

        @Test("Validate transformFeedbackBit_EXT")
        public func validate_transformFeedbackBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags2.transformFeedbackBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_TRANSFORM_FEEDBACK_BIT_EXT
            )
        }

        @Test("Validate conditionalRenderingBit_EXT")
        public func validate_conditionalRenderingBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags2.conditionalRenderingBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_CONDITIONAL_RENDERING_BIT_EXT
            )
        }

        @Test("Validate commandPreprocessBit_EXT")
        public func validate_commandPreprocessBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags2.commandPreprocessBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_COMMAND_PREPROCESS_BIT_EXT
            )
        }

        @Test("Validate fragmentShadingRateAttachmentBit_KHR")
        public func validate_fragmentShadingRateAttachmentBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.fragmentShadingRateAttachmentBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
            )
        }

        @Test("Validate accelerationStructureBuildBit_KHR")
        public func validate_accelerationStructureBuildBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.accelerationStructureBuildBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_KHR
            )
        }

        @Test("Validate rayTracingShaderBit_KHR")
        public func validate_rayTracingShaderBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.rayTracingShaderBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_KHR
            )
        }

        @Test("Validate fragmentDensityProcessBit_EXT")
        public func validate_fragmentDensityProcessBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags2.fragmentDensityProcessBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_FRAGMENT_DENSITY_PROCESS_BIT_EXT
            )
        }

        @Test("Validate taskShaderBit_EXT")
        public func validate_taskShaderBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags2.taskShaderBit_EXT.rawValue == CVulkan.VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_EXT
            )
        }

        @Test("Validate meshShaderBit_EXT")
        public func validate_meshShaderBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags2.meshShaderBit_EXT.rawValue == CVulkan.VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_EXT
            )
        }

        @Test("Validate subpassShaderBit_HUAWEI")
        public func validate_subpassShaderBit_HUAWEI() {
            #expect(
                Ignite.PipelineStageFlags2.subpassShaderBit_HUAWEI.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_SUBPASS_SHADER_BIT_HUAWEI
            )
        }

        @Test("Validate invocationMaskBit_HUAWEI")
        public func validate_invocationMaskBit_HUAWEI() {
            #expect(
                Ignite.PipelineStageFlags2.invocationMaskBit_HUAWEI.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_INVOCATION_MASK_BIT_HUAWEI
            )
        }

        @Test("Validate accelerationStructureCopyBit_KHR")
        public func validate_accelerationStructureCopyBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.accelerationStructureCopyBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_COPY_BIT_KHR
            )
        }

        @Test("Validate micromapBuildBit_EXT")
        public func validate_micromapBuildBit_EXT() {
            #expect(
                Ignite.PipelineStageFlags2.micromapBuildBit_EXT.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_MICROMAP_BUILD_BIT_EXT
            )
        }

        @Test("Validate clusterCullingShaderBit_HUAWEI")
        public func validate_clusterCullingShaderBit_HUAWEI() {
            #expect(
                Ignite.PipelineStageFlags2.clusterCullingShaderBit_HUAWEI.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_CLUSTER_CULLING_SHADER_BIT_HUAWEI
            )
        }

        @Test("Validate opticalFlowBit_NV")
        public func validate_opticalFlowBit_NV() {
            #expect(
                Ignite.PipelineStageFlags2.opticalFlowBit_NV.rawValue == CVulkan.VK_PIPELINE_STAGE_2_OPTICAL_FLOW_BIT_NV
            )
        }

        @Test("Validate convertCooperativeVectorMatrixBit_NV")
        public func validate_convertCooperativeVectorMatrixBit_NV() {
            #expect(
                Ignite.PipelineStageFlags2.convertCooperativeVectorMatrixBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_CONVERT_COOPERATIVE_VECTOR_MATRIX_BIT_NV
            )
        }

        @Test("Validate transferBit")
        public func validate_transferBit() {
            #expect(
                Ignite.PipelineStageFlags2.transferBit.rawValue == CVulkan.VK_PIPELINE_STAGE_2_TRANSFER_BIT
            )
        }

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.none_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_NONE_KHR
            )
        }

        @Test("Validate topOfPipeBit_KHR")
        public func validate_topOfPipeBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.topOfPipeBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT_KHR
            )
        }

        @Test("Validate drawIndirectBit_KHR")
        public func validate_drawIndirectBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.drawIndirectBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT_KHR
            )
        }

        @Test("Validate vertexInputBit_KHR")
        public func validate_vertexInputBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.vertexInputBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT_KHR
            )
        }

        @Test("Validate vertexShaderBit_KHR")
        public func validate_vertexShaderBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.vertexShaderBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT_KHR
            )
        }

        @Test("Validate tessellationControlShaderBit_KHR")
        public func validate_tessellationControlShaderBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.tessellationControlShaderBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT_KHR
            )
        }

        @Test("Validate tessellationEvaluationShaderBit_KHR")
        public func validate_tessellationEvaluationShaderBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.tessellationEvaluationShaderBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT_KHR
            )
        }

        @Test("Validate geometryShaderBit_KHR")
        public func validate_geometryShaderBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.geometryShaderBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT_KHR
            )
        }

        @Test("Validate fragmentShaderBit_KHR")
        public func validate_fragmentShaderBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.fragmentShaderBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT_KHR
            )
        }

        @Test("Validate earlyFragmentTestsBit_KHR")
        public func validate_earlyFragmentTestsBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.earlyFragmentTestsBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT_KHR
            )
        }

        @Test("Validate lateFragmentTestsBit_KHR")
        public func validate_lateFragmentTestsBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.lateFragmentTestsBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT_KHR
            )
        }

        @Test("Validate colorAttachmentOutputBit_KHR")
        public func validate_colorAttachmentOutputBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.colorAttachmentOutputBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT_KHR
            )
        }

        @Test("Validate computeShaderBit_KHR")
        public func validate_computeShaderBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.computeShaderBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT_KHR
            )
        }

        @Test("Validate allTransferBit_KHR")
        public func validate_allTransferBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.allTransferBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT_KHR
            )
        }

        @Test("Validate transferBit_KHR")
        public func validate_transferBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.transferBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_TRANSFER_BIT_KHR
            )
        }

        @Test("Validate bottomOfPipeBit_KHR")
        public func validate_bottomOfPipeBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.bottomOfPipeBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT_KHR
            )
        }

        @Test("Validate hostBit_KHR")
        public func validate_hostBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.hostBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_HOST_BIT_KHR
            )
        }

        @Test("Validate allGraphicsBit_KHR")
        public func validate_allGraphicsBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.allGraphicsBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT_KHR
            )
        }

        @Test("Validate allCommandsBit_KHR")
        public func validate_allCommandsBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.allCommandsBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT_KHR
            )
        }

        @Test("Validate copyBit_KHR")
        public func validate_copyBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.copyBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_COPY_BIT_KHR
            )
        }

        @Test("Validate resolveBit_KHR")
        public func validate_resolveBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.resolveBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_RESOLVE_BIT_KHR
            )
        }

        @Test("Validate blitBit_KHR")
        public func validate_blitBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.blitBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_BLIT_BIT_KHR
            )
        }

        @Test("Validate clearBit_KHR")
        public func validate_clearBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.clearBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_CLEAR_BIT_KHR
            )
        }

        @Test("Validate indexInputBit_KHR")
        public func validate_indexInputBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.indexInputBit_KHR.rawValue == CVulkan.VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT_KHR
            )
        }

        @Test("Validate vertexAttributeInputBit_KHR")
        public func validate_vertexAttributeInputBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.vertexAttributeInputBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT_KHR
            )
        }

        @Test("Validate preRasterizationShadersBit_KHR")
        public func validate_preRasterizationShadersBit_KHR() {
            #expect(
                Ignite.PipelineStageFlags2.preRasterizationShadersBit_KHR.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT_KHR
            )
        }

        @Test("Validate commandPreprocessBit_NV")
        public func validate_commandPreprocessBit_NV() {
            #expect(
                Ignite.PipelineStageFlags2.commandPreprocessBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_COMMAND_PREPROCESS_BIT_NV
            )
        }

        @Test("Validate shadingRateImageBit_NV")
        public func validate_shadingRateImageBit_NV() {
            #expect(
                Ignite.PipelineStageFlags2.shadingRateImageBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_SHADING_RATE_IMAGE_BIT_NV
            )
        }

        @Test("Validate rayTracingShaderBit_NV")
        public func validate_rayTracingShaderBit_NV() {
            #expect(
                Ignite.PipelineStageFlags2.rayTracingShaderBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_NV
            )
        }

        @Test("Validate accelerationStructureBuildBit_NV")
        public func validate_accelerationStructureBuildBit_NV() {
            #expect(
                Ignite.PipelineStageFlags2.accelerationStructureBuildBit_NV.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_NV
            )
        }

        @Test("Validate taskShaderBit_NV")
        public func validate_taskShaderBit_NV() {
            #expect(
                Ignite.PipelineStageFlags2.taskShaderBit_NV.rawValue == CVulkan.VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_NV
            )
        }

        @Test("Validate meshShaderBit_NV")
        public func validate_meshShaderBit_NV() {
            #expect(
                Ignite.PipelineStageFlags2.meshShaderBit_NV.rawValue == CVulkan.VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_NV
            )
        }

        @Test("Validate subpassShadingBit_HUAWEI")
        public func validate_subpassShadingBit_HUAWEI() {
            #expect(
                Ignite.PipelineStageFlags2.subpassShadingBit_HUAWEI.rawValue
                    == CVulkan.VK_PIPELINE_STAGE_2_SUBPASS_SHADING_BIT_HUAWEI
            )
        }
    }


    /// Tests for the PresentGravityFlagsEXT bitmask.
    @Suite("PresentGravityFlagsEXT")
    public struct PresentGravityFlagsEXTTests {
        @Test("Validate min_EXT")
        public func validate_min_EXT() {
            #expect(
                Ignite.PresentGravityFlagsEXT.min_EXT.rawValue == CVulkan.VK_PRESENT_GRAVITY_MIN_BIT_EXT.rawValue
            )
        }

        @Test("Validate max_EXT")
        public func validate_max_EXT() {
            #expect(
                Ignite.PresentGravityFlagsEXT.max_EXT.rawValue == CVulkan.VK_PRESENT_GRAVITY_MAX_BIT_EXT.rawValue
            )
        }

        @Test("Validate centered_EXT")
        public func validate_centered_EXT() {
            #expect(
                Ignite.PresentGravityFlagsEXT.centered_EXT.rawValue == CVulkan.VK_PRESENT_GRAVITY_CENTERED_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the PresentScalingFlagsEXT bitmask.
    @Suite("PresentScalingFlagsEXT")
    public struct PresentScalingFlagsEXTTests {
        @Test("Validate oneToOne_EXT")
        public func validate_oneToOne_EXT() {
            #expect(
                Ignite.PresentScalingFlagsEXT.oneToOne_EXT.rawValue == CVulkan.VK_PRESENT_SCALING_ONE_TO_ONE_BIT_EXT.rawValue
            )
        }

        @Test("Validate aspectRatioStretch_EXT")
        public func validate_aspectRatioStretch_EXT() {
            #expect(
                Ignite.PresentScalingFlagsEXT.aspectRatioStretch_EXT.rawValue
                    == CVulkan.VK_PRESENT_SCALING_ASPECT_RATIO_STRETCH_BIT_EXT.rawValue
            )
        }

        @Test("Validate stretch_EXT")
        public func validate_stretch_EXT() {
            #expect(
                Ignite.PresentScalingFlagsEXT.stretch_EXT.rawValue == CVulkan.VK_PRESENT_SCALING_STRETCH_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the QueryControlFlags bitmask.
    @Suite("QueryControlFlags")
    public struct QueryControlFlagsTests {
        @Test("Validate precise")
        public func validate_precise() {
            #expect(
                Ignite.QueryControlFlags.precise.rawValue == CVulkan.VK_QUERY_CONTROL_PRECISE_BIT.rawValue
            )
        }
    }


    /// Tests for the QueryPipelineStatisticFlags bitmask.
    @Suite("QueryPipelineStatisticFlags")
    public struct QueryPipelineStatisticFlagsTests {
        @Test("Validate inputAssemblyVertices")
        public func validate_inputAssemblyVertices() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.inputAssemblyVertices.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT.rawValue
            )
        }

        @Test("Validate inputAssemblyPrimitives")
        public func validate_inputAssemblyPrimitives() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.inputAssemblyPrimitives.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT.rawValue
            )
        }

        @Test("Validate vertexShaderInvocations")
        public func validate_vertexShaderInvocations() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.vertexShaderInvocations.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT.rawValue
            )
        }

        @Test("Validate geometryShaderInvocations")
        public func validate_geometryShaderInvocations() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.geometryShaderInvocations.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT.rawValue
            )
        }

        @Test("Validate geometryShaderPrimitives")
        public func validate_geometryShaderPrimitives() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.geometryShaderPrimitives.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT.rawValue
            )
        }

        @Test("Validate clippingInvocations")
        public func validate_clippingInvocations() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.clippingInvocations.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT.rawValue
            )
        }

        @Test("Validate clippingPrimitives")
        public func validate_clippingPrimitives() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.clippingPrimitives.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT.rawValue
            )
        }

        @Test("Validate fragmentShaderInvocations")
        public func validate_fragmentShaderInvocations() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.fragmentShaderInvocations.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT.rawValue
            )
        }

        @Test("Validate tessellationControlShaderPatches")
        public func validate_tessellationControlShaderPatches() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.tessellationControlShaderPatches.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT.rawValue
            )
        }

        @Test("Validate tessellationEvaluationShaderInvocations")
        public func validate_tessellationEvaluationShaderInvocations() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.tessellationEvaluationShaderInvocations.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT.rawValue
            )
        }

        @Test("Validate computeShaderInvocations")
        public func validate_computeShaderInvocations() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.computeShaderInvocations.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT.rawValue
            )
        }

        @Test("Validate taskShaderInvocations_EXT")
        public func validate_taskShaderInvocations_EXT() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.taskShaderInvocations_EXT.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_TASK_SHADER_INVOCATIONS_BIT_EXT.rawValue
            )
        }

        @Test("Validate meshShaderInvocations_EXT")
        public func validate_meshShaderInvocations_EXT() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.meshShaderInvocations_EXT.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_MESH_SHADER_INVOCATIONS_BIT_EXT.rawValue
            )
        }

        @Test("Validate clusterCullingShaderInvocations_HUAWEI")
        public func validate_clusterCullingShaderInvocations_HUAWEI() {
            #expect(
                Ignite.QueryPipelineStatisticFlags.clusterCullingShaderInvocations_HUAWEI.rawValue
                    == CVulkan.VK_QUERY_PIPELINE_STATISTIC_CLUSTER_CULLING_SHADER_INVOCATIONS_BIT_HUAWEI.rawValue
            )
        }
    }


    /// Tests for the QueryResultFlags bitmask.
    @Suite("QueryResultFlags")
    public struct QueryResultFlagsTests {
        @Test("Validate 64")
        public func validate_64() {
            #expect(
                Ignite.QueryResultFlags.`64`.rawValue == CVulkan.VK_QUERY_RESULT_64_BIT.rawValue
            )
        }

        @Test("Validate wait")
        public func validate_wait() {
            #expect(
                Ignite.QueryResultFlags.wait.rawValue == CVulkan.VK_QUERY_RESULT_WAIT_BIT.rawValue
            )
        }

        @Test("Validate withAvailability")
        public func validate_withAvailability() {
            #expect(
                Ignite.QueryResultFlags.withAvailability.rawValue == CVulkan.VK_QUERY_RESULT_WITH_AVAILABILITY_BIT.rawValue
            )
        }

        @Test("Validate partial")
        public func validate_partial() {
            #expect(
                Ignite.QueryResultFlags.partial.rawValue == CVulkan.VK_QUERY_RESULT_PARTIAL_BIT.rawValue
            )
        }

        @Test("Validate withStatus_KHR")
        public func validate_withStatus_KHR() {
            #expect(
                Ignite.QueryResultFlags.withStatus_KHR.rawValue == CVulkan.VK_QUERY_RESULT_WITH_STATUS_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the QueueFlags bitmask.
    @Suite("QueueFlags")
    public struct QueueFlagsTests {
        @Test("Validate graphics")
        public func validate_graphics() {
            #expect(
                Ignite.QueueFlags.graphics.rawValue == CVulkan.VK_QUEUE_GRAPHICS_BIT.rawValue
            )
        }

        @Test("Validate compute")
        public func validate_compute() {
            #expect(
                Ignite.QueueFlags.compute.rawValue == CVulkan.VK_QUEUE_COMPUTE_BIT.rawValue
            )
        }

        @Test("Validate transfer")
        public func validate_transfer() {
            #expect(
                Ignite.QueueFlags.transfer.rawValue == CVulkan.VK_QUEUE_TRANSFER_BIT.rawValue
            )
        }

        @Test("Validate sparseBinding")
        public func validate_sparseBinding() {
            #expect(
                Ignite.QueueFlags.sparseBinding.rawValue == CVulkan.VK_QUEUE_SPARSE_BINDING_BIT.rawValue
            )
        }

        @Test("Validate protected")
        public func validate_protected() {
            #expect(
                Ignite.QueueFlags.protected.rawValue == CVulkan.VK_QUEUE_PROTECTED_BIT.rawValue
            )
        }

        @Test("Validate videoDecode_KHR")
        public func validate_videoDecode_KHR() {
            #expect(
                Ignite.QueueFlags.videoDecode_KHR.rawValue == CVulkan.VK_QUEUE_VIDEO_DECODE_BIT_KHR.rawValue
            )
        }

        @Test("Validate videoEncode_KHR")
        public func validate_videoEncode_KHR() {
            #expect(
                Ignite.QueueFlags.videoEncode_KHR.rawValue == CVulkan.VK_QUEUE_VIDEO_ENCODE_BIT_KHR.rawValue
            )
        }

        @Test("Validate opticalFlow_NV")
        public func validate_opticalFlow_NV() {
            #expect(
                Ignite.QueueFlags.opticalFlow_NV.rawValue == CVulkan.VK_QUEUE_OPTICAL_FLOW_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the RenderPassCreateFlags bitmask.
    @Suite("RenderPassCreateFlags")
    public struct RenderPassCreateFlagsTests {
        @Test("Validate transform_QCOM")
        public func validate_transform_QCOM() {
            #expect(
                Ignite.RenderPassCreateFlags.transform_QCOM.rawValue
                    == CVulkan.VK_RENDER_PASS_CREATE_TRANSFORM_BIT_QCOM.rawValue
            )
        }
    }


    /// Tests for the RenderingFlags bitmask.
    @Suite("RenderingFlags")
    public struct RenderingFlagsTests {
        @Test("Validate contentsSecondaryCommandBuffers")
        public func validate_contentsSecondaryCommandBuffers() {
            #expect(
                Ignite.RenderingFlags.contentsSecondaryCommandBuffers.rawValue
                    == CVulkan.VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT.rawValue
            )
        }

        @Test("Validate suspending")
        public func validate_suspending() {
            #expect(
                Ignite.RenderingFlags.suspending.rawValue == CVulkan.VK_RENDERING_SUSPENDING_BIT.rawValue
            )
        }

        @Test("Validate resuming")
        public func validate_resuming() {
            #expect(
                Ignite.RenderingFlags.resuming.rawValue == CVulkan.VK_RENDERING_RESUMING_BIT.rawValue
            )
        }

        @Test("Validate enableLegacyDithering_EXT")
        public func validate_enableLegacyDithering_EXT() {
            #expect(
                Ignite.RenderingFlags.enableLegacyDithering_EXT.rawValue
                    == CVulkan.VK_RENDERING_ENABLE_LEGACY_DITHERING_BIT_EXT.rawValue
            )
        }

        @Test("Validate contentsInline_KHR")
        public func validate_contentsInline_KHR() {
            #expect(
                Ignite.RenderingFlags.contentsInline_KHR.rawValue == CVulkan.VK_RENDERING_CONTENTS_INLINE_BIT_KHR.rawValue
            )
        }

        @Test("Validate contentsSecondaryCommandBuffers_KHR")
        public func validate_contentsSecondaryCommandBuffers_KHR() {
            #expect(
                Ignite.RenderingFlags.contentsSecondaryCommandBuffers_KHR.rawValue
                    == CVulkan.VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT_KHR.rawValue
            )
        }

        @Test("Validate suspending_KHR")
        public func validate_suspending_KHR() {
            #expect(
                Ignite.RenderingFlags.suspending_KHR.rawValue == CVulkan.VK_RENDERING_SUSPENDING_BIT_KHR.rawValue
            )
        }

        @Test("Validate resuming_KHR")
        public func validate_resuming_KHR() {
            #expect(
                Ignite.RenderingFlags.resuming_KHR.rawValue == CVulkan.VK_RENDERING_RESUMING_BIT_KHR.rawValue
            )
        }

        @Test("Validate contentsInline_EXT")
        public func validate_contentsInline_EXT() {
            #expect(
                Ignite.RenderingFlags.contentsInline_EXT.rawValue == CVulkan.VK_RENDERING_CONTENTS_INLINE_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the ResolveModeFlags bitmask.
    @Suite("ResolveModeFlags")
    public struct ResolveModeFlagsTests {
        @Test("Validate none")
        public func validate_none() {
            #expect(
                Ignite.ResolveModeFlags.none.rawValue == CVulkan.VK_RESOLVE_MODE_NONE.rawValue
            )
        }

        @Test("Validate sampleZeroBit")
        public func validate_sampleZeroBit() {
            #expect(
                Ignite.ResolveModeFlags.sampleZeroBit.rawValue == CVulkan.VK_RESOLVE_MODE_SAMPLE_ZERO_BIT.rawValue
            )
        }

        @Test("Validate averageBit")
        public func validate_averageBit() {
            #expect(
                Ignite.ResolveModeFlags.averageBit.rawValue == CVulkan.VK_RESOLVE_MODE_AVERAGE_BIT.rawValue
            )
        }

        @Test("Validate minBit")
        public func validate_minBit() {
            #expect(
                Ignite.ResolveModeFlags.minBit.rawValue == CVulkan.VK_RESOLVE_MODE_MIN_BIT.rawValue
            )
        }

        @Test("Validate maxBit")
        public func validate_maxBit() {
            #expect(
                Ignite.ResolveModeFlags.maxBit.rawValue == CVulkan.VK_RESOLVE_MODE_MAX_BIT.rawValue
            )
        }

        #if PlatformAndroid
            @Test("Validate externalFormatDownsample_ANDROID")
            public func validate_externalFormatDownsample_ANDROID() {
                #expect(
                    Ignite.ResolveModeFlags.externalFormatDownsample_ANDROID.rawValue
                        == CVulkan.VK_RESOLVE_MODE_EXTERNAL_FORMAT_DOWNSAMPLE_ANDROID.rawValue
                )
            }
        #else
            @Test(
                "Validate externalFormatDownsample_ANDROID",
                .disabled("This flag is only available when the following trait is enabled: unknown."))
            public func validate_externalFormatDownsample_ANDROID() {}
        #endif

        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.ResolveModeFlags.none_KHR.rawValue == CVulkan.VK_RESOLVE_MODE_NONE_KHR.rawValue
            )
        }

        @Test("Validate sampleZeroBit_KHR")
        public func validate_sampleZeroBit_KHR() {
            #expect(
                Ignite.ResolveModeFlags.sampleZeroBit_KHR.rawValue == CVulkan.VK_RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR.rawValue
            )
        }

        @Test("Validate averageBit_KHR")
        public func validate_averageBit_KHR() {
            #expect(
                Ignite.ResolveModeFlags.averageBit_KHR.rawValue == CVulkan.VK_RESOLVE_MODE_AVERAGE_BIT_KHR.rawValue
            )
        }

        @Test("Validate minBit_KHR")
        public func validate_minBit_KHR() {
            #expect(
                Ignite.ResolveModeFlags.minBit_KHR.rawValue == CVulkan.VK_RESOLVE_MODE_MIN_BIT_KHR.rawValue
            )
        }

        @Test("Validate maxBit_KHR")
        public func validate_maxBit_KHR() {
            #expect(
                Ignite.ResolveModeFlags.maxBit_KHR.rawValue == CVulkan.VK_RESOLVE_MODE_MAX_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the SampleCountFlags bitmask.
    @Suite("SampleCountFlags")
    public struct SampleCountFlagsTests {
        @Test("Validate 1")
        public func validate_1() {
            #expect(
                Ignite.SampleCountFlags.`1`.rawValue == CVulkan.VK_SAMPLE_COUNT_1_BIT.rawValue
            )
        }

        @Test("Validate 2")
        public func validate_2() {
            #expect(
                Ignite.SampleCountFlags.`2`.rawValue == CVulkan.VK_SAMPLE_COUNT_2_BIT.rawValue
            )
        }

        @Test("Validate 4")
        public func validate_4() {
            #expect(
                Ignite.SampleCountFlags.`4`.rawValue == CVulkan.VK_SAMPLE_COUNT_4_BIT.rawValue
            )
        }

        @Test("Validate 8")
        public func validate_8() {
            #expect(
                Ignite.SampleCountFlags.`8`.rawValue == CVulkan.VK_SAMPLE_COUNT_8_BIT.rawValue
            )
        }

        @Test("Validate 16")
        public func validate_16() {
            #expect(
                Ignite.SampleCountFlags.`16`.rawValue == CVulkan.VK_SAMPLE_COUNT_16_BIT.rawValue
            )
        }

        @Test("Validate 32")
        public func validate_32() {
            #expect(
                Ignite.SampleCountFlags.`32`.rawValue == CVulkan.VK_SAMPLE_COUNT_32_BIT.rawValue
            )
        }

        @Test("Validate 64")
        public func validate_64() {
            #expect(
                Ignite.SampleCountFlags.`64`.rawValue == CVulkan.VK_SAMPLE_COUNT_64_BIT.rawValue
            )
        }
    }


    /// Tests for the SamplerCreateFlags bitmask.
    @Suite("SamplerCreateFlags")
    public struct SamplerCreateFlagsTests {
        @Test("Validate subsampled_EXT")
        public func validate_subsampled_EXT() {
            #expect(
                Ignite.SamplerCreateFlags.subsampled_EXT.rawValue == CVulkan.VK_SAMPLER_CREATE_SUBSAMPLED_BIT_EXT.rawValue
            )
        }

        @Test("Validate subsampledCoarseReconstruction_EXT")
        public func validate_subsampledCoarseReconstruction_EXT() {
            #expect(
                Ignite.SamplerCreateFlags.subsampledCoarseReconstruction_EXT.rawValue
                    == CVulkan.VK_SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT.rawValue
            )
        }

        @Test("Validate descriptorBufferCaptureReplay_EXT")
        public func validate_descriptorBufferCaptureReplay_EXT() {
            #expect(
                Ignite.SamplerCreateFlags.descriptorBufferCaptureReplay_EXT.rawValue
                    == CVulkan.VK_SAMPLER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT.rawValue
            )
        }

        @Test("Validate nonSeamlessCubeMap_EXT")
        public func validate_nonSeamlessCubeMap_EXT() {
            #expect(
                Ignite.SamplerCreateFlags.nonSeamlessCubeMap_EXT.rawValue
                    == CVulkan.VK_SAMPLER_CREATE_NON_SEAMLESS_CUBE_MAP_BIT_EXT.rawValue
            )
        }

        @Test("Validate imageProcessing_QCOM")
        public func validate_imageProcessing_QCOM() {
            #expect(
                Ignite.SamplerCreateFlags.imageProcessing_QCOM.rawValue
                    == CVulkan.VK_SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM.rawValue
            )
        }
    }


    /// Tests for the SemaphoreImportFlags bitmask.
    @Suite("SemaphoreImportFlags")
    public struct SemaphoreImportFlagsTests {
        @Test("Validate temporary")
        public func validate_temporary() {
            #expect(
                Ignite.SemaphoreImportFlags.temporary.rawValue == CVulkan.VK_SEMAPHORE_IMPORT_TEMPORARY_BIT.rawValue
            )
        }

        @Test("Validate temporary_KHR")
        public func validate_temporary_KHR() {
            #expect(
                Ignite.SemaphoreImportFlags.temporary_KHR.rawValue == CVulkan.VK_SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the SemaphoreWaitFlags bitmask.
    @Suite("SemaphoreWaitFlags")
    public struct SemaphoreWaitFlagsTests {
        @Test("Validate any")
        public func validate_any() {
            #expect(
                Ignite.SemaphoreWaitFlags.any.rawValue == CVulkan.VK_SEMAPHORE_WAIT_ANY_BIT.rawValue
            )
        }

        @Test("Validate any_KHR")
        public func validate_any_KHR() {
            #expect(
                Ignite.SemaphoreWaitFlags.any_KHR.rawValue == CVulkan.VK_SEMAPHORE_WAIT_ANY_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the ShaderCorePropertiesFlagsAMD bitmask.
    @Suite("ShaderCorePropertiesFlagsAMD")
    public struct ShaderCorePropertiesFlagsAMDTests {

    }


    /// Tests for the ShaderCreateFlagsEXT bitmask.
    @Suite("ShaderCreateFlagsEXT")
    public struct ShaderCreateFlagsEXTTests {
        @Test("Validate linkStage_EXT")
        public func validate_linkStage_EXT() {
            #expect(
                Ignite.ShaderCreateFlagsEXT.linkStage_EXT.rawValue == CVulkan.VK_SHADER_CREATE_LINK_STAGE_BIT_EXT.rawValue
            )
        }

        @Test("Validate allowVaryingSubgroupSize_EXT")
        public func validate_allowVaryingSubgroupSize_EXT() {
            #expect(
                Ignite.ShaderCreateFlagsEXT.allowVaryingSubgroupSize_EXT.rawValue
                    == CVulkan.VK_SHADER_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT.rawValue
            )
        }

        @Test("Validate requireFullSubgroups_EXT")
        public func validate_requireFullSubgroups_EXT() {
            #expect(
                Ignite.ShaderCreateFlagsEXT.requireFullSubgroups_EXT.rawValue
                    == CVulkan.VK_SHADER_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT.rawValue
            )
        }

        @Test("Validate noTaskShader_EXT")
        public func validate_noTaskShader_EXT() {
            #expect(
                Ignite.ShaderCreateFlagsEXT.noTaskShader_EXT.rawValue
                    == CVulkan.VK_SHADER_CREATE_NO_TASK_SHADER_BIT_EXT.rawValue
            )
        }

        @Test("Validate dispatchBase_EXT")
        public func validate_dispatchBase_EXT() {
            #expect(
                Ignite.ShaderCreateFlagsEXT.dispatchBase_EXT.rawValue
                    == CVulkan.VK_SHADER_CREATE_DISPATCH_BASE_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentShadingRateAttachment_EXT")
        public func validate_fragmentShadingRateAttachment_EXT() {
            #expect(
                Ignite.ShaderCreateFlagsEXT.fragmentShadingRateAttachment_EXT.rawValue
                    == CVulkan.VK_SHADER_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_EXT.rawValue
            )
        }

        @Test("Validate fragmentDensityMapAttachment_EXT")
        public func validate_fragmentDensityMapAttachment_EXT() {
            #expect(
                Ignite.ShaderCreateFlagsEXT.fragmentDensityMapAttachment_EXT.rawValue
                    == CVulkan.VK_SHADER_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT.rawValue
            )
        }

        @Test("Validate indirectBindable_EXT")
        public func validate_indirectBindable_EXT() {
            #expect(
                Ignite.ShaderCreateFlagsEXT.indirectBindable_EXT.rawValue
                    == CVulkan.VK_SHADER_CREATE_INDIRECT_BINDABLE_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the ShaderStageFlags bitmask.
    @Suite("ShaderStageFlags")
    public struct ShaderStageFlagsTests {
        @Test("Validate vertexBit")
        public func validate_vertexBit() {
            #expect(
                Ignite.ShaderStageFlags.vertexBit.rawValue == CVulkan.VK_SHADER_STAGE_VERTEX_BIT.rawValue
            )
        }

        @Test("Validate tessellationControlBit")
        public func validate_tessellationControlBit() {
            #expect(
                Ignite.ShaderStageFlags.tessellationControlBit.rawValue
                    == CVulkan.VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT.rawValue
            )
        }

        @Test("Validate tessellationEvaluationBit")
        public func validate_tessellationEvaluationBit() {
            #expect(
                Ignite.ShaderStageFlags.tessellationEvaluationBit.rawValue
                    == CVulkan.VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT.rawValue
            )
        }

        @Test("Validate geometryBit")
        public func validate_geometryBit() {
            #expect(
                Ignite.ShaderStageFlags.geometryBit.rawValue == CVulkan.VK_SHADER_STAGE_GEOMETRY_BIT.rawValue
            )
        }

        @Test("Validate fragmentBit")
        public func validate_fragmentBit() {
            #expect(
                Ignite.ShaderStageFlags.fragmentBit.rawValue == CVulkan.VK_SHADER_STAGE_FRAGMENT_BIT.rawValue
            )
        }

        @Test("Validate computeBit")
        public func validate_computeBit() {
            #expect(
                Ignite.ShaderStageFlags.computeBit.rawValue == CVulkan.VK_SHADER_STAGE_COMPUTE_BIT.rawValue
            )
        }

        @Test("Validate allGraphics")
        public func validate_allGraphics() {
            #expect(
                Ignite.ShaderStageFlags.allGraphics.rawValue == CVulkan.VK_SHADER_STAGE_ALL_GRAPHICS.rawValue
            )
        }

        @Test("Validate all")
        public func validate_all() {
            #expect(
                Ignite.ShaderStageFlags.all.rawValue == CVulkan.VK_SHADER_STAGE_ALL.rawValue
            )
        }

        @Test("Validate raygenBit_KHR")
        public func validate_raygenBit_KHR() {
            #expect(
                Ignite.ShaderStageFlags.raygenBit_KHR.rawValue == CVulkan.VK_SHADER_STAGE_RAYGEN_BIT_KHR.rawValue
            )
        }

        @Test("Validate anyHitBit_KHR")
        public func validate_anyHitBit_KHR() {
            #expect(
                Ignite.ShaderStageFlags.anyHitBit_KHR.rawValue == CVulkan.VK_SHADER_STAGE_ANY_HIT_BIT_KHR.rawValue
            )
        }

        @Test("Validate closestHitBit_KHR")
        public func validate_closestHitBit_KHR() {
            #expect(
                Ignite.ShaderStageFlags.closestHitBit_KHR.rawValue == CVulkan.VK_SHADER_STAGE_CLOSEST_HIT_BIT_KHR.rawValue
            )
        }

        @Test("Validate missBit_KHR")
        public func validate_missBit_KHR() {
            #expect(
                Ignite.ShaderStageFlags.missBit_KHR.rawValue == CVulkan.VK_SHADER_STAGE_MISS_BIT_KHR.rawValue
            )
        }

        @Test("Validate intersectionBit_KHR")
        public func validate_intersectionBit_KHR() {
            #expect(
                Ignite.ShaderStageFlags.intersectionBit_KHR.rawValue == CVulkan.VK_SHADER_STAGE_INTERSECTION_BIT_KHR.rawValue
            )
        }

        @Test("Validate callableBit_KHR")
        public func validate_callableBit_KHR() {
            #expect(
                Ignite.ShaderStageFlags.callableBit_KHR.rawValue == CVulkan.VK_SHADER_STAGE_CALLABLE_BIT_KHR.rawValue
            )
        }

        @Test("Validate taskBit_EXT")
        public func validate_taskBit_EXT() {
            #expect(
                Ignite.ShaderStageFlags.taskBit_EXT.rawValue == CVulkan.VK_SHADER_STAGE_TASK_BIT_EXT.rawValue
            )
        }

        @Test("Validate meshBit_EXT")
        public func validate_meshBit_EXT() {
            #expect(
                Ignite.ShaderStageFlags.meshBit_EXT.rawValue == CVulkan.VK_SHADER_STAGE_MESH_BIT_EXT.rawValue
            )
        }

        @Test("Validate subpassShadingBit_HUAWEI")
        public func validate_subpassShadingBit_HUAWEI() {
            #expect(
                Ignite.ShaderStageFlags.subpassShadingBit_HUAWEI.rawValue
                    == CVulkan.VK_SHADER_STAGE_SUBPASS_SHADING_BIT_HUAWEI.rawValue
            )
        }

        @Test("Validate clusterCullingBit_HUAWEI")
        public func validate_clusterCullingBit_HUAWEI() {
            #expect(
                Ignite.ShaderStageFlags.clusterCullingBit_HUAWEI.rawValue
                    == CVulkan.VK_SHADER_STAGE_CLUSTER_CULLING_BIT_HUAWEI.rawValue
            )
        }

        @Test("Validate raygenBit_NV")
        public func validate_raygenBit_NV() {
            #expect(
                Ignite.ShaderStageFlags.raygenBit_NV.rawValue == CVulkan.VK_SHADER_STAGE_RAYGEN_BIT_NV.rawValue
            )
        }

        @Test("Validate anyHitBit_NV")
        public func validate_anyHitBit_NV() {
            #expect(
                Ignite.ShaderStageFlags.anyHitBit_NV.rawValue == CVulkan.VK_SHADER_STAGE_ANY_HIT_BIT_NV.rawValue
            )
        }

        @Test("Validate closestHitBit_NV")
        public func validate_closestHitBit_NV() {
            #expect(
                Ignite.ShaderStageFlags.closestHitBit_NV.rawValue == CVulkan.VK_SHADER_STAGE_CLOSEST_HIT_BIT_NV.rawValue
            )
        }

        @Test("Validate missBit_NV")
        public func validate_missBit_NV() {
            #expect(
                Ignite.ShaderStageFlags.missBit_NV.rawValue == CVulkan.VK_SHADER_STAGE_MISS_BIT_NV.rawValue
            )
        }

        @Test("Validate intersectionBit_NV")
        public func validate_intersectionBit_NV() {
            #expect(
                Ignite.ShaderStageFlags.intersectionBit_NV.rawValue == CVulkan.VK_SHADER_STAGE_INTERSECTION_BIT_NV.rawValue
            )
        }

        @Test("Validate callableBit_NV")
        public func validate_callableBit_NV() {
            #expect(
                Ignite.ShaderStageFlags.callableBit_NV.rawValue == CVulkan.VK_SHADER_STAGE_CALLABLE_BIT_NV.rawValue
            )
        }

        @Test("Validate taskBit_NV")
        public func validate_taskBit_NV() {
            #expect(
                Ignite.ShaderStageFlags.taskBit_NV.rawValue == CVulkan.VK_SHADER_STAGE_TASK_BIT_NV.rawValue
            )
        }

        @Test("Validate meshBit_NV")
        public func validate_meshBit_NV() {
            #expect(
                Ignite.ShaderStageFlags.meshBit_NV.rawValue == CVulkan.VK_SHADER_STAGE_MESH_BIT_NV.rawValue
            )
        }
    }


    /// Tests for the SparseImageFormatFlags bitmask.
    @Suite("SparseImageFormatFlags")
    public struct SparseImageFormatFlagsTests {
        @Test("Validate singleMiptail")
        public func validate_singleMiptail() {
            #expect(
                Ignite.SparseImageFormatFlags.singleMiptail.rawValue
                    == CVulkan.VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT.rawValue
            )
        }

        @Test("Validate alignedMipSize")
        public func validate_alignedMipSize() {
            #expect(
                Ignite.SparseImageFormatFlags.alignedMipSize.rawValue
                    == CVulkan.VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT.rawValue
            )
        }

        @Test("Validate nonstandardBlockSize")
        public func validate_nonstandardBlockSize() {
            #expect(
                Ignite.SparseImageFormatFlags.nonstandardBlockSize.rawValue
                    == CVulkan.VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT.rawValue
            )
        }
    }


    /// Tests for the SparseMemoryBindFlags bitmask.
    @Suite("SparseMemoryBindFlags")
    public struct SparseMemoryBindFlagsTests {
        @Test("Validate metadata")
        public func validate_metadata() {
            #expect(
                Ignite.SparseMemoryBindFlags.metadata.rawValue == CVulkan.VK_SPARSE_MEMORY_BIND_METADATA_BIT.rawValue
            )
        }
    }


    /// Tests for the StencilFaceFlags bitmask.
    @Suite("StencilFaceFlags")
    public struct StencilFaceFlagsTests {
        @Test("Validate frontBit")
        public func validate_frontBit() {
            #expect(
                Ignite.StencilFaceFlags.frontBit.rawValue == CVulkan.VK_STENCIL_FACE_FRONT_BIT.rawValue
            )
        }

        @Test("Validate backBit")
        public func validate_backBit() {
            #expect(
                Ignite.StencilFaceFlags.backBit.rawValue == CVulkan.VK_STENCIL_FACE_BACK_BIT.rawValue
            )
        }

        @Test("Validate frontAndBack")
        public func validate_frontAndBack() {
            #expect(
                Ignite.StencilFaceFlags.frontAndBack.rawValue == CVulkan.VK_STENCIL_FACE_FRONT_AND_BACK.rawValue
            )
        }

        @Test("Validate rontAndBack")
        public func validate_rontAndBack() {
            #expect(
                Ignite.StencilFaceFlags.rontAndBack.rawValue == CVulkan.VK_STENCIL_FRONT_AND_BACK.rawValue
            )
        }
    }


    /// Tests for the SubgroupFeatureFlags bitmask.
    @Suite("SubgroupFeatureFlags")
    public struct SubgroupFeatureFlagsTests {
        @Test("Validate basic")
        public func validate_basic() {
            #expect(
                Ignite.SubgroupFeatureFlags.basic.rawValue == CVulkan.VK_SUBGROUP_FEATURE_BASIC_BIT.rawValue
            )
        }

        @Test("Validate vote")
        public func validate_vote() {
            #expect(
                Ignite.SubgroupFeatureFlags.vote.rawValue == CVulkan.VK_SUBGROUP_FEATURE_VOTE_BIT.rawValue
            )
        }

        @Test("Validate arithmetic")
        public func validate_arithmetic() {
            #expect(
                Ignite.SubgroupFeatureFlags.arithmetic.rawValue == CVulkan.VK_SUBGROUP_FEATURE_ARITHMETIC_BIT.rawValue
            )
        }

        @Test("Validate ballot")
        public func validate_ballot() {
            #expect(
                Ignite.SubgroupFeatureFlags.ballot.rawValue == CVulkan.VK_SUBGROUP_FEATURE_BALLOT_BIT.rawValue
            )
        }

        @Test("Validate shuffle")
        public func validate_shuffle() {
            #expect(
                Ignite.SubgroupFeatureFlags.shuffle.rawValue == CVulkan.VK_SUBGROUP_FEATURE_SHUFFLE_BIT.rawValue
            )
        }

        @Test("Validate shuffleRelative")
        public func validate_shuffleRelative() {
            #expect(
                Ignite.SubgroupFeatureFlags.shuffleRelative.rawValue
                    == CVulkan.VK_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT.rawValue
            )
        }

        @Test("Validate clustered")
        public func validate_clustered() {
            #expect(
                Ignite.SubgroupFeatureFlags.clustered.rawValue == CVulkan.VK_SUBGROUP_FEATURE_CLUSTERED_BIT.rawValue
            )
        }

        @Test("Validate quad")
        public func validate_quad() {
            #expect(
                Ignite.SubgroupFeatureFlags.quad.rawValue == CVulkan.VK_SUBGROUP_FEATURE_QUAD_BIT.rawValue
            )
        }

        @Test("Validate rotate")
        public func validate_rotate() {
            #expect(
                Ignite.SubgroupFeatureFlags.rotate.rawValue == CVulkan.VK_SUBGROUP_FEATURE_ROTATE_BIT.rawValue
            )
        }

        @Test("Validate rotateClustered")
        public func validate_rotateClustered() {
            #expect(
                Ignite.SubgroupFeatureFlags.rotateClustered.rawValue
                    == CVulkan.VK_SUBGROUP_FEATURE_ROTATE_CLUSTERED_BIT.rawValue
            )
        }

        @Test("Validate partitioned_NV")
        public func validate_partitioned_NV() {
            #expect(
                Ignite.SubgroupFeatureFlags.partitioned_NV.rawValue
                    == CVulkan.VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV.rawValue
            )
        }

        @Test("Validate rotate_KHR")
        public func validate_rotate_KHR() {
            #expect(
                Ignite.SubgroupFeatureFlags.rotate_KHR.rawValue == CVulkan.VK_SUBGROUP_FEATURE_ROTATE_BIT_KHR.rawValue
            )
        }

        @Test("Validate rotateClustered_KHR")
        public func validate_rotateClustered_KHR() {
            #expect(
                Ignite.SubgroupFeatureFlags.rotateClustered_KHR.rawValue
                    == CVulkan.VK_SUBGROUP_FEATURE_ROTATE_CLUSTERED_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the SubmitFlags bitmask.
    @Suite("SubmitFlags")
    public struct SubmitFlagsTests {
        @Test("Validate protected")
        public func validate_protected() {
            #expect(
                Ignite.SubmitFlags.protected.rawValue == CVulkan.VK_SUBMIT_PROTECTED_BIT.rawValue
            )
        }

        @Test("Validate protected_KHR")
        public func validate_protected_KHR() {
            #expect(
                Ignite.SubmitFlags.protected_KHR.rawValue == CVulkan.VK_SUBMIT_PROTECTED_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the SubpassDescriptionFlags bitmask.
    @Suite("SubpassDescriptionFlags")
    public struct SubpassDescriptionFlagsTests {
        @Test("Validate perViewAttributes_NVX")
        public func validate_perViewAttributes_NVX() {
            #expect(
                Ignite.SubpassDescriptionFlags.perViewAttributes_NVX.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_PER_VIEW_ATTRIBUTES_BIT_NVX.rawValue
            )
        }

        @Test("Validate perViewPositionXOnly_NVX")
        public func validate_perViewPositionXOnly_NVX() {
            #expect(
                Ignite.SubpassDescriptionFlags.perViewPositionXOnly_NVX.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_PER_VIEW_POSITION_X_ONLY_BIT_NVX.rawValue
            )
        }

        @Test("Validate fragmentRegion_QCOM")
        public func validate_fragmentRegion_QCOM() {
            #expect(
                Ignite.SubpassDescriptionFlags.fragmentRegion_QCOM.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_FRAGMENT_REGION_BIT_QCOM.rawValue
            )
        }

        @Test("Validate shaderResolve_QCOM")
        public func validate_shaderResolve_QCOM() {
            #expect(
                Ignite.SubpassDescriptionFlags.shaderResolve_QCOM.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_SHADER_RESOLVE_BIT_QCOM.rawValue
            )
        }

        @Test("Validate tileShadingApron_QCOM")
        public func validate_tileShadingApron_QCOM() {
            #expect(
                Ignite.SubpassDescriptionFlags.tileShadingApron_QCOM.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_TILE_SHADING_APRON_BIT_QCOM.rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentColorAccess_EXT")
        public func validate_rasterizationOrderAttachmentColorAccess_EXT() {
            #expect(
                Ignite.SubpassDescriptionFlags.rasterizationOrderAttachmentColorAccess_EXT.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_COLOR_ACCESS_BIT_EXT.rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentDepthAccess_EXT")
        public func validate_rasterizationOrderAttachmentDepthAccess_EXT() {
            #expect(
                Ignite.SubpassDescriptionFlags.rasterizationOrderAttachmentDepthAccess_EXT.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_EXT.rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentStencilAccess_EXT")
        public func validate_rasterizationOrderAttachmentStencilAccess_EXT() {
            #expect(
                Ignite.SubpassDescriptionFlags.rasterizationOrderAttachmentStencilAccess_EXT.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_EXT.rawValue
            )
        }

        @Test("Validate enableLegacyDithering_EXT")
        public func validate_enableLegacyDithering_EXT() {
            #expect(
                Ignite.SubpassDescriptionFlags.enableLegacyDithering_EXT.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_ENABLE_LEGACY_DITHERING_BIT_EXT.rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentColorAccess_ARM")
        public func validate_rasterizationOrderAttachmentColorAccess_ARM() {
            #expect(
                Ignite.SubpassDescriptionFlags.rasterizationOrderAttachmentColorAccess_ARM.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_COLOR_ACCESS_BIT_ARM.rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentDepthAccess_ARM")
        public func validate_rasterizationOrderAttachmentDepthAccess_ARM() {
            #expect(
                Ignite.SubpassDescriptionFlags.rasterizationOrderAttachmentDepthAccess_ARM.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_ARM.rawValue
            )
        }

        @Test("Validate rasterizationOrderAttachmentStencilAccess_ARM")
        public func validate_rasterizationOrderAttachmentStencilAccess_ARM() {
            #expect(
                Ignite.SubpassDescriptionFlags.rasterizationOrderAttachmentStencilAccess_ARM.rawValue
                    == CVulkan.VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_ARM.rawValue
            )
        }
    }


    /// Tests for the SurfaceCounterFlagsEXT bitmask.
    @Suite("SurfaceCounterFlagsEXT")
    public struct SurfaceCounterFlagsEXTTests {
        @Test("Validate vblankBit_EXT")
        public func validate_vblankBit_EXT() {
            #expect(
                Ignite.SurfaceCounterFlagsEXT.vblankBit_EXT.rawValue == CVulkan.VK_SURFACE_COUNTER_VBLANK_BIT_EXT.rawValue
            )
        }

        @Test("Validate vblank_EXT")
        public func validate_vblank_EXT() {
            #expect(
                Ignite.SurfaceCounterFlagsEXT.vblank_EXT.rawValue == CVulkan.VK_SURFACE_COUNTER_VBLANK_EXT.rawValue
            )
        }
    }


    /// Tests for the SurfaceTransformFlagsKHR bitmask.
    @Suite("SurfaceTransformFlagsKHR")
    public struct SurfaceTransformFlagsKHRTests {
        @Test("Validate identity_KHR")
        public func validate_identity_KHR() {
            #expect(
                Ignite.SurfaceTransformFlagsKHR.identity_KHR.rawValue
                    == CVulkan.VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR.rawValue
            )
        }

        @Test("Validate rotate90_KHR")
        public func validate_rotate90_KHR() {
            #expect(
                Ignite.SurfaceTransformFlagsKHR.rotate90_KHR.rawValue
                    == CVulkan.VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR.rawValue
            )
        }

        @Test("Validate rotate180_KHR")
        public func validate_rotate180_KHR() {
            #expect(
                Ignite.SurfaceTransformFlagsKHR.rotate180_KHR.rawValue
                    == CVulkan.VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR.rawValue
            )
        }

        @Test("Validate rotate270_KHR")
        public func validate_rotate270_KHR() {
            #expect(
                Ignite.SurfaceTransformFlagsKHR.rotate270_KHR.rawValue
                    == CVulkan.VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR.rawValue
            )
        }

        @Test("Validate horizontalMirror_KHR")
        public func validate_horizontalMirror_KHR() {
            #expect(
                Ignite.SurfaceTransformFlagsKHR.horizontalMirror_KHR.rawValue
                    == CVulkan.VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR.rawValue
            )
        }

        @Test("Validate horizontalMirrorRotate90_KHR")
        public func validate_horizontalMirrorRotate90_KHR() {
            #expect(
                Ignite.SurfaceTransformFlagsKHR.horizontalMirrorRotate90_KHR.rawValue
                    == CVulkan.VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR.rawValue
            )
        }

        @Test("Validate horizontalMirrorRotate180_KHR")
        public func validate_horizontalMirrorRotate180_KHR() {
            #expect(
                Ignite.SurfaceTransformFlagsKHR.horizontalMirrorRotate180_KHR.rawValue
                    == CVulkan.VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR.rawValue
            )
        }

        @Test("Validate horizontalMirrorRotate270_KHR")
        public func validate_horizontalMirrorRotate270_KHR() {
            #expect(
                Ignite.SurfaceTransformFlagsKHR.horizontalMirrorRotate270_KHR.rawValue
                    == CVulkan.VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR.rawValue
            )
        }

        @Test("Validate inherit_KHR")
        public func validate_inherit_KHR() {
            #expect(
                Ignite.SurfaceTransformFlagsKHR.inherit_KHR.rawValue == CVulkan.VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the SwapchainCreateFlagsKHR bitmask.
    @Suite("SwapchainCreateFlagsKHR")
    public struct SwapchainCreateFlagsKHRTests {
        @Test("Validate splitInstanceBindRegions_KHR")
        public func validate_splitInstanceBindRegions_KHR() {
            #expect(
                Ignite.SwapchainCreateFlagsKHR.splitInstanceBindRegions_KHR.rawValue
                    == CVulkan.VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR.rawValue
            )
        }

        @Test("Validate protected_KHR")
        public func validate_protected_KHR() {
            #expect(
                Ignite.SwapchainCreateFlagsKHR.protected_KHR.rawValue
                    == CVulkan.VK_SWAPCHAIN_CREATE_PROTECTED_BIT_KHR.rawValue
            )
        }

        @Test("Validate mutableFormat_KHR")
        public func validate_mutableFormat_KHR() {
            #expect(
                Ignite.SwapchainCreateFlagsKHR.mutableFormat_KHR.rawValue
                    == CVulkan.VK_SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR.rawValue
            )
        }

        @Test("Validate deferredMemoryAllocation_EXT")
        public func validate_deferredMemoryAllocation_EXT() {
            #expect(
                Ignite.SwapchainCreateFlagsKHR.deferredMemoryAllocation_EXT.rawValue
                    == CVulkan.VK_SWAPCHAIN_CREATE_DEFERRED_MEMORY_ALLOCATION_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the TileShadingRenderPassFlagsQCOM bitmask.
    @Suite("TileShadingRenderPassFlagsQCOM")
    public struct TileShadingRenderPassFlagsQCOMTests {
        @Test("Validate enable_QCOM")
        public func validate_enable_QCOM() {
            #expect(
                Ignite.TileShadingRenderPassFlagsQCOM.enable_QCOM.rawValue
                    == CVulkan.VK_TILE_SHADING_RENDER_PASS_ENABLE_BIT_QCOM.rawValue
            )
        }

        @Test("Validate perTileExecution_QCOM")
        public func validate_perTileExecution_QCOM() {
            #expect(
                Ignite.TileShadingRenderPassFlagsQCOM.perTileExecution_QCOM.rawValue
                    == CVulkan.VK_TILE_SHADING_RENDER_PASS_PER_TILE_EXECUTION_BIT_QCOM.rawValue
            )
        }
    }


    /// Tests for the ToolPurposeFlags bitmask.
    @Suite("ToolPurposeFlags")
    public struct ToolPurposeFlagsTests {
        @Test("Validate validation")
        public func validate_validation() {
            #expect(
                Ignite.ToolPurposeFlags.validation.rawValue == CVulkan.VK_TOOL_PURPOSE_VALIDATION_BIT.rawValue
            )
        }

        @Test("Validate profiling")
        public func validate_profiling() {
            #expect(
                Ignite.ToolPurposeFlags.profiling.rawValue == CVulkan.VK_TOOL_PURPOSE_PROFILING_BIT.rawValue
            )
        }

        @Test("Validate tracing")
        public func validate_tracing() {
            #expect(
                Ignite.ToolPurposeFlags.tracing.rawValue == CVulkan.VK_TOOL_PURPOSE_TRACING_BIT.rawValue
            )
        }

        @Test("Validate additionalFeatures")
        public func validate_additionalFeatures() {
            #expect(
                Ignite.ToolPurposeFlags.additionalFeatures.rawValue
                    == CVulkan.VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT.rawValue
            )
        }

        @Test("Validate modifyingFeatures")
        public func validate_modifyingFeatures() {
            #expect(
                Ignite.ToolPurposeFlags.modifyingFeatures.rawValue == CVulkan.VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT.rawValue
            )
        }

        @Test("Validate debugReporting_EXT")
        public func validate_debugReporting_EXT() {
            #expect(
                Ignite.ToolPurposeFlags.debugReporting_EXT.rawValue
                    == CVulkan.VK_TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT.rawValue
            )
        }

        @Test("Validate debugMarkers_EXT")
        public func validate_debugMarkers_EXT() {
            #expect(
                Ignite.ToolPurposeFlags.debugMarkers_EXT.rawValue == CVulkan.VK_TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT.rawValue
            )
        }

        @Test("Validate validation_EXT")
        public func validate_validation_EXT() {
            #expect(
                Ignite.ToolPurposeFlags.validation_EXT.rawValue == CVulkan.VK_TOOL_PURPOSE_VALIDATION_BIT_EXT.rawValue
            )
        }

        @Test("Validate profiling_EXT")
        public func validate_profiling_EXT() {
            #expect(
                Ignite.ToolPurposeFlags.profiling_EXT.rawValue == CVulkan.VK_TOOL_PURPOSE_PROFILING_BIT_EXT.rawValue
            )
        }

        @Test("Validate tracing_EXT")
        public func validate_tracing_EXT() {
            #expect(
                Ignite.ToolPurposeFlags.tracing_EXT.rawValue == CVulkan.VK_TOOL_PURPOSE_TRACING_BIT_EXT.rawValue
            )
        }

        @Test("Validate additionalFeatures_EXT")
        public func validate_additionalFeatures_EXT() {
            #expect(
                Ignite.ToolPurposeFlags.additionalFeatures_EXT.rawValue
                    == CVulkan.VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT.rawValue
            )
        }

        @Test("Validate modifyingFeatures_EXT")
        public func validate_modifyingFeatures_EXT() {
            #expect(
                Ignite.ToolPurposeFlags.modifyingFeatures_EXT.rawValue
                    == CVulkan.VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT.rawValue
            )
        }
    }


    /// Tests for the VideoCapabilityFlagsKHR bitmask.
    @Suite("VideoCapabilityFlagsKHR")
    public struct VideoCapabilityFlagsKHRTests {
        @Test("Validate protectedContent_KHR")
        public func validate_protectedContent_KHR() {
            #expect(
                Ignite.VideoCapabilityFlagsKHR.protectedContent_KHR.rawValue
                    == CVulkan.VK_VIDEO_CAPABILITY_PROTECTED_CONTENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate separateReferenceImages_KHR")
        public func validate_separateReferenceImages_KHR() {
            #expect(
                Ignite.VideoCapabilityFlagsKHR.separateReferenceImages_KHR.rawValue
                    == CVulkan.VK_VIDEO_CAPABILITY_SEPARATE_REFERENCE_IMAGES_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoChromaSubsamplingFlagsKHR bitmask.
    @Suite("VideoChromaSubsamplingFlagsKHR")
    public struct VideoChromaSubsamplingFlagsKHRTests {
        @Test("Validate invalid_KHR")
        public func validate_invalid_KHR() {
            #expect(
                Ignite.VideoChromaSubsamplingFlagsKHR.invalid_KHR.rawValue
                    == CVulkan.VK_VIDEO_CHROMA_SUBSAMPLING_INVALID_KHR.rawValue
            )
        }

        @Test("Validate monochromeBit_KHR")
        public func validate_monochromeBit_KHR() {
            #expect(
                Ignite.VideoChromaSubsamplingFlagsKHR.monochromeBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_CHROMA_SUBSAMPLING_MONOCHROME_BIT_KHR.rawValue
            )
        }

        @Test("Validate 420Bit_KHR")
        public func validate_420Bit_KHR() {
            #expect(
                Ignite.VideoChromaSubsamplingFlagsKHR.`420Bit_KHR`.rawValue
                    == CVulkan.VK_VIDEO_CHROMA_SUBSAMPLING_420_BIT_KHR.rawValue
            )
        }

        @Test("Validate 422Bit_KHR")
        public func validate_422Bit_KHR() {
            #expect(
                Ignite.VideoChromaSubsamplingFlagsKHR.`422Bit_KHR`.rawValue
                    == CVulkan.VK_VIDEO_CHROMA_SUBSAMPLING_422_BIT_KHR.rawValue
            )
        }

        @Test("Validate 444Bit_KHR")
        public func validate_444Bit_KHR() {
            #expect(
                Ignite.VideoChromaSubsamplingFlagsKHR.`444Bit_KHR`.rawValue
                    == CVulkan.VK_VIDEO_CHROMA_SUBSAMPLING_444_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoCodecOperationFlagsKHR bitmask.
    @Suite("VideoCodecOperationFlagsKHR")
    public struct VideoCodecOperationFlagsKHRTests {
        @Test("Validate none_KHR")
        public func validate_none_KHR() {
            #expect(
                Ignite.VideoCodecOperationFlagsKHR.none_KHR.rawValue == CVulkan.VK_VIDEO_CODEC_OPERATION_NONE_KHR.rawValue
            )
        }

        @Test("Validate encodeH264Bit_KHR")
        public func validate_encodeH264Bit_KHR() {
            #expect(
                Ignite.VideoCodecOperationFlagsKHR.encodeH264Bit_KHR.rawValue
                    == CVulkan.VK_VIDEO_CODEC_OPERATION_ENCODE_H264_BIT_KHR.rawValue
            )
        }

        @Test("Validate encodeH265Bit_KHR")
        public func validate_encodeH265Bit_KHR() {
            #expect(
                Ignite.VideoCodecOperationFlagsKHR.encodeH265Bit_KHR.rawValue
                    == CVulkan.VK_VIDEO_CODEC_OPERATION_ENCODE_H265_BIT_KHR.rawValue
            )
        }

        @Test("Validate decodeH264Bit_KHR")
        public func validate_decodeH264Bit_KHR() {
            #expect(
                Ignite.VideoCodecOperationFlagsKHR.decodeH264Bit_KHR.rawValue
                    == CVulkan.VK_VIDEO_CODEC_OPERATION_DECODE_H264_BIT_KHR.rawValue
            )
        }

        @Test("Validate decodeH265Bit_KHR")
        public func validate_decodeH265Bit_KHR() {
            #expect(
                Ignite.VideoCodecOperationFlagsKHR.decodeH265Bit_KHR.rawValue
                    == CVulkan.VK_VIDEO_CODEC_OPERATION_DECODE_H265_BIT_KHR.rawValue
            )
        }

        @Test("Validate decodeAv1Bit_KHR")
        public func validate_decodeAv1Bit_KHR() {
            #expect(
                Ignite.VideoCodecOperationFlagsKHR.decodeAv1Bit_KHR.rawValue
                    == CVulkan.VK_VIDEO_CODEC_OPERATION_DECODE_AV1_BIT_KHR.rawValue
            )
        }

        @Test("Validate encodeAv1Bit_KHR")
        public func validate_encodeAv1Bit_KHR() {
            #expect(
                Ignite.VideoCodecOperationFlagsKHR.encodeAv1Bit_KHR.rawValue
                    == CVulkan.VK_VIDEO_CODEC_OPERATION_ENCODE_AV1_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoCodingControlFlagsKHR bitmask.
    @Suite("VideoCodingControlFlagsKHR")
    public struct VideoCodingControlFlagsKHRTests {
        @Test("Validate reset_KHR")
        public func validate_reset_KHR() {
            #expect(
                Ignite.VideoCodingControlFlagsKHR.reset_KHR.rawValue
                    == CVulkan.VK_VIDEO_CODING_CONTROL_RESET_BIT_KHR.rawValue
            )
        }

        @Test("Validate encodeRateControl_KHR")
        public func validate_encodeRateControl_KHR() {
            #expect(
                Ignite.VideoCodingControlFlagsKHR.encodeRateControl_KHR.rawValue
                    == CVulkan.VK_VIDEO_CODING_CONTROL_ENCODE_RATE_CONTROL_BIT_KHR.rawValue
            )
        }

        @Test("Validate encodeQualityLevel_KHR")
        public func validate_encodeQualityLevel_KHR() {
            #expect(
                Ignite.VideoCodingControlFlagsKHR.encodeQualityLevel_KHR.rawValue
                    == CVulkan.VK_VIDEO_CODING_CONTROL_ENCODE_QUALITY_LEVEL_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoComponentBitDepthFlagsKHR bitmask.
    @Suite("VideoComponentBitDepthFlagsKHR")
    public struct VideoComponentBitDepthFlagsKHRTests {
        @Test("Validate invalid_KHR")
        public func validate_invalid_KHR() {
            #expect(
                Ignite.VideoComponentBitDepthFlagsKHR.invalid_KHR.rawValue
                    == CVulkan.VK_VIDEO_COMPONENT_BIT_DEPTH_INVALID_KHR.rawValue
            )
        }

        @Test("Validate 8_KHR")
        public func validate_8_KHR() {
            #expect(
                Ignite.VideoComponentBitDepthFlagsKHR.`8_KHR`.rawValue
                    == CVulkan.VK_VIDEO_COMPONENT_BIT_DEPTH_8_BIT_KHR.rawValue
            )
        }

        @Test("Validate 10_KHR")
        public func validate_10_KHR() {
            #expect(
                Ignite.VideoComponentBitDepthFlagsKHR.`10_KHR`.rawValue
                    == CVulkan.VK_VIDEO_COMPONENT_BIT_DEPTH_10_BIT_KHR.rawValue
            )
        }

        @Test("Validate 12_KHR")
        public func validate_12_KHR() {
            #expect(
                Ignite.VideoComponentBitDepthFlagsKHR.`12_KHR`.rawValue
                    == CVulkan.VK_VIDEO_COMPONENT_BIT_DEPTH_12_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoDecodeCapabilityFlagsKHR bitmask.
    @Suite("VideoDecodeCapabilityFlagsKHR")
    public struct VideoDecodeCapabilityFlagsKHRTests {
        @Test("Validate dpbAndOutputCoincide_KHR")
        public func validate_dpbAndOutputCoincide_KHR() {
            #expect(
                Ignite.VideoDecodeCapabilityFlagsKHR.dpbAndOutputCoincide_KHR.rawValue
                    == CVulkan.VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_COINCIDE_BIT_KHR.rawValue
            )
        }

        @Test("Validate dpbAndOutputDistinct_KHR")
        public func validate_dpbAndOutputDistinct_KHR() {
            #expect(
                Ignite.VideoDecodeCapabilityFlagsKHR.dpbAndOutputDistinct_KHR.rawValue
                    == CVulkan.VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_DISTINCT_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoDecodeH264PictureLayoutFlagsKHR bitmask.
    @Suite("VideoDecodeH264PictureLayoutFlagsKHR")
    public struct VideoDecodeH264PictureLayoutFlagsKHRTests {
        @Test("Validate progressive_KHR")
        public func validate_progressive_KHR() {
            #expect(
                Ignite.VideoDecodeH264PictureLayoutFlagsKHR.progressive_KHR.rawValue
                    == CVulkan.VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_PROGRESSIVE_KHR.rawValue
            )
        }

        @Test("Validate interlacedInterleavedLinesBit_KHR")
        public func validate_interlacedInterleavedLinesBit_KHR() {
            #expect(
                Ignite.VideoDecodeH264PictureLayoutFlagsKHR.interlacedInterleavedLinesBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_INTERLEAVED_LINES_BIT_KHR.rawValue
            )
        }

        @Test("Validate interlacedSeparatePlanesBit_KHR")
        public func validate_interlacedSeparatePlanesBit_KHR() {
            #expect(
                Ignite.VideoDecodeH264PictureLayoutFlagsKHR.interlacedSeparatePlanesBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_SEPARATE_PLANES_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoDecodeUsageFlagsKHR bitmask.
    @Suite("VideoDecodeUsageFlagsKHR")
    public struct VideoDecodeUsageFlagsKHRTests {
        @Test("Validate default_KHR")
        public func validate_default_KHR() {
            #expect(
                Ignite.VideoDecodeUsageFlagsKHR.default_KHR.rawValue == CVulkan.VK_VIDEO_DECODE_USAGE_DEFAULT_KHR.rawValue
            )
        }

        @Test("Validate transcodingBit_KHR")
        public func validate_transcodingBit_KHR() {
            #expect(
                Ignite.VideoDecodeUsageFlagsKHR.transcodingBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_DECODE_USAGE_TRANSCODING_BIT_KHR.rawValue
            )
        }

        @Test("Validate offlineBit_KHR")
        public func validate_offlineBit_KHR() {
            #expect(
                Ignite.VideoDecodeUsageFlagsKHR.offlineBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_DECODE_USAGE_OFFLINE_BIT_KHR.rawValue
            )
        }

        @Test("Validate streamingBit_KHR")
        public func validate_streamingBit_KHR() {
            #expect(
                Ignite.VideoDecodeUsageFlagsKHR.streamingBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_DECODE_USAGE_STREAMING_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeAV1CapabilityFlagsKHR bitmask.
    @Suite("VideoEncodeAV1CapabilityFlagsKHR")
    public struct VideoEncodeAV1CapabilityFlagsKHRTests {
        @Test("Validate v1CapabilityPerRateControlGroupMinMaxQIndex_KHR")
        public func validate_v1CapabilityPerRateControlGroupMinMaxQIndex_KHR() {
            #expect(
                Ignite.VideoEncodeAV1CapabilityFlagsKHR.v1CapabilityPerRateControlGroupMinMaxQIndex_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_CAPABILITY_PER_RATE_CONTROL_GROUP_MIN_MAX_Q_INDEX_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1CapabilityGenerateObuExtensionHeader_KHR")
        public func validate_v1CapabilityGenerateObuExtensionHeader_KHR() {
            #expect(
                Ignite.VideoEncodeAV1CapabilityFlagsKHR.v1CapabilityGenerateObuExtensionHeader_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_CAPABILITY_GENERATE_OBU_EXTENSION_HEADER_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1CapabilityPrimaryReferenceCdfOnly_KHR")
        public func validate_v1CapabilityPrimaryReferenceCdfOnly_KHR() {
            #expect(
                Ignite.VideoEncodeAV1CapabilityFlagsKHR.v1CapabilityPrimaryReferenceCdfOnly_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_CAPABILITY_PRIMARY_REFERENCE_CDF_ONLY_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1CapabilityFrameSizeOverride_KHR")
        public func validate_v1CapabilityFrameSizeOverride_KHR() {
            #expect(
                Ignite.VideoEncodeAV1CapabilityFlagsKHR.v1CapabilityFrameSizeOverride_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_CAPABILITY_FRAME_SIZE_OVERRIDE_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1CapabilityMotionVectorScaling_KHR")
        public func validate_v1CapabilityMotionVectorScaling_KHR() {
            #expect(
                Ignite.VideoEncodeAV1CapabilityFlagsKHR.v1CapabilityMotionVectorScaling_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_CAPABILITY_MOTION_VECTOR_SCALING_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeAV1RateControlFlagsKHR bitmask.
    @Suite("VideoEncodeAV1RateControlFlagsKHR")
    public struct VideoEncodeAV1RateControlFlagsKHRTests {
        @Test("Validate v1RateControlRegularGop_KHR")
        public func validate_v1RateControlRegularGop_KHR() {
            #expect(
                Ignite.VideoEncodeAV1RateControlFlagsKHR.v1RateControlRegularGop_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_RATE_CONTROL_REGULAR_GOP_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1RateControlTemporalLayerPatternDyadic_KHR")
        public func validate_v1RateControlTemporalLayerPatternDyadic_KHR() {
            #expect(
                Ignite.VideoEncodeAV1RateControlFlagsKHR.v1RateControlTemporalLayerPatternDyadic_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_RATE_CONTROL_TEMPORAL_LAYER_PATTERN_DYADIC_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1RateControlReferencePatternFlat_KHR")
        public func validate_v1RateControlReferencePatternFlat_KHR() {
            #expect(
                Ignite.VideoEncodeAV1RateControlFlagsKHR.v1RateControlReferencePatternFlat_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_RATE_CONTROL_REFERENCE_PATTERN_FLAT_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1RateControlReferencePatternDyadic_KHR")
        public func validate_v1RateControlReferencePatternDyadic_KHR() {
            #expect(
                Ignite.VideoEncodeAV1RateControlFlagsKHR.v1RateControlReferencePatternDyadic_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_RATE_CONTROL_REFERENCE_PATTERN_DYADIC_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeAV1StdFlagsKHR bitmask.
    @Suite("VideoEncodeAV1StdFlagsKHR")
    public struct VideoEncodeAV1StdFlagsKHRTests {
        @Test("Validate v1StdUniformTileSpacingFlagSet_KHR")
        public func validate_v1StdUniformTileSpacingFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeAV1StdFlagsKHR.v1StdUniformTileSpacingFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_STD_UNIFORM_TILE_SPACING_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1StdSkipModePresentUnset_KHR")
        public func validate_v1StdSkipModePresentUnset_KHR() {
            #expect(
                Ignite.VideoEncodeAV1StdFlagsKHR.v1StdSkipModePresentUnset_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_STD_SKIP_MODE_PRESENT_UNSET_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1StdPrimaryRefFrame_KHR")
        public func validate_v1StdPrimaryRefFrame_KHR() {
            #expect(
                Ignite.VideoEncodeAV1StdFlagsKHR.v1StdPrimaryRefFrame_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_STD_PRIMARY_REF_FRAME_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1StdDeltaQ_KHR")
        public func validate_v1StdDeltaQ_KHR() {
            #expect(
                Ignite.VideoEncodeAV1StdFlagsKHR.v1StdDeltaQ_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_STD_DELTA_Q_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeAV1SuperblockSizeFlagsKHR bitmask.
    @Suite("VideoEncodeAV1SuperblockSizeFlagsKHR")
    public struct VideoEncodeAV1SuperblockSizeFlagsKHRTests {
        @Test("Validate v1SuperblockSize64_KHR")
        public func validate_v1SuperblockSize64_KHR() {
            #expect(
                Ignite.VideoEncodeAV1SuperblockSizeFlagsKHR.v1SuperblockSize64_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_SUPERBLOCK_SIZE_64_BIT_KHR.rawValue
            )
        }

        @Test("Validate v1SuperblockSize128_KHR")
        public func validate_v1SuperblockSize128_KHR() {
            #expect(
                Ignite.VideoEncodeAV1SuperblockSizeFlagsKHR.v1SuperblockSize128_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_AV1_SUPERBLOCK_SIZE_128_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeCapabilityFlagsKHR bitmask.
    @Suite("VideoEncodeCapabilityFlagsKHR")
    public struct VideoEncodeCapabilityFlagsKHRTests {
        @Test("Validate precedingExternallyEncodedBytes_KHR")
        public func validate_precedingExternallyEncodedBytes_KHR() {
            #expect(
                Ignite.VideoEncodeCapabilityFlagsKHR.precedingExternallyEncodedBytes_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_CAPABILITY_PRECEDING_EXTERNALLY_ENCODED_BYTES_BIT_KHR.rawValue
            )
        }

        @Test("Validate insufficientBitstreamBufferRangeDetection_KHR")
        public func validate_insufficientBitstreamBufferRangeDetection_KHR() {
            #expect(
                Ignite.VideoEncodeCapabilityFlagsKHR.insufficientBitstreamBufferRangeDetection_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_CAPABILITY_INSUFFICIENT_BITSTREAM_BUFFER_RANGE_DETECTION_BIT_KHR.rawValue
            )
        }

        @Test("Validate quantizationDeltaMap_KHR")
        public func validate_quantizationDeltaMap_KHR() {
            #expect(
                Ignite.VideoEncodeCapabilityFlagsKHR.quantizationDeltaMap_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_CAPABILITY_QUANTIZATION_DELTA_MAP_BIT_KHR.rawValue
            )
        }

        @Test("Validate emphasisMap_KHR")
        public func validate_emphasisMap_KHR() {
            #expect(
                Ignite.VideoEncodeCapabilityFlagsKHR.emphasisMap_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_CAPABILITY_EMPHASIS_MAP_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeContentFlagsKHR bitmask.
    @Suite("VideoEncodeContentFlagsKHR")
    public struct VideoEncodeContentFlagsKHRTests {
        @Test("Validate default_KHR")
        public func validate_default_KHR() {
            #expect(
                Ignite.VideoEncodeContentFlagsKHR.default_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_CONTENT_DEFAULT_KHR.rawValue
            )
        }

        @Test("Validate cameraBit_KHR")
        public func validate_cameraBit_KHR() {
            #expect(
                Ignite.VideoEncodeContentFlagsKHR.cameraBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_CONTENT_CAMERA_BIT_KHR.rawValue
            )
        }

        @Test("Validate desktopBit_KHR")
        public func validate_desktopBit_KHR() {
            #expect(
                Ignite.VideoEncodeContentFlagsKHR.desktopBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_CONTENT_DESKTOP_BIT_KHR.rawValue
            )
        }

        @Test("Validate renderedBit_KHR")
        public func validate_renderedBit_KHR() {
            #expect(
                Ignite.VideoEncodeContentFlagsKHR.renderedBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_CONTENT_RENDERED_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeFeedbackFlagsKHR bitmask.
    @Suite("VideoEncodeFeedbackFlagsKHR")
    public struct VideoEncodeFeedbackFlagsKHRTests {
        @Test("Validate bitstreamBufferOffset_KHR")
        public func validate_bitstreamBufferOffset_KHR() {
            #expect(
                Ignite.VideoEncodeFeedbackFlagsKHR.bitstreamBufferOffset_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_FEEDBACK_BITSTREAM_BUFFER_OFFSET_BIT_KHR.rawValue
            )
        }

        @Test("Validate bitstreamBytesWritten_KHR")
        public func validate_bitstreamBytesWritten_KHR() {
            #expect(
                Ignite.VideoEncodeFeedbackFlagsKHR.bitstreamBytesWritten_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_FEEDBACK_BITSTREAM_BYTES_WRITTEN_BIT_KHR.rawValue
            )
        }

        @Test("Validate bitstreamHasOverrides_KHR")
        public func validate_bitstreamHasOverrides_KHR() {
            #expect(
                Ignite.VideoEncodeFeedbackFlagsKHR.bitstreamHasOverrides_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_FEEDBACK_BITSTREAM_HAS_OVERRIDES_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeFlagsKHR bitmask.
    @Suite("VideoEncodeFlagsKHR")
    public struct VideoEncodeFlagsKHRTests {
        @Test("Validate withQuantizationDeltaMap_KHR")
        public func validate_withQuantizationDeltaMap_KHR() {
            #expect(
                Ignite.VideoEncodeFlagsKHR.withQuantizationDeltaMap_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_WITH_QUANTIZATION_DELTA_MAP_BIT_KHR.rawValue
            )
        }

        @Test("Validate withEmphasisMap_KHR")
        public func validate_withEmphasisMap_KHR() {
            #expect(
                Ignite.VideoEncodeFlagsKHR.withEmphasisMap_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_WITH_EMPHASIS_MAP_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeH264CapabilityFlagsKHR bitmask.
    @Suite("VideoEncodeH264CapabilityFlagsKHR")
    public struct VideoEncodeH264CapabilityFlagsKHRTests {
        @Test("Validate hrdCompliance_KHR")
        public func validate_hrdCompliance_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.hrdCompliance_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_HRD_COMPLIANCE_BIT_KHR.rawValue
            )
        }

        @Test("Validate predictionWeightTableGenerated_KHR")
        public func validate_predictionWeightTableGenerated_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.predictionWeightTableGenerated_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_PREDICTION_WEIGHT_TABLE_GENERATED_BIT_KHR.rawValue
            )
        }

        @Test("Validate rowUnalignedSlice_KHR")
        public func validate_rowUnalignedSlice_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.rowUnalignedSlice_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_ROW_UNALIGNED_SLICE_BIT_KHR.rawValue
            )
        }

        @Test("Validate differentSliceType_KHR")
        public func validate_differentSliceType_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.differentSliceType_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_DIFFERENT_SLICE_TYPE_BIT_KHR.rawValue
            )
        }

        @Test("Validate bFrameInL0List_KHR")
        public func validate_bFrameInL0List_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.bFrameInL0List_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_B_FRAME_IN_L0_LIST_BIT_KHR.rawValue
            )
        }

        @Test("Validate bFrameInL1List_KHR")
        public func validate_bFrameInL1List_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.bFrameInL1List_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_KHR.rawValue
            )
        }

        @Test("Validate perPictureTypeMinMaxQp_KHR")
        public func validate_perPictureTypeMinMaxQp_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.perPictureTypeMinMaxQp_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_PER_PICTURE_TYPE_MIN_MAX_QP_BIT_KHR.rawValue
            )
        }

        @Test("Validate perSliceConstantQp_KHR")
        public func validate_perSliceConstantQp_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.perSliceConstantQp_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_PER_SLICE_CONSTANT_QP_BIT_KHR.rawValue
            )
        }

        @Test("Validate generatePrefixNalu_KHR")
        public func validate_generatePrefixNalu_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.generatePrefixNalu_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_GENERATE_PREFIX_NALU_BIT_KHR.rawValue
            )
        }

        @Test("Validate mbQpDiffWraparound_KHR")
        public func validate_mbQpDiffWraparound_KHR() {
            #expect(
                Ignite.VideoEncodeH264CapabilityFlagsKHR.mbQpDiffWraparound_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_CAPABILITY_MB_QP_DIFF_WRAPAROUND_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeH264RateControlFlagsKHR bitmask.
    @Suite("VideoEncodeH264RateControlFlagsKHR")
    public struct VideoEncodeH264RateControlFlagsKHRTests {
        @Test("Validate attemptHrdCompliance_KHR")
        public func validate_attemptHrdCompliance_KHR() {
            #expect(
                Ignite.VideoEncodeH264RateControlFlagsKHR.attemptHrdCompliance_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_RATE_CONTROL_ATTEMPT_HRD_COMPLIANCE_BIT_KHR.rawValue
            )
        }

        @Test("Validate regularGop_KHR")
        public func validate_regularGop_KHR() {
            #expect(
                Ignite.VideoEncodeH264RateControlFlagsKHR.regularGop_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_RATE_CONTROL_REGULAR_GOP_BIT_KHR.rawValue
            )
        }

        @Test("Validate referencePatternFlat_KHR")
        public func validate_referencePatternFlat_KHR() {
            #expect(
                Ignite.VideoEncodeH264RateControlFlagsKHR.referencePatternFlat_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_RATE_CONTROL_REFERENCE_PATTERN_FLAT_BIT_KHR.rawValue
            )
        }

        @Test("Validate referencePatternDyadic_KHR")
        public func validate_referencePatternDyadic_KHR() {
            #expect(
                Ignite.VideoEncodeH264RateControlFlagsKHR.referencePatternDyadic_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_RATE_CONTROL_REFERENCE_PATTERN_DYADIC_BIT_KHR.rawValue
            )
        }

        @Test("Validate temporalLayerPatternDyadic_KHR")
        public func validate_temporalLayerPatternDyadic_KHR() {
            #expect(
                Ignite.VideoEncodeH264RateControlFlagsKHR.temporalLayerPatternDyadic_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_RATE_CONTROL_TEMPORAL_LAYER_PATTERN_DYADIC_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeH264StdFlagsKHR bitmask.
    @Suite("VideoEncodeH264StdFlagsKHR")
    public struct VideoEncodeH264StdFlagsKHRTests {
        @Test("Validate separateColorPlaneFlagSet_KHR")
        public func validate_separateColorPlaneFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.separateColorPlaneFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_SEPARATE_COLOR_PLANE_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate qpprimeYZeroTransformBypassFlagSet_KHR")
        public func validate_qpprimeYZeroTransformBypassFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.qpprimeYZeroTransformBypassFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate scalingMatrixPresentFlagSet_KHR")
        public func validate_scalingMatrixPresentFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.scalingMatrixPresentFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_SCALING_MATRIX_PRESENT_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate chromaQpIndexOffset_KHR")
        public func validate_chromaQpIndexOffset_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.chromaQpIndexOffset_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_CHROMA_QP_INDEX_OFFSET_BIT_KHR.rawValue
            )
        }

        @Test("Validate secondChromaQpIndexOffset_KHR")
        public func validate_secondChromaQpIndexOffset_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.secondChromaQpIndexOffset_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_SECOND_CHROMA_QP_INDEX_OFFSET_BIT_KHR.rawValue
            )
        }

        @Test("Validate picInitQpMinus26_KHR")
        public func validate_picInitQpMinus26_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.picInitQpMinus26_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_PIC_INIT_QP_MINUS26_BIT_KHR.rawValue
            )
        }

        @Test("Validate weightedPredFlagSet_KHR")
        public func validate_weightedPredFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.weightedPredFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_WEIGHTED_PRED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate weightedBipredIdcExplicit_KHR")
        public func validate_weightedBipredIdcExplicit_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.weightedBipredIdcExplicit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_WEIGHTED_BIPRED_IDC_EXPLICIT_BIT_KHR.rawValue
            )
        }

        @Test("Validate weightedBipredIdcImplicit_KHR")
        public func validate_weightedBipredIdcImplicit_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.weightedBipredIdcImplicit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_WEIGHTED_BIPRED_IDC_IMPLICIT_BIT_KHR.rawValue
            )
        }

        @Test("Validate transform8x8ModeFlagSet_KHR")
        public func validate_transform8x8ModeFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.transform8x8ModeFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_TRANSFORM_8X8_MODE_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate directSpatialMvPredFlagUnset_KHR")
        public func validate_directSpatialMvPredFlagUnset_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.directSpatialMvPredFlagUnset_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_DIRECT_SPATIAL_MV_PRED_FLAG_UNSET_BIT_KHR.rawValue
            )
        }

        @Test("Validate entropyCodingModeFlagUnset_KHR")
        public func validate_entropyCodingModeFlagUnset_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.entropyCodingModeFlagUnset_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_ENTROPY_CODING_MODE_FLAG_UNSET_BIT_KHR.rawValue
            )
        }

        @Test("Validate entropyCodingModeFlagSet_KHR")
        public func validate_entropyCodingModeFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.entropyCodingModeFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_ENTROPY_CODING_MODE_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate direct8x8InferenceFlagUnset_KHR")
        public func validate_direct8x8InferenceFlagUnset_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.direct8x8InferenceFlagUnset_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_DIRECT_8X8_INFERENCE_FLAG_UNSET_BIT_KHR.rawValue
            )
        }

        @Test("Validate constrainedIntraPredFlagSet_KHR")
        public func validate_constrainedIntraPredFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.constrainedIntraPredFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_CONSTRAINED_INTRA_PRED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate deblockingFilterDisabled_KHR")
        public func validate_deblockingFilterDisabled_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.deblockingFilterDisabled_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_DEBLOCKING_FILTER_DISABLED_BIT_KHR.rawValue
            )
        }

        @Test("Validate deblockingFilterEnabled_KHR")
        public func validate_deblockingFilterEnabled_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.deblockingFilterEnabled_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_DEBLOCKING_FILTER_ENABLED_BIT_KHR.rawValue
            )
        }

        @Test("Validate deblockingFilterPartial_KHR")
        public func validate_deblockingFilterPartial_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.deblockingFilterPartial_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_DEBLOCKING_FILTER_PARTIAL_BIT_KHR.rawValue
            )
        }

        @Test("Validate sliceQpDelta_KHR")
        public func validate_sliceQpDelta_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.sliceQpDelta_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_SLICE_QP_DELTA_BIT_KHR.rawValue
            )
        }

        @Test("Validate differentSliceQpDelta_KHR")
        public func validate_differentSliceQpDelta_KHR() {
            #expect(
                Ignite.VideoEncodeH264StdFlagsKHR.differentSliceQpDelta_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H264_STD_DIFFERENT_SLICE_QP_DELTA_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeH265CapabilityFlagsKHR bitmask.
    @Suite("VideoEncodeH265CapabilityFlagsKHR")
    public struct VideoEncodeH265CapabilityFlagsKHRTests {
        @Test("Validate hrdCompliance_KHR")
        public func validate_hrdCompliance_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.hrdCompliance_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_HRD_COMPLIANCE_BIT_KHR.rawValue
            )
        }

        @Test("Validate predictionWeightTableGenerated_KHR")
        public func validate_predictionWeightTableGenerated_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.predictionWeightTableGenerated_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_PREDICTION_WEIGHT_TABLE_GENERATED_BIT_KHR.rawValue
            )
        }

        @Test("Validate rowUnalignedSliceSegment_KHR")
        public func validate_rowUnalignedSliceSegment_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.rowUnalignedSliceSegment_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_ROW_UNALIGNED_SLICE_SEGMENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate differentSliceSegmentType_KHR")
        public func validate_differentSliceSegmentType_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.differentSliceSegmentType_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_DIFFERENT_SLICE_SEGMENT_TYPE_BIT_KHR.rawValue
            )
        }

        @Test("Validate bFrameInL0List_KHR")
        public func validate_bFrameInL0List_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.bFrameInL0List_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_B_FRAME_IN_L0_LIST_BIT_KHR.rawValue
            )
        }

        @Test("Validate bFrameInL1List_KHR")
        public func validate_bFrameInL1List_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.bFrameInL1List_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_KHR.rawValue
            )
        }

        @Test("Validate perPictureTypeMinMaxQp_KHR")
        public func validate_perPictureTypeMinMaxQp_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.perPictureTypeMinMaxQp_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_PER_PICTURE_TYPE_MIN_MAX_QP_BIT_KHR.rawValue
            )
        }

        @Test("Validate perSliceSegmentConstantQp_KHR")
        public func validate_perSliceSegmentConstantQp_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.perSliceSegmentConstantQp_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_PER_SLICE_SEGMENT_CONSTANT_QP_BIT_KHR.rawValue
            )
        }

        @Test("Validate multipleTilesPerSliceSegment_KHR")
        public func validate_multipleTilesPerSliceSegment_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.multipleTilesPerSliceSegment_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_TILES_PER_SLICE_SEGMENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate multipleSliceSegmentsPerTile_KHR")
        public func validate_multipleSliceSegmentsPerTile_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.multipleSliceSegmentsPerTile_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_SLICE_SEGMENTS_PER_TILE_BIT_KHR.rawValue
            )
        }

        @Test("Validate cuQpDiffWraparound_KHR")
        public func validate_cuQpDiffWraparound_KHR() {
            #expect(
                Ignite.VideoEncodeH265CapabilityFlagsKHR.cuQpDiffWraparound_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CAPABILITY_CU_QP_DIFF_WRAPAROUND_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeH265CtbSizeFlagsKHR bitmask.
    @Suite("VideoEncodeH265CtbSizeFlagsKHR")
    public struct VideoEncodeH265CtbSizeFlagsKHRTests {
        @Test("Validate 16_KHR")
        public func validate_16_KHR() {
            #expect(
                Ignite.VideoEncodeH265CtbSizeFlagsKHR.`16_KHR`.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CTB_SIZE_16_BIT_KHR.rawValue
            )
        }

        @Test("Validate 32_KHR")
        public func validate_32_KHR() {
            #expect(
                Ignite.VideoEncodeH265CtbSizeFlagsKHR.`32_KHR`.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CTB_SIZE_32_BIT_KHR.rawValue
            )
        }

        @Test("Validate 64_KHR")
        public func validate_64_KHR() {
            #expect(
                Ignite.VideoEncodeH265CtbSizeFlagsKHR.`64_KHR`.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_CTB_SIZE_64_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeH265RateControlFlagsKHR bitmask.
    @Suite("VideoEncodeH265RateControlFlagsKHR")
    public struct VideoEncodeH265RateControlFlagsKHRTests {
        @Test("Validate attemptHrdCompliance_KHR")
        public func validate_attemptHrdCompliance_KHR() {
            #expect(
                Ignite.VideoEncodeH265RateControlFlagsKHR.attemptHrdCompliance_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_RATE_CONTROL_ATTEMPT_HRD_COMPLIANCE_BIT_KHR.rawValue
            )
        }

        @Test("Validate regularGop_KHR")
        public func validate_regularGop_KHR() {
            #expect(
                Ignite.VideoEncodeH265RateControlFlagsKHR.regularGop_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_RATE_CONTROL_REGULAR_GOP_BIT_KHR.rawValue
            )
        }

        @Test("Validate referencePatternFlat_KHR")
        public func validate_referencePatternFlat_KHR() {
            #expect(
                Ignite.VideoEncodeH265RateControlFlagsKHR.referencePatternFlat_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_RATE_CONTROL_REFERENCE_PATTERN_FLAT_BIT_KHR.rawValue
            )
        }

        @Test("Validate referencePatternDyadic_KHR")
        public func validate_referencePatternDyadic_KHR() {
            #expect(
                Ignite.VideoEncodeH265RateControlFlagsKHR.referencePatternDyadic_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_RATE_CONTROL_REFERENCE_PATTERN_DYADIC_BIT_KHR.rawValue
            )
        }

        @Test("Validate temporalSubLayerPatternDyadic_KHR")
        public func validate_temporalSubLayerPatternDyadic_KHR() {
            #expect(
                Ignite.VideoEncodeH265RateControlFlagsKHR.temporalSubLayerPatternDyadic_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_RATE_CONTROL_TEMPORAL_SUB_LAYER_PATTERN_DYADIC_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeH265StdFlagsKHR bitmask.
    @Suite("VideoEncodeH265StdFlagsKHR")
    public struct VideoEncodeH265StdFlagsKHRTests {
        @Test("Validate separateColorPlaneFlagSet_KHR")
        public func validate_separateColorPlaneFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.separateColorPlaneFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_SEPARATE_COLOR_PLANE_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate sampleAdaptiveOffsetEnabledFlagSet_KHR")
        public func validate_sampleAdaptiveOffsetEnabledFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.sampleAdaptiveOffsetEnabledFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_SAMPLE_ADAPTIVE_OFFSET_ENABLED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate scalingListDataPresentFlagSet_KHR")
        public func validate_scalingListDataPresentFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.scalingListDataPresentFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_SCALING_LIST_DATA_PRESENT_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate pcmEnabledFlagSet_KHR")
        public func validate_pcmEnabledFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.pcmEnabledFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_PCM_ENABLED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate spsTemporalMvpEnabledFlagSet_KHR")
        public func validate_spsTemporalMvpEnabledFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.spsTemporalMvpEnabledFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_SPS_TEMPORAL_MVP_ENABLED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate initQpMinus26_KHR")
        public func validate_initQpMinus26_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.initQpMinus26_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_INIT_QP_MINUS26_BIT_KHR.rawValue
            )
        }

        @Test("Validate weightedPredFlagSet_KHR")
        public func validate_weightedPredFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.weightedPredFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_WEIGHTED_PRED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate weightedBipredFlagSet_KHR")
        public func validate_weightedBipredFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.weightedBipredFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_WEIGHTED_BIPRED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate log2ParallelMergeLevelMinus2_KHR")
        public func validate_log2ParallelMergeLevelMinus2_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.log2ParallelMergeLevelMinus2_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_LOG2_PARALLEL_MERGE_LEVEL_MINUS2_BIT_KHR.rawValue
            )
        }

        @Test("Validate signDataHidingEnabledFlagSet_KHR")
        public func validate_signDataHidingEnabledFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.signDataHidingEnabledFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_SIGN_DATA_HIDING_ENABLED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate transformSkipEnabledFlagSet_KHR")
        public func validate_transformSkipEnabledFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.transformSkipEnabledFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_TRANSFORM_SKIP_ENABLED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate transformSkipEnabledFlagUnset_KHR")
        public func validate_transformSkipEnabledFlagUnset_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.transformSkipEnabledFlagUnset_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_TRANSFORM_SKIP_ENABLED_FLAG_UNSET_BIT_KHR.rawValue
            )
        }

        @Test("Validate ppsSliceChromaQpOffsetsPresentFlagSet_KHR")
        public func validate_ppsSliceChromaQpOffsetsPresentFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.ppsSliceChromaQpOffsetsPresentFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate transquantBypassEnabledFlagSet_KHR")
        public func validate_transquantBypassEnabledFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.transquantBypassEnabledFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_TRANSQUANT_BYPASS_ENABLED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate constrainedIntraPredFlagSet_KHR")
        public func validate_constrainedIntraPredFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.constrainedIntraPredFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_CONSTRAINED_INTRA_PRED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate entropyCodingSyncEnabledFlagSet_KHR")
        public func validate_entropyCodingSyncEnabledFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.entropyCodingSyncEnabledFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_ENTROPY_CODING_SYNC_ENABLED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate deblockingFilterOverrideEnabledFlagSet_KHR")
        public func validate_deblockingFilterOverrideEnabledFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.deblockingFilterOverrideEnabledFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_DEBLOCKING_FILTER_OVERRIDE_ENABLED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate dependentSliceSegmentsEnabledFlagSet_KHR")
        public func validate_dependentSliceSegmentsEnabledFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.dependentSliceSegmentsEnabledFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_DEPENDENT_SLICE_SEGMENTS_ENABLED_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate dependentSliceSegmentFlagSet_KHR")
        public func validate_dependentSliceSegmentFlagSet_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.dependentSliceSegmentFlagSet_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_DEPENDENT_SLICE_SEGMENT_FLAG_SET_BIT_KHR.rawValue
            )
        }

        @Test("Validate sliceQpDelta_KHR")
        public func validate_sliceQpDelta_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.sliceQpDelta_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_SLICE_QP_DELTA_BIT_KHR.rawValue
            )
        }

        @Test("Validate differentSliceQpDelta_KHR")
        public func validate_differentSliceQpDelta_KHR() {
            #expect(
                Ignite.VideoEncodeH265StdFlagsKHR.differentSliceQpDelta_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_STD_DIFFERENT_SLICE_QP_DELTA_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeH265TransformBlockSizeFlagsKHR bitmask.
    @Suite("VideoEncodeH265TransformBlockSizeFlagsKHR")
    public struct VideoEncodeH265TransformBlockSizeFlagsKHRTests {
        @Test("Validate 4_KHR")
        public func validate_4_KHR() {
            #expect(
                Ignite.VideoEncodeH265TransformBlockSizeFlagsKHR.`4_KHR`.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_4_BIT_KHR.rawValue
            )
        }

        @Test("Validate 8_KHR")
        public func validate_8_KHR() {
            #expect(
                Ignite.VideoEncodeH265TransformBlockSizeFlagsKHR.`8_KHR`.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_8_BIT_KHR.rawValue
            )
        }

        @Test("Validate 16_KHR")
        public func validate_16_KHR() {
            #expect(
                Ignite.VideoEncodeH265TransformBlockSizeFlagsKHR.`16_KHR`.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_16_BIT_KHR.rawValue
            )
        }

        @Test("Validate 32_KHR")
        public func validate_32_KHR() {
            #expect(
                Ignite.VideoEncodeH265TransformBlockSizeFlagsKHR.`32_KHR`.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_32_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeRateControlModeFlagsKHR bitmask.
    @Suite("VideoEncodeRateControlModeFlagsKHR")
    public struct VideoEncodeRateControlModeFlagsKHRTests {
        @Test("Validate default_KHR")
        public func validate_default_KHR() {
            #expect(
                Ignite.VideoEncodeRateControlModeFlagsKHR.default_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_RATE_CONTROL_MODE_DEFAULT_KHR.rawValue
            )
        }

        @Test("Validate disabledBit_KHR")
        public func validate_disabledBit_KHR() {
            #expect(
                Ignite.VideoEncodeRateControlModeFlagsKHR.disabledBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_RATE_CONTROL_MODE_DISABLED_BIT_KHR.rawValue
            )
        }

        @Test("Validate cbrBit_KHR")
        public func validate_cbrBit_KHR() {
            #expect(
                Ignite.VideoEncodeRateControlModeFlagsKHR.cbrBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_RATE_CONTROL_MODE_CBR_BIT_KHR.rawValue
            )
        }

        @Test("Validate vbrBit_KHR")
        public func validate_vbrBit_KHR() {
            #expect(
                Ignite.VideoEncodeRateControlModeFlagsKHR.vbrBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_RATE_CONTROL_MODE_VBR_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoEncodeUsageFlagsKHR bitmask.
    @Suite("VideoEncodeUsageFlagsKHR")
    public struct VideoEncodeUsageFlagsKHRTests {
        @Test("Validate default_KHR")
        public func validate_default_KHR() {
            #expect(
                Ignite.VideoEncodeUsageFlagsKHR.default_KHR.rawValue == CVulkan.VK_VIDEO_ENCODE_USAGE_DEFAULT_KHR.rawValue
            )
        }

        @Test("Validate transcodingBit_KHR")
        public func validate_transcodingBit_KHR() {
            #expect(
                Ignite.VideoEncodeUsageFlagsKHR.transcodingBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_USAGE_TRANSCODING_BIT_KHR.rawValue
            )
        }

        @Test("Validate streamingBit_KHR")
        public func validate_streamingBit_KHR() {
            #expect(
                Ignite.VideoEncodeUsageFlagsKHR.streamingBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_USAGE_STREAMING_BIT_KHR.rawValue
            )
        }

        @Test("Validate recordingBit_KHR")
        public func validate_recordingBit_KHR() {
            #expect(
                Ignite.VideoEncodeUsageFlagsKHR.recordingBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_USAGE_RECORDING_BIT_KHR.rawValue
            )
        }

        @Test("Validate conferencingBit_KHR")
        public func validate_conferencingBit_KHR() {
            #expect(
                Ignite.VideoEncodeUsageFlagsKHR.conferencingBit_KHR.rawValue
                    == CVulkan.VK_VIDEO_ENCODE_USAGE_CONFERENCING_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoSessionCreateFlagsKHR bitmask.
    @Suite("VideoSessionCreateFlagsKHR")
    public struct VideoSessionCreateFlagsKHRTests {
        @Test("Validate protectedContent_KHR")
        public func validate_protectedContent_KHR() {
            #expect(
                Ignite.VideoSessionCreateFlagsKHR.protectedContent_KHR.rawValue
                    == CVulkan.VK_VIDEO_SESSION_CREATE_PROTECTED_CONTENT_BIT_KHR.rawValue
            )
        }

        @Test("Validate allowEncodeParameterOptimizations_KHR")
        public func validate_allowEncodeParameterOptimizations_KHR() {
            #expect(
                Ignite.VideoSessionCreateFlagsKHR.allowEncodeParameterOptimizations_KHR.rawValue
                    == CVulkan.VK_VIDEO_SESSION_CREATE_ALLOW_ENCODE_PARAMETER_OPTIMIZATIONS_BIT_KHR.rawValue
            )
        }

        @Test("Validate inlineQueries_KHR")
        public func validate_inlineQueries_KHR() {
            #expect(
                Ignite.VideoSessionCreateFlagsKHR.inlineQueries_KHR.rawValue
                    == CVulkan.VK_VIDEO_SESSION_CREATE_INLINE_QUERIES_BIT_KHR.rawValue
            )
        }

        @Test("Validate allowEncodeQuantizationDeltaMap_KHR")
        public func validate_allowEncodeQuantizationDeltaMap_KHR() {
            #expect(
                Ignite.VideoSessionCreateFlagsKHR.allowEncodeQuantizationDeltaMap_KHR.rawValue
                    == CVulkan.VK_VIDEO_SESSION_CREATE_ALLOW_ENCODE_QUANTIZATION_DELTA_MAP_BIT_KHR.rawValue
            )
        }

        @Test("Validate allowEncodeEmphasisMap_KHR")
        public func validate_allowEncodeEmphasisMap_KHR() {
            #expect(
                Ignite.VideoSessionCreateFlagsKHR.allowEncodeEmphasisMap_KHR.rawValue
                    == CVulkan.VK_VIDEO_SESSION_CREATE_ALLOW_ENCODE_EMPHASIS_MAP_BIT_KHR.rawValue
            )
        }

        @Test("Validate inlineSessionParameters_KHR")
        public func validate_inlineSessionParameters_KHR() {
            #expect(
                Ignite.VideoSessionCreateFlagsKHR.inlineSessionParameters_KHR.rawValue
                    == CVulkan.VK_VIDEO_SESSION_CREATE_INLINE_SESSION_PARAMETERS_BIT_KHR.rawValue
            )
        }
    }


    /// Tests for the VideoSessionParametersCreateFlagsKHR bitmask.
    @Suite("VideoSessionParametersCreateFlagsKHR")
    public struct VideoSessionParametersCreateFlagsKHRTests {
        @Test("Validate quantizationMapCompatible_KHR")
        public func validate_quantizationMapCompatible_KHR() {
            #expect(
                Ignite.VideoSessionParametersCreateFlagsKHR.quantizationMapCompatible_KHR.rawValue
                    == CVulkan.VK_VIDEO_SESSION_PARAMETERS_CREATE_QUANTIZATION_MAP_COMPATIBLE_BIT_KHR.rawValue
            )
        }
    }

    // END_GENERATE_BITMASK_TESTS
}
