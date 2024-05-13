//
// AccountDepositPreValidationRequestAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountDepositPreValidationRequestAllOf: Codable, JSONEncodable, Hashable {

    /** Bech32m-encoded human readable version of the address. */
    public var accountAddress: String
    public var resourceAddresses: [String]
    public var badge: TransactionAccountDepositPreValidationAuthorizedDepositorBadge?

    public init(accountAddress: String, resourceAddresses: [String], badge: TransactionAccountDepositPreValidationAuthorizedDepositorBadge? = nil) {
        self.accountAddress = accountAddress
        self.resourceAddresses = resourceAddresses
        self.badge = badge
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountAddress = "account_address"
        case resourceAddresses = "resource_addresses"
        case badge
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accountAddress, forKey: .accountAddress)
        try container.encode(resourceAddresses, forKey: .resourceAddresses)
        try container.encodeIfPresent(badge, forKey: .badge)
    }
}

