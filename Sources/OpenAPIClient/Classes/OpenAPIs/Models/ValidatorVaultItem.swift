//
// ValidatorVaultItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ValidatorVaultItem: Codable, JSONEncodable, Hashable {

    /** String-encoded decimal representing the amount of a related fungible resource. */
    public var balance: String
    public var lastChangedAtStateVersion: Int64
    /** Bech32m-encoded human readable version of the address. */
    public var address: String

    public init(balance: String, lastChangedAtStateVersion: Int64, address: String) {
        self.balance = balance
        self.lastChangedAtStateVersion = lastChangedAtStateVersion
        self.address = address
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case balance
        case lastChangedAtStateVersion = "last_changed_at_state_version"
        case address
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(balance, forKey: .balance)
        try container.encode(lastChangedAtStateVersion, forKey: .lastChangedAtStateVersion)
        try container.encode(address, forKey: .address)
    }
}

