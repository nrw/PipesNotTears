public func any<T: CollectionType>(input: T, body: (T.Generator.Element)->Bool) -> Bool {
    for t in input {
        if body(t) {
            return true
        }
    }
    return false
}
