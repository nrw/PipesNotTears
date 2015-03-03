import PipesNotTears
import XCTest

class AllTC: XCTestCase {
    func test() {
        let a = [1,2,3,4]
        let b = all({$0 < 3})(a)
        let c = all({$0 > 0})(a)

        XCTAssertFalse(b)
        XCTAssertTrue(c)
    }
}
