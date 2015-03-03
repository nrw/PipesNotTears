public func snip<T>(amount: Int)(_ input: [T]) -> Slice<T> {
    let count = input.count
    let end = count - amount
    return input[0..<end]
}
