//
//  QueryItem.swift
//  RequestSpec
//
//  Created by İbrahim Çetin on 8.10.2025.
//

/// Protocol for types that provide a key-value pair
public protocol QueryItemProtocol {
    var key: String { get }
    var value: String? { get }
}

/// Generic key-value pair
public struct Item: QueryItemProtocol {
    public let key: String
    public let value: String?

    /// Create a simple key-value pair
    public init(_ key: String, value: String?) {
        self.key = key
        self.value = value
    }
}
