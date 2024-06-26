//
// TransactionPayloadStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A more specific payload status. See the description field for further information.  */
public enum TransactionPayloadStatus: String, Codable, CaseIterable {
    case unknown = "Unknown"
    case committedSuccess = "CommittedSuccess"
    case committedFailure = "CommittedFailure"
    case commitPendingOutcomeUnknown = "CommitPendingOutcomeUnknown"
    case permanentlyRejected = "PermanentlyRejected"
    case temporarilyRejected = "TemporarilyRejected"
    case pending = "Pending"
}
