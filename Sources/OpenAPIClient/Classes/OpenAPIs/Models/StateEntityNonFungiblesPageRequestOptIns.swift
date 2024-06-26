//
// StateEntityNonFungiblesPageRequestOptIns.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Check detailed [OptIns](#section/Using-endpoints-with-opt-in-features) documentation for more details */
public struct StateEntityNonFungiblesPageRequestOptIns: Codable, JSONEncodable, Hashable {

    /** if set to `true`, first page of non fungible ids are returned for each non fungible resource, with cursor which can be later used at `/state/entity/page/non-fungible-vault/ids` endpoint. */
    public var nonFungibleIncludeNfids: Bool? = false
    /** allows specifying explicitly metadata properties which should be returned in response, limited to max 20 items. */
    public var explicitMetadata: [String]?

    public init(nonFungibleIncludeNfids: Bool? = false, explicitMetadata: [String]? = nil) {
        self.nonFungibleIncludeNfids = nonFungibleIncludeNfids
        self.explicitMetadata = explicitMetadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nonFungibleIncludeNfids = "non_fungible_include_nfids"
        case explicitMetadata = "explicit_metadata"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nonFungibleIncludeNfids, forKey: .nonFungibleIncludeNfids)
        try container.encodeIfPresent(explicitMetadata, forKey: .explicitMetadata)
    }
}

