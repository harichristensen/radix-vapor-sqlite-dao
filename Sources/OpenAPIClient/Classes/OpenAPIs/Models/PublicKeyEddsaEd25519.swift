//
// PublicKeyEddsaEd25519.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PublicKeyEddsaEd25519: Codable, JSONEncodable, Hashable {

    static let keyHexRule = StringRule(minLength: 64, maxLength: 64, pattern: nil)
    public var keyType: PublicKeyType
    /** The hex-encoded compressed EdDSA Ed25519 public key (32 bytes) */
    public var keyHex: String

    public init(keyType: PublicKeyType, keyHex: String) {
        self.keyType = keyType
        self.keyHex = keyHex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keyType = "key_type"
        case keyHex = "key_hex"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(keyType, forKey: .keyType)
        try container.encode(keyHex, forKey: .keyHex)
    }
}

