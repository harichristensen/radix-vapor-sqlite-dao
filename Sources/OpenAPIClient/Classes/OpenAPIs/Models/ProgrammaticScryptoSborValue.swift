//
// ProgrammaticScryptoSborValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Arbitrary SBOR value represented as programmatic JSON with optional property name annotations.  All scalar types (&#x60;Bool&#x60;, &#x60;I*&#x60;, &#x60;U*&#x60;, &#x60;String&#x60;, &#x60;Reference&#x60;, &#x60;Own&#x60;, &#x60;Decimal&#x60;, &#x60;PreciseDecimal&#x60;, &#x60;NonFungibleLocalId&#x60;) convey their value via &#x60;value&#x60; string property with notable exception of &#x60;Bool&#x60; type that uses regular JSON boolean type. Numeric values as string-encoded to preserve accuracy and simplify implementation on platforms with no native support for 64-bit long numerical values.  Common properties represented as nullable strings:   * &#x60;type_name&#x60; is only output when a schema is present and the type has a name,   * &#x60;field_name&#x60; is only output when the value is a child of a &#x60;Tuple&#x60; or &#x60;Enum&#x60;, which has a type with named fields,   * &#x60;variant_name&#x60; is only output when a schema is present and the type is an &#x60;Enum&#x60;.  The following is a non-normative example annotated &#x60;Tuple&#x60; value with &#x60;String&#x60; and &#x60;U32&#x60; fields: &#x60;&#x60;&#x60; {   \&quot;kind\&quot;: \&quot;Tuple\&quot;,   \&quot;type_name\&quot;: \&quot;CustomStructure\&quot;,   \&quot;fields\&quot;: [     {       \&quot;kind\&quot;: \&quot;String\&quot;,       \&quot;field_name\&quot;: \&quot;favorite_color\&quot;,       \&quot;value\&quot;: \&quot;Blue\&quot;     },     {       \&quot;kind\&quot;: \&quot;U32\&quot;,       \&quot;field_name\&quot;: \&quot;usage_counter\&quot;,       \&quot;value\&quot;: \&quot;462231\&quot;     }   ] } &#x60;&#x60;&#x60;  */
public struct ProgrammaticScryptoSborValue: Codable, JSONEncodable, Hashable {

    public var kind: ProgrammaticScryptoSborValueKind
    /** The name of the type of this value. This is only output when a schema is present and the type has a name. This property is ignored when the value is used as an input to the API.  */
    public var typeName: String?
    /** The name of the field which hosts this value. This property is only included if this value is a child of a `Tuple` or `Enum` with named fields. This property is ignored when the value is used as an input to the API.  */
    public var fieldName: String?

    public init(kind: ProgrammaticScryptoSborValueKind, typeName: String? = nil, fieldName: String? = nil) {
        self.kind = kind
        self.typeName = typeName
        self.fieldName = fieldName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case typeName = "type_name"
        case fieldName = "field_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(kind, forKey: .kind)
        try container.encodeIfPresent(typeName, forKey: .typeName)
        try container.encodeIfPresent(fieldName, forKey: .fieldName)
    }
}
