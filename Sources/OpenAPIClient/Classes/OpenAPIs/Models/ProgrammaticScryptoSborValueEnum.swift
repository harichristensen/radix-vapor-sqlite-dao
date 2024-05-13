//
// ProgrammaticScryptoSborValueEnum.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProgrammaticScryptoSborValueEnum: Codable, JSONEncodable, Hashable {

    static let variantIdRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 255, exclusiveMaximum: false, multipleOf: nil)
    public var kind: ProgrammaticScryptoSborValueKind
    /** The name of the type of this value. This is only output when a schema is present and the type has a name. This property is ignored when the value is used as an input to the API.  */
    public var typeName: String?
    /** The name of the field which hosts this value. This property is only included if this value is a child of a `Tuple` or `Enum` with named fields. This property is ignored when the value is used as an input to the API.  */
    public var fieldName: String?
    public var variantId: Int
    public var variantName: String?
    public var fields: [ProgrammaticScryptoSborValue]

    public init(kind: ProgrammaticScryptoSborValueKind, typeName: String? = nil, fieldName: String? = nil, variantId: Int, variantName: String? = nil, fields: [ProgrammaticScryptoSborValue]) {
        self.kind = kind
        self.typeName = typeName
        self.fieldName = fieldName
        self.variantId = variantId
        self.variantName = variantName
        self.fields = fields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case typeName = "type_name"
        case fieldName = "field_name"
        case variantId = "variant_id"
        case variantName = "variant_name"
        case fields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(kind, forKey: .kind)
        try container.encodeIfPresent(typeName, forKey: .typeName)
        try container.encodeIfPresent(fieldName, forKey: .fieldName)
        try container.encode(variantId, forKey: .variantId)
        try container.encodeIfPresent(variantName, forKey: .variantName)
        try container.encode(fields, forKey: .fields)
    }
}

