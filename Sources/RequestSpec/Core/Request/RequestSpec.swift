//
//  RequestSpec.swift
//  RequestSpec
//
//  Created by İbrahim Çetin on 7.10.2025.
//

import Foundation

/// Protocol that defines a request definition
public protocol RequestSpec: Sendable {
    /// The type of request body
    associatedtype Body: Request

    /// The body of the request
    var body: Body { get }
}

extension RequestSpec {
    /// This is a shortcut for ``Request/urlRequest(baseURL:)`` method.
    public func urlRequest(baseURL: URL) throws -> URLRequest {
        try self.body.urlRequest(baseURL: baseURL)
    }
}
