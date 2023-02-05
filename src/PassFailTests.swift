import XCTest

class PassFailTests: XCTestCase {

    func test_pass() {
        XCTAssertTrue(true)
    }

    func test_fail() {
        XCTFail("Fail")
    }
}
