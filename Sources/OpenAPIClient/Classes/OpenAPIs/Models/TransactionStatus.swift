//
// TransactionStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A top-level intent status, left in for backwards compatibility. It doesn&#39;t give much information. Rejected means PermanentRejection.  */
public enum TransactionStatus: String, Codable, CaseIterable {
    case unknown = "Unknown"
    case committedSuccess = "CommittedSuccess"
    case committedFailure = "CommittedFailure"
    case pending = "Pending"
    case rejected = "Rejected"
}
