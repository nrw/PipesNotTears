public func chunk<T>(_ size: Int = 2)(_ input: [T]) -> [[T]] {
    let count = input.count
    var out = [[T]]()
    let n = count / size
    for x in 0..<n {
        let a = x * size
        let $ = x * size + size
        let chunk = [T](input[a..<$])
        out.append(chunk)
    }
    let remainder = count % size
    if remainder > 0 {
        let start = count - remainder
        out.append([T](input[start..<count]))
    }
    return out
}
