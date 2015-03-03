public func skip<T>(amount: Int)(_ input: [T]) -> Slice<T> {
    let count = input.count
    return input[amount..<count]
}
