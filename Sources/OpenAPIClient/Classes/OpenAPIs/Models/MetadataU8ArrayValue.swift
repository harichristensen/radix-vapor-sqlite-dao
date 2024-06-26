//
// MetadataU8ArrayValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MetadataU8ArrayValue: Codable, JSONEncodable, Hashable {

    public var type: MetadataValueType
    public var valueHex: String

    public init(type: MetadataValueType, valueHex: String) {
        self.type = type
        self.valueHex = valueHex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case valueHex = "value_hex"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(valueHex, forKey: .valueHex)
    }
}

