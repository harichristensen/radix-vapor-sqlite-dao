//
// StateEntityNonFungibleResourceVaultsPageRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StateEntityNonFungibleResourceVaultsPageRequest: Codable, JSONEncodable, Hashable {

    public var atLedgerState: LedgerStateSelector?
    /** This cursor allows forward pagination, by providing the cursor from the previous request. */
    public var cursor: String?
    /** The page size requested. */
    public var limitPerPage: Int?
    /** Bech32m-encoded human readable version of the address. */
    public var address: String
    /** Bech32m-encoded human readable version of the address. */
    public var resourceAddress: String
    public var optIns: StateEntityNonFungibleResourceVaultsPageOptIns?

    public init(atLedgerState: LedgerStateSelector? = nil, cursor: String? = nil, limitPerPage: Int? = nil, address: String, resourceAddress: String, optIns: StateEntityNonFungibleResourceVaultsPageOptIns? = nil) {
        self.atLedgerState = atLedgerState
        self.cursor = cursor
        self.limitPerPage = limitPerPage
        self.address = address
        self.resourceAddress = resourceAddress
        self.optIns = optIns
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case atLedgerState = "at_ledger_state"
        case cursor
        case limitPerPage = "limit_per_page"
        case address
        case resourceAddress = "resource_address"
        case optIns = "opt_ins"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(atLedgerState, forKey: .atLedgerState)
        try container.encodeIfPresent(cursor, forKey: .cursor)
        try container.encodeIfPresent(limitPerPage, forKey: .limitPerPage)
        try container.encode(address, forKey: .address)
        try container.encode(resourceAddress, forKey: .resourceAddress)
        try container.encodeIfPresent(optIns, forKey: .optIns)
    }
}

