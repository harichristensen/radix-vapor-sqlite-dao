//
// StateKeyValueStoreDataRequestKeyItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StateKeyValueStoreDataRequestKeyItem: Codable, JSONEncodable, Hashable {

    /** Hex-encoded binary blob. */
    public var keyHex: String?
    public var keyJson: ProgrammaticScryptoSborValue?

    public init(keyHex: String? = nil, keyJson: ProgrammaticScryptoSborValue? = nil) {
        self.keyHex = keyHex
        self.keyJson = keyJson
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keyHex = "key_hex"
        case keyJson = "key_json"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(keyHex, forKey: .keyHex)
        try container.encodeIfPresent(keyJson, forKey: .keyJson)
    }
}
