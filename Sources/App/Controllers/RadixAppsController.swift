import Fluent
import Vapor

struct RadixAppsController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let radix_apps = routes.grouped("radix_apps")

        radix_apps.get(use: { try await self.index(req: $0) })
        radix_apps.post(use: { try await self.create(req: $0) })
        radix_apps.group(":radix_appID") { radix_app in
            radix_app.delete(use: { try await self.delete(req: $0) })
        }
    }
        
    func index(req: Request) async throws -> [RadixAppDTO] {
        try await RadixApp.query(on: req.db).all().map { $0.toDTO() }
    }

    func create(req: Request) async throws -> RadixAppDTO {
        let radix_app = try req.content.decode(RadixAppDTO.self).toModel()

        try await radix_app.save(on: req.db)
        return radix_app.toDTO()
    }

    func delete(req: Request) async throws -> HTTPStatus {
        guard let radix_app = try await RadixApp.find(req.parameters.get("radix_appID"), on: req.db) else {
            throw Abort(.notFound)
        }

        try await radix_app.delete(on: req.db)
        return .noContent
    }
}