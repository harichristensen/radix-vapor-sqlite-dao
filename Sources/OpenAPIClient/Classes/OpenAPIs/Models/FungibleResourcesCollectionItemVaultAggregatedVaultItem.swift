//
// FungibleResourcesCollectionItemVaultAggregatedVaultItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FungibleResourcesCollectionItemVaultAggregatedVaultItem: Codable, JSONEncodable, Hashable {

    static let lastUpdatedAtStateVersionRule = NumericRule<Int64>(minimum: 1, exclusiveMinimum: false, maximum: 100000000000000, exclusiveMaximum: false, multipleOf: nil)
    /** Bech32m-encoded human readable version of the address. */
    public var vaultAddress: String
    /** String-encoded decimal representing the amount of a related fungible resource. */
    public var amount: String
    /** The most recent state version underlying object was modified at. */
    public var lastUpdatedAtStateVersion: Int64

    public init(vaultAddress: String, amount: String, lastUpdatedAtStateVersion: Int64) {
        self.vaultAddress = vaultAddress
        self.amount = amount
        self.lastUpdatedAtStateVersion = lastUpdatedAtStateVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case vaultAddress = "vault_address"
        case amount
        case lastUpdatedAtStateVersion = "last_updated_at_state_version"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(vaultAddress, forKey: .vaultAddress)
        try container.encode(amount, forKey: .amount)
        try container.encode(lastUpdatedAtStateVersion, forKey: .lastUpdatedAtStateVersion)
    }
}

