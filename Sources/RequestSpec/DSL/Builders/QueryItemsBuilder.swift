//
//  QueryItemsBuilder.swift
//  RequestSpec
//
//  Created by İbrahim Çetin on 8.10.2025.
//

/// Result builder for constructing query items
@resultBuilder
public enum QueryItemsBuilder {
    public static func buildBlock(_ components: [any QueryItemProtocol]...) -> [any QueryItemProtocol] {
        components.flatMap { $0 }
    }

    public static func buildExpression(_ expression: any QueryItemProtocol) -> [any QueryItemProtocol] {
        [expression]
    }

    public static func buildEither(first component: [any QueryItemProtocol]) -> [any QueryItemProtocol] {
        component
    }

    public static func buildEither(second component: [any QueryItemProtocol]) -> [any QueryItemProtocol] {
        component
    }

    public static func buildOptional(_ component: [any QueryItemProtocol]?) -> [any QueryItemProtocol] {
        component ?? []
    }

    public static func buildArray(_ components: [[any QueryItemProtocol]]) -> [any QueryItemProtocol] {
        components.flatMap { $0 }
    }

    public static func buildExpression(_ expression: Void) -> [any QueryItemProtocol] {
        []
    }
}
