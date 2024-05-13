//
// MetadataNonFungibleGlobalIdArrayValueAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MetadataNonFungibleGlobalIdArrayValueAllOf: Codable, JSONEncodable, Hashable {

    public var values: [MetadataNonFungibleGlobalIdValueAllOf]

    public init(values: [MetadataNonFungibleGlobalIdValueAllOf]) {
        self.values = values
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(values, forKey: .values)
    }
}

