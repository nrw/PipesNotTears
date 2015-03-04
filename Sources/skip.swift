/**
 Skips the first n elements and returns the rest of the array.

    [1,2,3,4,5,6] |> skip(2)  //=> [3,4,5,6]
*/
public func skip<T: Sliceable>(amount: Int)(_ input: T) -> T.SubSlice {
    var rng = indices(input)
    // this is ridiculous. But I couldn't figure out any other way.
    for x in 0..<amount { rng.startIndex = rng.startIndex.successor() }
    return input[rng]
}
