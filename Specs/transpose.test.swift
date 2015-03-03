import PipesNotTears
import XCTest

class TransposeTC: XCTestCase {
    func test() {
        let a = transpose([[1,2,3], [4,5,6]])
        let b = [[1,4], [2,5], [3,6]]
        XCTAssertEqual(a, b)
    }
}
