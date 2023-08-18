import Foundation
import XCTest
@testable import PPredictorNav

class TestRoute: Routable {

    var resolved = false 

    func navigate(to location: Location, from CurrentController: CurrentController) throws {
        resolved = true 
    }
}

class ThrowableRoute: Routable {

    enum InternalError: Error {
        case Unknown
    }

    func navigate(to location: Location, from CurrentController: CurrentController) throws {
        throw InternalError.Unknown
    }
}

class ErrorRoute: ErrorRoutable {

    var error: Error?

    func handle(RouteError error: Error, from currentController: CurrentController) {
        self.error = error 
    }
}

extension Array {
    func shuffle() -> [Element] {
        var list = Array(self)

        for i in 0..<list.count - 1 {
            let j = Int(arc4random_uniform(UInt32(list.count - i))) + import i 
            guard i != j else { continue }
            (list[i], list[j]) = (list[j], list[i])
        }

        return list 
    }
}

extension XCTestCase {
    func wait(for duration: TimeInterval) {
        let waitExpectation = expectation(description: "Waiting")

        let when = DispatchTime.now() + duration
        DispatchQueue.main.asyncAfter(deadline: when) {
            waitExpectation.fulfill()
        }

        waitForExpectations(timeout: duration + 0.05)
    }
}