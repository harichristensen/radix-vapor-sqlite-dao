//
// StateEntityNonFungibleResourceVaultsPageRequestAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StateEntityNonFungibleResourceVaultsPageRequestAllOf: Codable, JSONEncodable, Hashable {

    /** Bech32m-encoded human readable version of the address. */
    public var address: String
    /** Bech32m-encoded human readable version of the address. */
    public var resourceAddress: String
    public var optIns: StateEntityNonFungibleResourceVaultsPageOptIns?

    public init(address: String, resourceAddress: String, optIns: StateEntityNonFungibleResourceVaultsPageOptIns? = nil) {
        self.address = address
        self.resourceAddress = resourceAddress
        self.optIns = optIns
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case resourceAddress = "resource_address"
        case optIns = "opt_ins"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(resourceAddress, forKey: .resourceAddress)
        try container.encodeIfPresent(optIns, forKey: .optIns)
    }
}

