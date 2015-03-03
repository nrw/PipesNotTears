import PipesNotTears
import XCTest

class SkipTC: XCTestCase {
    func test() {
        let a = skip(2)([1,2,3,4,5])
        let b = [3,4,5]
        XCTAssertEqual([Int](a), b)
    }
}
