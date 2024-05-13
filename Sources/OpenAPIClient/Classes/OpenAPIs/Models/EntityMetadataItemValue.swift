//
// EntityMetadataItemValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EntityMetadataItemValue: Codable, JSONEncodable, Hashable {

    /** Hex-encoded binary blob. */
    public var rawHex: String
    public var programmaticJson: ProgrammaticScryptoSborValue
    public var typed: MetadataTypedValue

    public init(rawHex: String, programmaticJson: ProgrammaticScryptoSborValue, typed: MetadataTypedValue) {
        self.rawHex = rawHex
        self.programmaticJson = programmaticJson
        self.typed = typed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rawHex = "raw_hex"
        case programmaticJson = "programmatic_json"
        case typed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(rawHex, forKey: .rawHex)
        try container.encode(programmaticJson, forKey: .programmaticJson)
        try container.encode(typed, forKey: .typed)
    }
}

