//
// StatePackageBlueprintPageRequestAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StatePackageBlueprintPageRequestAllOf: Codable, JSONEncodable, Hashable {

    /** Bech32m-encoded human readable version of the address. */
    public var packageAddress: String

    public init(packageAddress: String) {
        self.packageAddress = packageAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case packageAddress = "package_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(packageAddress, forKey: .packageAddress)
    }
}

