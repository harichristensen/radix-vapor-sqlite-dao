//
// TransactionSubmitResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionSubmitResponse: Codable, JSONEncodable, Hashable {

    /** Is true if the transaction is a duplicate of an existing pending transaction. */
    public var duplicate: Bool

    public init(duplicate: Bool) {
        self.duplicate = duplicate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case duplicate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(duplicate, forKey: .duplicate)
    }
}

