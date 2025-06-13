/**
 * InstanceCreateInfo.swift
 * Instance
 *
 * Created by Hunter Baker on 6/12/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

import CVulkan

public protocol InstanceCreateInfoChainable: ~Escapable {
    associatedtype Wrapped: BitwiseCopyable

    var wrapped: Wrapped { get }
}

@safe
public struct InstanceCreateInfoChain: ~Copyable, ~Escapable {
    @usableFromInline
    var start: UnsafeMutablePointer<VkBaseInStructure>?
    @usableFromInline
    var end: UnsafeMutablePointer<VkBaseInStructure>?

    @inlinable
    @lifetime(immortal)
    public init() {
        unsafe self.start = nil
        unsafe self.end = nil
    }

    @safe
    @inlinable
    @lifetime(self: copy element)
    public mutating func add<T: InstanceCreateInfoChainable & ~Escapable>(_ element: consuming T) {
        let allocation = UnsafeMutablePointer<T.Wrapped>.allocate(capacity: 1)
        unsafe allocation.initialize(to: element.wrapped)

        if unsafe end != nil {
            assert(unsafe start != nil, "End is not nil, but start is. This should not happen.")

            unsafe end!.pointee.pNext = UnsafeRawPointer(allocation).assumingMemoryBound(to: VkBaseInStructure.self)
            unsafe end = UnsafeMutableRawPointer(allocation).assumingMemoryBound(to: VkBaseInStructure.self)
        } else {
            assert(unsafe start == nil, "End is nil, but start is not. This should not happen.")

            unsafe start = UnsafeMutableRawPointer(allocation).assumingMemoryBound(to: VkBaseInStructure.self)
            unsafe end = start
        }
    }

    deinit {
        var start = unsafe self.start
        while unsafe start != nil {
            let next = unsafe start!.pointee.pNext
            unsafe start!.deallocate()
            unsafe start = unsafeBitCast(next, to: UnsafeMutablePointer<VkBaseInStructure>.self)
        }
    }
}

public struct Applicationinfo {
    public var name: String?
    public var version: UInt32
    public var engineName: String?
    public var engineVersion: UInt32

    public init(
        name: String? = nil,
        version: UInt32 = 0,
        engineName: String? = nil,
        engineVersion: UInt32 = 0,
    ) {
        self.name = name
        self.version = version
        self.engineName = engineName
        self.engineVersion = engineVersion
    }
}

// BEGIN_GENERATE_INSTANCE_CREATE_INFO_CHAIN_WRAPPERS
// Generated using header version: 318

@safe
public struct DebugReportCallbackCreateInfoEXT: BitwiseCopyable, ~Escapable, @unsafe InstanceCreateInfoChainable {
    public typealias Wrapped = CVulkan.VkDebugReportCallbackCreateInfoEXT

    public var wrapped: CVulkan.VkDebugReportCallbackCreateInfoEXT

    @inlinable
    @lifetime(immortal)
    public init(wrapping wrapped: consuming CVulkan.VkDebugReportCallbackCreateInfoEXT) {
        unsafe self.wrapped = wrapped
    }

    @inlinable
    @lifetime(immortal)
    public init(
        next: UnsafeRawPointer? = nil,
        flags: DebugReportFlagsEXT = [],
        fnCallback: PFN_vkDebugReportCallbackEXT,
        userData: UnsafeMutableRawPointer? = nil
    ) {
        unsafe self.wrapped = CVulkan.VkDebugReportCallbackCreateInfoEXT(
            sType: VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT,
            pNext: next,
            flags: flags.rawValue,
            pfnCallback: fnCallback,
            pUserData: userData
        )
    }
}


@safe
public struct ValidationFlagsEXT: BitwiseCopyable, ~Escapable, @unsafe InstanceCreateInfoChainable {
    public typealias Wrapped = CVulkan.VkValidationFlagsEXT

    public var wrapped: CVulkan.VkValidationFlagsEXT

    @inlinable
    @lifetime(immortal)
    public init(wrapping wrapped: consuming CVulkan.VkValidationFlagsEXT) {
        unsafe self.wrapped = wrapped
    }

    @inlinable
    @lifetime(immortal)
    public init(
        next: UnsafeRawPointer? = nil,
        disabledValidationCheckCount: UInt32,
        disabledValidationChecks: UnsafePointer<VkValidationCheckEXT>
    ) {
        unsafe self.wrapped = CVulkan.VkValidationFlagsEXT(
            sType: VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT,
            pNext: next,
            disabledValidationCheckCount: disabledValidationCheckCount,
            pDisabledValidationChecks: disabledValidationChecks
        )
    }
}


@safe
public struct ValidationFeaturesEXT: BitwiseCopyable, ~Escapable, @unsafe InstanceCreateInfoChainable {
    public typealias Wrapped = CVulkan.VkValidationFeaturesEXT

    public var wrapped: CVulkan.VkValidationFeaturesEXT

    @inlinable
    @lifetime(immortal)
    public init(wrapping wrapped: consuming CVulkan.VkValidationFeaturesEXT) {
        unsafe self.wrapped = wrapped
    }

    @inlinable
    @lifetime(immortal)
    public init(
        next: UnsafeRawPointer? = nil,
        enabledValidationFeatureCount: UInt32,
        enabledValidationFeatures: UnsafePointer<VkValidationFeatureEnableEXT>,
        disabledValidationFeatureCount: UInt32,
        disabledValidationFeatures: UnsafePointer<VkValidationFeatureDisableEXT>
    ) {
        unsafe self.wrapped = CVulkan.VkValidationFeaturesEXT(
            sType: VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT,
            pNext: next,
            enabledValidationFeatureCount: enabledValidationFeatureCount,
            pEnabledValidationFeatures: enabledValidationFeatures,
            disabledValidationFeatureCount: disabledValidationFeatureCount,
            pDisabledValidationFeatures: disabledValidationFeatures
        )
    }
}


@safe
public struct LayerSettingsCreateInfoEXT: BitwiseCopyable, ~Escapable, @unsafe InstanceCreateInfoChainable {
    public typealias Wrapped = CVulkan.VkLayerSettingsCreateInfoEXT

    public var wrapped: CVulkan.VkLayerSettingsCreateInfoEXT

    @inlinable
    @lifetime(immortal)
    public init(wrapping wrapped: consuming CVulkan.VkLayerSettingsCreateInfoEXT) {
        unsafe self.wrapped = wrapped
    }

    @inlinable
    @lifetime(immortal)
    public init(
        next: UnsafeRawPointer? = nil,
        settingCount: UInt32,
        settings: UnsafePointer<VkLayerSettingEXT>
    ) {
        unsafe self.wrapped = CVulkan.VkLayerSettingsCreateInfoEXT(
            sType: VK_STRUCTURE_TYPE_LAYER_SETTINGS_CREATE_INFO_EXT,
            pNext: next,
            settingCount: settingCount,
            pSettings: settings
        )
    }
}


@safe
public struct DebugUtilsMessengerCreateInfoEXT: BitwiseCopyable, ~Escapable, @unsafe InstanceCreateInfoChainable {
    public typealias Wrapped = CVulkan.VkDebugUtilsMessengerCreateInfoEXT

    public var wrapped: CVulkan.VkDebugUtilsMessengerCreateInfoEXT

    @inlinable
    @lifetime(immortal)
    public init(wrapping wrapped: consuming CVulkan.VkDebugUtilsMessengerCreateInfoEXT) {
        unsafe self.wrapped = wrapped
    }

    @inlinable
    @lifetime(immortal)
    public init(
        next: UnsafeRawPointer? = nil,
        flags: DebugUtilsMessengerCreateFlagsEXT = [],
        messageSeverity: DebugUtilsMessageSeverityFlagsEXT = [],
        messageType: DebugUtilsMessageTypeFlagsEXT = [],
        fnUserCallback: PFN_vkDebugUtilsMessengerCallbackEXT,
        userData: UnsafeMutableRawPointer? = nil
    ) {
        unsafe self.wrapped = CVulkan.VkDebugUtilsMessengerCreateInfoEXT(
            sType: VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
            pNext: next,
            flags: flags.rawValue,
            messageSeverity: messageSeverity.rawValue,
            messageType: messageType.rawValue,
            pfnUserCallback: fnUserCallback,
            pUserData: userData
        )
    }
}


#if PlatformMetal
    @safe
    public struct ExportMetalObjectCreateInfoEXT: BitwiseCopyable, ~Escapable, @unsafe InstanceCreateInfoChainable {
        public typealias Wrapped = CVulkan.VkExportMetalObjectCreateInfoEXT

        public var wrapped: CVulkan.VkExportMetalObjectCreateInfoEXT

        @inlinable
        @lifetime(immortal)
        public init(wrapping wrapped: consuming CVulkan.VkExportMetalObjectCreateInfoEXT) {
            unsafe self.wrapped = wrapped
        }

        @inlinable
        @lifetime(immortal)
        public init(
            next: UnsafeRawPointer? = nil,
            exportObjectType: ExportMetalObjectTypeFlagsEXT = []
        ) {
            unsafe self.wrapped = CVulkan.VkExportMetalObjectCreateInfoEXT(
                sType: VK_STRUCTURE_TYPE_EXPORT_METAL_OBJECT_CREATE_INFO_EXT,
                pNext: next,
                exportObjectType: VkExportMetalObjectTypeFlagBitsEXT(rawValue: exportObjectType.rawValue)
            )
        }
    }
#else
    @available(*, unavailable, message: "This struct requires the following trait: PlatformMetal.")
    public struct ExportMetalObjectCreateInfoEXT: BitwiseCopyable, ~Escapable {}
#endif


@safe
public struct DirectDriverLoadingListLUNARG: BitwiseCopyable, ~Escapable, @unsafe InstanceCreateInfoChainable {
    public typealias Wrapped = CVulkan.VkDirectDriverLoadingListLUNARG

    public var wrapped: CVulkan.VkDirectDriverLoadingListLUNARG

    @inlinable
    @lifetime(immortal)
    public init(wrapping wrapped: consuming CVulkan.VkDirectDriverLoadingListLUNARG) {
        unsafe self.wrapped = wrapped
    }

    @inlinable
    @lifetime(immortal)
    public init(
        next: UnsafeRawPointer? = nil,
        mode: DirectDriverLoadingModeLUNARG,
        driverCount: UInt32,
        drivers: UnsafePointer<VkDirectDriverLoadingInfoLUNARG>
    ) {
        unsafe self.wrapped = CVulkan.VkDirectDriverLoadingListLUNARG(
            sType: VK_STRUCTURE_TYPE_DIRECT_DRIVER_LOADING_LIST_LUNARG,
            pNext: next,
            mode: VkDirectDriverLoadingModeLUNARG(rawValue: mode.rawValue),
            driverCount: driverCount,
            pDrivers: drivers
        )
    }
}

// END_GENERATE_INSTANCE_CREATE_INFO_CHAIN_WRAPPERS
