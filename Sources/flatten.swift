public func flatten<T>(input: [[T]]) -> [T] {
    var out = [T]()
    for x in input { out += x }
    return out
}
