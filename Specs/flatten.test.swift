import PipesNotTears
import XCTest

class FlattenTC: XCTestCase {
    func test() {
        let a = flatten([[1,2],[3,4]])
        let b = [1,2,3,4]
        XCTAssertEqual(a, b)
    }
}
