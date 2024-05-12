import Fluent

struct CreateRadixApp: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("radix_apps")
            .id()
            .field("address", .string, .required)
            .field("owner", .string, .required)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("radix_apps").delete()
    }
}