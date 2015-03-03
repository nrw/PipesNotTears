import PipesNotTears
import XCTest

class ShuffleTC: XCTestCase {
    func test() {
        let a = [1,2,3,4,5,6]
        let b = shuffle(a).sorted(<)
        XCTAssertEqual(a, b)
    }
}
