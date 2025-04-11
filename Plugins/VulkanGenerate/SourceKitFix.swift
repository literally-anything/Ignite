/**
 * SourceKitFix.swift
 * VulkanGenerate
 *
 * Created by Hunter Baker on 4/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

// This is only here because SourceKit doesn't see PackagePlugin, but it compiles fine.
// I just make some fake types that look like the real ones, so SourceKit can still do code completion.
#if !canImport(PackagePlugin)

    import Foundation

    private func shouldNeverReach() -> Never {
        fatalError("This should never be reached")
    }

    protocol CommandPlugin {}
    extension CommandPlugin {
        static func main() { shouldNeverReach() }
    }

    struct PluginContext {
        var package: Package { shouldNeverReach() }
        struct Package {
            var directoryURL: URL { shouldNeverReach() }
        }

        var tool: (String) throws -> Tool { shouldNeverReach() }
        struct Tool {
            var url: URL { shouldNeverReach() }
        }
    }

#endif
