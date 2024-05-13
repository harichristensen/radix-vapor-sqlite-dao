//
// TransactionPayloadGatewayHandlingStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A status concerning the Gateway&#39;s handling status of this pending transaction.  */
public enum TransactionPayloadGatewayHandlingStatus: String, Codable, CaseIterable {
    case handlingSubmission = "HandlingSubmission"
    case concluded = "Concluded"
}