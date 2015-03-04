/**
 Invokes the given block for each element in the receiver. Should the block return `false`, the method immediately returns `false`, ceasing enumeration. If all executions of the block return `true`, `all` returns `true`.

    all([1,2,3]){ $0 > 0 }  //=> true
    all([1,2,3]){ $0 < 3 }  //=> false
*/
public func all<T: CollectionType>(input: T, body: (T.Generator.Element) -> Bool) -> Bool {
    for t in input {
        if !body(t) {
            return false
        }
    }
    return true
}
