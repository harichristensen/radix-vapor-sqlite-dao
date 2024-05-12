import Fluent
import Vapor

struct RadixAppDTO: Content {
    var id: UUID?
    var address: String?
    var owner: String?

    
    func toModel() -> RadixApp {
        let model = RadixApp()
        
        model.id = self.id
        if let address = self.address {
            model.address = address
        }

        if let owner = self.owner {
            model.owner = owner
        }
        return model
    }
}
