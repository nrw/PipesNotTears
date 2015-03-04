/**
 Snips the end off the array. Returns the receiver without the last `n` elements.

    [1,2,3,4,5,6] |> snip(2)  //=> [1,2,3,4]
*/
public func snip<T>(amount: Int)(_ input: [T]) -> Slice<T> {
    let count = input.count
    let end = count - amount
    return input[0..<end]
}
