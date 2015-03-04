/**
 Merges two dictionaries.

 If both dictionaries contain the same key, the right dictionary’s
 value for that key is kept.

 @return The merged dictionary.
*/
public func + <T, U>(var left: [T:U], right: [T:U]) -> [T:U] {
    for (key, value) in right {
        left.updateValue(value, forKey: key)
    }
    return left
}
