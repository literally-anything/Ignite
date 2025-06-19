/**
 * PhysicalDevice+Features.swift
 * PhysicalDevice
 * 
 * Created by Hunter Baker on 6/17/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

public import CVulkan

extension PhysicalDevice {
    /// The features of a physical device.
    @safe
    public struct Features {
        /// The Vkulkan physical device features structure.
        @safe
        public let features: VkPhysicalDeviceFeatures
        /// The pNext chain in the features2 if available.
        @usableFromInline
        internal let features2: OutputChain

        /// Creates a new `PhysicalDeviceFeatures` instance from the given physical device.
        /// - Parameters:
        ///   - instance: The Vulkan instance that the physical device belongs to.
        ///   - handle: The Vulkan physical device handle.
        @safe
        internal init(instance: borrowing Instance, handle: VkPhysicalDevice) {
            if instance.has_getPhysicalDeviceProperties2 {
                var features2 = unsafe VkPhysicalDeviceFeatures2()
                unsafe features2.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2
                unsafe instance.table.getPhysicalDeviceFeatures2(handle, &features2)

                self.features = unsafe features2.features
                unsafe self.features2 = OutputChain(pNext: features2.pNext)
            } else {
                var features = VkPhysicalDeviceFeatures()
                unsafe instance.table.getPhysicalDeviceFeatures(handle, &features)

                self.features = features
                self.features2 = nil
            }
        }

        public var robustBufferAccess: Bool {
            features.robustBufferAccess != 0
        }
        public var fullDrawIndexUint32: Bool {
            features.fullDrawIndexUint32 != 0
        }
        public var imageCubeArray: Bool {
            features.imageCubeArray != 0
        }
        public var independentBlend: Bool {
            features.independentBlend != 0
        }
        public var geometryShader: Bool {
            features.geometryShader != 0
        }
        public var tessellationShader: Bool {
            features.tessellationShader != 0
        }
        public var sampleRateShading: Bool {
            features.sampleRateShading != 0
        }
        public var dualSrcBlend: Bool {
            features.dualSrcBlend != 0
        }
        public var logicOp: Bool {
            features.logicOp != 0
        }
        public var multiDrawIndirect: Bool {
            features.multiDrawIndirect != 0
        }
        public var drawIndirectFirstInstance: Bool {
            features.drawIndirectFirstInstance != 0
        }
        public var depthClamp: Bool {
            features.depthClamp != 0
        }
        public var depthBiasClamp: Bool {
            features.depthBiasClamp != 0
        }
        public var fillModeNonSolid: Bool {
            features.fillModeNonSolid != 0
        }
        public var depthBounds: Bool {
            features.depthBounds != 0
        }
        public var wideLines: Bool {
            features.wideLines != 0
        }
        public var largePoints: Bool {
            features.largePoints != 0
        }
        public var alphaToOne: Bool {
            features.alphaToOne != 0
        }
        public var multiViewport: Bool {
            features.multiViewport != 0
        }
        public var samplerAnisotropy: Bool {
            features.samplerAnisotropy != 0
        }
        public var textureCompressionETC2: Bool {
            features.textureCompressionETC2 != 0
        }
        public var textureCompressionASTC_LDR: Bool {
            features.textureCompressionASTC_LDR != 0
        }
        public var textureCompressionBC: Bool {
            features.textureCompressionBC != 0
        }
        public var occlusionQueryPrecise: Bool {
            features.occlusionQueryPrecise != 0
        }
        public var pipelineStatisticsQuery: Bool {
            features.pipelineStatisticsQuery != 0
        }
        public var vertexPipelineStoresAndAtomics: Bool {
            features.vertexPipelineStoresAndAtomics != 0
        }
        public var fragmentStoresAndAtomics: Bool {
            features.fragmentStoresAndAtomics != 0
        }
        public var shaderTessellationAndGeometryPointSize: Bool {
            features.shaderTessellationAndGeometryPointSize != 0
        }
        public var shaderImageGatherExtended: Bool {
            features.shaderImageGatherExtended != 0
        }
        public var shaderStorageImageExtendedFormats: Bool {
            features.shaderStorageImageExtendedFormats != 0
        }
        public var shaderStorageImageMultisample: Bool {
            features.shaderStorageImageMultisample != 0
        }
        public var shaderStorageImageReadWithoutFormat: Bool {
            features.shaderStorageImageReadWithoutFormat != 0
        }
        public var shaderStorageImageWriteWithoutFormat: Bool {
            features.shaderStorageImageWriteWithoutFormat != 0
        }
        public var shaderUniformBufferArrayDynamicIndexing: Bool {
            features.shaderUniformBufferArrayDynamicIndexing != 0
        }
        public var shaderSampledImageArrayDynamicIndexing: Bool {
            features.shaderSampledImageArrayDynamicIndexing != 0
        }
        public var shaderStorageBufferArrayDynamicIndexing: Bool {
            features.shaderStorageBufferArrayDynamicIndexing != 0
        }
        public var shaderStorageImageArrayDynamicIndexing: Bool {
            features.shaderStorageImageArrayDynamicIndexing != 0
        }
        public var shaderClipDistance: Bool {
            features.shaderClipDistance != 0
        }
        public var shaderCullDistance: Bool {
            features.shaderCullDistance != 0
        }
        public var shaderFloat64: Bool {
            features.shaderFloat64 != 0
        }
        public var shaderInt64: Bool {
            features.shaderInt64 != 0
        }
        public var shaderInt16: Bool {
            features.shaderInt16 != 0
        }
        public var shaderResourceResidency: Bool {
            features.shaderResourceResidency != 0
        }
        public var shaderResourceMinLod: Bool {
            features.shaderResourceMinLod != 0
        }
        public var sparseBinding: Bool {
            features.sparseBinding != 0
        }
        public var sparseResidencyBuffer: Bool {
            features.sparseResidencyBuffer != 0
        }
        public var sparseResidencyImage2D: Bool {
            features.sparseResidencyImage2D != 0
        }
        public var sparseResidencyImage3D: Bool {
            features.sparseResidencyImage3D != 0
        }
        public var sparseResidency2Samples: Bool {
            features.sparseResidency2Samples != 0
        }
        public var sparseResidency4Samples: Bool {
            features.sparseResidency4Samples != 0
        }
        public var sparseResidency8Samples: Bool {
            features.sparseResidency8Samples != 0
        }
        public var sparseResidency16Samples: Bool {
            features.sparseResidency16Samples != 0
        }
        public var sparseResidencyAliased: Bool {
            features.sparseResidencyAliased != 0
        }
        public var variableMultisampleRate: Bool {
            features.variableMultisampleRate != 0
        }
        public var inheritedQueries: Bool {
            features.inheritedQueries != 0
        }
    }
}
