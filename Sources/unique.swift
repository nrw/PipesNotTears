/**
 @return A new array with multiple instances of the same object removed. Order is preserved.

    // [1,1,1,2] |> uniq  //=> [1,2]
*/
public func unique<T: CollectionType where T.Generator.Element: Hashable>(input: T) -> [T.Generator.Element] {
    var out: [T.Generator.Element] = []
    var set = Set<T.Generator.Element>()
    for x in input {
        if !set.contains(x) {
            set.insert(x)
            out.append(x)
        }
    }
    return out
}
