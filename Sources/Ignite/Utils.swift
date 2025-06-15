/**
 * Utils.swift
 * Ignite
 *
 * Created by Hunter Baker on 6/14/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */

/// A tuple UUID type that doesn't require Foundation.
/// - Note: Foundation does know how to convert this into a normal UUID if needed.
public typealias UUID = (
    UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8
)
