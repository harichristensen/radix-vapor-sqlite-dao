//
// StatePackageBlueprintPageRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StatePackageBlueprintPageRequest: Codable, JSONEncodable, Hashable {

    public var atLedgerState: LedgerStateSelector?
    /** This cursor allows forward pagination, by providing the cursor from the previous request. */
    public var cursor: String?
    /** The page size requested. */
    public var limitPerPage: Int?
    /** Bech32m-encoded human readable version of the address. */
    public var packageAddress: String

    public init(atLedgerState: LedgerStateSelector? = nil, cursor: String? = nil, limitPerPage: Int? = nil, packageAddress: String) {
        self.atLedgerState = atLedgerState
        self.cursor = cursor
        self.limitPerPage = limitPerPage
        self.packageAddress = packageAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case atLedgerState = "at_ledger_state"
        case cursor
        case limitPerPage = "limit_per_page"
        case packageAddress = "package_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(atLedgerState, forKey: .atLedgerState)
        try container.encodeIfPresent(cursor, forKey: .cursor)
        try container.encodeIfPresent(limitPerPage, forKey: .limitPerPage)
        try container.encode(packageAddress, forKey: .packageAddress)
    }
}

