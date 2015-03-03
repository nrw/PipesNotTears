public func first<T>(count: Int)(_ input: [T]) -> Slice<T> {
    if count >= 0 {
        let end = min(count, input.count)
        return input[0..<end]
    } else {
        return []
    }
}
