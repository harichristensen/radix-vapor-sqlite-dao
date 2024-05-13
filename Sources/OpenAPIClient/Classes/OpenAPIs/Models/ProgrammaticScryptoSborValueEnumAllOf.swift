//
// ProgrammaticScryptoSborValueEnumAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProgrammaticScryptoSborValueEnumAllOf: Codable, JSONEncodable, Hashable {

    static let variantIdRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 255, exclusiveMaximum: false, multipleOf: nil)
    public var variantId: Int
    public var variantName: String?
    public var fields: [ProgrammaticScryptoSborValue]

    public init(variantId: Int, variantName: String? = nil, fields: [ProgrammaticScryptoSborValue]) {
        self.variantId = variantId
        self.variantName = variantName
        self.fields = fields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case variantId = "variant_id"
        case variantName = "variant_name"
        case fields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(variantId, forKey: .variantId)
        try container.encodeIfPresent(variantName, forKey: .variantName)
        try container.encode(fields, forKey: .fields)
    }
}

