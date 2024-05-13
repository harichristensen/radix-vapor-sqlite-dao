import Vapor
import Leaf

// Define a simple RadixApp model for demonstration
struct TempApp: Content {
    var id: UUID
    var name: String
    var png: String
    var description: String
    var owner: String
    var price: Double
}

struct WebsiteController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let websiteRoutes = routes.grouped("")

        websiteRoutes.get(use: homeHandler)
        websiteRoutes.get("store", use: storeHandler)
    }

    func homeHandler(_ req: Request) async throws -> View {
        return try await req.view.render("home")
    }

    func storeHandler(_ req: Request) async throws -> View {
        
        // Create a temporary hardcoded list of RadixApps
        let randomPNG = "https://purepng.com/public/uploads/thumbnail/purepng.com-app-store-icon-ios-7symbolsiconsapple-iosiosios-7-iconsios-7-721522596490uisi1.png"
        let apps = [
            TempApp(id: UUID(), name: "App One", png: randomPNG, description: "This is the first app.", owner: "Alice", price: 10.0),
            TempApp(id: UUID(), name: "App Two", png: randomPNG, description: "This is the second app.", owner: "Bob", price: 15.0),
            TempApp(id: UUID(), name: "App Three", png: randomPNG, description: "This is the third app.", owner: "Charlie", price: 12.5),
            TempApp(id: UUID(), name: "App Four", png: randomPNG, description: "This is the fourth app.", owner: "Dave", price: 8.0),
            TempApp(id: UUID(), name: "App Five", png: randomPNG, description: "This is the fifth app.", owner: "Eve", price: 11.0),
            TempApp(id: UUID(), name: "App Six", png: randomPNG, description: "This is the sixth app.", owner: "Frank", price: 13.0),
            TempApp(id: UUID(), name: "App Seven", png: randomPNG, description: "This is the seventh app.", owner: "Grace", price: 9.0),
            TempApp(id: UUID(), name: "App Eight", png: randomPNG, description: "This is the eighth app.", owner: "Hank", price: 14.5),
            TempApp(id: UUID(), name: "App Nine", png: randomPNG, description: "This is the ninth app.", owner: "Ivy", price: 7.5),
            TempApp(id: UUID(), name: "App Ten", png: randomPNG, description: "This is the tenth app.", owner: "John", price: 16.0)
        ]

        // Pass the list of apps to the store view
        return try await req.view.render("store", ["apps": apps])
    }
}