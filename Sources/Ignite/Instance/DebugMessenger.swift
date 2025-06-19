/**
 * DebugMessenger.swift
 * Instance
 * 
 * Created by Hunter Baker on 6/18/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

internal import CVulkan

#if Logging
    internal import Logging
#endif

/// A debug messenger for a Vulkan instance.
@safe
internal struct DebugMessenger: ~Copyable {
    /// The handle of the Vulkan debug messenger.
    private let handle: VkDebugUtilsMessengerEXT
    /// The boxed callback function that is used to handle debug messages.
    private let callbackBox: Unmanaged<CallbackBox>

    /// Creates a new `DebugMessenger` instance off of the given instance.
    /// - Warning: `destroy(instance:destroyDebugUtilsMessenger:)` must be called while the instance is still alive.
    /// - Parameters:
    ///   - instance: The Vulkan instance that the debug messenger belongs to.
    ///   - createDebugUtilsMessenger: The function pointer to the `vkCreateDebugUtilsMessengerEXT` function.
    internal init(
        instance: VkInstance,
        createDebugUtilsMessenger: PFN_vkCreateDebugUtilsMessengerEXT,
        messageSeverity: DebugUtilsMessageSeverityFlagsEXT,
        messageType: DebugUtilsMessageTypeFlagsEXT,
        callback: @escaping DebugUtilsMessengerCallback
    ) throws(VulkanError) {
        let callbackBox = CallbackBox(callback: callback)

        var debugMessengerCreateInfo = unsafe VkDebugUtilsMessengerCreateInfoEXT(
            sType: VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
            pNext: nil,
            flags: 0,
            messageSeverity: messageSeverity.rawValue,
            messageType: messageType.rawValue,
            pfnUserCallback: { severity, type, data, context in
                let unmanagedBox = unsafe Unmanaged<CallbackBox>.fromOpaque(context!)
                let callbackBox = unsafe unmanagedBox.takeUnretainedValue()
                callbackBox(
                    unsafe DebugUtilsMessengerCallbackData(
                        wrapping: unsafe data!,
                        severity: DebugUtilsMessageSeverityFlagsEXT(rawValue: severity.rawValue),
                        type: DebugUtilsMessageTypeFlagsEXT(rawValue: type)
                    )
                )
                return VK_FALSE
            },
            pUserData: unsafe Unmanaged.passUnretained(callbackBox).toOpaque()
        )

        var messenger: VkDebugUtilsMessengerEXT?
        let result = unsafe createDebugUtilsMessenger(instance, &debugMessengerCreateInfo, nil, &messenger)
        try VulkanResult.check(result)

        unsafe self.handle = messenger!
        unsafe self.callbackBox = Unmanaged.passRetained(callbackBox)
    }

    /// Consumes and destroys the debug messenger properly.
    /// - Warning: This must be called when the instance is still alive.
    /// - Parameters:
    ///   - instance: The Vulkan instance that owns this debug messenger.
    ///   - destroyDebugUtilsMessenger: The function pointer to the `vkDestroyDebugUtilsMessengerEXT` function.
    internal consuming func destroy(
        instance: VkInstance,
        destroyDebugUtilsMessenger: PFN_vkDestroyDebugUtilsMessengerEXT
    ) {
        unsafe destroyDebugUtilsMessenger(instance, handle, nil)
        unsafe callbackBox.release()
        discard self
    }

    /// This should never be called as it indicates that the `DebugMessenger` was leaked.
    /// To destroy the messenger, the instance must be provided, so you need to call `destroy(instance:destroyDebugUtilsMessenger:)`.
    /// I did it this way so that `DebugMessenger wouldn't have a cyclic dependency on `Instance`, and it can be destroyed with `Instance`.
    deinit {
        assertionFailure(
            "DebugMessenger should never be implicitly destroyed. It should be explicitly destroyed by the Instance it belongs to."
        )
    }

    /// Returns a default callback function for the debug messenger.
    internal static func getDefaultCallback() -> DebugUtilsMessengerCallback {
        let formatRelatedObjects: ([DebugUtilsMessengerCallbackData.ObjectInfo]) -> String = { objects in
            objects.map {"(name: \($0.name ?? "nil"), type: \($0.type))" }.joined(separator: ", ")
        }

        #if Logging
            let logger = Logger(label: "Ignite.Instance.DebugMessenger")
            return { [logger] data in
                let level: Logger.Level = switch data.messageSeverity {
                    case .verbose_EXT:
                        .debug
                    case .info_EXT:
                        .info
                    case .warning_EXT:
                        .warning
                    case .error_EXT:
                        .error
                    default:
                        .notice
                }
                logger.log(
                    level: level,
                    "\(data.message ?? "(No message)")",
                    metadata: [
                        "id": "\(data.messageIdName ?? "nil")",
                        "related_objects": "[\(formatRelatedObjects(data.objects))]"
                    ]
                )
            }
        #else
            return { data in
                print(
                    "[\(data.messageSeverity)] \(data.message ?? "(No message)") ",
                    "(ID: \(data.messageIdName ?? "nil"), Related Objects: [\(formatRelatedObjects(data.objects))])"
                )
            }
        #endif
    }
}

/// A callback function type for the debug messenger.
/// - Warning: No Vulkan calls can be made from this callback.
public typealias DebugUtilsMessengerCallback = (borrowing DebugUtilsMessengerCallbackData) -> Void

extension DebugMessenger {
    /// A callback for the debug messenger.
    /// This is a way of using Unmanaged with a closure so I can pass it in the userData field in Vulkan.
    private final class CallbackBox {
        /// The callback function.
        private let callback: DebugUtilsMessengerCallback

        /// Creates a new `CallbackBox` instance with the given callback.
        /// - Parameter callback: The callback function to use.
        fileprivate init(callback: @escaping DebugUtilsMessengerCallback) {
            self.callback = callback
        }

        /// Calls the callback function with the given data.
        /// - Parameter data: The data to pass to the callback function.
        fileprivate func callAsFunction(
            _ data: borrowing DebugUtilsMessengerCallbackData
        ) {
            callback(data)
        }
    }
}

/// A structure that represents the data passed to the debug messenger callback.
/// - Note: Most properties are computed, so only access them when needed.
@safe
public struct DebugUtilsMessengerCallbackData: ~Escapable {
    /// The wrapped Vulkan debug utils messenger callback data.
    private let wrapped: UnsafePointer<VkDebugUtilsMessengerCallbackDataEXT>

    /// The severity of the message.
    public let messageSeverity: DebugUtilsMessageSeverityFlagsEXT
    /// The type of the message.
    public let messageType: DebugUtilsMessageTypeFlagsEXT

    /// Creates a new `DebugUtilsMessengerCallbackData` instance by wrapping the given Vulkan debug utils messenger callback data.
    /// Borrows the data. This is mainly used to ensure that this cannot be escaped from the callback because this is undefined behavior.
    /// - Parameters:
    ///   - wrapping: The Vulkan debug utils messenger callback data to wrap.
    ///   - severity: The severity of the message.
    ///   - type: The type of the message.
    @lifetime(borrow wrapping)
    fileprivate init(
        wrapping: UnsafePointer<VkDebugUtilsMessengerCallbackDataEXT>,
        severity: DebugUtilsMessageSeverityFlagsEXT,
        type: DebugUtilsMessageTypeFlagsEXT
    ) {
        unsafe wrapped = wrapping
        messageSeverity = severity
        messageType = type
    }

    /// The message ID name.
    /// For validation messages, this is the VUID.
    public var messageIdName: String? {
        if let pMessageIdName = unsafe wrapped.pointee.pMessageIdName {
            unsafe String(cString: pMessageIdName)
        } else {
            nil
        }
    }
    /// The message ID number.
    public var messageIdNumber: Int32 {
        unsafe wrapped.pointee.messageIdNumber
    }

    /// The message text.
    /// This doesn't always contain a value.
    public var message: String? {
        if let pMessage = unsafe wrapped.pointee.pMessage {
            unsafe String(cString: pMessage)
        } else {
            nil
        }
    }

    /// Information about a label that is related to the message.
    public typealias LabelInfo = (name: String, color: (r: Float, g: Float, b: Float, a: Float))
    /// A list of labels for queues that are related to the message.
    public var queueLabels: [LabelInfo] {
        unsafe Array(unsafeUninitializedCapacity: Int(wrapped.pointee.queueLabelCount)) { buffer, initializedCount in
            if let pQueueLabels = unsafe wrapped.pointee.pQueueLabels {
                for i in 0..<Int(unsafe wrapped.pointee.queueLabelCount) {
                    let label = unsafe pQueueLabels[i]
                    unsafe buffer[i] = (
                        name: unsafe String(cString: label.pLabelName),
                        color: label.color
                    )
                }
            }
            initializedCount = Int(unsafe wrapped.pointee.queueLabelCount)
        }
    }
    /// A list of labels for command buffers that are related to the message.
    public var commandBufferLabels: [LabelInfo] {
        unsafe Array(unsafeUninitializedCapacity: Int(wrapped.pointee.cmdBufLabelCount)) { buffer, initializedCount in
            if let pCmdBufLabels = unsafe wrapped.pointee.pCmdBufLabels {
                for i in 0..<Int(unsafe wrapped.pointee.cmdBufLabelCount) {
                    let label = unsafe pCmdBufLabels[i]
                    unsafe buffer[i] = (
                        name: unsafe String(cString: label.pLabelName),
                        color: label.color
                    )
                }
            }
            initializedCount = Int(unsafe wrapped.pointee.queueLabelCount)
        }
    }

    /// Information about an object that is related to the message.
    public typealias ObjectInfo = (type: ObjectType, name: String?)
    /// A list of objects that are related to the message.
    public var objects: [ObjectInfo] {
        unsafe Array(unsafeUninitializedCapacity: Int(wrapped.pointee.objectCount)) { buffer, initializedCount in
            if let pObjects = unsafe wrapped.pointee.pObjects {
                for i in 0..<Int(unsafe wrapped.pointee.objectCount) {
                    let object = unsafe pObjects[i]
                    let name: String? = if let pObjectName = unsafe object.pObjectName {
                        unsafe String(cString: pObjectName)
                    } else {
                        nil
                    }
                    unsafe buffer[i] = (
                        type: ObjectType(rawValue: object.objectType.rawValue)!,
                        name: name
                    )
                }
            }
            initializedCount = Int(unsafe wrapped.pointee.objectCount)
        }
    }
}
