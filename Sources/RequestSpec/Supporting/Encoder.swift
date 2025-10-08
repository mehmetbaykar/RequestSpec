//
//  Encoder.swift
//  RequestSpec
//
//  Created by İbrahim Çetin on 8.10.2025.
//

import Foundation

public protocol Encoder {
    func encode<T>(_ value: T) throws -> Data where T: Encodable
}

extension JSONEncoder: Encoder {}
