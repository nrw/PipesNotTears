import PipesNotTears
import XCTest

class PrefixSpec: XCTestCase {

    func testReturnsFirstTwo() {
        let a = prefix(2)([1,2,3])
        let b = Slice<Int>([1,2])
        XCTAssertEqual(a, b)
    }

    func testHandlesNegativeInput() {
        let c = prefix(-1)([1,2,3])
        XCTAssertEqual(c, [])
    }

    func testHandlesTooLargeInput() {
        let d = prefix(4)([1,2,3])
        let e = Slice<Int>([1,2,3])
        XCTAssertEqual(d, e)
    }
}
