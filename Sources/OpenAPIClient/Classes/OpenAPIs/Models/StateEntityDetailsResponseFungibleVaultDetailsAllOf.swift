//
// StateEntityDetailsResponseFungibleVaultDetailsAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StateEntityDetailsResponseFungibleVaultDetailsAllOf: Codable, JSONEncodable, Hashable {

    /** Bech32m-encoded human readable version of the address. */
    public var resourceAddress: String
    public var balance: FungibleResourcesCollectionItemVaultAggregatedVaultItem

    public init(resourceAddress: String, balance: FungibleResourcesCollectionItemVaultAggregatedVaultItem) {
        self.resourceAddress = resourceAddress
        self.balance = balance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case resourceAddress = "resource_address"
        case balance
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(resourceAddress, forKey: .resourceAddress)
        try container.encode(balance, forKey: .balance)
    }
}

