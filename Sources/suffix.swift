public func suffix<T: Sliceable where T.Index : BidirectionalIndexType>(length: Int)(_ input: T) -> T.SubSlice {
    return Swift.suffix(input, length)
}
