//
// NonFungibleIdType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum NonFungibleIdType: String, Codable, CaseIterable {
    case string = "String"
    case integer = "Integer"
    case bytes = "Bytes"
    case ruid = "Ruid"
}