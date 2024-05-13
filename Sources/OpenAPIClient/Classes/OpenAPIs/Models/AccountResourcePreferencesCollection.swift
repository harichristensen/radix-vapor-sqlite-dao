//
// AccountResourcePreferencesCollection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Account resource preferences collection */
public struct AccountResourcePreferencesCollection: Codable, JSONEncodable, Hashable {

    /** Total number of items in underlying collection, fragment of which is available in `items` collection. */
    public var totalCount: Int64?
    /** If specified, contains a cursor to query next page of the `items` collection. */
    public var nextCursor: String?
    public var items: [AccountResourcePreferencesResponseItem]

    public init(totalCount: Int64? = nil, nextCursor: String? = nil, items: [AccountResourcePreferencesResponseItem]) {
        self.totalCount = totalCount
        self.nextCursor = nextCursor
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalCount = "total_count"
        case nextCursor = "next_cursor"
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(totalCount, forKey: .totalCount)
        try container.encodeIfPresent(nextCursor, forKey: .nextCursor)
        try container.encode(items, forKey: .items)
    }
}
