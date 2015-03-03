/**
 Returns a new Array with mutliple instances of the
 same object removed. Order is preserved.
 */
public func uniq<T where T: Hashable>(input: [T]) -> [T] {
    var out = [T]()
    var set = [T:Bool]()
    for x in input {
        if set[x] == nil {
            set[x] = true
            out.append(x)
        }
    }
    return out
}
