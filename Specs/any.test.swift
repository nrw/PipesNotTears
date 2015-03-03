import PipesNotTears
import XCTest

class AnyTC: XCTestCase {
    func test() {
        let a = [1,2,3,4]
        let b = any({$0 < 1})(a)
        let c = any({$0 > 1})(a)
        let d = any({$0 > 3})(a)

        XCTAssertFalse(b)
        XCTAssertTrue(c)
        XCTAssertTrue(d)
    }
}
