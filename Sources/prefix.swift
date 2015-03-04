public func prefix<T: Sliceable>(length: Int)(_ input: T) -> T.SubSlice {
    return Swift.prefix(input, length)
}
