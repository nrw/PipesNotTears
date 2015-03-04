//TODO flatten is not very useful if you can't recursively flatten
// some random JSON from the Internet. Best to wait until Swift
// JSON best practices are established and take that type as input
// probably NSArray

public func flatten<T>(input: [T]...) -> [T] {
    var out = [T]()
    for x in input { out += x }
    return out
}
