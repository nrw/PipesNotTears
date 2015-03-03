import PipesNotTears
import XCTest

class FirstSpec: XCTestCase {

    func testReturnsFirstTwo() {
        let a = first(2)([1,2,3])
        let b = Slice<Int>([1,2])
        XCTAssertEqual(a, b)
    }

    func testHandlesNegativeInput() {
        let c = first(-1)([1,2,3])
        XCTAssertEqual(c, [])
    }

    func testHandlesTooLargeInput() {
        let d = first(4)([1,2,3])
        let e = Slice<Int>([1,2,3])
        XCTAssertEqual(d, e)
    }
}
