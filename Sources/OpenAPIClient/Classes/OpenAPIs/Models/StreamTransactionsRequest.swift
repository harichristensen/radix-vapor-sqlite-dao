//
// StreamTransactionsRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StreamTransactionsRequest: Codable, JSONEncodable, Hashable {

    public enum KindFilter: String, Codable, CaseIterable {
        case user = "User"
        case epochChange = "EpochChange"
        case all = "All"
    }
    public enum Order: String, Codable, CaseIterable {
        case asc = "Asc"
        case desc = "Desc"
    }
    public var atLedgerState: LedgerStateSelector?
    public var fromLedgerState: LedgerStateSelector?
    /** This cursor allows forward pagination, by providing the cursor from the previous request. */
    public var cursor: String?
    /** The page size requested. */
    public var limitPerPage: Int?
    /** Limit returned transactions by their kind. Defaults to `user`. */
    public var kindFilter: KindFilter?
    public var manifestAccountsWithdrawnFromFilter: [String]?
    public var manifestAccountsDepositedIntoFilter: [String]?
    public var manifestBadgesPresentedFilter: [String]?
    public var manifestResourcesFilter: [String]?
    public var affectedGlobalEntitiesFilter: [String]?
    public var eventsFilter: [StreamTransactionsRequestEventFilterItem]?
    public var accountsWithManifestOwnerMethodCalls: [String]?
    public var accountsWithoutManifestOwnerMethodCalls: [String]?
    public var manifestClassFilter: StreamTransactionsRequestAllOfManifestClassFilter?
    /** Configures the order of returned result set. Defaults to `desc`. */
    public var order: Order?
    public var optIns: TransactionDetailsOptIns?

    public init(atLedgerState: LedgerStateSelector? = nil, fromLedgerState: LedgerStateSelector? = nil, cursor: String? = nil, limitPerPage: Int? = nil, kindFilter: KindFilter? = nil, manifestAccountsWithdrawnFromFilter: [String]? = nil, manifestAccountsDepositedIntoFilter: [String]? = nil, manifestBadgesPresentedFilter: [String]? = nil, manifestResourcesFilter: [String]? = nil, affectedGlobalEntitiesFilter: [String]? = nil, eventsFilter: [StreamTransactionsRequestEventFilterItem]? = nil, accountsWithManifestOwnerMethodCalls: [String]? = nil, accountsWithoutManifestOwnerMethodCalls: [String]? = nil, manifestClassFilter: StreamTransactionsRequestAllOfManifestClassFilter? = nil, order: Order? = nil, optIns: TransactionDetailsOptIns? = nil) {
        self.atLedgerState = atLedgerState
        self.fromLedgerState = fromLedgerState
        self.cursor = cursor
        self.limitPerPage = limitPerPage
        self.kindFilter = kindFilter
        self.manifestAccountsWithdrawnFromFilter = manifestAccountsWithdrawnFromFilter
        self.manifestAccountsDepositedIntoFilter = manifestAccountsDepositedIntoFilter
        self.manifestBadgesPresentedFilter = manifestBadgesPresentedFilter
        self.manifestResourcesFilter = manifestResourcesFilter
        self.affectedGlobalEntitiesFilter = affectedGlobalEntitiesFilter
        self.eventsFilter = eventsFilter
        self.accountsWithManifestOwnerMethodCalls = accountsWithManifestOwnerMethodCalls
        self.accountsWithoutManifestOwnerMethodCalls = accountsWithoutManifestOwnerMethodCalls
        self.manifestClassFilter = manifestClassFilter
        self.order = order
        self.optIns = optIns
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case atLedgerState = "at_ledger_state"
        case fromLedgerState = "from_ledger_state"
        case cursor
        case limitPerPage = "limit_per_page"
        case kindFilter = "kind_filter"
        case manifestAccountsWithdrawnFromFilter = "manifest_accounts_withdrawn_from_filter"
        case manifestAccountsDepositedIntoFilter = "manifest_accounts_deposited_into_filter"
        case manifestBadgesPresentedFilter = "manifest_badges_presented_filter"
        case manifestResourcesFilter = "manifest_resources_filter"
        case affectedGlobalEntitiesFilter = "affected_global_entities_filter"
        case eventsFilter = "events_filter"
        case accountsWithManifestOwnerMethodCalls = "accounts_with_manifest_owner_method_calls"
        case accountsWithoutManifestOwnerMethodCalls = "accounts_without_manifest_owner_method_calls"
        case manifestClassFilter = "manifest_class_filter"
        case order
        case optIns = "opt_ins"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(atLedgerState, forKey: .atLedgerState)
        try container.encodeIfPresent(fromLedgerState, forKey: .fromLedgerState)
        try container.encodeIfPresent(cursor, forKey: .cursor)
        try container.encodeIfPresent(limitPerPage, forKey: .limitPerPage)
        try container.encodeIfPresent(kindFilter, forKey: .kindFilter)
        try container.encodeIfPresent(manifestAccountsWithdrawnFromFilter, forKey: .manifestAccountsWithdrawnFromFilter)
        try container.encodeIfPresent(manifestAccountsDepositedIntoFilter, forKey: .manifestAccountsDepositedIntoFilter)
        try container.encodeIfPresent(manifestBadgesPresentedFilter, forKey: .manifestBadgesPresentedFilter)
        try container.encodeIfPresent(manifestResourcesFilter, forKey: .manifestResourcesFilter)
        try container.encodeIfPresent(affectedGlobalEntitiesFilter, forKey: .affectedGlobalEntitiesFilter)
        try container.encodeIfPresent(eventsFilter, forKey: .eventsFilter)
        try container.encodeIfPresent(accountsWithManifestOwnerMethodCalls, forKey: .accountsWithManifestOwnerMethodCalls)
        try container.encodeIfPresent(accountsWithoutManifestOwnerMethodCalls, forKey: .accountsWithoutManifestOwnerMethodCalls)
        try container.encodeIfPresent(manifestClassFilter, forKey: .manifestClassFilter)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(optIns, forKey: .optIns)
    }
}

