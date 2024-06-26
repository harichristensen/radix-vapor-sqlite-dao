//
// MetadataUrlArrayValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MetadataUrlArrayValue: Codable, JSONEncodable, Hashable {

    public var type: MetadataValueType
    public var values: [String]

    public init(type: MetadataValueType, values: [String]) {
        self.type = type
        self.values = values
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(values, forKey: .values)
    }
}

