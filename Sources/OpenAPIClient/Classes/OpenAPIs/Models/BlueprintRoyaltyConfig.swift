//
// BlueprintRoyaltyConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlueprintRoyaltyConfig: Codable, JSONEncodable, Hashable {

    public var isEnabled: Bool
    /** The royalty rules by method. The array is only present if royalties are enabled. */
    public var methodRules: [BlueprintMethodRoyalty]?

    public init(isEnabled: Bool, methodRules: [BlueprintMethodRoyalty]? = nil) {
        self.isEnabled = isEnabled
        self.methodRules = methodRules
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isEnabled = "is_enabled"
        case methodRules = "method_rules"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isEnabled, forKey: .isEnabled)
        try container.encodeIfPresent(methodRules, forKey: .methodRules)
    }
}

