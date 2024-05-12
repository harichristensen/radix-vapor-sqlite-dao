import Fluent

struct CreateRadixApp: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("radix_apps")
            .id()
            .field("address", .string)
            .field("owner", .string)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("radix_apps").delete()
    }
}