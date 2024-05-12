import Fluent
import Vapor
import struct Foundation.UUID


final class RadixApp: Model, Content, @unchecked Sendable {
    static let schema = "radix_apps"
    @ID(key: .id)
    var id: UUID?

    @Field(key: "address")
    var address: String

    @Field(key: "owner")
    var owner: String

    init() { }

    init(id: UUID? = nil, address: String, owner: String) {
        self.id = id
        self.address = address
        self.owner = owner
    }

    func toDTO() -> RadixAppDTO {
        .init(
            id: self.id,
            address: self.$address.value,
            owner: self.$owner.value
        )
    }
}