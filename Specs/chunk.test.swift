import PipesNotTears
import XCTest

class ChunkTC: XCTestCase {
    func test() {
        let a = chunk(2)([1,2,3,4,5,6,7])
        let b = [[1,2],[3,4],[5,6],[7]]
        XCTAssertEqual(a, b)
    }
}
