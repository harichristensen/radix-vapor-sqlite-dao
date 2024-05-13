//
// TransactionPreviewRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionPreviewRequest: Codable, JSONEncodable, Hashable {

    static let startEpochInclusiveRule = NumericRule<Int64>(minimum: 0, exclusiveMinimum: false, maximum: 10000000000, exclusiveMaximum: false, multipleOf: nil)
    static let endEpochExclusiveRule = NumericRule<Int64>(minimum: 0, exclusiveMinimum: false, maximum: 10000000000, exclusiveMaximum: false, multipleOf: nil)
    static let tipPercentageRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 65535, exclusiveMaximum: false, multipleOf: nil)
    static let nonceRule = NumericRule<Int64>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    /** A text-representation of a transaction manifest */
    public var manifest: String
    /** An array of hex-encoded blob data (optional) */
    public var blobsHex: [String]?
    /** An integer between `0` and `10^10`, marking the epoch at which the transaction starts being valid */
    public var startEpochInclusive: Int64
    /** An integer between `0` and `10^10`, marking the epoch at which the transaction is no longer valid */
    public var endEpochExclusive: Int64
    public var notaryPublicKey: PublicKey?
    /** Whether the notary should count as a signatory (optional, default false) */
    public var notaryIsSignatory: Bool?
    /** An integer between `0` and `65535`, giving the validator tip as a percentage amount. A value of `1` corresponds to 1% of the fee. */
    public var tipPercentage: Int
    /** A decimal-string-encoded integer between `0` and `2^32 - 1`, used to ensure the transaction intent is unique. */
    public var nonce: Int64
    /** A list of public keys to be used as transaction signers */
    public var signerPublicKeys: [PublicKey]
    public var flags: TransactionPreviewRequestFlags

    public init(manifest: String, blobsHex: [String]? = nil, startEpochInclusive: Int64, endEpochExclusive: Int64, notaryPublicKey: PublicKey? = nil, notaryIsSignatory: Bool? = nil, tipPercentage: Int, nonce: Int64, signerPublicKeys: [PublicKey], flags: TransactionPreviewRequestFlags) {
        self.manifest = manifest
        self.blobsHex = blobsHex
        self.startEpochInclusive = startEpochInclusive
        self.endEpochExclusive = endEpochExclusive
        self.notaryPublicKey = notaryPublicKey
        self.notaryIsSignatory = notaryIsSignatory
        self.tipPercentage = tipPercentage
        self.nonce = nonce
        self.signerPublicKeys = signerPublicKeys
        self.flags = flags
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case manifest
        case blobsHex = "blobs_hex"
        case startEpochInclusive = "start_epoch_inclusive"
        case endEpochExclusive = "end_epoch_exclusive"
        case notaryPublicKey = "notary_public_key"
        case notaryIsSignatory = "notary_is_signatory"
        case tipPercentage = "tip_percentage"
        case nonce
        case signerPublicKeys = "signer_public_keys"
        case flags
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(manifest, forKey: .manifest)
        try container.encodeIfPresent(blobsHex, forKey: .blobsHex)
        try container.encode(startEpochInclusive, forKey: .startEpochInclusive)
        try container.encode(endEpochExclusive, forKey: .endEpochExclusive)
        try container.encodeIfPresent(notaryPublicKey, forKey: .notaryPublicKey)
        try container.encodeIfPresent(notaryIsSignatory, forKey: .notaryIsSignatory)
        try container.encode(tipPercentage, forKey: .tipPercentage)
        try container.encode(nonce, forKey: .nonce)
        try container.encode(signerPublicKeys, forKey: .signerPublicKeys)
        try container.encode(flags, forKey: .flags)
    }
}
