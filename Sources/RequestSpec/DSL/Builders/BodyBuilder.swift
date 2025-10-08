//
//  BodyBuilder.swift
//  RequestSpec
//
//  Created by İbrahim Çetin on 8.10.2025.
//

/// Result builder for constructing request body
@resultBuilder
public enum BodyBuilder {
    public static func buildBlock(_ components: (any Encodable)?) -> (any Encodable)? {
        components
    }

    public static func buildExpression(_ expression: (any Encodable)?) -> (any Encodable)? {
        expression
    }

    public static func buildEither(first component: (any Encodable)?) -> (any Encodable)? {
        component
    }

    public static func buildEither(second component: (any Encodable)?) -> (any Encodable)? {
        component
    }

    //    public static func buildBlock(_ components: [any KeyValuePair & Encodable]...) -> any Encodable {
    //        components
    //    }
}
