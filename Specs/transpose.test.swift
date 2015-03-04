import PipesNotTears
import XCTest

class TransposeTC: XCTestCase {
    func test3x2() {
        let a = transpose([1,2,3], [4,5,6])
        let b = [[1,4], [2,5], [3,6]]
        XCTAssertEqual(a, b)
    }

    func test3x3() {
        let c = transpose([1,2,3], [4,5,6], [7,8,9])
        let d = [[1,4,7], [2,5,8], [3,6,9]]
        XCTAssertEqual(c, d)
    }
}
