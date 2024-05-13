//
// StreamTransactionsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StreamTransactionsResponse: Codable, JSONEncodable, Hashable {

    public var ledgerState: LedgerState
    /** Total number of items in underlying collection, fragment of which is available in `items` collection. */
    public var totalCount: Int64?
    /** If specified, contains a cursor to query next page of the `items` collection. */
    public var nextCursor: String?
    /** The page of user transactions. */
    public var items: [CommittedTransactionInfo]

    public init(ledgerState: LedgerState, totalCount: Int64? = nil, nextCursor: String? = nil, items: [CommittedTransactionInfo]) {
        self.ledgerState = ledgerState
        self.totalCount = totalCount
        self.nextCursor = nextCursor
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ledgerState = "ledger_state"
        case totalCount = "total_count"
        case nextCursor = "next_cursor"
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ledgerState, forKey: .ledgerState)
        try container.encodeIfPresent(totalCount, forKey: .totalCount)
        try container.encodeIfPresent(nextCursor, forKey: .nextCursor)
        try container.encode(items, forKey: .items)
    }
}
