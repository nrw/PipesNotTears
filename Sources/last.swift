public func last<T>(count: Int)(_ input: [T]) -> Slice<T> {
    let end = input.count
    if count >= 0 {
        let start = end - min(count, end)
        return input[start..<end]
    } else {
        return []
    }
}
