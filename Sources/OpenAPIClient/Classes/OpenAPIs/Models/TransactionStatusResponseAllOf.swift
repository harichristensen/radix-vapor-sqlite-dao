//
// TransactionStatusResponseAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionStatusResponseAllOf: Codable, JSONEncodable, Hashable {

    static let permanentlyRejectsAtEpochRule = NumericRule<Int64>(minimum: 0, exclusiveMinimum: false, maximum: 10000000000, exclusiveMaximum: false, multipleOf: nil)
    public var status: TransactionStatus
    public var intentStatus: TransactionIntentStatus
    /** An additional description to clarify the intent status.  */
    public var intentStatusDescription: String
    public var knownPayloads: [TransactionStatusResponseKnownPayloadItem]
    /** If the intent was committed, this gives the state version when this intent was committed.  */
    public var committedStateVersion: Int64?
    /** The epoch number at which the transaction is guaranteed to get permanently rejected by the Network due to exceeded epoch range defined when submitting transaction. */
    public var permanentlyRejectsAtEpoch: Int64?
    /** The most relevant error message received, due to a rejection or commit as failure. Please note that presence of an error message doesn't imply that the intent will definitely reject or fail. This could represent a temporary error (such as out of fees), or an error with a payload which doesn't end up being committed.  */
    public var errorMessage: String?

    public init(status: TransactionStatus, intentStatus: TransactionIntentStatus, intentStatusDescription: String, knownPayloads: [TransactionStatusResponseKnownPayloadItem], committedStateVersion: Int64? = nil, permanentlyRejectsAtEpoch: Int64? = nil, errorMessage: String? = nil) {
        self.status = status
        self.intentStatus = intentStatus
        self.intentStatusDescription = intentStatusDescription
        self.knownPayloads = knownPayloads
        self.committedStateVersion = committedStateVersion
        self.permanentlyRejectsAtEpoch = permanentlyRejectsAtEpoch
        self.errorMessage = errorMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case intentStatus = "intent_status"
        case intentStatusDescription = "intent_status_description"
        case knownPayloads = "known_payloads"
        case committedStateVersion = "committed_state_version"
        case permanentlyRejectsAtEpoch = "permanently_rejects_at_epoch"
        case errorMessage = "error_message"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(status, forKey: .status)
        try container.encode(intentStatus, forKey: .intentStatus)
        try container.encode(intentStatusDescription, forKey: .intentStatusDescription)
        try container.encode(knownPayloads, forKey: .knownPayloads)
        try container.encodeIfPresent(committedStateVersion, forKey: .committedStateVersion)
        try container.encodeIfPresent(permanentlyRejectsAtEpoch, forKey: .permanentlyRejectsAtEpoch)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
    }
}

