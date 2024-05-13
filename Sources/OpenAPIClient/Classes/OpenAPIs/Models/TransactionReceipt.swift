//
// TransactionReceipt.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionReceipt: Codable, JSONEncodable, Hashable {

    public var status: TransactionStatus?
    /** This type is defined in the Core API as `FeeSummary`. See the Core API documentation for more details.  */
    public var feeSummary: AnyCodable?
    public var costingParameters: AnyCodable?
    /** This type is defined in the Core API as `FeeDestination`. See the Core API documentation for more details.  */
    public var feeDestination: AnyCodable?
    /** This type is defined in the Core API as `FeeSource`. See the Core API documentation for more details.  */
    public var feeSource: AnyCodable?
    /** This type is defined in the Core API as `StateUpdates`. See the Core API documentation for more details.  */
    public var stateUpdates: AnyCodable?
    /** Information (number and active validator list) about new epoch if occured. This type is defined in the Core API as `NextEpoch`. See the Core API documentation for more details.  */
    public var nextEpoch: AnyCodable?
    /** The manifest line-by-line engine return data (only present if `status` is `CommittedSuccess`). This type is defined in the Core API as `SborData`. See the Core API documentation for more details.  */
    public var output: AnyCodable?
    /** Events emitted by a transaction. */
    public var events: [EventsItem]?
    /** Error message (only present if status is `Failed` or `Rejected`) */
    public var errorMessage: String?

    public init(status: TransactionStatus? = nil, feeSummary: AnyCodable? = nil, costingParameters: AnyCodable? = nil, feeDestination: AnyCodable? = nil, feeSource: AnyCodable? = nil, stateUpdates: AnyCodable? = nil, nextEpoch: AnyCodable? = nil, output: AnyCodable? = nil, events: [EventsItem]? = nil, errorMessage: String? = nil) {
        self.status = status
        self.feeSummary = feeSummary
        self.costingParameters = costingParameters
        self.feeDestination = feeDestination
        self.feeSource = feeSource
        self.stateUpdates = stateUpdates
        self.nextEpoch = nextEpoch
        self.output = output
        self.events = events
        self.errorMessage = errorMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case feeSummary = "fee_summary"
        case costingParameters = "costing_parameters"
        case feeDestination = "fee_destination"
        case feeSource = "fee_source"
        case stateUpdates = "state_updates"
        case nextEpoch = "next_epoch"
        case output
        case events
        case errorMessage = "error_message"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(feeSummary, forKey: .feeSummary)
        try container.encodeIfPresent(costingParameters, forKey: .costingParameters)
        try container.encodeIfPresent(feeDestination, forKey: .feeDestination)
        try container.encodeIfPresent(feeSource, forKey: .feeSource)
        try container.encodeIfPresent(stateUpdates, forKey: .stateUpdates)
        try container.encodeIfPresent(nextEpoch, forKey: .nextEpoch)
        try container.encodeIfPresent(output, forKey: .output)
        try container.encodeIfPresent(events, forKey: .events)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
    }
}

