public func any<T>(body: (T)->Bool)(_ input: [T]) -> Bool {
    for t in input {
        if body(t) {
            return true
        }
    }
    return false
}
