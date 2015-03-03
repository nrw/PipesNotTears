public func transpose<T>(input: [[T]]) -> [[T]] {
    if input.isEmpty { return [[T]]() }
    let count = input[0].count
    var out = [[T]](count: count, repeatedValue: [T]())
    for outer in input {
        for (index, inner) in enumerate(outer) {
            out[index].append(inner)
        }
    }
    return out
}
