//
// StateEntityNonFungibleIdsPageResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StateEntityNonFungibleIdsPageResponse: Codable, JSONEncodable, Hashable {

    public var ledgerState: LedgerState
    /** Total number of items in underlying collection, fragment of which is available in `items` collection. */
    public var totalCount: Int64?
    /** If specified, contains a cursor to query next page of the `items` collection. */
    public var nextCursor: String?
    public var items: [String]
    /** Bech32m-encoded human readable version of the address. */
    public var address: String
    /** Bech32m-encoded human readable version of the address. */
    public var resourceAddress: String

    public init(ledgerState: LedgerState, totalCount: Int64? = nil, nextCursor: String? = nil, items: [String], address: String, resourceAddress: String) {
        self.ledgerState = ledgerState
        self.totalCount = totalCount
        self.nextCursor = nextCursor
        self.items = items
        self.address = address
        self.resourceAddress = resourceAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ledgerState = "ledger_state"
        case totalCount = "total_count"
        case nextCursor = "next_cursor"
        case items
        case address
        case resourceAddress = "resource_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ledgerState, forKey: .ledgerState)
        try container.encodeIfPresent(totalCount, forKey: .totalCount)
        try container.encodeIfPresent(nextCursor, forKey: .nextCursor)
        try container.encode(items, forKey: .items)
        try container.encode(address, forKey: .address)
        try container.encode(resourceAddress, forKey: .resourceAddress)
    }
}

