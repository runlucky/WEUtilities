import XCTest
import PackageB
@testable import WEUtilities

final class WEUtilitiesTests: XCTestCase {
    func testExample() throws {
        let company1 = Company()
        company1.hire(name: "kakeru1")
        company1.hire(name: "kakeru2")
        company1.greetAll()

        let company2 = Company()
        company2.hire(name: "kakeru3")

        let list = CompanyList()
        list.add(company: company1)
        list.add(company: company2)

        
        XCTAssertEqual(list.allEmployees, 3)
    }
}
