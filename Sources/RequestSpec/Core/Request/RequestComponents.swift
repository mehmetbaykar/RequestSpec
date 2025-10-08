//
//  RequestSpec.swift
//  RequestSpec
//
//  Created by İbrahim Çetin on 7.10.2025.
//

/// Components that make up a network request
public struct RequestComponents: Sendable {
    /// Headers to include in the request
    public var headers: [String: String]

    /// Query items to append to the URL
    public var queryItems: [URLQueryItem]

    /// Body data for the request
    public var body: Data?

    /// Request timeout interval
    public var timeout: TimeInterval

    /// Cache policy for the request
    public var cachePolicy: URLRequest.CachePolicy

    /// Whether the request can use cellular network
    public var allowsCellularAccess: Bool

    public init(
        headers: [String: String] = [:],
        queryItems: [URLQueryItem] = [],
        body: Data? = nil,
        timeout: TimeInterval = 60,
        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
        allowsCellularAccess: Bool = true
    ) {
        self.headers = headers
        self.queryItems = queryItems
        self.body = body
        self.timeout = timeout
        self.cachePolicy = cachePolicy
        self.allowsCellularAccess = allowsCellularAccess
    }
}
