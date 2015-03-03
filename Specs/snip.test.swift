import PipesNotTears
import XCTest

class SnipTC: XCTestCase {
    func test() {
        let a = snip(2)([1,2,3,4,5])
        let b = [1,2,3]
        XCTAssertEqual([Int](a), b)
    }
}
