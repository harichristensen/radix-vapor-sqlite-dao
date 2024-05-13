import Fluent
import Vapor

func routes(_ app: Application) throws {

    try app.register(collection: TodoController())
    let radixAppsController = RadixAppsController()
    try app.register(collection: radixAppsController)
    let websiteController = WebsiteController()
    try app.register(collection: websiteController)
    print(app.routes.all)
}
