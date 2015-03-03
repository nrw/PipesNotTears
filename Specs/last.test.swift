import PipesNotTears
import XCTest

class LastTC: XCTestCase {
    func testReturnsLastTwo() {
        let a = last(2)([1,2,3])
        let b = Slice<Int>([2,3])
        XCTAssertEqual(a, b)
    }
    func testNegativeNoCrash() {
        let c = last(-1)([1,2,3])
        XCTAssertEqual(c, [])
    }

    func testTooBigNoCrash() {
        let d = last(4)([1,2,3])
        let e = Slice<Int>([1,2,3])
        XCTAssertEqual(d, e)
    }
}
