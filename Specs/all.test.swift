import PipesNotTears
import XCTest

class AllTC: XCTestCase {
    func test() {
        let a = [1,2,3,4]
        let b = all(a, {$0 < 3})
        let c = all(a, {$0 > 0})

        XCTAssertFalse(b)
        XCTAssertTrue(c)
    }
}
