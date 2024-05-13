//
// MetadataNonFungibleGlobalIdValueAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MetadataNonFungibleGlobalIdValueAllOf: Codable, JSONEncodable, Hashable {

    /** Bech32m-encoded human readable version of the address. */
    public var resourceAddress: String
    /** String-encoded non-fungible ID. */
    public var nonFungibleId: String

    public init(resourceAddress: String, nonFungibleId: String) {
        self.resourceAddress = resourceAddress
        self.nonFungibleId = nonFungibleId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case resourceAddress = "resource_address"
        case nonFungibleId = "non_fungible_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(resourceAddress, forKey: .resourceAddress)
        try container.encode(nonFungibleId, forKey: .nonFungibleId)
    }
}

