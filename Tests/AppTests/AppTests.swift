@testable import App
import XCTVapor
import Fluent

final class AppTests: XCTestCase {
    var app: Application!
    
    override func setUp() async throws {
        self.app = Application(.testing)
        try await configure(app)
        try await app.autoMigrate()
    }
    
    override func tearDown() async throws { 
        try await app.autoRevert()
        self.app.shutdown()
        self.app = nil
    }
    
    // func testRadixAppIndex() async throws {
    //     let sampleRadixApps = [RadixApp(address: "11111", owner: "josh"), RadixApp(address: "22222", owner: "Sam")]
    //     try await sampleRadixApps.create(on: self.app.db)
        
    //     try self.app.test(.GET, "radix_apps", afterResponse: { res in
    //         XCTAssertEqual(res.status, .ok)
    //         XCTAssertEqual(
    //             try res.content.decode([RadixApp].self).sorted(by: { $0.address ?? "" < $1.address ?? "" }),
    //             sampleRadixApps.map { $0.toDTO() }.sorted(by: { $0.address ?? "" < $1.address ?? "" })
    //         )
    //     })
    // }

    func testRadixAppCreate() async throws {
        let newDTO = RadixAppDTO(id: nil, address: "1x67asd9asfa", owner: "hc")
        
        try await self.app.test(.POST, "radix_apps", beforeRequest: { req in
            try req.content.encode(newDTO)
        }, afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
            let models = try await RadixApp.query(on: self.app.db).all()
            XCTAssertEqual(models.map { $0.toDTO().address }, [newDTO.address])
        })
    }
    
    func testRadixAppDelete() async throws {
        let testRadixApps = [RadixApp(address: "11111", owner: "josh"), RadixApp(address: "22222", owner: "Sam")]
        try await testRadixApps.create(on: app.db)
        
        try await self.app.test(.DELETE, "apps/\(testRadixApps[0].requireID())", afterResponse: { res in
            XCTAssertEqual(res.status, .noContent)
            let model = try await RadixApp.find(testRadixApps[0].id, on: self.app.db)
            XCTAssertNil(model)
        })
    }
}

extension TodoDTO: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id && lhs.title == rhs.title
    }
}
