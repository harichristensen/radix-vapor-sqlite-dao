import Fluent
import Vapor

struct RadixAppsController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let radixRoutes = routes.grouped("api", "radix_apps")
        
        radixRoutes.get(use: getAllHandler)
        radixRoutes.post(use: createHandler)

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