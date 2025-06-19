/**
 * DebugLogging.swift
 * Loader
 *
 * Created by Hunter Baker on 4/22/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

// Just needed a way to log failures to load the Vulkan library only when in debug mode.
#if DEBUG && Logging
    internal import Logging
    private struct LoaderLoggerContainer {
        static let shared = Logger(label: "Ignite.Loader.Debug")
    }
    /// A debug logging function that only prints in debug mode.
    internal func debugLog(
        _ message: @autoclosure () -> Logger.Message,
        file: String = #fileID,
        function: String = #function,
        line: UInt = #line
    ) {
        LoaderLoggerContainer.shared.debug(
            message(), file: file, function: function, line: line
        )
    }
    /// A trace logging function that only prints in debug mode.
    internal func traceLog(
        _ message: @autoclosure () -> Logger.Message,
        file: String = #fileID,
        function: String = #function,
        line: UInt = #line
    ) {
        LoaderLoggerContainer.shared.trace(
            message(), file: file, function: function, line: line
        )
    }
#else
    /// A logging function that only prints in debug mode.
    @inlinable
    @inline(__always)
    internal func debugLog(_ message: @autoclosure () -> String) {}
    /// A trace logging function that only prints in debug mode.
    @inlinable
    @inline(__always)
    internal func traceLog(_ message: @autoclosure () -> String) {}
#endif
