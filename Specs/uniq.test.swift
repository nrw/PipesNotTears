import PipesNotTears
import XCTest

class UniqTC: XCTestCase {
    func test() {
        let a = uniq([1,2,1,3,2,4,3,5,1,2,3,4])
        let b = [1,2,3,4,5]
        XCTAssertEqual(a, b)
    }
}
