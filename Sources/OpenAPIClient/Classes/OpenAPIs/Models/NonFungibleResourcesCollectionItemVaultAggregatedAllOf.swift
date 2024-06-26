//
// NonFungibleResourcesCollectionItemVaultAggregatedAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NonFungibleResourcesCollectionItemVaultAggregatedAllOf: Codable, JSONEncodable, Hashable {

    public var vaults: NonFungibleResourcesCollectionItemVaultAggregatedVault

    public init(vaults: NonFungibleResourcesCollectionItemVaultAggregatedVault) {
        self.vaults = vaults
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case vaults
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(vaults, forKey: .vaults)
    }
}

