import PipesNotTears
import XCTest

class AnyTC: XCTestCase {
    func test() {
        let a = [1,2,3,4]
        let b = any(a, {$0 < 1})
        let c = any(a, {$0 > 1})
        let d = any(a, {$0 > 3})

        XCTAssertFalse(b)
        XCTAssertTrue(c)
        XCTAssertTrue(d)
    }
}
