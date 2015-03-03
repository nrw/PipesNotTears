import PipesNotTears
import XCTest

class SampleTC: XCTestCase {
    func test() {
        let a = [1,2,3,4,5,6]
        XCTAssertTrue(find(a, sample(a)) != nil)
    }
}
