import PipesNotTears
import XCTest

class RotateTC: XCTestCase {
    func test() {
        let a = [1,2,3,4,5,6]
        XCTAssertEqual(rotate(1)(a), [2,3,4,5,6,1])
        XCTAssertEqual(rotate(0)(a), a)
    }
}
