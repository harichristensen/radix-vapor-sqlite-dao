//
// NonFungibleResourcesCollectionItemVaultAggregatedVaultItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NonFungibleResourcesCollectionItemVaultAggregatedVaultItem: Codable, JSONEncodable, Hashable {

    static let lastUpdatedAtStateVersionRule = NumericRule<Int64>(minimum: 1, exclusiveMinimum: false, maximum: 100000000000000, exclusiveMaximum: false, multipleOf: nil)
    public var totalCount: Int64
    /** If specified, contains a cursor to query next page of the `items` collection. */
    public var nextCursor: String?
    public var items: [String]?
    /** Bech32m-encoded human readable version of the address. */
    public var vaultAddress: String
    /** The most recent state version underlying object was modified at. */
    public var lastUpdatedAtStateVersion: Int64

    public init(totalCount: Int64, nextCursor: String? = nil, items: [String]? = nil, vaultAddress: String, lastUpdatedAtStateVersion: Int64) {
        self.totalCount = totalCount
        self.nextCursor = nextCursor
        self.items = items
        self.vaultAddress = vaultAddress
        self.lastUpdatedAtStateVersion = lastUpdatedAtStateVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalCount = "total_count"
        case nextCursor = "next_cursor"
        case items
        case vaultAddress = "vault_address"
        case lastUpdatedAtStateVersion = "last_updated_at_state_version"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(totalCount, forKey: .totalCount)
        try container.encodeIfPresent(nextCursor, forKey: .nextCursor)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encode(vaultAddress, forKey: .vaultAddress)
        try container.encode(lastUpdatedAtStateVersion, forKey: .lastUpdatedAtStateVersion)
    }
}

