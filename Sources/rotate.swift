/**
 @return A new array rotated about the provided index.

    [1,2,3,4,5,6] |> rotate(2)   // [3,4,5,6,1,2]
    [1,2,3,4,5,6] |> rotate(-2)  // [5,6,1,2,3,4]
*/
public func rotate<T>(var pivot: Int)(_ input: [T]) -> [T] {
    if pivot == 0 {
        return input
    }
    if pivot < 0 {
        pivot = input.count + pivot
    }
    return [T](skip(pivot)(input)) + [T](prefix(input, pivot))
}
