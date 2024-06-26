//
// AccountDepositPreValidationResponseAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountDepositPreValidationResponseAllOf: Codable, JSONEncodable, Hashable {

    public var allowsTryDepositBatch: Bool
    /** The fully resolved try_deposit_* ability of each resource (which takes all the inputs into account, including the authorized depositor badge, the default deposit rule and the resource-specific details). */
    public var resourceSpecificBehaviour: [AccountDepositPreValidationResourceSpecificBehaviourItem]?
    public var decidingFactors: AccountDepositPreValidationDecidingFactors

    public init(allowsTryDepositBatch: Bool, resourceSpecificBehaviour: [AccountDepositPreValidationResourceSpecificBehaviourItem]? = nil, decidingFactors: AccountDepositPreValidationDecidingFactors) {
        self.allowsTryDepositBatch = allowsTryDepositBatch
        self.resourceSpecificBehaviour = resourceSpecificBehaviour
        self.decidingFactors = decidingFactors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case allowsTryDepositBatch = "allows_try_deposit_batch"
        case resourceSpecificBehaviour = "resource_specific_behaviour"
        case decidingFactors = "deciding_factors"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(allowsTryDepositBatch, forKey: .allowsTryDepositBatch)
        try container.encodeIfPresent(resourceSpecificBehaviour, forKey: .resourceSpecificBehaviour)
        try container.encode(decidingFactors, forKey: .decidingFactors)
    }
}

