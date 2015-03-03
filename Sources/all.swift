public func all<T>(body: (T) -> Bool)(_ input: [T]) -> Bool {
    for t in input {
        if !body(t) {
            return false
        }
    }
    return true
}
