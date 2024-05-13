//
// AccountAuthorizedDepositorsResourceBadgeAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountAuthorizedDepositorsResourceBadgeAllOf: Codable, JSONEncodable, Hashable {

    static let lastUpdatedAtStateVersionRule = NumericRule<Int64>(minimum: 1, exclusiveMinimum: false, maximum: 100000000000000, exclusiveMaximum: false, multipleOf: nil)
    /** Bech32m-encoded human readable version of the address. */
    public var resourceAddress: String
    /** The most recent state version underlying object was modified at. */
    public var lastUpdatedAtStateVersion: Int64

    public init(resourceAddress: String, lastUpdatedAtStateVersion: Int64) {
        self.resourceAddress = resourceAddress
        self.lastUpdatedAtStateVersion = lastUpdatedAtStateVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case resourceAddress = "resource_address"
        case lastUpdatedAtStateVersion = "last_updated_at_state_version"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(resourceAddress, forKey: .resourceAddress)
        try container.encode(lastUpdatedAtStateVersion, forKey: .lastUpdatedAtStateVersion)
    }
}

