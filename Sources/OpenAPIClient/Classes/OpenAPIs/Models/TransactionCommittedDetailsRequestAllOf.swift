//
// TransactionCommittedDetailsRequestAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionCommittedDetailsRequestAllOf: Codable, JSONEncodable, Hashable {

    /** Bech32m-encoded hash. */
    public var intentHash: String
    public var optIns: TransactionDetailsOptIns?

    public init(intentHash: String, optIns: TransactionDetailsOptIns? = nil) {
        self.intentHash = intentHash
        self.optIns = optIns
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case intentHash = "intent_hash"
        case optIns = "opt_ins"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(intentHash, forKey: .intentHash)
        try container.encodeIfPresent(optIns, forKey: .optIns)
    }
}

