//
//  HeadersBuilder.swift
//  RequestSpec
//
//  Created by İbrahim Çetin on 8.10.2025.
//

/// Result builder for constructing headers
@resultBuilder
public enum HeadersBuilder {
    public static func buildBlock(_ components: [any HeaderProtocol]...) -> [any HeaderProtocol] {
        components.flatMap { $0 }
    }

    public static func buildExpression(_ expression: any HeaderProtocol) -> [any HeaderProtocol] {
        [expression]
    }

    public static func buildEither(first component: [any HeaderProtocol]) -> [any HeaderProtocol] {
        component
    }

    public static func buildEither(second component: [any HeaderProtocol]) -> [any HeaderProtocol] {
        component
    }

    public static func buildOptional(_ component: [any HeaderProtocol]?) -> [any HeaderProtocol] {
        component ?? []
    }

    public static func buildArray(_ components: [[any HeaderProtocol]]) -> [any HeaderProtocol] {
        components.flatMap { $0 }
    }

    public static func buildExpression(_ expression: Void) -> [any HeaderProtocol] {
        []
    }
}
