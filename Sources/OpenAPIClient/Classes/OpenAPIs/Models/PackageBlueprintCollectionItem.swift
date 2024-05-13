//
// PackageBlueprintCollectionItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PackageBlueprintCollectionItem: Codable, JSONEncodable, Hashable {

    public var name: String
    public var version: String
    /** This type is defined in the Core API as `BlueprintDefinition`. See the Core API documentation for more details.  */
    public var definition: AnyCodable
    public var dependantEntities: [String]?
    /** This type is defined in the Core API as `AuthConfig`. See the Core API documentation for more details.  */
    public var authTemplate: AnyCodable?
    public var authTemplateIsLocked: Bool?
    public var royaltyConfig: BlueprintRoyaltyConfig?
    public var royaltyConfigIsLocked: Bool?

    public init(name: String, version: String, definition: AnyCodable, dependantEntities: [String]? = nil, authTemplate: AnyCodable? = nil, authTemplateIsLocked: Bool? = nil, royaltyConfig: BlueprintRoyaltyConfig? = nil, royaltyConfigIsLocked: Bool? = nil) {
        self.name = name
        self.version = version
        self.definition = definition
        self.dependantEntities = dependantEntities
        self.authTemplate = authTemplate
        self.authTemplateIsLocked = authTemplateIsLocked
        self.royaltyConfig = royaltyConfig
        self.royaltyConfigIsLocked = royaltyConfigIsLocked
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case version
        case definition
        case dependantEntities = "dependant_entities"
        case authTemplate = "auth_template"
        case authTemplateIsLocked = "auth_template_is_locked"
        case royaltyConfig = "royalty_config"
        case royaltyConfigIsLocked = "royalty_config_is_locked"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(version, forKey: .version)
        try container.encode(definition, forKey: .definition)
        try container.encodeIfPresent(dependantEntities, forKey: .dependantEntities)
        try container.encodeIfPresent(authTemplate, forKey: .authTemplate)
        try container.encodeIfPresent(authTemplateIsLocked, forKey: .authTemplateIsLocked)
        try container.encodeIfPresent(royaltyConfig, forKey: .royaltyConfig)
        try container.encodeIfPresent(royaltyConfigIsLocked, forKey: .royaltyConfigIsLocked)
    }
}
