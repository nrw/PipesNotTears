import PipesNotTears
import XCTest

class MergeTC: XCTestCase {
    func test() {
        let a = [1:2] + [2:3] + [1:3]
        let b = [1:3, 2:3]
        XCTAssertEqual(a, b)
    }
}
