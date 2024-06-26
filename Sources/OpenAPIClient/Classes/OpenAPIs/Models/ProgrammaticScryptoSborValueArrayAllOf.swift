//
// ProgrammaticScryptoSborValueArrayAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProgrammaticScryptoSborValueArrayAllOf: Codable, JSONEncodable, Hashable {

    public var elementKind: ProgrammaticScryptoSborValueKind
    public var elementTypeName: String?
    public var elements: [ProgrammaticScryptoSborValue]

    public init(elementKind: ProgrammaticScryptoSborValueKind, elementTypeName: String? = nil, elements: [ProgrammaticScryptoSborValue]) {
        self.elementKind = elementKind
        self.elementTypeName = elementTypeName
        self.elements = elements
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case elementKind = "element_kind"
        case elementTypeName = "element_type_name"
        case elements
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(elementKind, forKey: .elementKind)
        try container.encodeIfPresent(elementTypeName, forKey: .elementTypeName)
        try container.encode(elements, forKey: .elements)
    }
}

