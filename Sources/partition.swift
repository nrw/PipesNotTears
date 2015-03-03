public func partition<T>(body: (T)->Bool)(_ input: [T]) -> ([T], [T]) {
    var yā = [T]()
    var nā = [T]()
    for x in input {
        if body(x) {
            yā.append(x)
        } else {
            nā.append(x)
        }
    }
    return (yā, nā)
}
