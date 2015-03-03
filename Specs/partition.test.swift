import PipesNotTears
import XCTest

class PartitionTC: XCTestCase {
    func test() {
        let (a1, a2) = partition({ $0 % 2 == 0 })([1,2,3,4,5,6])
        let (b1, b2) = ([2,4,6],[1,3,5])
        XCTAssertEqual(a1, b1)
        XCTAssertEqual(a2, b2)
    }
}
