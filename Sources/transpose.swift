/**
 Transposes the rows and columns of the provided array of arrays.

    [[1,2,3], [4,5,6]] |> transpose  //=> [[1,4], [2,5], [3,6]]

 @warning *PROTIP* `transpose` is surprisingly useful, if you think laterally about your problem.
*/
public func transpose<T>(input: [T]...) -> [[T]] {
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
