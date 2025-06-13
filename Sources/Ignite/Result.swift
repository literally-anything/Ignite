/**
 * Result.swift
 * Ignite
 *
 * Created by Hunter Baker on 5/31/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

public typealias VulkanSuccess = VulkanResult.Success
public typealias VulkanError = VulkanResult.Error

public enum VulkanResult: Sendable {
    case error(Self.Error)
    case success(Success)

    public enum Error: Int32, Sendable, Swift.Error {
        // BEGIN_GENERATE_ERROR_CASES
        // Generated using header version: 318

        case outOfHostMemory = -1
        case outOfDeviceMemory = -2
        case initializationFailed = -3
        case deviceLost = -4
        case memoryMapFailed = -5
        case layerNotPresent = -6
        case extensionNotPresent = -7
        case featureNotPresent = -8
        case incompatibleDriver = -9
        case tooManyObjects = -10
        case formatNotSupported = -11
        case fragmentedPool = -12
        case unknown = -13
        case outOfPoolMemory = -1_000_069_000
        case invalidExternalHandle = -1_000_072_003
        case fragmentation = -1_000_161_000
        case invalidOpaqueCaptureAddress = -1_000_257_000
        case notPermitted = -1_000_174_001
        case surfaceLost_KHR = -1_000_000_000
        case nativeWindowInUse_KHR = -1_000_000_001
        case outOfDate_KHR = -1_000_001_004
        case incompatibleDisplay_KHR = -1_000_003_001
        case validationFailed_EXT = -1_000_011_001
        case invalidShader_NV = -1_000_012_000
        case imageUsageNotSupported_KHR = -1_000_023_000
        case videoPictureLayoutNotSupported_KHR = -1_000_023_001
        case videoProfileOperationNotSupported_KHR = -1_000_023_002
        case videoProfileFormatNotSupported_KHR = -1_000_023_003
        case videoProfileCodecNotSupported_KHR = -1_000_023_004
        case videoStdVersionNotSupported_KHR = -1_000_023_005
        case invalidDrmFormatModifierPlaneLayout_EXT = -1_000_158_000
        case fullScreenExclusiveModeLost_EXT = -1_000_255_000
        case invalidVideoStdParameters_KHR = -1_000_299_000
        case compressionExhausted_EXT = -1_000_338_000
        case notEnoughSpace_KHR = -1_000_483_000

        @inlinable
        public static var outOfPoolMemory_KHR: Self { self.outOfPoolMemory }
        @inlinable
        public static var invalidExternalHandle_KHR: Self { self.invalidExternalHandle }
        @inlinable
        public static var fragmentation_EXT: Self { self.fragmentation }
        @inlinable
        public static var notPermitted_EXT: Self { self.notPermitted }
        @inlinable
        public static var notPermitted_KHR: Self { self.notPermitted }
        @inlinable
        public static var invalidDeviceAddress_EXT: Self { self.invalidOpaqueCaptureAddress }
        @inlinable
        public static var invalidOpaqueCaptureAddress_KHR: Self { self.invalidOpaqueCaptureAddress }

        // END_GENERATE_ERROR_CASES
    }

    public enum Success: Int32, Sendable {
        // BEGIN_GENERATE_SUCCESS_CASES
        // Generated using header version: 318

        case success = 0
        case notReady = 1
        case timeout = 2
        case eventSet = 3
        case eventReset = 4
        case incomplete = 5
        case pipelineCompileRequired = 1_000_297_000
        case suboptimal_KHR = 1_000_001_003
        case threadIdle_KHR = 1_000_268_000
        case threadDone_KHR = 1_000_268_001
        case operationDeferred_KHR = 1_000_268_002
        case operationNotDeferred_KHR = 1_000_268_003
        case incompatibleShaderBinary_EXT = 1_000_482_000
        case pipelineBinaryMissing_KHR = 1_000_483_000

        @inlinable
        public static var pipelineCompileRequired_EXT: Success { self.pipelineCompileRequired }
        @inlinable
        public static var errorPipelineCompileRequired_EXT: Success { self.pipelineCompileRequired }
        @inlinable
        public static var errorIncompatibleShaderBinary_EXT: Success { self.incompatibleShaderBinary_EXT }

        // END_GENERATE_SUCCESS_CASES
    }

    @inlinable
    public init(_ result: VkResult) {
        self.init(result.rawValue)
    }

    @inlinable
    public init(_ result: Int32) {
        if let success = Success(rawValue: result) {
            self = .success(success)
        } else if let error = Self.Error(rawValue: result) {
            self = .error(error)
        } else {
            self = .error(.unknown)
        }
    }

    @inlinable
    public static func check(_ result: VkResult) throws(Self.Error) -> Success {
        try check(result.rawValue)
    }

    // @inlinable
    public static func check(_ result: Int32) throws(Self.Error) -> Success {
        guard let success = Success(rawValue: result) else {
            let error = Self.Error(rawValue: result)
            guard let error else {
                debugLog("Got unknown result: \(result)")
                throw Self.Error.unknown
            }
            throw error
        }
        return success
    }

    @inlinable
    public static func check(_ result: VulkanResult) throws(Self.Error) -> Success {
        switch result {
            case .error(let error):
                throw error
            case .success(let success):
                return success
        }
    }
}
