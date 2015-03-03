public func rotate<T>(var pivot: Int)(_ input: [T]) -> [T] {
    if pivot < 0 {
        pivot = input.count + pivot
    }
    return [T](skip(pivot)(input)) + [T](first(pivot)(input))
}
