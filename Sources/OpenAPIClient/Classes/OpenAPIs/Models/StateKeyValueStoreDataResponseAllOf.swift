//
// StateKeyValueStoreDataResponseAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StateKeyValueStoreDataResponseAllOf: Codable, JSONEncodable, Hashable {

    /** Bech32m-encoded human readable version of the address. */
    public var keyValueStoreAddress: String
    public var entries: [StateKeyValueStoreDataResponseItem]

    public init(keyValueStoreAddress: String, entries: [StateKeyValueStoreDataResponseItem]) {
        self.keyValueStoreAddress = keyValueStoreAddress
        self.entries = entries
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keyValueStoreAddress = "key_value_store_address"
        case entries
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(keyValueStoreAddress, forKey: .keyValueStoreAddress)
        try container.encode(entries, forKey: .entries)
    }
}
