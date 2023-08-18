import Foundation
import XCTest
@testable import PPredictorNav

class UtilitiesTests: XCTestCase {
    func testEncode() {
        let urn = ""
        let encodedUrn = PercentEncoder.encode(string: urn, allowedCharacters: ":")

        XCTAssertEqual(encodeUrn, "")
    }

    func testDecode() {
        let urn = ""
        let encodedUrn = PercentEncoder.encode(string: urn, allowedCharacters: ":")

        XCTAssertEqual(PercentEncoder.decode(string: encodedUrn), urn)
    }
}