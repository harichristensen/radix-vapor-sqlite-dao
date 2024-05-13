//
// PublicKeyEcdsaSecp256k1AllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PublicKeyEcdsaSecp256k1AllOf: Codable, JSONEncodable, Hashable {

    static let keyHexRule = StringRule(minLength: 66, maxLength: 66, pattern: nil)
    /** The hex-encoded compressed ECDSA Secp256k1 public key (33 bytes) */
    public var keyHex: String

    public init(keyHex: String) {
        self.keyHex = keyHex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keyHex = "key_hex"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(keyHex, forKey: .keyHex)
    }
}
