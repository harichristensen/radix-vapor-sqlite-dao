//
// FromLedgerStateMixin.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** defines lower boundary (inclusive) for queried data. i.e &#x60;{ \&quot;from_state_version\&quot; &#x3D; {\&quot;epoch\&quot; &#x3D; 10} }&#x60;, will return data from epoch 10 till current max ledger tip. */
public struct FromLedgerStateMixin: Codable, JSONEncodable, Hashable {

    public var fromLedgerState: LedgerStateSelector?

    public init(fromLedgerState: LedgerStateSelector? = nil) {
        self.fromLedgerState = fromLedgerState
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fromLedgerState = "from_ledger_state"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fromLedgerState, forKey: .fromLedgerState)
    }
}

