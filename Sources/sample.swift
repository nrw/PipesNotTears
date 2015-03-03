import Darwin

public func sample<T>(input: [T]) -> T {
    return input[Int(arc4random_uniform(UInt32(input.count)))]
}
