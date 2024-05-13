//
// TransactionPreviewResponseLogsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionPreviewResponseLogsInner: Codable, JSONEncodable, Hashable {

    public var level: String
    public var message: String

    public init(level: String, message: String) {
        self.level = level
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case level
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(level, forKey: .level)
        try container.encode(message, forKey: .message)
    }
}

