import Fluent
import Vapor

struct RadixAppsController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.post("api", "radix_apps", use: createHandler)
        routes.get("api", "radix_apps", use: getAllHandler)

        // let radix_apps = routes.grouped("radix_apps")
    }

    func createHandler(_ req: Request) async throws -> RadixApp {
        let radixApp = try req.content.decode(RadixApp.self)
        try await radixApp.save(on: req.db)
        return radixApp
    }

    func getAllHandler(_ req: Request) async throws -> [RadixApp] {
        return try await RadixApp.query(on: req.db).all()
    }
}