import Darwin

/**
 @return A new array that is shuffled.

 Uses the Fisher–Yates shuffle algorithm.
*/
public func shuffle<T>(input: [T]) -> [T] {
    let count = input.count
    switch count {
    case 0, 1:
        return input;
    default:
        var out = input;
        for i in stride(from: count - 1, through: 0, by: -1) {
            let j = Int(arc4random_uniform(UInt32(i) + 1))
            (out[i], out[j]) = (out[j], out[i])
        }
        return out
    }
}
