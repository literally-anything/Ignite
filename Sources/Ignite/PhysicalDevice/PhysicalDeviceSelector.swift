/**
 * PhysicalDeviceSelector.swift
 * PhysicalDevice
 *
 * Created by Hunter Baker on 6/17/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

internal import CVulkan

extension Instance {
    /// A helper that makes it easier to find physical devices with specific features or properties.
    /// - Throws: `VulkanError` if the physical devices cannot be enumerated.
    public var deviceSelector: PhysicalDeviceSelector {
        get throws(VulkanError) {
            try PhysicalDeviceSelector(physicalDevices)
        }
    }
}

/// A helper that makes it easier to find devices with specific features or properties.
public final class PhysicalDeviceSelector {
    /// The array of physical devices that are available.
    @usableFromInline
    internal var physicalDevices: [PhysicalDevice]

    /// A set of required extensions that must be supported by the selected physical device.
    internal var requiredExtensions: Set<DeviceExtension> = []

    /// A set of preferred extensions that the selected physical device should support.
    /// The selections are ordered by the number of preferred extensions supported.
    internal var preferredExtensions: Set<DeviceExtension> = []
    /// The preferred physical device type.
    /// This is used to filter devices that match the preferred type when selecting.
    internal var preferredDeviceType: PhysicalDeviceType? = nil
    /// Whether to prefer physical devices with more memory.
    /// If false, we just don't sort by memory size.
    internal var doPreferLargerMemory: Bool = false
    /// Whether to prefer physical devices with newer API versions.
    /// If false, we just don't sort by API version.
    internal var doPreferNewerApi: Bool = false

    /// Creates a new `PhysicalDeviceSelector` with the given physical devices.
    /// - Parameter physicalDevices: The array of physical devices to select from.
    @usableFromInline
    internal init(_ physicalDevices: [PhysicalDevice]) {
        self.physicalDevices = physicalDevices
    }
}

extension PhysicalDeviceSelector {
    /// Selects the physical device that best matches the criteria set in the selector.
    /// - Returns: The first physical device that best matches the criteria, or `nil` if no devices match.
    public func select() -> PhysicalDevice? {
        selectAll().first
    }

    /// All physical devices that match the criteria set in the selector ordered by preference.
    /// - Returns: An array of physical devices that match the criteria.
    public func selectAll() -> [PhysicalDevice] {
        orderDevices()
        attachMetadata()
        return physicalDevices
    }

    /// Attaches the required extensions and preferred extensions to the physical devices.
    private func attachMetadata() {
        physicalDevices = physicalDevices.map { device in
            var device: PhysicalDevice = device

            // Attach the required extensions and available preferred extensions to the device.
            device.enabledExtensions.formUnion(requiredExtensions)
            device.enabledExtensions.formUnion(
                // Only attach preferred extensions that are available on the device.
                preferredExtensions.intersection(device.availableExtensions)
            )

            return device
        }
    }

    /// Orders the physical devices based on the preferences set in the selector.
    private func orderDevices() {
        physicalDevices.sort { lhs, rhs in
            // First, we check the ammount of matched extensions.
            let lhsExtScore = lhs.availableExtensions.intersection(preferredExtensions).count
            let rhsExtScore = rhs.availableExtensions.intersection(preferredExtensions).count
            if lhsExtScore != rhsExtScore {
                return lhsExtScore > rhsExtScore
            }

            // Other sorting methods are just used as a tiebreaker when the extension scores are equal.
            let doDefaultSorting =
                preferredDeviceType == nil && !doPreferLargerMemory && !doPreferNewerApi
            var score: Int = 0
            if let preferredDeviceType {
                // If we have a preferred device type, we prefer devices that match it.
                if lhs.deviceType == preferredDeviceType {
                    score += 1
                }
                if rhs.deviceType == preferredDeviceType {
                    score -= 1
                }
            } else if doDefaultSorting {
                // If we are using default sorting, we prefer discrete GPUs over integrated GPUs,
                // and integrated GPUs over other types.
                func scoreDeviceType(_ deviceType: PhysicalDeviceType) -> Int {
                    switch deviceType {
                        case .discreteGpu:
                            return 2
                        case .integratedGpu:
                            return 1
                        case .virtualGpu, .cpu, .other:
                            return 0
                    }
                }
                let lhsScore = scoreDeviceType(lhs.deviceType)
                let rhsScore = scoreDeviceType(rhs.deviceType)
                if lhsScore > rhsScore {
                    score += 1
                } else if lhsScore < rhsScore {
                    score -= 1
                }
            }
            if doPreferLargerMemory || doDefaultSorting {
                let lhsMaxMemory = lhs.memoryProperties.heaps.map { $0.size }.max() ?? 0
                let rhsMaxMemory = rhs.memoryProperties.heaps.map { $0.size }.max() ?? 0
                if lhsMaxMemory > rhsMaxMemory {
                    score += 1
                } else if lhsMaxMemory < rhsMaxMemory {
                    score -= 1
                }
            }
            if doPreferNewerApi || doDefaultSorting {
                if lhs.properties.apiVersion > rhs.properties.apiVersion {
                    score += 1
                } else if lhs.properties.apiVersion < rhs.properties.apiVersion {
                    score -= 1
                }
            }
            if doDefaultSorting {
                // Whichever device has a dedicated compute queue family is preferred.
                if lhs.queueFamilies.contains(where: { $0.supportsCompute }) {
                    score += 1
                }
                if lhs.queueFamilies.contains(where: { $0.supportsCompute }) {
                    score -= 1
                }

                // Whichever device has a dedicated transfer queue family is preferred.
                if lhs.queueFamilies.contains(where: { $0.supportsTransfer }) {
                    score += 1
                }
                if lhs.queueFamilies.contains(where: { $0.supportsTransfer }) {
                    score -= 1
                }

                // Whichever device has a host coherent memory type is preferred.
                if lhs.memoryProperties.types.contains(where: { $0.propertyFlags.contains(.hostCoherent) }) {
                    score += 1
                }
                if rhs.memoryProperties.types.contains(where: { $0.propertyFlags.contains(.hostCoherent) }) {
                    score -= 1
                }
            }
            return score > 0
        }
    }
}

extension PhysicalDeviceSelector {
    /// Requires that all physical devices in the selector match the given predicate.
    /// - Parameter predicate: A closure that takes a `PhysicalDevice` and returns a `Bool` indicating whether the device matches the criteria.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func require(where predicate: (PhysicalDevice) -> Bool) -> Self {
        physicalDevices = physicalDevices.filter(predicate)
        return self
    }

    /// Requires that all physical devices in the selector support the given extension.
    /// This extension will be automatically enabled on the selected physical device after selection.
    /// - Parameter ext: The `DeviceExtension` that must be supported by the physical devices.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func require(extension ext: DeviceExtension) -> Self {
        physicalDevices = physicalDevices.filter {
            $0.availableExtensions.contains(ext)
        }
        requiredExtensions.insert(ext)
        return self
    }
    /// Requires that all physical devices in the selector support all of the given extensions.
    /// These extensions will be automatically enabled on the selected physical device after selection.
    /// - Parameter extensions: An array of `DeviceExtension` that must be supported by the physical devices.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func require(extensions: [DeviceExtension]) -> Self {
        physicalDevices = physicalDevices.filter {
            $0.availableExtensions.isSuperset(of: extensions)
        }
        requiredExtensions.formUnion(extensions)
        return self
    }
    /// Requires that all physical devices in the selector support all of the given extensions.
    /// These extensions will be automatically enabled on the selected physical device after selection.
    /// - Parameter extensions: A variadic collection of `DeviceExtension` that must be supported by the physical devices.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func require(extensions: DeviceExtension...) -> Self {
        return require(extensions: extensions)
    }
    /// Prefers physical devices that support the given extension.
    /// This extension will be automatically enabled on the selected physical device after selection if supported.
    /// - Note: Physical device preferences are weighted higher than all other preferences.
    ///         This does not disable the default automatic sorting behavior.
    /// - Parameter ext: The `DeviceExtension` that we prefer to have.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func prefer(extension ext: DeviceExtension) -> Self {
        preferredExtensions.insert(ext)
        return self
    }
    /// Prefers physical devices that support all of the given extensions.
    /// These extensions will be automatically enabled on the selected physical device after selection if supported.
    /// - Note: Physical device preferences are weighted higher than all other preferences.
    ///         This does not disable the default automatic sorting behavior.
    /// - Parameter extensions: An array of `DeviceExtension` that we prefer to have.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func prefer(extensions: [DeviceExtension]) -> Self {
        preferredExtensions.formUnion(extensions)
        return self
    }
    /// Prefers physical devices that support all of the given extensions.
    /// These extensions will be automatically enabled on the selected physical device after selection if supported.
    /// - Note: Physical device preferences are weighted higher than all other preferences.
    ///         This does not disable the default automatic sorting behavior.
    /// - Parameter extensions: A variadic collection of `DeviceExtension` that we prefer to have.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func prefer(extensions: DeviceExtension...) -> Self {
        return prefer(extensions: extensions)
    }

    /// Requires that all physical devices in the selector are of the given physical device type.
    /// - Note: This has no fallback if no physical devices match the criteria. Use `prefer(deviceType:)` if you want a fallback.
    /// - Parameter deviceType: The `PhysicalDeviceType` that the physical devices must match.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func require(deviceType: PhysicalDeviceType) -> Self {
        physicalDevices = physicalDevices.filter {
            $0.deviceType == deviceType
        }
        return self
    }
    /// Prefers physical devices that match the given predicate.
    /// - Note: By manually setting preferences, this disables the default automatic sorting behavior.
    /// - Parameter deviceType: The `PhysicalDeviceType` that we prefer.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func prefer(deviceType: PhysicalDeviceType) -> Self {
        preferredDeviceType = deviceType
        return self
    }

    /// Requires that all physical devices in the selector have a queue with the transfer bit set.
    /// - Parameter forceDedicated: If `true`, only physical devices with a dedicated transfer queue will be included.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func requireTransferQueue(forceDedicated: Bool = false) -> Self {
        physicalDevices = physicalDevices.filter { device in
            var transferQueueFamilies = device.queueFamilies.filter(\.supportsTransfer)
            if forceDedicated {
                // If we require a dedicated transfer queue, filter out any that also support graphics or compute.
                transferQueueFamilies = transferQueueFamilies.filter {
                    !$0.supportsGraphics && !$0.supportsCompute
                }
            }
            return !transferQueueFamilies.isEmpty
        }
        return self
    }
    /// Requires that all physical devices in the selector have a queue with the compute bit set.
    /// - Parameter forceDedicated: If `true`, only physical devices with a dedicated compute queue will be included.
    @discardableResult
    public func requireComputeQueue(forceDedicated: Bool = false) -> Self {
        physicalDevices = physicalDevices.filter { device in
            var computeQueueFamilies = device.queueFamilies.filter(\.supportsCompute)
            if forceDedicated {
                // If we require a dedicated compute queue, filter out any that also support graphics or transfer.
                computeQueueFamilies = computeQueueFamilies.filter {
                    !$0.supportsGraphics && !$0.supportsTransfer
                }
            }
            return !computeQueueFamilies.isEmpty
        }
        return self
    }

    /// Requires that all physical devices in the selector have a memory type that is host coherent.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func requireHostCoherentMemory() -> Self {
        physicalDevices = physicalDevices.filter { device in
            device.memoryProperties.types.contains { type in
                type.propertyFlags.contains(.hostCoherent)
            }
        }
        return self
    }
    /// Requires that all physical devices in the selector have at least the specified amount of memory in a single heap.
    /// - Parameters:
    ///   - size: The minimum amount of memory in bytes that the physical devices must have.
    /// - Parameter forceDeviceLocal: If `true`, the memory heap must be device local.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func require(memorySize size: UInt64, forceDeviceLocal: Bool = true) -> Self {
        physicalDevices = physicalDevices.filter { device in
            let memorySize = device.memoryProperties.heaps.reduce(0) { $0 + $1.size }
            return memorySize >= size
        }
        return self
    }
    /// Prefers physical devices that have larger memory heaps.
    /// By default, memory size does not affect the sort order, but this will enable that preference.
    /// - Note: By manually setting preferences, this disables the default automatic sorting behavior.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func preferLargerMemory() -> Self {
        doPreferLargerMemory = true
        return self
    }

    /// Excludes any physical devices that require the `VK_KHR_portability_subset` extension from the selection.
    /// By default, these devices are allowed normally.
    /// This is useful if you want to avoid devices that are not fully compliant with the Vulkan specification.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func excludePortabilitySubset() -> Self {
        physicalDevices = physicalDevices.filter { device in
            !device.availableExtensions.contains(.portabilitySubset_KHR)
        }
        return self
    }

    /// Requires that all physical devices in the selector support the given minimum Vulkan API version.
    /// - Parameter version: The minimum `ApiVersion` that the physical devices must support.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func require(apiVersion version: ApiVersion) -> Self {
        physicalDevices = physicalDevices.filter { device in
            device.apiVersion >= version
        }
        return self
    }
    /// Prefers physical devices with higher API versions.
    /// By default, api version does not affect the sort order, but this will enable that preference.
    /// - Note: By manually setting preferences, this disables the default automatic sorting behavior.
    /// - Returns: The updated `PhysicalDeviceSelector`. This allows for method chaining.
    @discardableResult
    public func preferNewerApi() -> Self {
        doPreferNewerApi = true
        return self
    }
}
