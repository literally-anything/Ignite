/**
 * Bitmasks.swift
 * Ignite
 *
 * Created by Hunter Baker on 5/23/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

// This file contains the bitmask definitions for Vulkan.
// These are automatically generated from the Vulkan specification.

// BEGIN_GENERATE_BITMASKS
// Generated using header version: 315


public struct AccelerationStructureCreateFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `AccelerationStructureCreateFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var deviceAddressCaptureReplay_KHR: AccelerationStructureCreateFlagsKHR {
        AccelerationStructureCreateFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var descriptorBufferCaptureReplay_EXT: AccelerationStructureCreateFlagsKHR {
        AccelerationStructureCreateFlagsKHR(rawValue: 1 << 3)
    }


    @inlinable
    public static var motion_NV: AccelerationStructureCreateFlagsKHR {
        AccelerationStructureCreateFlagsKHR(rawValue: 1 << 2)
    }
}


public struct AccessFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `AccessFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var indirectCommandReadBit: AccessFlags { AccessFlags(rawValue: 1 << 0) }


    @inlinable
    public static var indexReadBit: AccessFlags { AccessFlags(rawValue: 1 << 1) }


    @inlinable
    public static var vertexAttributeReadBit: AccessFlags { AccessFlags(rawValue: 1 << 2) }


    @inlinable
    public static var uniformReadBit: AccessFlags { AccessFlags(rawValue: 1 << 3) }


    @inlinable
    public static var inputAttachmentReadBit: AccessFlags { AccessFlags(rawValue: 1 << 4) }


    @inlinable
    public static var shaderReadBit: AccessFlags { AccessFlags(rawValue: 1 << 5) }


    @inlinable
    public static var shaderWriteBit: AccessFlags { AccessFlags(rawValue: 1 << 6) }


    @inlinable
    public static var colorAttachmentReadBit: AccessFlags { AccessFlags(rawValue: 1 << 7) }


    @inlinable
    public static var colorAttachmentWriteBit: AccessFlags { AccessFlags(rawValue: 1 << 8) }


    @inlinable
    public static var depthStencilAttachmentReadBit: AccessFlags { AccessFlags(rawValue: 1 << 9) }


    @inlinable
    public static var depthStencilAttachmentWriteBit: AccessFlags { AccessFlags(rawValue: 1 << 10) }


    @inlinable
    public static var transferReadBit: AccessFlags { AccessFlags(rawValue: 1 << 11) }


    @inlinable
    public static var transferWriteBit: AccessFlags { AccessFlags(rawValue: 1 << 12) }


    @inlinable
    public static var hostReadBit: AccessFlags { AccessFlags(rawValue: 1 << 13) }


    @inlinable
    public static var hostWriteBit: AccessFlags { AccessFlags(rawValue: 1 << 14) }


    @inlinable
    public static var memoryReadBit: AccessFlags { AccessFlags(rawValue: 1 << 15) }


    @inlinable
    public static var memoryWriteBit: AccessFlags { AccessFlags(rawValue: 1 << 16) }


    @inlinable
    public static var none: AccessFlags { AccessFlags(rawValue: 0) }


    @inlinable
    public static var transformFeedbackWriteBit_EXT: AccessFlags { AccessFlags(rawValue: 1 << 25) }


    @inlinable
    public static var transformFeedbackCounterReadBit_EXT: AccessFlags { AccessFlags(rawValue: 1 << 26) }


    @inlinable
    public static var transformFeedbackCounterWriteBit_EXT: AccessFlags { AccessFlags(rawValue: 1 << 27) }


    @inlinable
    public static var conditionalRenderingReadBit_EXT: AccessFlags { AccessFlags(rawValue: 1 << 20) }


    @inlinable
    public static var colorAttachmentReadNoncoherentBit_EXT: AccessFlags { AccessFlags(rawValue: 1 << 19) }


    @inlinable
    public static var accelerationStructureReadBit_KHR: AccessFlags { AccessFlags(rawValue: 1 << 21) }


    @inlinable
    public static var accelerationStructureWriteBit_KHR: AccessFlags { AccessFlags(rawValue: 1 << 22) }


    @inlinable
    public static var fragmentDensityMapReadBit_EXT: AccessFlags { AccessFlags(rawValue: 1 << 24) }


    @inlinable
    public static var fragmentShadingRateAttachmentReadBit_KHR: AccessFlags { AccessFlags(rawValue: 1 << 23) }


    @inlinable
    public static var commandPreprocessReadBit_EXT: AccessFlags { AccessFlags(rawValue: 1 << 17) }


    @inlinable
    public static var commandPreprocessWriteBit_EXT: AccessFlags { AccessFlags(rawValue: 1 << 18) }


    @inlinable
    public static var shadingRateImageReadBit_NV: AccessFlags { self.fragmentShadingRateAttachmentReadBit_KHR }


    @inlinable
    public static var accelerationStructureReadBit_NV: AccessFlags { self.accelerationStructureReadBit_KHR }


    @inlinable
    public static var accelerationStructureWriteBit_NV: AccessFlags { self.accelerationStructureWriteBit_KHR }


    @inlinable
    public static var commandPreprocessReadBit_NV: AccessFlags { self.commandPreprocessReadBit_EXT }


    @inlinable
    public static var commandPreprocessWriteBit_NV: AccessFlags { self.commandPreprocessWriteBit_EXT }


    @inlinable
    public static var none_KHR: AccessFlags { self.none }
}


public struct AccessFlags2: OptionSet {
    /// The raw value of the bitmask, represented as a UInt64.
    public let rawValue: UInt64

    /// Initilizes an instance of `AccessFlags2` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt64) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var none: AccessFlags2 { AccessFlags2(rawValue: 0) }


    @inlinable
    public static var indirectCommandReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 0) }


    @inlinable
    public static var indexReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 1) }


    @inlinable
    public static var vertexAttributeReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 2) }


    @inlinable
    public static var uniformReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 3) }


    @inlinable
    public static var inputAttachmentReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 4) }


    @inlinable
    public static var shaderReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 5) }


    @inlinable
    public static var shaderWriteBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 6) }


    @inlinable
    public static var colorAttachmentReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 7) }


    @inlinable
    public static var colorAttachmentWriteBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 8) }


    @inlinable
    public static var depthStencilAttachmentReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 9) }


    @inlinable
    public static var depthStencilAttachmentWriteBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 10) }


    @inlinable
    public static var transferReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 11) }


    @inlinable
    public static var transferWriteBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 12) }


    @inlinable
    public static var hostReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 13) }


    @inlinable
    public static var hostWriteBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 14) }


    @inlinable
    public static var memoryReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 15) }


    @inlinable
    public static var memoryWriteBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 16) }


    @inlinable
    public static var shaderSampledReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 32) }


    @inlinable
    public static var shaderStorageReadBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 33) }


    @inlinable
    public static var shaderStorageWriteBit: AccessFlags2 { AccessFlags2(rawValue: 1 << 34) }


    @inlinable
    public static var videoDecodeReadBit_KHR: AccessFlags2 { AccessFlags2(rawValue: 1 << 35) }


    @inlinable
    public static var videoDecodeWriteBit_KHR: AccessFlags2 { AccessFlags2(rawValue: 1 << 36) }


    @inlinable
    public static var videoEncodeReadBit_KHR: AccessFlags2 { AccessFlags2(rawValue: 1 << 37) }


    @inlinable
    public static var videoEncodeWriteBit_KHR: AccessFlags2 { AccessFlags2(rawValue: 1 << 38) }


    @inlinable
    public static var shaderTileAttachmentReadBit_QCOM: AccessFlags2 { AccessFlags2(rawValue: 1 << 51) }


    @inlinable
    public static var shaderTileAttachmentWriteBit_QCOM: AccessFlags2 { AccessFlags2(rawValue: 1 << 52) }


    @inlinable
    public static var transformFeedbackWriteBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 25) }


    @inlinable
    public static var transformFeedbackCounterReadBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 26) }


    @inlinable
    public static var transformFeedbackCounterWriteBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 27) }


    @inlinable
    public static var conditionalRenderingReadBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 20) }


    @inlinable
    public static var commandPreprocessReadBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 17) }


    @inlinable
    public static var commandPreprocessWriteBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 18) }


    @inlinable
    public static var fragmentShadingRateAttachmentReadBit_KHR: AccessFlags2 { AccessFlags2(rawValue: 1 << 23) }


    @inlinable
    public static var accelerationStructureReadBit_KHR: AccessFlags2 { AccessFlags2(rawValue: 1 << 21) }


    @inlinable
    public static var accelerationStructureWriteBit_KHR: AccessFlags2 { AccessFlags2(rawValue: 1 << 22) }


    @inlinable
    public static var fragmentDensityMapReadBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 24) }


    @inlinable
    public static var colorAttachmentReadNoncoherentBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 19) }


    @inlinable
    public static var descriptorBufferReadBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 41) }


    @inlinable
    public static var invocationMaskReadBit_HUAWEI: AccessFlags2 { AccessFlags2(rawValue: 1 << 39) }


    @inlinable
    public static var shaderBindingTableReadBit_KHR: AccessFlags2 { AccessFlags2(rawValue: 1 << 40) }


    @inlinable
    public static var micromapReadBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 44) }


    @inlinable
    public static var micromapWriteBit_EXT: AccessFlags2 { AccessFlags2(rawValue: 1 << 45) }


    @inlinable
    public static var opticalFlowReadBit_NV: AccessFlags2 { AccessFlags2(rawValue: 1 << 42) }


    @inlinable
    public static var opticalFlowWriteBit_NV: AccessFlags2 { AccessFlags2(rawValue: 1 << 43) }


    @inlinable
    public static var none_KHR: AccessFlags2 { self.none }


    @inlinable
    public static var indirectCommandReadBit_KHR: AccessFlags2 { self.indirectCommandReadBit }


    @inlinable
    public static var indexReadBit_KHR: AccessFlags2 { self.indexReadBit }


    @inlinable
    public static var vertexAttributeReadBit_KHR: AccessFlags2 { self.vertexAttributeReadBit }


    @inlinable
    public static var uniformReadBit_KHR: AccessFlags2 { self.uniformReadBit }


    @inlinable
    public static var inputAttachmentReadBit_KHR: AccessFlags2 { self.inputAttachmentReadBit }


    @inlinable
    public static var shaderReadBit_KHR: AccessFlags2 { self.shaderReadBit }


    @inlinable
    public static var shaderWriteBit_KHR: AccessFlags2 { self.shaderWriteBit }


    @inlinable
    public static var colorAttachmentReadBit_KHR: AccessFlags2 { self.colorAttachmentReadBit }


    @inlinable
    public static var colorAttachmentWriteBit_KHR: AccessFlags2 { self.colorAttachmentWriteBit }


    @inlinable
    public static var depthStencilAttachmentReadBit_KHR: AccessFlags2 { self.depthStencilAttachmentReadBit }


    @inlinable
    public static var depthStencilAttachmentWriteBit_KHR: AccessFlags2 { self.depthStencilAttachmentWriteBit }


    @inlinable
    public static var transferReadBit_KHR: AccessFlags2 { self.transferReadBit }


    @inlinable
    public static var transferWriteBit_KHR: AccessFlags2 { self.transferWriteBit }


    @inlinable
    public static var hostReadBit_KHR: AccessFlags2 { self.hostReadBit }


    @inlinable
    public static var hostWriteBit_KHR: AccessFlags2 { self.hostWriteBit }


    @inlinable
    public static var memoryReadBit_KHR: AccessFlags2 { self.memoryReadBit }


    @inlinable
    public static var memoryWriteBit_KHR: AccessFlags2 { self.memoryWriteBit }


    @inlinable
    public static var shaderSampledReadBit_KHR: AccessFlags2 { self.shaderSampledReadBit }


    @inlinable
    public static var shaderStorageReadBit_KHR: AccessFlags2 { self.shaderStorageReadBit }


    @inlinable
    public static var shaderStorageWriteBit_KHR: AccessFlags2 { self.shaderStorageWriteBit }


    @inlinable
    public static var commandPreprocessReadBit_NV: AccessFlags2 { self.commandPreprocessReadBit_EXT }


    @inlinable
    public static var commandPreprocessWriteBit_NV: AccessFlags2 { self.commandPreprocessWriteBit_EXT }


    @inlinable
    public static var shadingRateImageReadBit_NV: AccessFlags2 { self.fragmentShadingRateAttachmentReadBit_KHR }


    @inlinable
    public static var accelerationStructureReadBit_NV: AccessFlags2 { self.accelerationStructureReadBit_KHR }


    @inlinable
    public static var accelerationStructureWriteBit_NV: AccessFlags2 { self.accelerationStructureWriteBit_KHR }
}


public struct AccessFlags3KHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt64.
    public let rawValue: UInt64

    /// Initilizes an instance of `AccessFlags3KHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt64) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var none_KHR: AccessFlags3KHR { AccessFlags3KHR(rawValue: 0) }
}


public struct AcquireProfilingLockFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `AcquireProfilingLockFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


}


public struct AttachmentDescriptionFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `AttachmentDescriptionFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var mayAlias: AttachmentDescriptionFlags { AttachmentDescriptionFlags(rawValue: 1 << 0) }
}


public struct BufferCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `BufferCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var sparseBinding: BufferCreateFlags { BufferCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var sparseResidency: BufferCreateFlags { BufferCreateFlags(rawValue: 1 << 1) }


    @inlinable
    public static var sparseAliased: BufferCreateFlags { BufferCreateFlags(rawValue: 1 << 2) }


    @inlinable
    public static var protected: BufferCreateFlags { BufferCreateFlags(rawValue: 1 << 3) }


    @inlinable
    public static var deviceAddressCaptureReplay: BufferCreateFlags { BufferCreateFlags(rawValue: 1 << 4) }


    @inlinable
    public static var descriptorBufferCaptureReplay_EXT: BufferCreateFlags { BufferCreateFlags(rawValue: 1 << 5) }


    @inlinable
    public static var videoProfileIndependent_KHR: BufferCreateFlags { BufferCreateFlags(rawValue: 1 << 6) }


    @inlinable
    public static var deviceAddressCaptureReplay_EXT: BufferCreateFlags { self.deviceAddressCaptureReplay }


    @inlinable
    public static var deviceAddressCaptureReplay_KHR: BufferCreateFlags { self.deviceAddressCaptureReplay }
}


public struct BufferUsageFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `BufferUsageFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var transferSrc: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 0) }


    @inlinable
    public static var transferDst: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 1) }


    @inlinable
    public static var uniformTexelBuffer: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 2) }


    @inlinable
    public static var storageTexelBuffer: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 3) }


    @inlinable
    public static var uniformBuffer: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 4) }


    @inlinable
    public static var storageBuffer: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 5) }


    @inlinable
    public static var indexBuffer: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 6) }


    @inlinable
    public static var vertexBuffer: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 7) }


    @inlinable
    public static var indirectBuffer: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 8) }


    @inlinable
    public static var shaderDeviceAddress: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 17) }


    @inlinable
    public static var videoDecodeSrc_KHR: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 13) }


    @inlinable
    public static var videoDecodeDst_KHR: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 14) }


    @inlinable
    public static var transformFeedbackBuffer_EXT: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 11) }


    @inlinable
    public static var transformFeedbackCounterBuffer_EXT: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 12) }


    @inlinable
    public static var conditionalRendering_EXT: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 9) }


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    @inlinable
    public static var executionGraphScratch_AMDX: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 25) }


    @inlinable
    public static var accelerationStructureBuildInputReadOnly_KHR: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 19) }


    @inlinable
    public static var accelerationStructureStorage_KHR: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 20) }


    @inlinable
    public static var shaderBindingTable_KHR: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 10) }


    @inlinable
    public static var videoEncodeDst_KHR: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 15) }


    @inlinable
    public static var videoEncodeSrc_KHR: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 16) }


    @inlinable
    public static var samplerDescriptorBuffer_EXT: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 21) }


    @inlinable
    public static var resourceDescriptorBuffer_EXT: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 22) }


    @inlinable
    public static var pushDescriptorsDescriptorBuffer_EXT: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 26) }


    @inlinable
    public static var micromapBuildInputReadOnly_EXT: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 23) }


    @inlinable
    public static var micromapStorage_EXT: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 24) }


    @inlinable
    public static var tileMemory_QCOM: BufferUsageFlags { BufferUsageFlags(rawValue: 1 << 27) }


    @inlinable
    public static var rayTracing_NV: BufferUsageFlags { self.shaderBindingTable_KHR }


    @inlinable
    public static var shaderDeviceAddress_EXT: BufferUsageFlags { self.shaderDeviceAddress }


    @inlinable
    public static var shaderDeviceAddress_KHR: BufferUsageFlags { self.shaderDeviceAddress }
}


public struct BufferUsageFlags2: OptionSet {
    /// The raw value of the bitmask, represented as a UInt64.
    public let rawValue: UInt64

    /// Initilizes an instance of `BufferUsageFlags2` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt64) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var transferSrc: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 0) }


    @inlinable
    public static var transferDst: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 1) }


    @inlinable
    public static var uniformTexelBuffer: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 2) }


    @inlinable
    public static var storageTexelBuffer: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 3) }


    @inlinable
    public static var uniformBuffer: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 4) }


    @inlinable
    public static var storageBuffer: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 5) }


    @inlinable
    public static var indexBuffer: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 6) }


    @inlinable
    public static var vertexBuffer: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 7) }


    @inlinable
    public static var indirectBuffer: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 8) }


    @inlinable
    public static var shaderDeviceAddress: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 17) }


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    @inlinable
    public static var executionGraphScratch_AMDX: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 25) }


    @inlinable
    public static var conditionalRendering_EXT: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 9) }


    @inlinable
    public static var shaderBindingTable_KHR: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 10) }


    @inlinable
    public static var transformFeedbackBuffer_EXT: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 11) }


    @inlinable
    public static var transformFeedbackCounterBuffer_EXT: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 12) }


    @inlinable
    public static var videoDecodeSrc_KHR: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 13) }


    @inlinable
    public static var videoDecodeDst_KHR: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 14) }


    @inlinable
    public static var videoEncodeDst_KHR: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 15) }


    @inlinable
    public static var videoEncodeSrc_KHR: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 16) }


    @inlinable
    public static var accelerationStructureBuildInputReadOnly_KHR: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 19) }


    @inlinable
    public static var accelerationStructureStorage_KHR: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 20) }


    @inlinable
    public static var samplerDescriptorBuffer_EXT: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 21) }


    @inlinable
    public static var resourceDescriptorBuffer_EXT: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 22) }


    @inlinable
    public static var pushDescriptorsDescriptorBuffer_EXT: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 26) }


    @inlinable
    public static var micromapBuildInputReadOnly_EXT: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 23) }


    @inlinable
    public static var micromapStorage_EXT: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 24) }


    @inlinable
    public static var tileMemory_QCOM: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 27) }


    @inlinable
    public static var preprocessBuffer_EXT: BufferUsageFlags2 { BufferUsageFlags2(rawValue: 1 << 31) }


    @inlinable
    public static var transferSrc_KHR: BufferUsageFlags2 { self.transferSrc }


    @inlinable
    public static var transferDst_KHR: BufferUsageFlags2 { self.transferDst }


    @inlinable
    public static var uniformTexelBuffer_KHR: BufferUsageFlags2 { self.uniformTexelBuffer }


    @inlinable
    public static var storageTexelBuffer_KHR: BufferUsageFlags2 { self.storageTexelBuffer }


    @inlinable
    public static var uniformBuffer_KHR: BufferUsageFlags2 { self.uniformBuffer }


    @inlinable
    public static var storageBuffer_KHR: BufferUsageFlags2 { self.storageBuffer }


    @inlinable
    public static var indexBuffer_KHR: BufferUsageFlags2 { self.indexBuffer }


    @inlinable
    public static var vertexBuffer_KHR: BufferUsageFlags2 { self.vertexBuffer }


    @inlinable
    public static var indirectBuffer_KHR: BufferUsageFlags2 { self.indirectBuffer }


    @inlinable
    public static var rayTracing_NV: BufferUsageFlags2 { self.shaderBindingTable_KHR }


    @inlinable
    public static var shaderDeviceAddress_KHR: BufferUsageFlags2 { self.shaderDeviceAddress }
}


public struct BuildAccelerationStructureFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `BuildAccelerationStructureFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var allowUpdateBit_KHR: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var allowCompactionBit_KHR: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var preferFastTraceBit_KHR: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var preferFastBuildBit_KHR: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 3)
    }


    @inlinable
    public static var lowMemoryBit_KHR: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 4)
    }


    @inlinable
    public static var motionBit_NV: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 5)
    }


    @inlinable
    public static var allowOpacityMicromapUpdate_EXT: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 6)
    }


    @inlinable
    public static var allowDisableOpacityMicromaps_EXT: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 7)
    }


    @inlinable
    public static var allowOpacityMicromapDataUpdate_EXT: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 8)
    }


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    @inlinable
    public static var allowDisplacementMicromapUpdate_NV: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 9)
    }


    @inlinable
    public static var allowDataAccess_KHR: BuildAccelerationStructureFlagsKHR {
        BuildAccelerationStructureFlagsKHR(rawValue: 1 << 11)
    }


    @inlinable
    public static var allowUpdateBit_NV: BuildAccelerationStructureFlagsKHR { self.allowUpdateBit_KHR }


    @inlinable
    public static var allowCompactionBit_NV: BuildAccelerationStructureFlagsKHR { self.allowCompactionBit_KHR }


    @inlinable
    public static var preferFastTraceBit_NV: BuildAccelerationStructureFlagsKHR { self.preferFastTraceBit_KHR }


    @inlinable
    public static var preferFastBuildBit_NV: BuildAccelerationStructureFlagsKHR { self.preferFastBuildBit_KHR }


    @inlinable
    public static var lowMemoryBit_NV: BuildAccelerationStructureFlagsKHR { self.lowMemoryBit_KHR }
}


public struct BuildMicromapFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `BuildMicromapFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var preferFastTrace_EXT: BuildMicromapFlagsEXT { BuildMicromapFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var preferFastBuild_EXT: BuildMicromapFlagsEXT { BuildMicromapFlagsEXT(rawValue: 1 << 1) }


    @inlinable
    public static var allowCompaction_EXT: BuildMicromapFlagsEXT { BuildMicromapFlagsEXT(rawValue: 1 << 2) }
}


public struct ClusterAccelerationStructureAddressResolutionFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ClusterAccelerationStructureAddressResolutionFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var indirectedDstImplicitData_NV: ClusterAccelerationStructureAddressResolutionFlagsNV {
        ClusterAccelerationStructureAddressResolutionFlagsNV(rawValue: 1 << 0)
    }


    @inlinable
    public static var indirectedScratchData_NV: ClusterAccelerationStructureAddressResolutionFlagsNV {
        ClusterAccelerationStructureAddressResolutionFlagsNV(rawValue: 1 << 1)
    }


    @inlinable
    public static var indirectedDstAddressArray_NV: ClusterAccelerationStructureAddressResolutionFlagsNV {
        ClusterAccelerationStructureAddressResolutionFlagsNV(rawValue: 1 << 2)
    }


    @inlinable
    public static var indirectedDstSizesArray_NV: ClusterAccelerationStructureAddressResolutionFlagsNV {
        ClusterAccelerationStructureAddressResolutionFlagsNV(rawValue: 1 << 3)
    }


    @inlinable
    public static var indirectedSrcInfosArray_NV: ClusterAccelerationStructureAddressResolutionFlagsNV {
        ClusterAccelerationStructureAddressResolutionFlagsNV(rawValue: 1 << 4)
    }


    @inlinable
    public static var indirectedSrcInfosCount_NV: ClusterAccelerationStructureAddressResolutionFlagsNV {
        ClusterAccelerationStructureAddressResolutionFlagsNV(rawValue: 1 << 5)
    }
}


public struct ClusterAccelerationStructureClusterFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ClusterAccelerationStructureClusterFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var allowDisableOpacityMicromaps_NV: ClusterAccelerationStructureClusterFlagsNV {
        ClusterAccelerationStructureClusterFlagsNV(rawValue: 1 << 0)
    }
}


public struct ClusterAccelerationStructureGeometryFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ClusterAccelerationStructureGeometryFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var cullDisable_NV: ClusterAccelerationStructureGeometryFlagsNV {
        ClusterAccelerationStructureGeometryFlagsNV(rawValue: 1 << 0)
    }


    @inlinable
    public static var noDuplicateAnyhitInvocation_NV: ClusterAccelerationStructureGeometryFlagsNV {
        ClusterAccelerationStructureGeometryFlagsNV(rawValue: 1 << 1)
    }


    @inlinable
    public static var opaque_NV: ClusterAccelerationStructureGeometryFlagsNV {
        ClusterAccelerationStructureGeometryFlagsNV(rawValue: 1 << 2)
    }
}


public struct ClusterAccelerationStructureIndexFormatFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ClusterAccelerationStructureIndexFormatFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var `8bit_NV`: ClusterAccelerationStructureIndexFormatFlagsNV {
        ClusterAccelerationStructureIndexFormatFlagsNV(rawValue: 1 << 0)
    }


    @inlinable
    public static var `16bit_NV`: ClusterAccelerationStructureIndexFormatFlagsNV {
        ClusterAccelerationStructureIndexFormatFlagsNV(rawValue: 1 << 1)
    }


    @inlinable
    public static var `32bit_NV`: ClusterAccelerationStructureIndexFormatFlagsNV {
        ClusterAccelerationStructureIndexFormatFlagsNV(rawValue: 1 << 2)
    }
}


public struct ColorComponentFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ColorComponentFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var r: ColorComponentFlags { ColorComponentFlags(rawValue: 1 << 0) }


    @inlinable
    public static var g: ColorComponentFlags { ColorComponentFlags(rawValue: 1 << 1) }


    @inlinable
    public static var b: ColorComponentFlags { ColorComponentFlags(rawValue: 1 << 2) }


    @inlinable
    public static var a: ColorComponentFlags { ColorComponentFlags(rawValue: 1 << 3) }
}


public struct CommandBufferResetFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `CommandBufferResetFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var releaseResources: CommandBufferResetFlags { CommandBufferResetFlags(rawValue: 1 << 0) }
}


public struct CommandBufferUsageFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `CommandBufferUsageFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var oneTimeSubmit: CommandBufferUsageFlags { CommandBufferUsageFlags(rawValue: 1 << 0) }


    @inlinable
    public static var renderPassContinue: CommandBufferUsageFlags { CommandBufferUsageFlags(rawValue: 1 << 1) }


    @inlinable
    public static var simultaneousUse: CommandBufferUsageFlags { CommandBufferUsageFlags(rawValue: 1 << 2) }
}


public struct CommandPoolCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `CommandPoolCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var transient: CommandPoolCreateFlags { CommandPoolCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var resetCommandBuffer: CommandPoolCreateFlags { CommandPoolCreateFlags(rawValue: 1 << 1) }


    @inlinable
    public static var protected: CommandPoolCreateFlags { CommandPoolCreateFlags(rawValue: 1 << 2) }
}


public struct CommandPoolResetFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `CommandPoolResetFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var releaseResources: CommandPoolResetFlags { CommandPoolResetFlags(rawValue: 1 << 0) }
}


public struct CompositeAlphaFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `CompositeAlphaFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var opaque_KHR: CompositeAlphaFlagsKHR { CompositeAlphaFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var preMultiplied_KHR: CompositeAlphaFlagsKHR { CompositeAlphaFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var postMultiplied_KHR: CompositeAlphaFlagsKHR { CompositeAlphaFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var inherit_KHR: CompositeAlphaFlagsKHR { CompositeAlphaFlagsKHR(rawValue: 1 << 3) }
}


public struct ConditionalRenderingFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ConditionalRenderingFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var inverted_EXT: ConditionalRenderingFlagsEXT { ConditionalRenderingFlagsEXT(rawValue: 1 << 0) }
}


public struct CullModeFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `CullModeFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var none: CullModeFlags { CullModeFlags(rawValue: 0) }


    @inlinable
    public static var frontBit: CullModeFlags { CullModeFlags(rawValue: 1 << 0) }


    @inlinable
    public static var backBit: CullModeFlags { CullModeFlags(rawValue: 1 << 1) }


    @inlinable
    public static var frontAndBack: CullModeFlags { CullModeFlags(rawValue: 0x0000_0003) }
}


public struct DebugReportFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DebugReportFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var information_EXT: DebugReportFlagsEXT { DebugReportFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var warning_EXT: DebugReportFlagsEXT { DebugReportFlagsEXT(rawValue: 1 << 1) }


    @inlinable
    public static var performanceWarning_EXT: DebugReportFlagsEXT { DebugReportFlagsEXT(rawValue: 1 << 2) }


    @inlinable
    public static var error_EXT: DebugReportFlagsEXT { DebugReportFlagsEXT(rawValue: 1 << 3) }


    @inlinable
    public static var debug_EXT: DebugReportFlagsEXT { DebugReportFlagsEXT(rawValue: 1 << 4) }
}


public struct DebugUtilsMessageSeverityFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DebugUtilsMessageSeverityFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var verbose_EXT: DebugUtilsMessageSeverityFlagsEXT { DebugUtilsMessageSeverityFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var info_EXT: DebugUtilsMessageSeverityFlagsEXT { DebugUtilsMessageSeverityFlagsEXT(rawValue: 1 << 4) }


    @inlinable
    public static var warning_EXT: DebugUtilsMessageSeverityFlagsEXT { DebugUtilsMessageSeverityFlagsEXT(rawValue: 1 << 8) }


    @inlinable
    public static var error_EXT: DebugUtilsMessageSeverityFlagsEXT { DebugUtilsMessageSeverityFlagsEXT(rawValue: 1 << 12) }
}


public struct DebugUtilsMessageTypeFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DebugUtilsMessageTypeFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var general_EXT: DebugUtilsMessageTypeFlagsEXT { DebugUtilsMessageTypeFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var validation_EXT: DebugUtilsMessageTypeFlagsEXT { DebugUtilsMessageTypeFlagsEXT(rawValue: 1 << 1) }


    @inlinable
    public static var performance_EXT: DebugUtilsMessageTypeFlagsEXT { DebugUtilsMessageTypeFlagsEXT(rawValue: 1 << 2) }


    @inlinable
    public static var deviceAddressBinding_EXT: DebugUtilsMessageTypeFlagsEXT {
        DebugUtilsMessageTypeFlagsEXT(rawValue: 1 << 3)
    }
}


public struct DependencyFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DependencyFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var byRegion: DependencyFlags { DependencyFlags(rawValue: 1 << 0) }


    @inlinable
    public static var deviceGroup: DependencyFlags { DependencyFlags(rawValue: 1 << 2) }


    @inlinable
    public static var viewLocal: DependencyFlags { DependencyFlags(rawValue: 1 << 1) }


    @inlinable
    public static var feedbackLoop_EXT: DependencyFlags { DependencyFlags(rawValue: 1 << 3) }


    @inlinable
    public static var queueFamilyOwnershipTransferUseAllStages_KHR: DependencyFlags { DependencyFlags(rawValue: 1 << 5) }


    @inlinable
    public static var viewLocal_KHR: DependencyFlags { self.viewLocal }


    @inlinable
    public static var deviceGroup_KHR: DependencyFlags { self.deviceGroup }
}


public struct DescriptorBindingFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DescriptorBindingFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var updateAfterBind: DescriptorBindingFlags { DescriptorBindingFlags(rawValue: 1 << 0) }


    @inlinable
    public static var updateUnusedWhilePending: DescriptorBindingFlags { DescriptorBindingFlags(rawValue: 1 << 1) }


    @inlinable
    public static var partiallyBound: DescriptorBindingFlags { DescriptorBindingFlags(rawValue: 1 << 2) }


    @inlinable
    public static var variableDescriptorCount: DescriptorBindingFlags { DescriptorBindingFlags(rawValue: 1 << 3) }


    @inlinable
    public static var updateAfterBind_EXT: DescriptorBindingFlags { self.updateAfterBind }


    @inlinable
    public static var updateUnusedWhilePending_EXT: DescriptorBindingFlags { self.updateUnusedWhilePending }


    @inlinable
    public static var partiallyBound_EXT: DescriptorBindingFlags { self.partiallyBound }


    @inlinable
    public static var variableDescriptorCount_EXT: DescriptorBindingFlags { self.variableDescriptorCount }
}


public struct DescriptorPoolCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DescriptorPoolCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var freeDescriptorSet: DescriptorPoolCreateFlags { DescriptorPoolCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var updateAfterBind: DescriptorPoolCreateFlags { DescriptorPoolCreateFlags(rawValue: 1 << 1) }


    @inlinable
    public static var hostOnly_EXT: DescriptorPoolCreateFlags { DescriptorPoolCreateFlags(rawValue: 1 << 2) }


    @inlinable
    public static var allowOverallocationSets_NV: DescriptorPoolCreateFlags { DescriptorPoolCreateFlags(rawValue: 1 << 3) }


    @inlinable
    public static var allowOverallocationPools_NV: DescriptorPoolCreateFlags { DescriptorPoolCreateFlags(rawValue: 1 << 4) }


    @inlinable
    public static var updateAfterBind_EXT: DescriptorPoolCreateFlags { self.updateAfterBind }


    @inlinable
    public static var hostOnly_VALVE: DescriptorPoolCreateFlags { self.hostOnly_EXT }
}


public struct DescriptorSetLayoutCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DescriptorSetLayoutCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var updateAfterBindPool: DescriptorSetLayoutCreateFlags {
        DescriptorSetLayoutCreateFlags(rawValue: 1 << 1)
    }


    @inlinable
    public static var pushDescriptor: DescriptorSetLayoutCreateFlags { DescriptorSetLayoutCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var descriptorBuffer_EXT: DescriptorSetLayoutCreateFlags {
        DescriptorSetLayoutCreateFlags(rawValue: 1 << 4)
    }


    @inlinable
    public static var embeddedImmutableSamplers_EXT: DescriptorSetLayoutCreateFlags {
        DescriptorSetLayoutCreateFlags(rawValue: 1 << 5)
    }


    @inlinable
    public static var indirectBindable_NV: DescriptorSetLayoutCreateFlags {
        DescriptorSetLayoutCreateFlags(rawValue: 1 << 7)
    }


    @inlinable
    public static var hostOnlyPool_EXT: DescriptorSetLayoutCreateFlags { DescriptorSetLayoutCreateFlags(rawValue: 1 << 2) }


    @inlinable
    public static var perStage_NV: DescriptorSetLayoutCreateFlags { DescriptorSetLayoutCreateFlags(rawValue: 1 << 6) }


    @inlinable
    public static var pushDescriptor_KHR: DescriptorSetLayoutCreateFlags { self.pushDescriptor }


    @inlinable
    public static var updateAfterBindPool_EXT: DescriptorSetLayoutCreateFlags { self.updateAfterBindPool }


    @inlinable
    public static var hostOnlyPool_VALVE: DescriptorSetLayoutCreateFlags { self.hostOnlyPool_EXT }
}


public struct DeviceAddressBindingFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DeviceAddressBindingFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var internalObject_EXT: DeviceAddressBindingFlagsEXT { DeviceAddressBindingFlagsEXT(rawValue: 1 << 0) }
}


public struct DeviceDiagnosticsConfigFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DeviceDiagnosticsConfigFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var enableShaderDebugInfo_NV: DeviceDiagnosticsConfigFlagsNV {
        DeviceDiagnosticsConfigFlagsNV(rawValue: 1 << 0)
    }


    @inlinable
    public static var enableResourceTracking_NV: DeviceDiagnosticsConfigFlagsNV {
        DeviceDiagnosticsConfigFlagsNV(rawValue: 1 << 1)
    }


    @inlinable
    public static var enableAutomaticCheckpoints_NV: DeviceDiagnosticsConfigFlagsNV {
        DeviceDiagnosticsConfigFlagsNV(rawValue: 1 << 2)
    }


    @inlinable
    public static var enableShaderErrorReporting_NV: DeviceDiagnosticsConfigFlagsNV {
        DeviceDiagnosticsConfigFlagsNV(rawValue: 1 << 3)
    }
}


public struct DeviceGroupPresentModeFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DeviceGroupPresentModeFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var local_KHR: DeviceGroupPresentModeFlagsKHR { DeviceGroupPresentModeFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var remote_KHR: DeviceGroupPresentModeFlagsKHR { DeviceGroupPresentModeFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var sum_KHR: DeviceGroupPresentModeFlagsKHR { DeviceGroupPresentModeFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var localMultiDevice_KHR: DeviceGroupPresentModeFlagsKHR {
        DeviceGroupPresentModeFlagsKHR(rawValue: 1 << 3)
    }
}


public struct DeviceQueueCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DeviceQueueCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var protected: DeviceQueueCreateFlags { DeviceQueueCreateFlags(rawValue: 1 << 0) }
}


public struct DisplayPlaneAlphaFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `DisplayPlaneAlphaFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var opaque_KHR: DisplayPlaneAlphaFlagsKHR { DisplayPlaneAlphaFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var global_KHR: DisplayPlaneAlphaFlagsKHR { DisplayPlaneAlphaFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var perPixel_KHR: DisplayPlaneAlphaFlagsKHR { DisplayPlaneAlphaFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var perPixelPremultiplied_KHR: DisplayPlaneAlphaFlagsKHR { DisplayPlaneAlphaFlagsKHR(rawValue: 1 << 3) }
}


public struct EventCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `EventCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var deviceOnly: EventCreateFlags { EventCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var deviceOnly_KHR: EventCreateFlags { self.deviceOnly }
}


#if !PlatformMetal
    @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
#endif
public struct ExportMetalObjectTypeFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ExportMetalObjectTypeFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var metalDevice_EXT: ExportMetalObjectTypeFlagsEXT { ExportMetalObjectTypeFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var metalCommandQueue_EXT: ExportMetalObjectTypeFlagsEXT {
        ExportMetalObjectTypeFlagsEXT(rawValue: 1 << 1)
    }


    @inlinable
    public static var metalBuffer_EXT: ExportMetalObjectTypeFlagsEXT { ExportMetalObjectTypeFlagsEXT(rawValue: 1 << 2) }


    @inlinable
    public static var metalTexture_EXT: ExportMetalObjectTypeFlagsEXT { ExportMetalObjectTypeFlagsEXT(rawValue: 1 << 3) }


    @inlinable
    public static var metalIosurface_EXT: ExportMetalObjectTypeFlagsEXT { ExportMetalObjectTypeFlagsEXT(rawValue: 1 << 4) }


    @inlinable
    public static var metalSharedEvent_EXT: ExportMetalObjectTypeFlagsEXT { ExportMetalObjectTypeFlagsEXT(rawValue: 1 << 5) }
}


public struct ExternalFenceFeatureFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ExternalFenceFeatureFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var exportable: ExternalFenceFeatureFlags { ExternalFenceFeatureFlags(rawValue: 1 << 0) }


    @inlinable
    public static var importable: ExternalFenceFeatureFlags { ExternalFenceFeatureFlags(rawValue: 1 << 1) }


    @inlinable
    public static var exportable_KHR: ExternalFenceFeatureFlags { self.exportable }


    @inlinable
    public static var importable_KHR: ExternalFenceFeatureFlags { self.importable }
}


public struct ExternalFenceHandleTypeFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ExternalFenceHandleTypeFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var opaqueFd: ExternalFenceHandleTypeFlags { ExternalFenceHandleTypeFlags(rawValue: 1 << 0) }


    @inlinable
    public static var opaqueWin32: ExternalFenceHandleTypeFlags { ExternalFenceHandleTypeFlags(rawValue: 1 << 1) }


    @inlinable
    public static var opaqueWin32Kmt: ExternalFenceHandleTypeFlags { ExternalFenceHandleTypeFlags(rawValue: 1 << 2) }


    @inlinable
    public static var syncFd: ExternalFenceHandleTypeFlags { ExternalFenceHandleTypeFlags(rawValue: 1 << 3) }


    @inlinable
    public static var opaqueFd_KHR: ExternalFenceHandleTypeFlags { self.opaqueFd }


    @inlinable
    public static var opaqueWin32_KHR: ExternalFenceHandleTypeFlags { self.opaqueWin32 }


    @inlinable
    public static var opaqueWin32Kmt_KHR: ExternalFenceHandleTypeFlags { self.opaqueWin32Kmt }


    @inlinable
    public static var syncFd_KHR: ExternalFenceHandleTypeFlags { self.syncFd }
}


public struct ExternalMemoryFeatureFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ExternalMemoryFeatureFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var dedicatedOnly: ExternalMemoryFeatureFlags { ExternalMemoryFeatureFlags(rawValue: 1 << 0) }


    @inlinable
    public static var exportable: ExternalMemoryFeatureFlags { ExternalMemoryFeatureFlags(rawValue: 1 << 1) }


    @inlinable
    public static var importable: ExternalMemoryFeatureFlags { ExternalMemoryFeatureFlags(rawValue: 1 << 2) }


    @inlinable
    public static var dedicatedOnly_KHR: ExternalMemoryFeatureFlags { self.dedicatedOnly }


    @inlinable
    public static var exportable_KHR: ExternalMemoryFeatureFlags { self.exportable }


    @inlinable
    public static var importable_KHR: ExternalMemoryFeatureFlags { self.importable }
}


public struct ExternalMemoryFeatureFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ExternalMemoryFeatureFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var dedicatedOnly_NV: ExternalMemoryFeatureFlagsNV { ExternalMemoryFeatureFlagsNV(rawValue: 1 << 0) }


    @inlinable
    public static var exportable_NV: ExternalMemoryFeatureFlagsNV { ExternalMemoryFeatureFlagsNV(rawValue: 1 << 1) }


    @inlinable
    public static var importable_NV: ExternalMemoryFeatureFlagsNV { ExternalMemoryFeatureFlagsNV(rawValue: 1 << 2) }
}


public struct ExternalMemoryHandleTypeFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ExternalMemoryHandleTypeFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var opaqueFd: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 0) }


    @inlinable
    public static var opaqueWin32: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 1) }


    @inlinable
    public static var opaqueWin32Kmt: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 2) }


    @inlinable
    public static var d3d11Texture: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 3) }


    @inlinable
    public static var d3d11TextureKmt: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 4) }


    @inlinable
    public static var d3d12Heap: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 5) }


    @inlinable
    public static var d3d12Resource: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 6) }


    @inlinable
    public static var dmaBuf_EXT: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 9) }


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    @inlinable
    public static var androidHardwareBuffer_ANDROID: ExternalMemoryHandleTypeFlags {
        ExternalMemoryHandleTypeFlags(rawValue: 1 << 10)
    }


    @inlinable
    public static var hostAllocation_EXT: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 7) }


    @inlinable
    public static var hostMappedForeignMemory_EXT: ExternalMemoryHandleTypeFlags {
        ExternalMemoryHandleTypeFlags(rawValue: 1 << 8)
    }


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    @inlinable
    public static var zirconVmo_FUCHSIA: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 11) }


    @inlinable
    public static var rdmaAddress_NV: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 12) }


    #if !PlatformScreen
        @available(*, unavailable, message: "This flag requires the following trait: PlatformScreen.")
    #endif
    @inlinable
    public static var screenBuffer_QNX: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 14) }


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    @inlinable
    public static var mtlbuffer_EXT: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 16) }


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    @inlinable
    public static var mtltexture_EXT: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 17) }


    #if !PlatformMetal
        @available(*, unavailable, message: "This flag requires the following trait: PlatformMetal.")
    #endif
    @inlinable
    public static var mtlheap_EXT: ExternalMemoryHandleTypeFlags { ExternalMemoryHandleTypeFlags(rawValue: 1 << 18) }


    @inlinable
    public static var opaqueFd_KHR: ExternalMemoryHandleTypeFlags { self.opaqueFd }


    @inlinable
    public static var opaqueWin32_KHR: ExternalMemoryHandleTypeFlags { self.opaqueWin32 }


    @inlinable
    public static var opaqueWin32Kmt_KHR: ExternalMemoryHandleTypeFlags { self.opaqueWin32Kmt }


    @inlinable
    public static var d3d11Texture_KHR: ExternalMemoryHandleTypeFlags { self.d3d11Texture }


    @inlinable
    public static var d3d11TextureKmt_KHR: ExternalMemoryHandleTypeFlags { self.d3d11TextureKmt }


    @inlinable
    public static var d3d12Heap_KHR: ExternalMemoryHandleTypeFlags { self.d3d12Heap }


    @inlinable
    public static var d3d12Resource_KHR: ExternalMemoryHandleTypeFlags { self.d3d12Resource }
}


public struct ExternalMemoryHandleTypeFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ExternalMemoryHandleTypeFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var opaqueWin32_NV: ExternalMemoryHandleTypeFlagsNV { ExternalMemoryHandleTypeFlagsNV(rawValue: 1 << 0) }


    @inlinable
    public static var opaqueWin32Kmt_NV: ExternalMemoryHandleTypeFlagsNV {
        ExternalMemoryHandleTypeFlagsNV(rawValue: 1 << 1)
    }


    @inlinable
    public static var d3d11Image_NV: ExternalMemoryHandleTypeFlagsNV { ExternalMemoryHandleTypeFlagsNV(rawValue: 1 << 2) }


    @inlinable
    public static var d3d11ImageKmt_NV: ExternalMemoryHandleTypeFlagsNV { ExternalMemoryHandleTypeFlagsNV(rawValue: 1 << 3) }
}


public struct ExternalSemaphoreFeatureFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ExternalSemaphoreFeatureFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var exportable: ExternalSemaphoreFeatureFlags { ExternalSemaphoreFeatureFlags(rawValue: 1 << 0) }


    @inlinable
    public static var importable: ExternalSemaphoreFeatureFlags { ExternalSemaphoreFeatureFlags(rawValue: 1 << 1) }


    @inlinable
    public static var exportable_KHR: ExternalSemaphoreFeatureFlags { self.exportable }


    @inlinable
    public static var importable_KHR: ExternalSemaphoreFeatureFlags { self.importable }
}


public struct ExternalSemaphoreHandleTypeFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ExternalSemaphoreHandleTypeFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var opaqueFd: ExternalSemaphoreHandleTypeFlags { ExternalSemaphoreHandleTypeFlags(rawValue: 1 << 0) }


    @inlinable
    public static var opaqueWin32: ExternalSemaphoreHandleTypeFlags { ExternalSemaphoreHandleTypeFlags(rawValue: 1 << 1) }


    @inlinable
    public static var opaqueWin32Kmt: ExternalSemaphoreHandleTypeFlags { ExternalSemaphoreHandleTypeFlags(rawValue: 1 << 2) }


    @inlinable
    public static var d3d12Fence: ExternalSemaphoreHandleTypeFlags { ExternalSemaphoreHandleTypeFlags(rawValue: 1 << 3) }


    @inlinable
    public static var syncFd: ExternalSemaphoreHandleTypeFlags { ExternalSemaphoreHandleTypeFlags(rawValue: 1 << 4) }


    #if !PlatformFuchsia
        @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
    #endif
    @inlinable
    public static var zirconEvent_FUCHSIA: ExternalSemaphoreHandleTypeFlags {
        ExternalSemaphoreHandleTypeFlags(rawValue: 1 << 7)
    }


    @inlinable
    public static var d3d11Fence: ExternalSemaphoreHandleTypeFlags { self.d3d12Fence }


    @inlinable
    public static var opaqueFd_KHR: ExternalSemaphoreHandleTypeFlags { self.opaqueFd }


    @inlinable
    public static var opaqueWin32_KHR: ExternalSemaphoreHandleTypeFlags { self.opaqueWin32 }


    @inlinable
    public static var opaqueWin32Kmt_KHR: ExternalSemaphoreHandleTypeFlags { self.opaqueWin32Kmt }


    @inlinable
    public static var d3d12Fence_KHR: ExternalSemaphoreHandleTypeFlags { self.d3d12Fence }


    @inlinable
    public static var syncFd_KHR: ExternalSemaphoreHandleTypeFlags { self.syncFd }
}


public struct FenceCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `FenceCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var signaled: FenceCreateFlags { FenceCreateFlags(rawValue: 1 << 0) }
}


public struct FenceImportFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `FenceImportFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var temporary: FenceImportFlags { FenceImportFlags(rawValue: 1 << 0) }


    @inlinable
    public static var temporary_KHR: FenceImportFlags { self.temporary }
}


public struct FormatFeatureFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `FormatFeatureFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var sampledImage: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 0) }


    @inlinable
    public static var storageImage: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 1) }


    @inlinable
    public static var storageImageAtomic: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 2) }


    @inlinable
    public static var uniformTexelBuffer: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 3) }


    @inlinable
    public static var storageTexelBuffer: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 4) }


    @inlinable
    public static var storageTexelBufferAtomic: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 5) }


    @inlinable
    public static var vertexBuffer: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 6) }


    @inlinable
    public static var colorAttachment: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 7) }


    @inlinable
    public static var colorAttachmentBlend: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 8) }


    @inlinable
    public static var depthStencilAttachment: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 9) }


    @inlinable
    public static var blitSrc: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 10) }


    @inlinable
    public static var blitDst: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 11) }


    @inlinable
    public static var sampledImageFilterLinear: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 12) }


    @inlinable
    public static var transferSrc: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 14) }


    @inlinable
    public static var transferDst: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 15) }


    @inlinable
    public static var midpointChromaSamples: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 17) }


    @inlinable
    public static var sampledImageYcbcrConversionLinearFilter: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 18) }


    @inlinable
    public static var sampledImageYcbcrConversionSeparateReconstructionFilter: FormatFeatureFlags {
        FormatFeatureFlags(rawValue: 1 << 19)
    }


    @inlinable
    public static var sampledImageYcbcrConversionChromaReconstructionExplicit: FormatFeatureFlags {
        FormatFeatureFlags(rawValue: 1 << 20)
    }


    @inlinable
    public static var sampledImageYcbcrConversionChromaReconstructionExplicitForceable: FormatFeatureFlags {
        FormatFeatureFlags(rawValue: 1 << 21)
    }


    @inlinable
    public static var disjoint: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 22) }


    @inlinable
    public static var cositedChromaSamples: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 23) }


    @inlinable
    public static var sampledImageFilterMinmax: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 16) }


    @inlinable
    public static var videoDecodeOutput_KHR: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 25) }


    @inlinable
    public static var videoDecodeDpb_KHR: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 26) }


    @inlinable
    public static var accelerationStructureVertexBuffer_KHR: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 29) }


    @inlinable
    public static var sampledImageFilterCubic_EXT: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 13) }


    @inlinable
    public static var fragmentDensityMap_EXT: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 24) }


    @inlinable
    public static var fragmentShadingRateAttachment_KHR: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 30) }


    @inlinable
    public static var videoEncodeInput_KHR: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 27) }


    @inlinable
    public static var videoEncodeDpb_KHR: FormatFeatureFlags { FormatFeatureFlags(rawValue: 1 << 28) }


    @inlinable
    public static var sampledImageFilterCubic_IMG: FormatFeatureFlags { self.sampledImageFilterCubic_EXT }


    @inlinable
    public static var transferSrc_KHR: FormatFeatureFlags { self.transferSrc }


    @inlinable
    public static var transferDst_KHR: FormatFeatureFlags { self.transferDst }


    @inlinable
    public static var sampledImageFilterMinmax_EXT: FormatFeatureFlags { self.sampledImageFilterMinmax }


    @inlinable
    public static var midpointChromaSamples_KHR: FormatFeatureFlags { self.midpointChromaSamples }


    @inlinable
    public static var sampledImageYcbcrConversionLinearFilter_KHR: FormatFeatureFlags {
        self.sampledImageYcbcrConversionLinearFilter
    }


    @inlinable
    public static var sampledImageYcbcrConversionSeparateReconstructionFilter_KHR: FormatFeatureFlags {
        self.sampledImageYcbcrConversionSeparateReconstructionFilter
    }


    @inlinable
    public static var sampledImageYcbcrConversionChromaReconstructionExplicit_KHR: FormatFeatureFlags {
        self.sampledImageYcbcrConversionChromaReconstructionExplicit
    }


    @inlinable
    public static var sampledImageYcbcrConversionChromaReconstructionExplicitForceable_KHR: FormatFeatureFlags {
        self.sampledImageYcbcrConversionChromaReconstructionExplicitForceable
    }


    @inlinable
    public static var disjoint_KHR: FormatFeatureFlags { self.disjoint }


    @inlinable
    public static var cositedChromaSamples_KHR: FormatFeatureFlags { self.cositedChromaSamples }
}


public struct FormatFeatureFlags2: OptionSet {
    /// The raw value of the bitmask, represented as a UInt64.
    public let rawValue: UInt64

    /// Initilizes an instance of `FormatFeatureFlags2` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt64) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var sampledImage: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 0) }


    @inlinable
    public static var storageImage: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 1) }


    @inlinable
    public static var storageImageAtomic: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 2) }


    @inlinable
    public static var uniformTexelBuffer: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 3) }


    @inlinable
    public static var storageTexelBuffer: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 4) }


    @inlinable
    public static var storageTexelBufferAtomic: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 5) }


    @inlinable
    public static var vertexBuffer: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 6) }


    @inlinable
    public static var colorAttachment: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 7) }


    @inlinable
    public static var colorAttachmentBlend: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 8) }


    @inlinable
    public static var depthStencilAttachment: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 9) }


    @inlinable
    public static var blitSrc: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 10) }


    @inlinable
    public static var blitDst: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 11) }


    @inlinable
    public static var sampledImageFilterLinear: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 12) }


    @inlinable
    public static var transferSrc: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 14) }


    @inlinable
    public static var transferDst: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 15) }


    @inlinable
    public static var sampledImageFilterMinmax: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 16) }


    @inlinable
    public static var midpointChromaSamples: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 17) }


    @inlinable
    public static var sampledImageYcbcrConversionLinearFilter: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 18) }


    @inlinable
    public static var sampledImageYcbcrConversionSeparateReconstructionFilter: FormatFeatureFlags2 {
        FormatFeatureFlags2(rawValue: 1 << 19)
    }


    @inlinable
    public static var sampledImageYcbcrConversionChromaReconstructionExplicit: FormatFeatureFlags2 {
        FormatFeatureFlags2(rawValue: 1 << 20)
    }


    @inlinable
    public static var sampledImageYcbcrConversionChromaReconstructionExplicitForceable: FormatFeatureFlags2 {
        FormatFeatureFlags2(rawValue: 1 << 21)
    }


    @inlinable
    public static var disjoint: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 22) }


    @inlinable
    public static var cositedChromaSamples: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 23) }


    @inlinable
    public static var storageReadWithoutFormat: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 31) }


    @inlinable
    public static var storageWriteWithoutFormat: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 32) }


    @inlinable
    public static var sampledImageDepthComparison: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 33) }


    @inlinable
    public static var sampledImageFilterCubic: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 13) }


    @inlinable
    public static var hostImageTransfer: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 46) }


    @inlinable
    public static var videoDecodeOutput_KHR: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 25) }


    @inlinable
    public static var videoDecodeDpb_KHR: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 26) }


    @inlinable
    public static var accelerationStructureVertexBuffer_KHR: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 29) }


    @inlinable
    public static var fragmentDensityMap_EXT: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 24) }


    @inlinable
    public static var fragmentShadingRateAttachment_KHR: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 30) }


    @inlinable
    public static var videoEncodeInput_KHR: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 27) }


    @inlinable
    public static var videoEncodeDpb_KHR: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 28) }


    @inlinable
    public static var accelerationStructureRadiusBuffer_NV: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 51) }


    @inlinable
    public static var linearColorAttachment_NV: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 38) }


    @inlinable
    public static var weightImage_QCOM: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 34) }


    @inlinable
    public static var weightSampledImage_QCOM: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 35) }


    @inlinable
    public static var blockMatching_QCOM: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 36) }


    @inlinable
    public static var boxFilterSampled_QCOM: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 37) }


    @inlinable
    public static var opticalFlowImage_NV: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 40) }


    @inlinable
    public static var opticalFlowVector_NV: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 41) }


    @inlinable
    public static var opticalFlowCost_NV: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 42) }


    @inlinable
    public static var videoEncodeQuantizationDeltaMap_KHR: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 49) }


    @inlinable
    public static var videoEncodeEmphasisMap_KHR: FormatFeatureFlags2 { FormatFeatureFlags2(rawValue: 1 << 50) }


    @inlinable
    public static var hostImageTransfer_EXT: FormatFeatureFlags2 { self.hostImageTransfer }


    @inlinable
    public static var sampledImage_KHR: FormatFeatureFlags2 { self.sampledImage }


    @inlinable
    public static var storageImage_KHR: FormatFeatureFlags2 { self.storageImage }


    @inlinable
    public static var storageImageAtomic_KHR: FormatFeatureFlags2 { self.storageImageAtomic }


    @inlinable
    public static var uniformTexelBuffer_KHR: FormatFeatureFlags2 { self.uniformTexelBuffer }


    @inlinable
    public static var storageTexelBuffer_KHR: FormatFeatureFlags2 { self.storageTexelBuffer }


    @inlinable
    public static var storageTexelBufferAtomic_KHR: FormatFeatureFlags2 { self.storageTexelBufferAtomic }


    @inlinable
    public static var vertexBuffer_KHR: FormatFeatureFlags2 { self.vertexBuffer }


    @inlinable
    public static var colorAttachment_KHR: FormatFeatureFlags2 { self.colorAttachment }


    @inlinable
    public static var colorAttachmentBlend_KHR: FormatFeatureFlags2 { self.colorAttachmentBlend }


    @inlinable
    public static var depthStencilAttachment_KHR: FormatFeatureFlags2 { self.depthStencilAttachment }


    @inlinable
    public static var blitSrc_KHR: FormatFeatureFlags2 { self.blitSrc }


    @inlinable
    public static var blitDst_KHR: FormatFeatureFlags2 { self.blitDst }


    @inlinable
    public static var sampledImageFilterLinear_KHR: FormatFeatureFlags2 { self.sampledImageFilterLinear }


    @inlinable
    public static var transferSrc_KHR: FormatFeatureFlags2 { self.transferSrc }


    @inlinable
    public static var transferDst_KHR: FormatFeatureFlags2 { self.transferDst }


    @inlinable
    public static var midpointChromaSamples_KHR: FormatFeatureFlags2 { self.midpointChromaSamples }


    @inlinable
    public static var sampledImageYcbcrConversionLinearFilter_KHR: FormatFeatureFlags2 {
        self.sampledImageYcbcrConversionLinearFilter
    }


    @inlinable
    public static var sampledImageYcbcrConversionSeparateReconstructionFilter_KHR: FormatFeatureFlags2 {
        self.sampledImageYcbcrConversionSeparateReconstructionFilter
    }


    @inlinable
    public static var sampledImageYcbcrConversionChromaReconstructionExplicit_KHR: FormatFeatureFlags2 {
        self.sampledImageYcbcrConversionChromaReconstructionExplicit
    }


    @inlinable
    public static var sampledImageYcbcrConversionChromaReconstructionExplicitForceable_KHR: FormatFeatureFlags2 {
        self.sampledImageYcbcrConversionChromaReconstructionExplicitForceable
    }


    @inlinable
    public static var disjoint_KHR: FormatFeatureFlags2 { self.disjoint }


    @inlinable
    public static var cositedChromaSamples_KHR: FormatFeatureFlags2 { self.cositedChromaSamples }


    @inlinable
    public static var storageReadWithoutFormat_KHR: FormatFeatureFlags2 { self.storageReadWithoutFormat }


    @inlinable
    public static var storageWriteWithoutFormat_KHR: FormatFeatureFlags2 { self.storageWriteWithoutFormat }


    @inlinable
    public static var sampledImageDepthComparison_KHR: FormatFeatureFlags2 { self.sampledImageDepthComparison }


    @inlinable
    public static var sampledImageFilterMinmax_KHR: FormatFeatureFlags2 { self.sampledImageFilterMinmax }


    @inlinable
    public static var sampledImageFilterCubic_EXT: FormatFeatureFlags2 { self.sampledImageFilterCubic }
}


public struct FrameBoundaryFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `FrameBoundaryFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var frameEnd_EXT: FrameBoundaryFlagsEXT { FrameBoundaryFlagsEXT(rawValue: 1 << 0) }
}


public struct FramebufferCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `FramebufferCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var imageless: FramebufferCreateFlags { FramebufferCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var imageless_KHR: FramebufferCreateFlags { self.imageless }
}


public struct GeometryFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `GeometryFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var opaque_KHR: GeometryFlagsKHR { GeometryFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var noDuplicateAnyHitInvocation_KHR: GeometryFlagsKHR { GeometryFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var opaque_NV: GeometryFlagsKHR { self.opaque_KHR }


    @inlinable
    public static var noDuplicateAnyHitInvocation_NV: GeometryFlagsKHR { self.noDuplicateAnyHitInvocation_KHR }
}


public struct GeometryInstanceFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `GeometryInstanceFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var triangleFacingCullDisableBit_KHR: GeometryInstanceFlagsKHR {
        GeometryInstanceFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var triangleFlipFacingBit_KHR: GeometryInstanceFlagsKHR { GeometryInstanceFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var forceOpaqueBit_KHR: GeometryInstanceFlagsKHR { GeometryInstanceFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var forceNoOpaqueBit_KHR: GeometryInstanceFlagsKHR { GeometryInstanceFlagsKHR(rawValue: 1 << 3) }


    @inlinable
    public static var forceOpacityMicromap2State_EXT: GeometryInstanceFlagsKHR { GeometryInstanceFlagsKHR(rawValue: 1 << 4) }


    @inlinable
    public static var disableOpacityMicromaps_EXT: GeometryInstanceFlagsKHR { GeometryInstanceFlagsKHR(rawValue: 1 << 5) }


    @inlinable
    public static var triangleFrontCounterclockwiseBit_KHR: GeometryInstanceFlagsKHR { self.triangleFlipFacingBit_KHR }


    @inlinable
    public static var triangleCullDisableBit_NV: GeometryInstanceFlagsKHR { self.triangleFacingCullDisableBit_KHR }


    @inlinable
    public static var triangleFrontCounterclockwiseBit_NV: GeometryInstanceFlagsKHR { self.triangleFlipFacingBit_KHR }


    @inlinable
    public static var forceOpaqueBit_NV: GeometryInstanceFlagsKHR { self.forceOpaqueBit_KHR }


    @inlinable
    public static var forceNoOpaqueBit_NV: GeometryInstanceFlagsKHR { self.forceNoOpaqueBit_KHR }
}


public struct GraphicsPipelineLibraryFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `GraphicsPipelineLibraryFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var vertexInputInterface_EXT: GraphicsPipelineLibraryFlagsEXT {
        GraphicsPipelineLibraryFlagsEXT(rawValue: 1 << 0)
    }


    @inlinable
    public static var preRasterizationShaders_EXT: GraphicsPipelineLibraryFlagsEXT {
        GraphicsPipelineLibraryFlagsEXT(rawValue: 1 << 1)
    }


    @inlinable
    public static var fragmentShader_EXT: GraphicsPipelineLibraryFlagsEXT {
        GraphicsPipelineLibraryFlagsEXT(rawValue: 1 << 2)
    }


    @inlinable
    public static var fragmentOutputInterface_EXT: GraphicsPipelineLibraryFlagsEXT {
        GraphicsPipelineLibraryFlagsEXT(rawValue: 1 << 3)
    }
}


public struct HostImageCopyFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `HostImageCopyFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var memcpy: HostImageCopyFlags { HostImageCopyFlags(rawValue: 1 << 0) }


    @inlinable
    public static var memcpy_EXT: HostImageCopyFlags { self.memcpy }
}


public struct ImageAspectFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ImageAspectFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var colorBit: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 0) }


    @inlinable
    public static var depthBit: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 1) }


    @inlinable
    public static var stencilBit: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 2) }


    @inlinable
    public static var metadataBit: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 3) }


    @inlinable
    public static var plane0Bit: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 4) }


    @inlinable
    public static var plane1Bit: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 5) }


    @inlinable
    public static var plane2Bit: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 6) }


    @inlinable
    public static var none: ImageAspectFlags { ImageAspectFlags(rawValue: 0) }


    @inlinable
    public static var memoryPlane0Bit_EXT: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 7) }


    @inlinable
    public static var memoryPlane1Bit_EXT: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 8) }


    @inlinable
    public static var memoryPlane2Bit_EXT: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 9) }


    @inlinable
    public static var memoryPlane3Bit_EXT: ImageAspectFlags { ImageAspectFlags(rawValue: 1 << 10) }


    @inlinable
    public static var plane0Bit_KHR: ImageAspectFlags { self.plane0Bit }


    @inlinable
    public static var plane1Bit_KHR: ImageAspectFlags { self.plane1Bit }


    @inlinable
    public static var plane2Bit_KHR: ImageAspectFlags { self.plane2Bit }


    @inlinable
    public static var none_KHR: ImageAspectFlags { self.none }
}


public struct ImageCompressionFixedRateFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ImageCompressionFixedRateFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var none_EXT: ImageCompressionFixedRateFlagsEXT { ImageCompressionFixedRateFlagsEXT(rawValue: 0) }


    @inlinable
    public static var `1bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 0)
    }


    @inlinable
    public static var `2bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 1)
    }


    @inlinable
    public static var `3bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 2)
    }


    @inlinable
    public static var `4bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 3)
    }


    @inlinable
    public static var `5bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 4)
    }


    @inlinable
    public static var `6bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 5)
    }


    @inlinable
    public static var `7bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 6)
    }


    @inlinable
    public static var `8bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 7)
    }


    @inlinable
    public static var `9bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 8)
    }


    @inlinable
    public static var `10bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 9)
    }


    @inlinable
    public static var `11bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 10)
    }


    @inlinable
    public static var `12bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 11)
    }


    @inlinable
    public static var `13bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 12)
    }


    @inlinable
    public static var `14bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 13)
    }


    @inlinable
    public static var `15bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 14)
    }


    @inlinable
    public static var `16bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 15)
    }


    @inlinable
    public static var `17bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 16)
    }


    @inlinable
    public static var `18bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 17)
    }


    @inlinable
    public static var `19bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 18)
    }


    @inlinable
    public static var `20bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 19)
    }


    @inlinable
    public static var `21bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 20)
    }


    @inlinable
    public static var `22bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 21)
    }


    @inlinable
    public static var `23bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 22)
    }


    @inlinable
    public static var `24bpcBit_EXT`: ImageCompressionFixedRateFlagsEXT {
        ImageCompressionFixedRateFlagsEXT(rawValue: 1 << 23)
    }
}


public struct ImageCompressionFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ImageCompressionFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var default_EXT: ImageCompressionFlagsEXT { ImageCompressionFlagsEXT(rawValue: 0) }


    @inlinable
    public static var fixedRateDefault_EXT: ImageCompressionFlagsEXT { ImageCompressionFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var fixedRateExplicit_EXT: ImageCompressionFlagsEXT { ImageCompressionFlagsEXT(rawValue: 1 << 1) }


    @inlinable
    public static var disabled_EXT: ImageCompressionFlagsEXT { ImageCompressionFlagsEXT(rawValue: 1 << 2) }
}


#if !PlatformFuchsia
    @available(*, unavailable, message: "This flag requires the following trait: PlatformFuchsia.")
#endif
public struct ImageConstraintsInfoFlagsFUCHSIA: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ImageConstraintsInfoFlagsFUCHSIA` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var cpuReadRarely_FUCHSIA: ImageConstraintsInfoFlagsFUCHSIA {
        ImageConstraintsInfoFlagsFUCHSIA(rawValue: 1 << 0)
    }


    @inlinable
    public static var cpuReadOften_FUCHSIA: ImageConstraintsInfoFlagsFUCHSIA {
        ImageConstraintsInfoFlagsFUCHSIA(rawValue: 1 << 1)
    }


    @inlinable
    public static var cpuWriteRarely_FUCHSIA: ImageConstraintsInfoFlagsFUCHSIA {
        ImageConstraintsInfoFlagsFUCHSIA(rawValue: 1 << 2)
    }


    @inlinable
    public static var cpuWriteOften_FUCHSIA: ImageConstraintsInfoFlagsFUCHSIA {
        ImageConstraintsInfoFlagsFUCHSIA(rawValue: 1 << 3)
    }


    @inlinable
    public static var protectedOptional_FUCHSIA: ImageConstraintsInfoFlagsFUCHSIA {
        ImageConstraintsInfoFlagsFUCHSIA(rawValue: 1 << 4)
    }
}


public struct ImageCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ImageCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var sparseBinding: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var sparseResidency: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 1) }


    @inlinable
    public static var sparseAliased: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 2) }


    @inlinable
    public static var mutableFormat: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 3) }


    @inlinable
    public static var cubeCompatible: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 4) }


    @inlinable
    public static var alias: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 10) }


    @inlinable
    public static var splitInstanceBindRegions: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 6) }


    @inlinable
    public static var `2dArrayCompatible`: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 5) }


    @inlinable
    public static var blockTexelViewCompatible: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 7) }


    @inlinable
    public static var extendedUsage: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 8) }


    @inlinable
    public static var protected: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 11) }


    @inlinable
    public static var disjoint: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 9) }


    @inlinable
    public static var cornerSampled_NV: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 13) }


    @inlinable
    public static var sampleLocationsCompatibleDepth_EXT: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 12) }


    @inlinable
    public static var subsampled_EXT: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 14) }


    @inlinable
    public static var descriptorBufferCaptureReplay_EXT: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 16) }


    @inlinable
    public static var multisampledRenderToSingleSampled_EXT: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 18) }


    @inlinable
    public static var `2dViewCompatible_EXT`: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 17) }


    @inlinable
    public static var videoProfileIndependent_KHR: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 20) }


    @inlinable
    public static var fragmentDensityMapOffset_EXT: ImageCreateFlags { ImageCreateFlags(rawValue: 1 << 15) }


    @inlinable
    public static var splitInstanceBindRegions_KHR: ImageCreateFlags { self.splitInstanceBindRegions }


    @inlinable
    public static var `2dArrayCompatible_KHR`: ImageCreateFlags { self.`2dArrayCompatible` }


    @inlinable
    public static var blockTexelViewCompatible_KHR: ImageCreateFlags { self.blockTexelViewCompatible }


    @inlinable
    public static var extendedUsage_KHR: ImageCreateFlags { self.extendedUsage }


    @inlinable
    public static var disjoint_KHR: ImageCreateFlags { self.disjoint }


    @inlinable
    public static var alias_KHR: ImageCreateFlags { self.alias }


    @inlinable
    public static var fragmentDensityMapOffset_QCOM: ImageCreateFlags { self.fragmentDensityMapOffset_EXT }
}


public struct ImageUsageFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ImageUsageFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var transferSrc: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 0) }


    @inlinable
    public static var transferDst: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 1) }


    @inlinable
    public static var sampled: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 2) }


    @inlinable
    public static var storage: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 3) }


    @inlinable
    public static var colorAttachment: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 4) }


    @inlinable
    public static var depthStencilAttachment: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 5) }


    @inlinable
    public static var transientAttachment: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 6) }


    @inlinable
    public static var inputAttachment: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 7) }


    @inlinable
    public static var hostTransfer: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 22) }


    @inlinable
    public static var videoDecodeDst_KHR: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 10) }


    @inlinable
    public static var videoDecodeSrc_KHR: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 11) }


    @inlinable
    public static var videoDecodeDpb_KHR: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 12) }


    @inlinable
    public static var fragmentDensityMap_EXT: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 9) }


    @inlinable
    public static var fragmentShadingRateAttachment_KHR: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 8) }


    @inlinable
    public static var videoEncodeDst_KHR: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 13) }


    @inlinable
    public static var videoEncodeSrc_KHR: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 14) }


    @inlinable
    public static var videoEncodeDpb_KHR: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 15) }


    @inlinable
    public static var attachmentFeedbackLoop_EXT: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 19) }


    @inlinable
    public static var invocationMask_HUAWEI: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 18) }


    @inlinable
    public static var sampleWeight_QCOM: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 20) }


    @inlinable
    public static var sampleBlockMatch_QCOM: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 21) }


    @inlinable
    public static var tileMemory_QCOM: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 27) }


    @inlinable
    public static var videoEncodeQuantizationDeltaMap_KHR: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 25) }


    @inlinable
    public static var videoEncodeEmphasisMap_KHR: ImageUsageFlags { ImageUsageFlags(rawValue: 1 << 26) }


    @inlinable
    public static var shadingRateImage_NV: ImageUsageFlags { self.fragmentShadingRateAttachment_KHR }


    @inlinable
    public static var hostTransfer_EXT: ImageUsageFlags { self.hostTransfer }
}


public struct ImageViewCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ImageViewCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var fragmentDensityMapDynamic_EXT: ImageViewCreateFlags { ImageViewCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var descriptorBufferCaptureReplay_EXT: ImageViewCreateFlags { ImageViewCreateFlags(rawValue: 1 << 2) }


    @inlinable
    public static var fragmentDensityMapDeferred_EXT: ImageViewCreateFlags { ImageViewCreateFlags(rawValue: 1 << 1) }
}


public struct IndirectCommandsInputModeFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `IndirectCommandsInputModeFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var vulkanIndexBuffer_EXT: IndirectCommandsInputModeFlagsEXT {
        IndirectCommandsInputModeFlagsEXT(rawValue: 1 << 0)
    }


    @inlinable
    public static var dxgiIndexBuffer_EXT: IndirectCommandsInputModeFlagsEXT {
        IndirectCommandsInputModeFlagsEXT(rawValue: 1 << 1)
    }
}


public struct IndirectCommandsLayoutUsageFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `IndirectCommandsLayoutUsageFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var explicitPreprocess_EXT: IndirectCommandsLayoutUsageFlagsEXT {
        IndirectCommandsLayoutUsageFlagsEXT(rawValue: 1 << 0)
    }


    @inlinable
    public static var unorderedSequences_EXT: IndirectCommandsLayoutUsageFlagsEXT {
        IndirectCommandsLayoutUsageFlagsEXT(rawValue: 1 << 1)
    }
}


public struct IndirectCommandsLayoutUsageFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `IndirectCommandsLayoutUsageFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var explicitPreprocess_NV: IndirectCommandsLayoutUsageFlagsNV {
        IndirectCommandsLayoutUsageFlagsNV(rawValue: 1 << 0)
    }


    @inlinable
    public static var indexedSequences_NV: IndirectCommandsLayoutUsageFlagsNV {
        IndirectCommandsLayoutUsageFlagsNV(rawValue: 1 << 1)
    }


    @inlinable
    public static var unorderedSequences_NV: IndirectCommandsLayoutUsageFlagsNV {
        IndirectCommandsLayoutUsageFlagsNV(rawValue: 1 << 2)
    }
}


public struct IndirectStateFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `IndirectStateFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var flagFrontface_NV: IndirectStateFlagsNV { IndirectStateFlagsNV(rawValue: 1 << 0) }
}


public struct InstanceCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `InstanceCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var enumeratePortability_KHR: InstanceCreateFlags { InstanceCreateFlags(rawValue: 1 << 0) }
}


public struct MemoryAllocateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `MemoryAllocateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var deviceMask: MemoryAllocateFlags { MemoryAllocateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var deviceAddress: MemoryAllocateFlags { MemoryAllocateFlags(rawValue: 1 << 1) }


    @inlinable
    public static var deviceAddressCaptureReplay: MemoryAllocateFlags { MemoryAllocateFlags(rawValue: 1 << 2) }


    @inlinable
    public static var zeroInitialize_EXT: MemoryAllocateFlags { MemoryAllocateFlags(rawValue: 1 << 3) }


    @inlinable
    public static var deviceMask_KHR: MemoryAllocateFlags { self.deviceMask }


    @inlinable
    public static var deviceAddress_KHR: MemoryAllocateFlags { self.deviceAddress }


    @inlinable
    public static var deviceAddressCaptureReplay_KHR: MemoryAllocateFlags { self.deviceAddressCaptureReplay }
}


public struct MemoryDecompressionMethodFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt64.
    public let rawValue: UInt64

    /// Initilizes an instance of `MemoryDecompressionMethodFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt64) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var gdeflate10_NV: MemoryDecompressionMethodFlagsNV { MemoryDecompressionMethodFlagsNV(rawValue: 1 << 0) }
}


public struct MemoryHeapFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `MemoryHeapFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var deviceLocal: MemoryHeapFlags { MemoryHeapFlags(rawValue: 1 << 0) }


    @inlinable
    public static var multiInstance: MemoryHeapFlags { MemoryHeapFlags(rawValue: 1 << 1) }


    @inlinable
    public static var tileMemory_QCOM: MemoryHeapFlags { MemoryHeapFlags(rawValue: 1 << 3) }


    @inlinable
    public static var multiInstance_KHR: MemoryHeapFlags { self.multiInstance }
}


public struct MemoryMapFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `MemoryMapFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var placed_EXT: MemoryMapFlags { MemoryMapFlags(rawValue: 1 << 0) }
}


public struct MemoryPropertyFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `MemoryPropertyFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var deviceLocal: MemoryPropertyFlags { MemoryPropertyFlags(rawValue: 1 << 0) }


    @inlinable
    public static var hostVisible: MemoryPropertyFlags { MemoryPropertyFlags(rawValue: 1 << 1) }


    @inlinable
    public static var hostCoherent: MemoryPropertyFlags { MemoryPropertyFlags(rawValue: 1 << 2) }


    @inlinable
    public static var hostCached: MemoryPropertyFlags { MemoryPropertyFlags(rawValue: 1 << 3) }


    @inlinable
    public static var lazilyAllocated: MemoryPropertyFlags { MemoryPropertyFlags(rawValue: 1 << 4) }


    @inlinable
    public static var protected: MemoryPropertyFlags { MemoryPropertyFlags(rawValue: 1 << 5) }


    @inlinable
    public static var deviceCoherent_AMD: MemoryPropertyFlags { MemoryPropertyFlags(rawValue: 1 << 6) }


    @inlinable
    public static var deviceUncached_AMD: MemoryPropertyFlags { MemoryPropertyFlags(rawValue: 1 << 7) }


    @inlinable
    public static var rdmaCapable_NV: MemoryPropertyFlags { MemoryPropertyFlags(rawValue: 1 << 8) }
}


public struct MemoryUnmapFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `MemoryUnmapFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var reserve_EXT: MemoryUnmapFlags { MemoryUnmapFlags(rawValue: 1 << 0) }
}


public struct MicromapCreateFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `MicromapCreateFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var deviceAddressCaptureReplay_EXT: MicromapCreateFlagsEXT { MicromapCreateFlagsEXT(rawValue: 1 << 0) }
}


public struct OpticalFlowExecuteFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `OpticalFlowExecuteFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var disableTemporalHints_NV: OpticalFlowExecuteFlagsNV { OpticalFlowExecuteFlagsNV(rawValue: 1 << 0) }
}


public struct OpticalFlowGridSizeFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `OpticalFlowGridSizeFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var unknown_NV: OpticalFlowGridSizeFlagsNV { OpticalFlowGridSizeFlagsNV(rawValue: 0) }


    @inlinable
    public static var `1x1Bit_NV`: OpticalFlowGridSizeFlagsNV { OpticalFlowGridSizeFlagsNV(rawValue: 1 << 0) }


    @inlinable
    public static var `2x2Bit_NV`: OpticalFlowGridSizeFlagsNV { OpticalFlowGridSizeFlagsNV(rawValue: 1 << 1) }


    @inlinable
    public static var `4x4Bit_NV`: OpticalFlowGridSizeFlagsNV { OpticalFlowGridSizeFlagsNV(rawValue: 1 << 2) }


    @inlinable
    public static var `8x8Bit_NV`: OpticalFlowGridSizeFlagsNV { OpticalFlowGridSizeFlagsNV(rawValue: 1 << 3) }
}


public struct OpticalFlowSessionCreateFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `OpticalFlowSessionCreateFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var enableHint_NV: OpticalFlowSessionCreateFlagsNV { OpticalFlowSessionCreateFlagsNV(rawValue: 1 << 0) }


    @inlinable
    public static var enableCost_NV: OpticalFlowSessionCreateFlagsNV { OpticalFlowSessionCreateFlagsNV(rawValue: 1 << 1) }


    @inlinable
    public static var enableGlobalFlow_NV: OpticalFlowSessionCreateFlagsNV {
        OpticalFlowSessionCreateFlagsNV(rawValue: 1 << 2)
    }


    @inlinable
    public static var allowRegions_NV: OpticalFlowSessionCreateFlagsNV { OpticalFlowSessionCreateFlagsNV(rawValue: 1 << 3) }


    @inlinable
    public static var bothDirections_NV: OpticalFlowSessionCreateFlagsNV {
        OpticalFlowSessionCreateFlagsNV(rawValue: 1 << 4)
    }
}


public struct OpticalFlowUsageFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `OpticalFlowUsageFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var unknown_NV: OpticalFlowUsageFlagsNV { OpticalFlowUsageFlagsNV(rawValue: 0) }


    @inlinable
    public static var inputBit_NV: OpticalFlowUsageFlagsNV { OpticalFlowUsageFlagsNV(rawValue: 1 << 0) }


    @inlinable
    public static var outputBit_NV: OpticalFlowUsageFlagsNV { OpticalFlowUsageFlagsNV(rawValue: 1 << 1) }


    @inlinable
    public static var hintBit_NV: OpticalFlowUsageFlagsNV { OpticalFlowUsageFlagsNV(rawValue: 1 << 2) }


    @inlinable
    public static var costBit_NV: OpticalFlowUsageFlagsNV { OpticalFlowUsageFlagsNV(rawValue: 1 << 3) }


    @inlinable
    public static var globalFlowBit_NV: OpticalFlowUsageFlagsNV { OpticalFlowUsageFlagsNV(rawValue: 1 << 4) }
}


public struct PartitionedAccelerationStructureInstanceFlagsNV: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PartitionedAccelerationStructureInstanceFlagsNV` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var flagTriangleFacingCullDisableBit_NV: PartitionedAccelerationStructureInstanceFlagsNV {
        PartitionedAccelerationStructureInstanceFlagsNV(rawValue: 1 << 0)
    }


    @inlinable
    public static var flagTriangleFlipFacingBit_NV: PartitionedAccelerationStructureInstanceFlagsNV {
        PartitionedAccelerationStructureInstanceFlagsNV(rawValue: 1 << 1)
    }


    @inlinable
    public static var flagForceOpaqueBit_NV: PartitionedAccelerationStructureInstanceFlagsNV {
        PartitionedAccelerationStructureInstanceFlagsNV(rawValue: 1 << 2)
    }


    @inlinable
    public static var flagForceNoOpaqueBit_NV: PartitionedAccelerationStructureInstanceFlagsNV {
        PartitionedAccelerationStructureInstanceFlagsNV(rawValue: 1 << 3)
    }


    @inlinable
    public static var flagEnableExplicitBoundingBox_NV: PartitionedAccelerationStructureInstanceFlagsNV {
        PartitionedAccelerationStructureInstanceFlagsNV(rawValue: 1 << 4)
    }
}


public struct PeerMemoryFeatureFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PeerMemoryFeatureFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var copySrc: PeerMemoryFeatureFlags { PeerMemoryFeatureFlags(rawValue: 1 << 0) }


    @inlinable
    public static var copyDst: PeerMemoryFeatureFlags { PeerMemoryFeatureFlags(rawValue: 1 << 1) }


    @inlinable
    public static var genericSrc: PeerMemoryFeatureFlags { PeerMemoryFeatureFlags(rawValue: 1 << 2) }


    @inlinable
    public static var genericDst: PeerMemoryFeatureFlags { PeerMemoryFeatureFlags(rawValue: 1 << 3) }


    @inlinable
    public static var copySrc_KHR: PeerMemoryFeatureFlags { self.copySrc }


    @inlinable
    public static var copyDst_KHR: PeerMemoryFeatureFlags { self.copyDst }


    @inlinable
    public static var genericSrc_KHR: PeerMemoryFeatureFlags { self.genericSrc }


    @inlinable
    public static var genericDst_KHR: PeerMemoryFeatureFlags { self.genericDst }
}


public struct PerformanceCounterDescriptionFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PerformanceCounterDescriptionFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var performanceImpactingBit_KHR: PerformanceCounterDescriptionFlagsKHR {
        PerformanceCounterDescriptionFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var concurrentlyImpactedBit_KHR: PerformanceCounterDescriptionFlagsKHR {
        PerformanceCounterDescriptionFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var performanceImpacting_KHR: PerformanceCounterDescriptionFlagsKHR { self.performanceImpactingBit_KHR }


    @inlinable
    public static var concurrentlyImpacted_KHR: PerformanceCounterDescriptionFlagsKHR { self.concurrentlyImpactedBit_KHR }
}


public struct PhysicalDeviceSchedulingControlsFlagsARM: OptionSet {
    /// The raw value of the bitmask, represented as a UInt64.
    public let rawValue: UInt64

    /// Initilizes an instance of `PhysicalDeviceSchedulingControlsFlagsARM` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt64) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var shaderCoreCount_ARM: PhysicalDeviceSchedulingControlsFlagsARM {
        PhysicalDeviceSchedulingControlsFlagsARM(rawValue: 1 << 0)
    }
}


public struct PipelineCacheCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PipelineCacheCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var externallySynchronized: PipelineCacheCreateFlags { PipelineCacheCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var internallySynchronizedMerge_KHR: PipelineCacheCreateFlags {
        PipelineCacheCreateFlags(rawValue: 1 << 3)
    }


    @inlinable
    public static var externallySynchronized_EXT: PipelineCacheCreateFlags { self.externallySynchronized }
}


public struct PipelineColorBlendStateCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PipelineColorBlendStateCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var rasterizationOrderAttachmentAccess_EXT: PipelineColorBlendStateCreateFlags {
        PipelineColorBlendStateCreateFlags(rawValue: 1 << 0)
    }


    @inlinable
    public static var rasterizationOrderAttachmentAccess_ARM: PipelineColorBlendStateCreateFlags {
        self.rasterizationOrderAttachmentAccess_EXT
    }
}


public struct PipelineCompilerControlFlagsAMD: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PipelineCompilerControlFlagsAMD` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


}


public struct PipelineCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PipelineCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var disableOptimizationBit: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var allowDerivativesBit: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 1) }


    @inlinable
    public static var derivativeBit: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 2) }


    @inlinable
    public static var viewIndexFromDeviceIndexBit: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 3) }


    @inlinable
    public static var dispatchBaseBit: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 4) }


    @inlinable
    public static var failOnPipelineCompileRequiredBit: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 8) }


    @inlinable
    public static var earlyReturnOnFailureBit: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 9) }


    @inlinable
    public static var noProtectedAccessBit: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 27) }


    @inlinable
    public static var protectedAccessOnlyBit: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 30) }


    @inlinable
    public static var rayTracingNoNullAnyHitShadersBit_KHR: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 14) }


    @inlinable
    public static var rayTracingNoNullClosestHitShadersBit_KHR: PipelineCreateFlags {
        PipelineCreateFlags(rawValue: 1 << 15)
    }


    @inlinable
    public static var rayTracingNoNullMissShadersBit_KHR: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 16) }


    @inlinable
    public static var rayTracingNoNullIntersectionShadersBit_KHR: PipelineCreateFlags {
        PipelineCreateFlags(rawValue: 1 << 17)
    }


    @inlinable
    public static var rayTracingSkipTrianglesBit_KHR: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 12) }


    @inlinable
    public static var rayTracingSkipAabbsBit_KHR: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 13) }


    @inlinable
    public static var rayTracingShaderGroupHandleCaptureReplayBit_KHR: PipelineCreateFlags {
        PipelineCreateFlags(rawValue: 1 << 19)
    }


    @inlinable
    public static var deferCompileBit_NV: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 5) }


    @inlinable
    public static var renderingFragmentDensityMapAttachmentBit_EXT: PipelineCreateFlags {
        PipelineCreateFlags(rawValue: 1 << 22)
    }


    @inlinable
    public static var renderingFragmentShadingRateAttachmentBit_KHR: PipelineCreateFlags {
        PipelineCreateFlags(rawValue: 1 << 21)
    }


    @inlinable
    public static var captureStatisticsBit_KHR: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 6) }


    @inlinable
    public static var captureInternalRepresentationsBit_KHR: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 7) }


    @inlinable
    public static var indirectBindableBit_NV: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 18) }


    @inlinable
    public static var libraryBit_KHR: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 11) }


    @inlinable
    public static var descriptorBufferBit_EXT: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 29) }


    @inlinable
    public static var retainLinkTimeOptimizationInfoBit_EXT: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 23) }


    @inlinable
    public static var linkTimeOptimizationBit_EXT: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 10) }


    @inlinable
    public static var rayTracingAllowMotionBit_NV: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 20) }


    @inlinable
    public static var colorAttachmentFeedbackLoopBit_EXT: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 25) }


    @inlinable
    public static var depthStencilAttachmentFeedbackLoopBit_EXT: PipelineCreateFlags {
        PipelineCreateFlags(rawValue: 1 << 26)
    }


    @inlinable
    public static var rayTracingOpacityMicromapBit_EXT: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 24) }


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    @inlinable
    public static var rayTracingDisplacementMicromapBit_NV: PipelineCreateFlags { PipelineCreateFlags(rawValue: 1 << 28) }


    @inlinable
    public static var dispatchBase: PipelineCreateFlags { self.dispatchBaseBit }


    @inlinable
    public static var viewIndexFromDeviceIndexBit_KHR: PipelineCreateFlags { self.viewIndexFromDeviceIndexBit }


    @inlinable
    public static var dispatchBase_KHR: PipelineCreateFlags { self.dispatchBaseBit }


    @inlinable
    public static var rasterizationStateCreateFragmentDensityMapAttachmentBit_EXT: PipelineCreateFlags {
        self.renderingFragmentDensityMapAttachmentBit_EXT
    }


    @inlinable
    public static var rasterizationStateCreateFragmentShadingRateAttachmentBit_KHR: PipelineCreateFlags {
        self.renderingFragmentShadingRateAttachmentBit_KHR
    }


    @inlinable
    public static var failOnPipelineCompileRequiredBit_EXT: PipelineCreateFlags { self.failOnPipelineCompileRequiredBit }


    @inlinable
    public static var earlyReturnOnFailureBit_EXT: PipelineCreateFlags { self.earlyReturnOnFailureBit }


    @inlinable
    public static var noProtectedAccessBit_EXT: PipelineCreateFlags { self.noProtectedAccessBit }


    @inlinable
    public static var protectedAccessOnlyBit_EXT: PipelineCreateFlags { self.protectedAccessOnlyBit }
}


public struct PipelineCreateFlags2: OptionSet {
    /// The raw value of the bitmask, represented as a UInt64.
    public let rawValue: UInt64

    /// Initilizes an instance of `PipelineCreateFlags2` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt64) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var disableOptimization: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 0) }


    @inlinable
    public static var allowDerivatives: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 1) }


    @inlinable
    public static var derivative: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 2) }


    @inlinable
    public static var viewIndexFromDeviceIndex: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 3) }


    @inlinable
    public static var dispatchBase: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 4) }


    @inlinable
    public static var failOnPipelineCompileRequired: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 8) }


    @inlinable
    public static var earlyReturnOnFailure: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 9) }


    @inlinable
    public static var noProtectedAccess: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 27) }


    @inlinable
    public static var protectedAccessOnly: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 30) }


    #if !EnableProvisional
        @available(*, unavailable, message: "This flag requires the following trait: EnableProvisional.")
    #endif
    @inlinable
    public static var executionGraph_AMDX: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 32) }


    @inlinable
    public static var rayTracingAllowSpheresAndLinearSweptSpheres_NV: PipelineCreateFlags2 {
        PipelineCreateFlags2(rawValue: 1 << 33)
    }


    @inlinable
    public static var enableLegacyDithering_EXT: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 34) }


    @inlinable
    public static var deferCompile_NV: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 5) }


    @inlinable
    public static var captureStatistics_KHR: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 6) }


    @inlinable
    public static var captureInternalRepresentations_KHR: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 7) }


    @inlinable
    public static var linkTimeOptimization_EXT: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 10) }


    @inlinable
    public static var retainLinkTimeOptimizationInfo_EXT: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 23) }


    @inlinable
    public static var library_KHR: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 11) }


    @inlinable
    public static var rayTracingSkipTriangles_KHR: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 12) }


    @inlinable
    public static var rayTracingSkipAabbs_KHR: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 13) }


    @inlinable
    public static var rayTracingNoNullAnyHitShaders_KHR: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 14) }


    @inlinable
    public static var rayTracingNoNullClosestHitShaders_KHR: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 15) }


    @inlinable
    public static var rayTracingNoNullMissShaders_KHR: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 16) }


    @inlinable
    public static var rayTracingNoNullIntersectionShaders_KHR: PipelineCreateFlags2 {
        PipelineCreateFlags2(rawValue: 1 << 17)
    }


    @inlinable
    public static var rayTracingShaderGroupHandleCaptureReplay_KHR: PipelineCreateFlags2 {
        PipelineCreateFlags2(rawValue: 1 << 19)
    }


    @inlinable
    public static var indirectBindable_NV: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 18) }


    @inlinable
    public static var rayTracingAllowMotion_NV: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 20) }


    @inlinable
    public static var renderingFragmentShadingRateAttachment_KHR: PipelineCreateFlags2 {
        PipelineCreateFlags2(rawValue: 1 << 21)
    }


    @inlinable
    public static var renderingFragmentDensityMapAttachment_EXT: PipelineCreateFlags2 {
        PipelineCreateFlags2(rawValue: 1 << 22)
    }


    @inlinable
    public static var rayTracingOpacityMicromap_EXT: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 24) }


    @inlinable
    public static var colorAttachmentFeedbackLoop_EXT: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 25) }


    @inlinable
    public static var depthStencilAttachmentFeedbackLoop_EXT: PipelineCreateFlags2 {
        PipelineCreateFlags2(rawValue: 1 << 26)
    }


    @inlinable
    public static var rayTracingDisplacementMicromap_NV: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 28) }


    @inlinable
    public static var descriptorBuffer_EXT: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 29) }


    @inlinable
    public static var disallowOpacityMicromap_ARM: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 37) }


    @inlinable
    public static var captureData_KHR: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 31) }


    @inlinable
    public static var indirectBindable_EXT: PipelineCreateFlags2 { PipelineCreateFlags2(rawValue: 1 << 38) }


    @inlinable
    public static var rayTracingSkipBuiltInPrimitives_KHR: PipelineCreateFlags2 { self.rayTracingSkipTriangles_KHR }


    @inlinable
    public static var disableOptimization_KHR: PipelineCreateFlags2 { self.disableOptimization }


    @inlinable
    public static var allowDerivatives_KHR: PipelineCreateFlags2 { self.allowDerivatives }


    @inlinable
    public static var derivative_KHR: PipelineCreateFlags2 { self.derivative }


    @inlinable
    public static var viewIndexFromDeviceIndex_KHR: PipelineCreateFlags2 { self.viewIndexFromDeviceIndex }


    @inlinable
    public static var dispatchBase_KHR: PipelineCreateFlags2 { self.dispatchBase }


    @inlinable
    public static var failOnPipelineCompileRequired_KHR: PipelineCreateFlags2 { self.failOnPipelineCompileRequired }


    @inlinable
    public static var earlyReturnOnFailure_KHR: PipelineCreateFlags2 { self.earlyReturnOnFailure }


    @inlinable
    public static var noProtectedAccess_EXT: PipelineCreateFlags2 { self.noProtectedAccess }


    @inlinable
    public static var protectedAccessOnly_EXT: PipelineCreateFlags2 { self.protectedAccessOnly }
}


public struct PipelineCreationFeedbackFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PipelineCreationFeedbackFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var valid: PipelineCreationFeedbackFlags { PipelineCreationFeedbackFlags(rawValue: 1 << 0) }


    @inlinable
    public static var applicationPipelineCacheHit: PipelineCreationFeedbackFlags {
        PipelineCreationFeedbackFlags(rawValue: 1 << 1)
    }


    @inlinable
    public static var basePipelineAcceleration: PipelineCreationFeedbackFlags {
        PipelineCreationFeedbackFlags(rawValue: 1 << 2)
    }


    @inlinable
    public static var valid_EXT: PipelineCreationFeedbackFlags { self.valid }


    @inlinable
    public static var applicationPipelineCacheHit_EXT: PipelineCreationFeedbackFlags { self.applicationPipelineCacheHit }


    @inlinable
    public static var basePipelineAcceleration_EXT: PipelineCreationFeedbackFlags { self.basePipelineAcceleration }
}


public struct PipelineDepthStencilStateCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PipelineDepthStencilStateCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var rasterizationOrderAttachmentDepthAccess_EXT: PipelineDepthStencilStateCreateFlags {
        PipelineDepthStencilStateCreateFlags(rawValue: 1 << 0)
    }


    @inlinable
    public static var rasterizationOrderAttachmentStencilAccess_EXT: PipelineDepthStencilStateCreateFlags {
        PipelineDepthStencilStateCreateFlags(rawValue: 1 << 1)
    }


    @inlinable
    public static var rasterizationOrderAttachmentDepthAccess_ARM: PipelineDepthStencilStateCreateFlags {
        self.rasterizationOrderAttachmentDepthAccess_EXT
    }


    @inlinable
    public static var rasterizationOrderAttachmentStencilAccess_ARM: PipelineDepthStencilStateCreateFlags {
        self.rasterizationOrderAttachmentStencilAccess_EXT
    }
}


public struct PipelineLayoutCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PipelineLayoutCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var independentSets_EXT: PipelineLayoutCreateFlags { PipelineLayoutCreateFlags(rawValue: 1 << 1) }
}


public struct PipelineShaderStageCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PipelineShaderStageCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var allowVaryingSubgroupSize: PipelineShaderStageCreateFlags {
        PipelineShaderStageCreateFlags(rawValue: 1 << 0)
    }


    @inlinable
    public static var requireFullSubgroups: PipelineShaderStageCreateFlags {
        PipelineShaderStageCreateFlags(rawValue: 1 << 1)
    }


    @inlinable
    public static var allowVaryingSubgroupSize_EXT: PipelineShaderStageCreateFlags { self.allowVaryingSubgroupSize }


    @inlinable
    public static var requireFullSubgroups_EXT: PipelineShaderStageCreateFlags { self.requireFullSubgroups }
}


public struct PipelineStageFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PipelineStageFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var topOfPipeBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 0) }


    @inlinable
    public static var drawIndirectBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 1) }


    @inlinable
    public static var vertexInputBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 2) }


    @inlinable
    public static var vertexShaderBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 3) }


    @inlinable
    public static var tessellationControlShaderBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 4) }


    @inlinable
    public static var tessellationEvaluationShaderBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 5) }


    @inlinable
    public static var geometryShaderBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 6) }


    @inlinable
    public static var fragmentShaderBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 7) }


    @inlinable
    public static var earlyFragmentTestsBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 8) }


    @inlinable
    public static var lateFragmentTestsBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 9) }


    @inlinable
    public static var colorAttachmentOutputBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 10) }


    @inlinable
    public static var computeShaderBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 11) }


    @inlinable
    public static var transferBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 12) }


    @inlinable
    public static var bottomOfPipeBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 13) }


    @inlinable
    public static var hostBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 14) }


    @inlinable
    public static var allGraphicsBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 15) }


    @inlinable
    public static var allCommandsBit: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 16) }


    @inlinable
    public static var none: PipelineStageFlags { PipelineStageFlags(rawValue: 0) }


    @inlinable
    public static var transformFeedbackBit_EXT: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 24) }


    @inlinable
    public static var conditionalRenderingBit_EXT: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 18) }


    @inlinable
    public static var accelerationStructureBuildBit_KHR: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 25) }


    @inlinable
    public static var rayTracingShaderBit_KHR: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 21) }


    @inlinable
    public static var fragmentDensityProcessBit_EXT: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 23) }


    @inlinable
    public static var fragmentShadingRateAttachmentBit_KHR: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 22) }


    @inlinable
    public static var taskShaderBit_EXT: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 19) }


    @inlinable
    public static var meshShaderBit_EXT: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 20) }


    @inlinable
    public static var commandPreprocessBit_EXT: PipelineStageFlags { PipelineStageFlags(rawValue: 1 << 17) }


    @inlinable
    public static var shadingRateImageBit_NV: PipelineStageFlags { self.fragmentShadingRateAttachmentBit_KHR }


    @inlinable
    public static var rayTracingShaderBit_NV: PipelineStageFlags { self.rayTracingShaderBit_KHR }


    @inlinable
    public static var accelerationStructureBuildBit_NV: PipelineStageFlags { self.accelerationStructureBuildBit_KHR }


    @inlinable
    public static var taskShaderBit_NV: PipelineStageFlags { self.taskShaderBit_EXT }


    @inlinable
    public static var meshShaderBit_NV: PipelineStageFlags { self.meshShaderBit_EXT }


    @inlinable
    public static var commandPreprocessBit_NV: PipelineStageFlags { self.commandPreprocessBit_EXT }


    @inlinable
    public static var none_KHR: PipelineStageFlags { self.none }
}


public struct PipelineStageFlags2: OptionSet {
    /// The raw value of the bitmask, represented as a UInt64.
    public let rawValue: UInt64

    /// Initilizes an instance of `PipelineStageFlags2` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt64) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var none: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 0) }


    @inlinable
    public static var topOfPipeBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 0) }


    @inlinable
    public static var drawIndirectBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 1) }


    @inlinable
    public static var vertexInputBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 2) }


    @inlinable
    public static var vertexShaderBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 3) }


    @inlinable
    public static var tessellationControlShaderBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 4) }


    @inlinable
    public static var tessellationEvaluationShaderBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 5) }


    @inlinable
    public static var geometryShaderBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 6) }


    @inlinable
    public static var fragmentShaderBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 7) }


    @inlinable
    public static var earlyFragmentTestsBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 8) }


    @inlinable
    public static var lateFragmentTestsBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 9) }


    @inlinable
    public static var colorAttachmentOutputBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 10) }


    @inlinable
    public static var computeShaderBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 11) }


    @inlinable
    public static var allTransferBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 12) }


    @inlinable
    public static var bottomOfPipeBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 13) }


    @inlinable
    public static var hostBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 14) }


    @inlinable
    public static var allGraphicsBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 15) }


    @inlinable
    public static var allCommandsBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 16) }


    @inlinable
    public static var copyBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 32) }


    @inlinable
    public static var resolveBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 33) }


    @inlinable
    public static var blitBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 34) }


    @inlinable
    public static var clearBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 35) }


    @inlinable
    public static var indexInputBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 36) }


    @inlinable
    public static var vertexAttributeInputBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 37) }


    @inlinable
    public static var preRasterizationShadersBit: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 38) }


    @inlinable
    public static var videoDecodeBit_KHR: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 26) }


    @inlinable
    public static var videoEncodeBit_KHR: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 27) }


    @inlinable
    public static var transformFeedbackBit_EXT: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 24) }


    @inlinable
    public static var conditionalRenderingBit_EXT: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 18) }


    @inlinable
    public static var commandPreprocessBit_EXT: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 17) }


    @inlinable
    public static var fragmentShadingRateAttachmentBit_KHR: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 22) }


    @inlinable
    public static var accelerationStructureBuildBit_KHR: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 25) }


    @inlinable
    public static var rayTracingShaderBit_KHR: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 21) }


    @inlinable
    public static var fragmentDensityProcessBit_EXT: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 23) }


    @inlinable
    public static var taskShaderBit_EXT: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 19) }


    @inlinable
    public static var meshShaderBit_EXT: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 20) }


    @inlinable
    public static var subpassShaderBit_HUAWEI: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 39) }


    @inlinable
    public static var invocationMaskBit_HUAWEI: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 40) }


    @inlinable
    public static var accelerationStructureCopyBit_KHR: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 28) }


    @inlinable
    public static var micromapBuildBit_EXT: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 30) }


    @inlinable
    public static var clusterCullingShaderBit_HUAWEI: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 41) }


    @inlinable
    public static var opticalFlowBit_NV: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 29) }


    @inlinable
    public static var convertCooperativeVectorMatrixBit_NV: PipelineStageFlags2 { PipelineStageFlags2(rawValue: 1 << 44) }


    @inlinable
    public static var transferBit: PipelineStageFlags2 { self.allTransferBit }


    @inlinable
    public static var none_KHR: PipelineStageFlags2 { self.none }


    @inlinable
    public static var topOfPipeBit_KHR: PipelineStageFlags2 { self.topOfPipeBit }


    @inlinable
    public static var drawIndirectBit_KHR: PipelineStageFlags2 { self.drawIndirectBit }


    @inlinable
    public static var vertexInputBit_KHR: PipelineStageFlags2 { self.vertexInputBit }


    @inlinable
    public static var vertexShaderBit_KHR: PipelineStageFlags2 { self.vertexShaderBit }


    @inlinable
    public static var tessellationControlShaderBit_KHR: PipelineStageFlags2 { self.tessellationControlShaderBit }


    @inlinable
    public static var tessellationEvaluationShaderBit_KHR: PipelineStageFlags2 { self.tessellationEvaluationShaderBit }


    @inlinable
    public static var geometryShaderBit_KHR: PipelineStageFlags2 { self.geometryShaderBit }


    @inlinable
    public static var fragmentShaderBit_KHR: PipelineStageFlags2 { self.fragmentShaderBit }


    @inlinable
    public static var earlyFragmentTestsBit_KHR: PipelineStageFlags2 { self.earlyFragmentTestsBit }


    @inlinable
    public static var lateFragmentTestsBit_KHR: PipelineStageFlags2 { self.lateFragmentTestsBit }


    @inlinable
    public static var colorAttachmentOutputBit_KHR: PipelineStageFlags2 { self.colorAttachmentOutputBit }


    @inlinable
    public static var computeShaderBit_KHR: PipelineStageFlags2 { self.computeShaderBit }


    @inlinable
    public static var allTransferBit_KHR: PipelineStageFlags2 { self.allTransferBit }


    @inlinable
    public static var transferBit_KHR: PipelineStageFlags2 { self.allTransferBit }


    @inlinable
    public static var bottomOfPipeBit_KHR: PipelineStageFlags2 { self.bottomOfPipeBit }


    @inlinable
    public static var hostBit_KHR: PipelineStageFlags2 { self.hostBit }


    @inlinable
    public static var allGraphicsBit_KHR: PipelineStageFlags2 { self.allGraphicsBit }


    @inlinable
    public static var allCommandsBit_KHR: PipelineStageFlags2 { self.allCommandsBit }


    @inlinable
    public static var copyBit_KHR: PipelineStageFlags2 { self.copyBit }


    @inlinable
    public static var resolveBit_KHR: PipelineStageFlags2 { self.resolveBit }


    @inlinable
    public static var blitBit_KHR: PipelineStageFlags2 { self.blitBit }


    @inlinable
    public static var clearBit_KHR: PipelineStageFlags2 { self.clearBit }


    @inlinable
    public static var indexInputBit_KHR: PipelineStageFlags2 { self.indexInputBit }


    @inlinable
    public static var vertexAttributeInputBit_KHR: PipelineStageFlags2 { self.vertexAttributeInputBit }


    @inlinable
    public static var preRasterizationShadersBit_KHR: PipelineStageFlags2 { self.preRasterizationShadersBit }


    @inlinable
    public static var commandPreprocessBit_NV: PipelineStageFlags2 { self.commandPreprocessBit_EXT }


    @inlinable
    public static var shadingRateImageBit_NV: PipelineStageFlags2 { self.fragmentShadingRateAttachmentBit_KHR }


    @inlinable
    public static var rayTracingShaderBit_NV: PipelineStageFlags2 { self.rayTracingShaderBit_KHR }


    @inlinable
    public static var accelerationStructureBuildBit_NV: PipelineStageFlags2 { self.accelerationStructureBuildBit_KHR }


    @inlinable
    public static var taskShaderBit_NV: PipelineStageFlags2 { self.taskShaderBit_EXT }


    @inlinable
    public static var meshShaderBit_NV: PipelineStageFlags2 { self.meshShaderBit_EXT }


    @inlinable
    public static var subpassShadingBit_HUAWEI: PipelineStageFlags2 { self.subpassShaderBit_HUAWEI }
}


public struct PresentGravityFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PresentGravityFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var min_EXT: PresentGravityFlagsEXT { PresentGravityFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var max_EXT: PresentGravityFlagsEXT { PresentGravityFlagsEXT(rawValue: 1 << 1) }


    @inlinable
    public static var centered_EXT: PresentGravityFlagsEXT { PresentGravityFlagsEXT(rawValue: 1 << 2) }
}


public struct PresentScalingFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `PresentScalingFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var oneToOne_EXT: PresentScalingFlagsEXT { PresentScalingFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var aspectRatioStretch_EXT: PresentScalingFlagsEXT { PresentScalingFlagsEXT(rawValue: 1 << 1) }


    @inlinable
    public static var stretch_EXT: PresentScalingFlagsEXT { PresentScalingFlagsEXT(rawValue: 1 << 2) }
}


public struct QueryControlFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `QueryControlFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var precise: QueryControlFlags { QueryControlFlags(rawValue: 1 << 0) }
}


public struct QueryPipelineStatisticFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `QueryPipelineStatisticFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var inputAssemblyVertices: QueryPipelineStatisticFlags { QueryPipelineStatisticFlags(rawValue: 1 << 0) }


    @inlinable
    public static var inputAssemblyPrimitives: QueryPipelineStatisticFlags { QueryPipelineStatisticFlags(rawValue: 1 << 1) }


    @inlinable
    public static var vertexShaderInvocations: QueryPipelineStatisticFlags { QueryPipelineStatisticFlags(rawValue: 1 << 2) }


    @inlinable
    public static var geometryShaderInvocations: QueryPipelineStatisticFlags {
        QueryPipelineStatisticFlags(rawValue: 1 << 3)
    }


    @inlinable
    public static var geometryShaderPrimitives: QueryPipelineStatisticFlags { QueryPipelineStatisticFlags(rawValue: 1 << 4) }


    @inlinable
    public static var clippingInvocations: QueryPipelineStatisticFlags { QueryPipelineStatisticFlags(rawValue: 1 << 5) }


    @inlinable
    public static var clippingPrimitives: QueryPipelineStatisticFlags { QueryPipelineStatisticFlags(rawValue: 1 << 6) }


    @inlinable
    public static var fragmentShaderInvocations: QueryPipelineStatisticFlags {
        QueryPipelineStatisticFlags(rawValue: 1 << 7)
    }


    @inlinable
    public static var tessellationControlShaderPatches: QueryPipelineStatisticFlags {
        QueryPipelineStatisticFlags(rawValue: 1 << 8)
    }


    @inlinable
    public static var tessellationEvaluationShaderInvocations: QueryPipelineStatisticFlags {
        QueryPipelineStatisticFlags(rawValue: 1 << 9)
    }


    @inlinable
    public static var computeShaderInvocations: QueryPipelineStatisticFlags {
        QueryPipelineStatisticFlags(rawValue: 1 << 10)
    }


    @inlinable
    public static var taskShaderInvocations_EXT: QueryPipelineStatisticFlags {
        QueryPipelineStatisticFlags(rawValue: 1 << 11)
    }


    @inlinable
    public static var meshShaderInvocations_EXT: QueryPipelineStatisticFlags {
        QueryPipelineStatisticFlags(rawValue: 1 << 12)
    }


    @inlinable
    public static var clusterCullingShaderInvocations_HUAWEI: QueryPipelineStatisticFlags {
        QueryPipelineStatisticFlags(rawValue: 1 << 13)
    }
}


public struct QueryResultFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `QueryResultFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var `64`: QueryResultFlags { QueryResultFlags(rawValue: 1 << 0) }


    @inlinable
    public static var wait: QueryResultFlags { QueryResultFlags(rawValue: 1 << 1) }


    @inlinable
    public static var withAvailability: QueryResultFlags { QueryResultFlags(rawValue: 1 << 2) }


    @inlinable
    public static var partial: QueryResultFlags { QueryResultFlags(rawValue: 1 << 3) }


    @inlinable
    public static var withStatus_KHR: QueryResultFlags { QueryResultFlags(rawValue: 1 << 4) }
}


public struct QueueFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `QueueFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var graphics: QueueFlags { QueueFlags(rawValue: 1 << 0) }


    @inlinable
    public static var compute: QueueFlags { QueueFlags(rawValue: 1 << 1) }


    @inlinable
    public static var transfer: QueueFlags { QueueFlags(rawValue: 1 << 2) }


    @inlinable
    public static var sparseBinding: QueueFlags { QueueFlags(rawValue: 1 << 3) }


    @inlinable
    public static var protected: QueueFlags { QueueFlags(rawValue: 1 << 4) }


    @inlinable
    public static var videoDecode_KHR: QueueFlags { QueueFlags(rawValue: 1 << 5) }


    @inlinable
    public static var videoEncode_KHR: QueueFlags { QueueFlags(rawValue: 1 << 6) }


    @inlinable
    public static var opticalFlow_NV: QueueFlags { QueueFlags(rawValue: 1 << 8) }
}


public struct RenderPassCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `RenderPassCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var transform_QCOM: RenderPassCreateFlags { RenderPassCreateFlags(rawValue: 1 << 1) }
}


public struct RenderingFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `RenderingFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var contentsSecondaryCommandBuffers: RenderingFlags { RenderingFlags(rawValue: 1 << 0) }


    @inlinable
    public static var suspending: RenderingFlags { RenderingFlags(rawValue: 1 << 1) }


    @inlinable
    public static var resuming: RenderingFlags { RenderingFlags(rawValue: 1 << 2) }


    @inlinable
    public static var enableLegacyDithering_EXT: RenderingFlags { RenderingFlags(rawValue: 1 << 3) }


    @inlinable
    public static var contentsInline_KHR: RenderingFlags { RenderingFlags(rawValue: 1 << 4) }


    @inlinable
    public static var contentsSecondaryCommandBuffers_KHR: RenderingFlags { self.contentsSecondaryCommandBuffers }


    @inlinable
    public static var suspending_KHR: RenderingFlags { self.suspending }


    @inlinable
    public static var resuming_KHR: RenderingFlags { self.resuming }


    @inlinable
    public static var contentsInline_EXT: RenderingFlags { self.contentsInline_KHR }
}


public struct ResolveModeFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ResolveModeFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var none: ResolveModeFlags { ResolveModeFlags(rawValue: 0) }


    @inlinable
    public static var sampleZeroBit: ResolveModeFlags { ResolveModeFlags(rawValue: 1 << 0) }


    @inlinable
    public static var averageBit: ResolveModeFlags { ResolveModeFlags(rawValue: 1 << 1) }


    @inlinable
    public static var minBit: ResolveModeFlags { ResolveModeFlags(rawValue: 1 << 2) }


    @inlinable
    public static var maxBit: ResolveModeFlags { ResolveModeFlags(rawValue: 1 << 3) }


    #if !PlatformAndroid
        @available(*, unavailable, message: "This flag requires the following trait: PlatformAndroid.")
    #endif
    @inlinable
    public static var externalFormatDownsample_ANDROID: ResolveModeFlags { ResolveModeFlags(rawValue: 1 << 4) }


    @inlinable
    public static var none_KHR: ResolveModeFlags { self.none }


    @inlinable
    public static var sampleZeroBit_KHR: ResolveModeFlags { self.sampleZeroBit }


    @inlinable
    public static var averageBit_KHR: ResolveModeFlags { self.averageBit }


    @inlinable
    public static var minBit_KHR: ResolveModeFlags { self.minBit }


    @inlinable
    public static var maxBit_KHR: ResolveModeFlags { self.maxBit }
}


public struct SampleCountFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SampleCountFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var `1`: SampleCountFlags { SampleCountFlags(rawValue: 1 << 0) }


    @inlinable
    public static var `2`: SampleCountFlags { SampleCountFlags(rawValue: 1 << 1) }


    @inlinable
    public static var `4`: SampleCountFlags { SampleCountFlags(rawValue: 1 << 2) }


    @inlinable
    public static var `8`: SampleCountFlags { SampleCountFlags(rawValue: 1 << 3) }


    @inlinable
    public static var `16`: SampleCountFlags { SampleCountFlags(rawValue: 1 << 4) }


    @inlinable
    public static var `32`: SampleCountFlags { SampleCountFlags(rawValue: 1 << 5) }


    @inlinable
    public static var `64`: SampleCountFlags { SampleCountFlags(rawValue: 1 << 6) }
}


public struct SamplerCreateFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SamplerCreateFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var subsampled_EXT: SamplerCreateFlags { SamplerCreateFlags(rawValue: 1 << 0) }


    @inlinable
    public static var subsampledCoarseReconstruction_EXT: SamplerCreateFlags { SamplerCreateFlags(rawValue: 1 << 1) }


    @inlinable
    public static var descriptorBufferCaptureReplay_EXT: SamplerCreateFlags { SamplerCreateFlags(rawValue: 1 << 3) }


    @inlinable
    public static var nonSeamlessCubeMap_EXT: SamplerCreateFlags { SamplerCreateFlags(rawValue: 1 << 2) }


    @inlinable
    public static var imageProcessing_QCOM: SamplerCreateFlags { SamplerCreateFlags(rawValue: 1 << 4) }
}


public struct SemaphoreImportFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SemaphoreImportFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var temporary: SemaphoreImportFlags { SemaphoreImportFlags(rawValue: 1 << 0) }


    @inlinable
    public static var temporary_KHR: SemaphoreImportFlags { self.temporary }
}


public struct SemaphoreWaitFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SemaphoreWaitFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var any: SemaphoreWaitFlags { SemaphoreWaitFlags(rawValue: 1 << 0) }


    @inlinable
    public static var any_KHR: SemaphoreWaitFlags { self.any }
}


public struct ShaderCorePropertiesFlagsAMD: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ShaderCorePropertiesFlagsAMD` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


}


public struct ShaderCreateFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ShaderCreateFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var linkStage_EXT: ShaderCreateFlagsEXT { ShaderCreateFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var allowVaryingSubgroupSize_EXT: ShaderCreateFlagsEXT { ShaderCreateFlagsEXT(rawValue: 1 << 1) }


    @inlinable
    public static var requireFullSubgroups_EXT: ShaderCreateFlagsEXT { ShaderCreateFlagsEXT(rawValue: 1 << 2) }


    @inlinable
    public static var noTaskShader_EXT: ShaderCreateFlagsEXT { ShaderCreateFlagsEXT(rawValue: 1 << 3) }


    @inlinable
    public static var dispatchBase_EXT: ShaderCreateFlagsEXT { ShaderCreateFlagsEXT(rawValue: 1 << 4) }


    @inlinable
    public static var fragmentShadingRateAttachment_EXT: ShaderCreateFlagsEXT { ShaderCreateFlagsEXT(rawValue: 1 << 5) }


    @inlinable
    public static var fragmentDensityMapAttachment_EXT: ShaderCreateFlagsEXT { ShaderCreateFlagsEXT(rawValue: 1 << 6) }


    @inlinable
    public static var indirectBindable_EXT: ShaderCreateFlagsEXT { ShaderCreateFlagsEXT(rawValue: 1 << 7) }
}


public struct ShaderStageFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ShaderStageFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var vertexBit: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 0) }


    @inlinable
    public static var tessellationControlBit: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 1) }


    @inlinable
    public static var tessellationEvaluationBit: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 2) }


    @inlinable
    public static var geometryBit: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 3) }


    @inlinable
    public static var fragmentBit: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 4) }


    @inlinable
    public static var computeBit: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 5) }


    @inlinable
    public static var allGraphics: ShaderStageFlags { ShaderStageFlags(rawValue: 0x0000_001F) }


    @inlinable
    public static var all: ShaderStageFlags { ShaderStageFlags(rawValue: 0x7FFF_FFFF) }


    @inlinable
    public static var raygenBit_KHR: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 8) }


    @inlinable
    public static var anyHitBit_KHR: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 9) }


    @inlinable
    public static var closestHitBit_KHR: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 10) }


    @inlinable
    public static var missBit_KHR: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 11) }


    @inlinable
    public static var intersectionBit_KHR: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 12) }


    @inlinable
    public static var callableBit_KHR: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 13) }


    @inlinable
    public static var taskBit_EXT: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 6) }


    @inlinable
    public static var meshBit_EXT: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 7) }


    @inlinable
    public static var subpassShadingBit_HUAWEI: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 14) }


    @inlinable
    public static var clusterCullingBit_HUAWEI: ShaderStageFlags { ShaderStageFlags(rawValue: 1 << 19) }


    @inlinable
    public static var raygenBit_NV: ShaderStageFlags { self.raygenBit_KHR }


    @inlinable
    public static var anyHitBit_NV: ShaderStageFlags { self.anyHitBit_KHR }


    @inlinable
    public static var closestHitBit_NV: ShaderStageFlags { self.closestHitBit_KHR }


    @inlinable
    public static var missBit_NV: ShaderStageFlags { self.missBit_KHR }


    @inlinable
    public static var intersectionBit_NV: ShaderStageFlags { self.intersectionBit_KHR }


    @inlinable
    public static var callableBit_NV: ShaderStageFlags { self.callableBit_KHR }


    @inlinable
    public static var taskBit_NV: ShaderStageFlags { self.taskBit_EXT }


    @inlinable
    public static var meshBit_NV: ShaderStageFlags { self.meshBit_EXT }
}


public struct SparseImageFormatFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SparseImageFormatFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var singleMiptail: SparseImageFormatFlags { SparseImageFormatFlags(rawValue: 1 << 0) }


    @inlinable
    public static var alignedMipSize: SparseImageFormatFlags { SparseImageFormatFlags(rawValue: 1 << 1) }


    @inlinable
    public static var nonstandardBlockSize: SparseImageFormatFlags { SparseImageFormatFlags(rawValue: 1 << 2) }
}


public struct SparseMemoryBindFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SparseMemoryBindFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var metadata: SparseMemoryBindFlags { SparseMemoryBindFlags(rawValue: 1 << 0) }
}


public struct StencilFaceFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `StencilFaceFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var frontBit: StencilFaceFlags { StencilFaceFlags(rawValue: 1 << 0) }


    @inlinable
    public static var backBit: StencilFaceFlags { StencilFaceFlags(rawValue: 1 << 1) }


    @inlinable
    public static var frontAndBack: StencilFaceFlags { StencilFaceFlags(rawValue: 0x0000_0003) }


    @inlinable
    public static var rontAndBack: StencilFaceFlags { self.frontAndBack }
}


public struct SubgroupFeatureFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SubgroupFeatureFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var basic: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 0) }


    @inlinable
    public static var vote: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 1) }


    @inlinable
    public static var arithmetic: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 2) }


    @inlinable
    public static var ballot: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 3) }


    @inlinable
    public static var shuffle: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 4) }


    @inlinable
    public static var shuffleRelative: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 5) }


    @inlinable
    public static var clustered: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 6) }


    @inlinable
    public static var quad: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 7) }


    @inlinable
    public static var rotate: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 9) }


    @inlinable
    public static var rotateClustered: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 10) }


    @inlinable
    public static var partitioned_NV: SubgroupFeatureFlags { SubgroupFeatureFlags(rawValue: 1 << 8) }


    @inlinable
    public static var rotate_KHR: SubgroupFeatureFlags { self.rotate }


    @inlinable
    public static var rotateClustered_KHR: SubgroupFeatureFlags { self.rotateClustered }
}


public struct SubmitFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SubmitFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var protected: SubmitFlags { SubmitFlags(rawValue: 1 << 0) }


    @inlinable
    public static var protected_KHR: SubmitFlags { self.protected }
}


public struct SubpassDescriptionFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SubpassDescriptionFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var perViewAttributes_NVX: SubpassDescriptionFlags { SubpassDescriptionFlags(rawValue: 1 << 0) }


    @inlinable
    public static var perViewPositionXOnly_NVX: SubpassDescriptionFlags { SubpassDescriptionFlags(rawValue: 1 << 1) }


    @inlinable
    public static var fragmentRegion_QCOM: SubpassDescriptionFlags { SubpassDescriptionFlags(rawValue: 1 << 2) }


    @inlinable
    public static var shaderResolve_QCOM: SubpassDescriptionFlags { SubpassDescriptionFlags(rawValue: 1 << 3) }


    @inlinable
    public static var tileShadingApron_QCOM: SubpassDescriptionFlags { SubpassDescriptionFlags(rawValue: 1 << 8) }


    @inlinable
    public static var rasterizationOrderAttachmentColorAccess_EXT: SubpassDescriptionFlags {
        SubpassDescriptionFlags(rawValue: 1 << 4)
    }


    @inlinable
    public static var rasterizationOrderAttachmentDepthAccess_EXT: SubpassDescriptionFlags {
        SubpassDescriptionFlags(rawValue: 1 << 5)
    }


    @inlinable
    public static var rasterizationOrderAttachmentStencilAccess_EXT: SubpassDescriptionFlags {
        SubpassDescriptionFlags(rawValue: 1 << 6)
    }


    @inlinable
    public static var enableLegacyDithering_EXT: SubpassDescriptionFlags { SubpassDescriptionFlags(rawValue: 1 << 7) }


    @inlinable
    public static var rasterizationOrderAttachmentColorAccess_ARM: SubpassDescriptionFlags {
        self.rasterizationOrderAttachmentColorAccess_EXT
    }


    @inlinable
    public static var rasterizationOrderAttachmentDepthAccess_ARM: SubpassDescriptionFlags {
        self.rasterizationOrderAttachmentDepthAccess_EXT
    }


    @inlinable
    public static var rasterizationOrderAttachmentStencilAccess_ARM: SubpassDescriptionFlags {
        self.rasterizationOrderAttachmentStencilAccess_EXT
    }
}


public struct SurfaceCounterFlagsEXT: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SurfaceCounterFlagsEXT` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var vblankBit_EXT: SurfaceCounterFlagsEXT { SurfaceCounterFlagsEXT(rawValue: 1 << 0) }


    @inlinable
    public static var vblank_EXT: SurfaceCounterFlagsEXT { self.vblankBit_EXT }
}


public struct SurfaceTransformFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SurfaceTransformFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var identity_KHR: SurfaceTransformFlagsKHR { SurfaceTransformFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var rotate90_KHR: SurfaceTransformFlagsKHR { SurfaceTransformFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var rotate180_KHR: SurfaceTransformFlagsKHR { SurfaceTransformFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var rotate270_KHR: SurfaceTransformFlagsKHR { SurfaceTransformFlagsKHR(rawValue: 1 << 3) }


    @inlinable
    public static var horizontalMirror_KHR: SurfaceTransformFlagsKHR { SurfaceTransformFlagsKHR(rawValue: 1 << 4) }


    @inlinable
    public static var horizontalMirrorRotate90_KHR: SurfaceTransformFlagsKHR { SurfaceTransformFlagsKHR(rawValue: 1 << 5) }


    @inlinable
    public static var horizontalMirrorRotate180_KHR: SurfaceTransformFlagsKHR { SurfaceTransformFlagsKHR(rawValue: 1 << 6) }


    @inlinable
    public static var horizontalMirrorRotate270_KHR: SurfaceTransformFlagsKHR { SurfaceTransformFlagsKHR(rawValue: 1 << 7) }


    @inlinable
    public static var inherit_KHR: SurfaceTransformFlagsKHR { SurfaceTransformFlagsKHR(rawValue: 1 << 8) }
}


public struct SwapchainCreateFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `SwapchainCreateFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var splitInstanceBindRegions_KHR: SwapchainCreateFlagsKHR { SwapchainCreateFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var protected_KHR: SwapchainCreateFlagsKHR { SwapchainCreateFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var mutableFormat_KHR: SwapchainCreateFlagsKHR { SwapchainCreateFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var deferredMemoryAllocation_EXT: SwapchainCreateFlagsKHR { SwapchainCreateFlagsKHR(rawValue: 1 << 3) }
}


public struct TileShadingRenderPassFlagsQCOM: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `TileShadingRenderPassFlagsQCOM` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var enable_QCOM: TileShadingRenderPassFlagsQCOM { TileShadingRenderPassFlagsQCOM(rawValue: 1 << 0) }


    @inlinable
    public static var perTileExecution_QCOM: TileShadingRenderPassFlagsQCOM {
        TileShadingRenderPassFlagsQCOM(rawValue: 1 << 1)
    }
}


public struct ToolPurposeFlags: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `ToolPurposeFlags` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var validation: ToolPurposeFlags { ToolPurposeFlags(rawValue: 1 << 0) }


    @inlinable
    public static var profiling: ToolPurposeFlags { ToolPurposeFlags(rawValue: 1 << 1) }


    @inlinable
    public static var tracing: ToolPurposeFlags { ToolPurposeFlags(rawValue: 1 << 2) }


    @inlinable
    public static var additionalFeatures: ToolPurposeFlags { ToolPurposeFlags(rawValue: 1 << 3) }


    @inlinable
    public static var modifyingFeatures: ToolPurposeFlags { ToolPurposeFlags(rawValue: 1 << 4) }


    @inlinable
    public static var debugReporting_EXT: ToolPurposeFlags { ToolPurposeFlags(rawValue: 1 << 5) }


    @inlinable
    public static var debugMarkers_EXT: ToolPurposeFlags { ToolPurposeFlags(rawValue: 1 << 6) }


    @inlinable
    public static var validation_EXT: ToolPurposeFlags { self.validation }


    @inlinable
    public static var profiling_EXT: ToolPurposeFlags { self.profiling }


    @inlinable
    public static var tracing_EXT: ToolPurposeFlags { self.tracing }


    @inlinable
    public static var additionalFeatures_EXT: ToolPurposeFlags { self.additionalFeatures }


    @inlinable
    public static var modifyingFeatures_EXT: ToolPurposeFlags { self.modifyingFeatures }
}


public struct VideoCapabilityFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoCapabilityFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var protectedContent_KHR: VideoCapabilityFlagsKHR { VideoCapabilityFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var separateReferenceImages_KHR: VideoCapabilityFlagsKHR { VideoCapabilityFlagsKHR(rawValue: 1 << 1) }
}


public struct VideoChromaSubsamplingFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoChromaSubsamplingFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var invalid_KHR: VideoChromaSubsamplingFlagsKHR { VideoChromaSubsamplingFlagsKHR(rawValue: 0) }


    @inlinable
    public static var monochromeBit_KHR: VideoChromaSubsamplingFlagsKHR { VideoChromaSubsamplingFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var `420Bit_KHR`: VideoChromaSubsamplingFlagsKHR { VideoChromaSubsamplingFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var `422Bit_KHR`: VideoChromaSubsamplingFlagsKHR { VideoChromaSubsamplingFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var `444Bit_KHR`: VideoChromaSubsamplingFlagsKHR { VideoChromaSubsamplingFlagsKHR(rawValue: 1 << 3) }
}


public struct VideoCodecOperationFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoCodecOperationFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var none_KHR: VideoCodecOperationFlagsKHR { VideoCodecOperationFlagsKHR(rawValue: 0) }


    @inlinable
    public static var encodeH264Bit_KHR: VideoCodecOperationFlagsKHR { VideoCodecOperationFlagsKHR(rawValue: 1 << 16) }


    @inlinable
    public static var encodeH265Bit_KHR: VideoCodecOperationFlagsKHR { VideoCodecOperationFlagsKHR(rawValue: 1 << 17) }


    @inlinable
    public static var decodeH264Bit_KHR: VideoCodecOperationFlagsKHR { VideoCodecOperationFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var decodeH265Bit_KHR: VideoCodecOperationFlagsKHR { VideoCodecOperationFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var decodeAv1Bit_KHR: VideoCodecOperationFlagsKHR { VideoCodecOperationFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var encodeAv1Bit_KHR: VideoCodecOperationFlagsKHR { VideoCodecOperationFlagsKHR(rawValue: 1 << 18) }
}


public struct VideoCodingControlFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoCodingControlFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var reset_KHR: VideoCodingControlFlagsKHR { VideoCodingControlFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var encodeRateControl_KHR: VideoCodingControlFlagsKHR { VideoCodingControlFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var encodeQualityLevel_KHR: VideoCodingControlFlagsKHR { VideoCodingControlFlagsKHR(rawValue: 1 << 2) }
}


public struct VideoComponentBitDepthFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoComponentBitDepthFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var invalid_KHR: VideoComponentBitDepthFlagsKHR { VideoComponentBitDepthFlagsKHR(rawValue: 0) }


    @inlinable
    public static var `8_KHR`: VideoComponentBitDepthFlagsKHR { VideoComponentBitDepthFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var `10_KHR`: VideoComponentBitDepthFlagsKHR { VideoComponentBitDepthFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var `12_KHR`: VideoComponentBitDepthFlagsKHR { VideoComponentBitDepthFlagsKHR(rawValue: 1 << 4) }
}


public struct VideoDecodeCapabilityFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoDecodeCapabilityFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var dpbAndOutputCoincide_KHR: VideoDecodeCapabilityFlagsKHR {
        VideoDecodeCapabilityFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var dpbAndOutputDistinct_KHR: VideoDecodeCapabilityFlagsKHR {
        VideoDecodeCapabilityFlagsKHR(rawValue: 1 << 1)
    }
}


public struct VideoDecodeH264PictureLayoutFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoDecodeH264PictureLayoutFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var progressive_KHR: VideoDecodeH264PictureLayoutFlagsKHR {
        VideoDecodeH264PictureLayoutFlagsKHR(rawValue: 0)
    }


    @inlinable
    public static var interlacedInterleavedLinesBit_KHR: VideoDecodeH264PictureLayoutFlagsKHR {
        VideoDecodeH264PictureLayoutFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var interlacedSeparatePlanesBit_KHR: VideoDecodeH264PictureLayoutFlagsKHR {
        VideoDecodeH264PictureLayoutFlagsKHR(rawValue: 1 << 1)
    }
}


public struct VideoDecodeUsageFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoDecodeUsageFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var default_KHR: VideoDecodeUsageFlagsKHR { VideoDecodeUsageFlagsKHR(rawValue: 0) }


    @inlinable
    public static var transcodingBit_KHR: VideoDecodeUsageFlagsKHR { VideoDecodeUsageFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var offlineBit_KHR: VideoDecodeUsageFlagsKHR { VideoDecodeUsageFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var streamingBit_KHR: VideoDecodeUsageFlagsKHR { VideoDecodeUsageFlagsKHR(rawValue: 1 << 2) }
}


public struct VideoEncodeAV1CapabilityFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeAV1CapabilityFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var v1CapabilityPerRateControlGroupMinMaxQIndex_KHR: VideoEncodeAV1CapabilityFlagsKHR {
        VideoEncodeAV1CapabilityFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var v1CapabilityGenerateObuExtensionHeader_KHR: VideoEncodeAV1CapabilityFlagsKHR {
        VideoEncodeAV1CapabilityFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var v1CapabilityPrimaryReferenceCdfOnly_KHR: VideoEncodeAV1CapabilityFlagsKHR {
        VideoEncodeAV1CapabilityFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var v1CapabilityFrameSizeOverride_KHR: VideoEncodeAV1CapabilityFlagsKHR {
        VideoEncodeAV1CapabilityFlagsKHR(rawValue: 1 << 3)
    }


    @inlinable
    public static var v1CapabilityMotionVectorScaling_KHR: VideoEncodeAV1CapabilityFlagsKHR {
        VideoEncodeAV1CapabilityFlagsKHR(rawValue: 1 << 4)
    }
}


public struct VideoEncodeAV1RateControlFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeAV1RateControlFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var v1RateControlRegularGop_KHR: VideoEncodeAV1RateControlFlagsKHR {
        VideoEncodeAV1RateControlFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var v1RateControlTemporalLayerPatternDyadic_KHR: VideoEncodeAV1RateControlFlagsKHR {
        VideoEncodeAV1RateControlFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var v1RateControlReferencePatternFlat_KHR: VideoEncodeAV1RateControlFlagsKHR {
        VideoEncodeAV1RateControlFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var v1RateControlReferencePatternDyadic_KHR: VideoEncodeAV1RateControlFlagsKHR {
        VideoEncodeAV1RateControlFlagsKHR(rawValue: 1 << 3)
    }
}


public struct VideoEncodeAV1StdFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeAV1StdFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var v1StdUniformTileSpacingFlagSet_KHR: VideoEncodeAV1StdFlagsKHR {
        VideoEncodeAV1StdFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var v1StdSkipModePresentUnset_KHR: VideoEncodeAV1StdFlagsKHR {
        VideoEncodeAV1StdFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var v1StdPrimaryRefFrame_KHR: VideoEncodeAV1StdFlagsKHR { VideoEncodeAV1StdFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var v1StdDeltaQ_KHR: VideoEncodeAV1StdFlagsKHR { VideoEncodeAV1StdFlagsKHR(rawValue: 1 << 3) }
}


public struct VideoEncodeAV1SuperblockSizeFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeAV1SuperblockSizeFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var v1SuperblockSize64_KHR: VideoEncodeAV1SuperblockSizeFlagsKHR {
        VideoEncodeAV1SuperblockSizeFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var v1SuperblockSize128_KHR: VideoEncodeAV1SuperblockSizeFlagsKHR {
        VideoEncodeAV1SuperblockSizeFlagsKHR(rawValue: 1 << 1)
    }
}


public struct VideoEncodeCapabilityFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeCapabilityFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var precedingExternallyEncodedBytes_KHR: VideoEncodeCapabilityFlagsKHR {
        VideoEncodeCapabilityFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var insufficientBitstreamBufferRangeDetection_KHR: VideoEncodeCapabilityFlagsKHR {
        VideoEncodeCapabilityFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var quantizationDeltaMap_KHR: VideoEncodeCapabilityFlagsKHR {
        VideoEncodeCapabilityFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var emphasisMap_KHR: VideoEncodeCapabilityFlagsKHR { VideoEncodeCapabilityFlagsKHR(rawValue: 1 << 3) }
}


public struct VideoEncodeContentFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeContentFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var default_KHR: VideoEncodeContentFlagsKHR { VideoEncodeContentFlagsKHR(rawValue: 0) }


    @inlinable
    public static var cameraBit_KHR: VideoEncodeContentFlagsKHR { VideoEncodeContentFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var desktopBit_KHR: VideoEncodeContentFlagsKHR { VideoEncodeContentFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var renderedBit_KHR: VideoEncodeContentFlagsKHR { VideoEncodeContentFlagsKHR(rawValue: 1 << 2) }
}


public struct VideoEncodeFeedbackFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeFeedbackFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var bitstreamBufferOffset_KHR: VideoEncodeFeedbackFlagsKHR {
        VideoEncodeFeedbackFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var bitstreamBytesWritten_KHR: VideoEncodeFeedbackFlagsKHR {
        VideoEncodeFeedbackFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var bitstreamHasOverrides_KHR: VideoEncodeFeedbackFlagsKHR {
        VideoEncodeFeedbackFlagsKHR(rawValue: 1 << 2)
    }
}


public struct VideoEncodeFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var withQuantizationDeltaMap_KHR: VideoEncodeFlagsKHR { VideoEncodeFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var withEmphasisMap_KHR: VideoEncodeFlagsKHR { VideoEncodeFlagsKHR(rawValue: 1 << 1) }
}


public struct VideoEncodeH264CapabilityFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeH264CapabilityFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var hrdCompliance_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var predictionWeightTableGenerated_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var rowUnalignedSlice_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var differentSliceType_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 3)
    }


    @inlinable
    public static var bFrameInL0List_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 4)
    }


    @inlinable
    public static var bFrameInL1List_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 5)
    }


    @inlinable
    public static var perPictureTypeMinMaxQp_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 6)
    }


    @inlinable
    public static var perSliceConstantQp_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 7)
    }


    @inlinable
    public static var generatePrefixNalu_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 8)
    }


    @inlinable
    public static var mbQpDiffWraparound_KHR: VideoEncodeH264CapabilityFlagsKHR {
        VideoEncodeH264CapabilityFlagsKHR(rawValue: 1 << 9)
    }
}


public struct VideoEncodeH264RateControlFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeH264RateControlFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var attemptHrdCompliance_KHR: VideoEncodeH264RateControlFlagsKHR {
        VideoEncodeH264RateControlFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var regularGop_KHR: VideoEncodeH264RateControlFlagsKHR {
        VideoEncodeH264RateControlFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var referencePatternFlat_KHR: VideoEncodeH264RateControlFlagsKHR {
        VideoEncodeH264RateControlFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var referencePatternDyadic_KHR: VideoEncodeH264RateControlFlagsKHR {
        VideoEncodeH264RateControlFlagsKHR(rawValue: 1 << 3)
    }


    @inlinable
    public static var temporalLayerPatternDyadic_KHR: VideoEncodeH264RateControlFlagsKHR {
        VideoEncodeH264RateControlFlagsKHR(rawValue: 1 << 4)
    }
}


public struct VideoEncodeH264StdFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeH264StdFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var separateColorPlaneFlagSet_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var qpprimeYZeroTransformBypassFlagSet_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var scalingMatrixPresentFlagSet_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var chromaQpIndexOffset_KHR: VideoEncodeH264StdFlagsKHR { VideoEncodeH264StdFlagsKHR(rawValue: 1 << 3) }


    @inlinable
    public static var secondChromaQpIndexOffset_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 4)
    }


    @inlinable
    public static var picInitQpMinus26_KHR: VideoEncodeH264StdFlagsKHR { VideoEncodeH264StdFlagsKHR(rawValue: 1 << 5) }


    @inlinable
    public static var weightedPredFlagSet_KHR: VideoEncodeH264StdFlagsKHR { VideoEncodeH264StdFlagsKHR(rawValue: 1 << 6) }


    @inlinable
    public static var weightedBipredIdcExplicit_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 7)
    }


    @inlinable
    public static var weightedBipredIdcImplicit_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 8)
    }


    @inlinable
    public static var transform8x8ModeFlagSet_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 9)
    }


    @inlinable
    public static var directSpatialMvPredFlagUnset_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 10)
    }


    @inlinable
    public static var entropyCodingModeFlagUnset_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 11)
    }


    @inlinable
    public static var entropyCodingModeFlagSet_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 12)
    }


    @inlinable
    public static var direct8x8InferenceFlagUnset_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 13)
    }


    @inlinable
    public static var constrainedIntraPredFlagSet_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 14)
    }


    @inlinable
    public static var deblockingFilterDisabled_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 15)
    }


    @inlinable
    public static var deblockingFilterEnabled_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 16)
    }


    @inlinable
    public static var deblockingFilterPartial_KHR: VideoEncodeH264StdFlagsKHR {
        VideoEncodeH264StdFlagsKHR(rawValue: 1 << 17)
    }


    @inlinable
    public static var sliceQpDelta_KHR: VideoEncodeH264StdFlagsKHR { VideoEncodeH264StdFlagsKHR(rawValue: 1 << 19) }


    @inlinable
    public static var differentSliceQpDelta_KHR: VideoEncodeH264StdFlagsKHR { VideoEncodeH264StdFlagsKHR(rawValue: 1 << 20) }
}


public struct VideoEncodeH265CapabilityFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeH265CapabilityFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var hrdCompliance_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var predictionWeightTableGenerated_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var rowUnalignedSliceSegment_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var differentSliceSegmentType_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 3)
    }


    @inlinable
    public static var bFrameInL0List_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 4)
    }


    @inlinable
    public static var bFrameInL1List_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 5)
    }


    @inlinable
    public static var perPictureTypeMinMaxQp_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 6)
    }


    @inlinable
    public static var perSliceSegmentConstantQp_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 7)
    }


    @inlinable
    public static var multipleTilesPerSliceSegment_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 8)
    }


    @inlinable
    public static var multipleSliceSegmentsPerTile_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 9)
    }


    @inlinable
    public static var cuQpDiffWraparound_KHR: VideoEncodeH265CapabilityFlagsKHR {
        VideoEncodeH265CapabilityFlagsKHR(rawValue: 1 << 10)
    }
}


public struct VideoEncodeH265CtbSizeFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeH265CtbSizeFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var `16_KHR`: VideoEncodeH265CtbSizeFlagsKHR { VideoEncodeH265CtbSizeFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var `32_KHR`: VideoEncodeH265CtbSizeFlagsKHR { VideoEncodeH265CtbSizeFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var `64_KHR`: VideoEncodeH265CtbSizeFlagsKHR { VideoEncodeH265CtbSizeFlagsKHR(rawValue: 1 << 2) }
}


public struct VideoEncodeH265RateControlFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeH265RateControlFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var attemptHrdCompliance_KHR: VideoEncodeH265RateControlFlagsKHR {
        VideoEncodeH265RateControlFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var regularGop_KHR: VideoEncodeH265RateControlFlagsKHR {
        VideoEncodeH265RateControlFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var referencePatternFlat_KHR: VideoEncodeH265RateControlFlagsKHR {
        VideoEncodeH265RateControlFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var referencePatternDyadic_KHR: VideoEncodeH265RateControlFlagsKHR {
        VideoEncodeH265RateControlFlagsKHR(rawValue: 1 << 3)
    }


    @inlinable
    public static var temporalSubLayerPatternDyadic_KHR: VideoEncodeH265RateControlFlagsKHR {
        VideoEncodeH265RateControlFlagsKHR(rawValue: 1 << 4)
    }
}


public struct VideoEncodeH265StdFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeH265StdFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var separateColorPlaneFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var sampleAdaptiveOffsetEnabledFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var scalingListDataPresentFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var pcmEnabledFlagSet_KHR: VideoEncodeH265StdFlagsKHR { VideoEncodeH265StdFlagsKHR(rawValue: 1 << 3) }


    @inlinable
    public static var spsTemporalMvpEnabledFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 4)
    }


    @inlinable
    public static var initQpMinus26_KHR: VideoEncodeH265StdFlagsKHR { VideoEncodeH265StdFlagsKHR(rawValue: 1 << 5) }


    @inlinable
    public static var weightedPredFlagSet_KHR: VideoEncodeH265StdFlagsKHR { VideoEncodeH265StdFlagsKHR(rawValue: 1 << 6) }


    @inlinable
    public static var weightedBipredFlagSet_KHR: VideoEncodeH265StdFlagsKHR { VideoEncodeH265StdFlagsKHR(rawValue: 1 << 7) }


    @inlinable
    public static var log2ParallelMergeLevelMinus2_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 8)
    }


    @inlinable
    public static var signDataHidingEnabledFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 9)
    }


    @inlinable
    public static var transformSkipEnabledFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 10)
    }


    @inlinable
    public static var transformSkipEnabledFlagUnset_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 11)
    }


    @inlinable
    public static var ppsSliceChromaQpOffsetsPresentFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 12)
    }


    @inlinable
    public static var transquantBypassEnabledFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 13)
    }


    @inlinable
    public static var constrainedIntraPredFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 14)
    }


    @inlinable
    public static var entropyCodingSyncEnabledFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 15)
    }


    @inlinable
    public static var deblockingFilterOverrideEnabledFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 16)
    }


    @inlinable
    public static var dependentSliceSegmentsEnabledFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 17)
    }


    @inlinable
    public static var dependentSliceSegmentFlagSet_KHR: VideoEncodeH265StdFlagsKHR {
        VideoEncodeH265StdFlagsKHR(rawValue: 1 << 18)
    }


    @inlinable
    public static var sliceQpDelta_KHR: VideoEncodeH265StdFlagsKHR { VideoEncodeH265StdFlagsKHR(rawValue: 1 << 19) }


    @inlinable
    public static var differentSliceQpDelta_KHR: VideoEncodeH265StdFlagsKHR { VideoEncodeH265StdFlagsKHR(rawValue: 1 << 20) }
}


public struct VideoEncodeH265TransformBlockSizeFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeH265TransformBlockSizeFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var `4_KHR`: VideoEncodeH265TransformBlockSizeFlagsKHR {
        VideoEncodeH265TransformBlockSizeFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var `8_KHR`: VideoEncodeH265TransformBlockSizeFlagsKHR {
        VideoEncodeH265TransformBlockSizeFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var `16_KHR`: VideoEncodeH265TransformBlockSizeFlagsKHR {
        VideoEncodeH265TransformBlockSizeFlagsKHR(rawValue: 1 << 2)
    }


    @inlinable
    public static var `32_KHR`: VideoEncodeH265TransformBlockSizeFlagsKHR {
        VideoEncodeH265TransformBlockSizeFlagsKHR(rawValue: 1 << 3)
    }
}


public struct VideoEncodeRateControlModeFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeRateControlModeFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var default_KHR: VideoEncodeRateControlModeFlagsKHR { VideoEncodeRateControlModeFlagsKHR(rawValue: 0) }


    @inlinable
    public static var disabledBit_KHR: VideoEncodeRateControlModeFlagsKHR {
        VideoEncodeRateControlModeFlagsKHR(rawValue: 1 << 0)
    }


    @inlinable
    public static var cbrBit_KHR: VideoEncodeRateControlModeFlagsKHR { VideoEncodeRateControlModeFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var vbrBit_KHR: VideoEncodeRateControlModeFlagsKHR { VideoEncodeRateControlModeFlagsKHR(rawValue: 1 << 2) }
}


public struct VideoEncodeUsageFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoEncodeUsageFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var default_KHR: VideoEncodeUsageFlagsKHR { VideoEncodeUsageFlagsKHR(rawValue: 0) }


    @inlinable
    public static var transcodingBit_KHR: VideoEncodeUsageFlagsKHR { VideoEncodeUsageFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var streamingBit_KHR: VideoEncodeUsageFlagsKHR { VideoEncodeUsageFlagsKHR(rawValue: 1 << 1) }


    @inlinable
    public static var recordingBit_KHR: VideoEncodeUsageFlagsKHR { VideoEncodeUsageFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var conferencingBit_KHR: VideoEncodeUsageFlagsKHR { VideoEncodeUsageFlagsKHR(rawValue: 1 << 3) }
}


public struct VideoSessionCreateFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoSessionCreateFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var protectedContent_KHR: VideoSessionCreateFlagsKHR { VideoSessionCreateFlagsKHR(rawValue: 1 << 0) }


    @inlinable
    public static var allowEncodeParameterOptimizations_KHR: VideoSessionCreateFlagsKHR {
        VideoSessionCreateFlagsKHR(rawValue: 1 << 1)
    }


    @inlinable
    public static var inlineQueries_KHR: VideoSessionCreateFlagsKHR { VideoSessionCreateFlagsKHR(rawValue: 1 << 2) }


    @inlinable
    public static var allowEncodeQuantizationDeltaMap_KHR: VideoSessionCreateFlagsKHR {
        VideoSessionCreateFlagsKHR(rawValue: 1 << 3)
    }


    @inlinable
    public static var allowEncodeEmphasisMap_KHR: VideoSessionCreateFlagsKHR { VideoSessionCreateFlagsKHR(rawValue: 1 << 4) }


    @inlinable
    public static var inlineSessionParameters_KHR: VideoSessionCreateFlagsKHR {
        VideoSessionCreateFlagsKHR(rawValue: 1 << 5)
    }
}


public struct VideoSessionParametersCreateFlagsKHR: OptionSet {
    /// The raw value of the bitmask, represented as a UInt32.
    public let rawValue: UInt32

    /// Initilizes an instance of `VideoSessionParametersCreateFlagsKHR` using a raw value.
    /// This shouldn't normally be used directly, but is provided for completeness.
    /// Instead, use the static properties provided by this type which represent the individual flags.
    /// - Parameter rawValue: The raw value to initialize to.
    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }


    @inlinable
    public static var quantizationMapCompatible_KHR: VideoSessionParametersCreateFlagsKHR {
        VideoSessionParametersCreateFlagsKHR(rawValue: 1 << 0)
    }
}

// END_GENERATE_BITMASKS
