/**
 Merges two dictionaries, the dictionary on the right takes
 precendence in the event of key collisioin.
*/
public func + <T, U>(var left: [T:U], right: [T:U]) -> [T:U] {
    for (key, value) in right {
        left.updateValue(value, forKey: key)
    }
    return left
}
