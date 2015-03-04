import PipesNotTears
import XCTest

class SuffixTC: XCTestCase {
    func testReturnsLastTwo() {
        let a = suffix(2)([1,2,3])
        let b = Slice<Int>([2,3])
        XCTAssertEqual(a, b)
    }
    func testNegativeNoCrash() {
        let c = suffix(-1)([1,2,3])
        XCTAssertEqual(c, [])
    }

    func testTooBigNoCrash() {
        let d = suffix(4)([1,2,3])
        let e = Slice<Int>([1,2,3])
        XCTAssertEqual(d, e)
    }
}
