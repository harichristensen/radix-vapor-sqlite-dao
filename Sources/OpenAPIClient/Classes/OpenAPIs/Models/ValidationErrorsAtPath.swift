//
// ValidationErrorsAtPath.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ValidationErrorsAtPath: Codable, JSONEncodable, Hashable {

    public var path: String
    public var errors: [String]

    public init(path: String, errors: [String]) {
        self.path = path
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case path
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(path, forKey: .path)
        try container.encode(errors, forKey: .errors)
    }
}

