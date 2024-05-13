//
// AccountDefaultDepositRule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Default deposit rule set to an account. */
public enum AccountDefaultDepositRule: String, Codable, CaseIterable {
    case accept = "Accept"
    case reject = "Reject"
    case allowExisting = "AllowExisting"
}