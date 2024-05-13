//
// ComponentEntityRoleAssignmentEntry.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ComponentEntityRoleAssignmentEntry: Codable, JSONEncodable, Hashable {

    public var roleKey: RoleKey
    public var assignment: ComponentEntityRoleAssignmentEntryAssignment
    public var updaterRoles: [RoleKey]?

    public init(roleKey: RoleKey, assignment: ComponentEntityRoleAssignmentEntryAssignment, updaterRoles: [RoleKey]? = nil) {
        self.roleKey = roleKey
        self.assignment = assignment
        self.updaterRoles = updaterRoles
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roleKey = "role_key"
        case assignment
        case updaterRoles = "updater_roles"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roleKey, forKey: .roleKey)
        try container.encode(assignment, forKey: .assignment)
        try container.encodeIfPresent(updaterRoles, forKey: .updaterRoles)
    }
}
