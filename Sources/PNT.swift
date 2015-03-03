// Inspired by:
// https://blog.mariusschulz.com/2014/09/13/implementing-a-custom-forward-pipe-operator-for-function-chains-in-swift

infix operator |> { associativity left precedence 80 }

public func |> <T, U>(value: T, function: (T -> U)) -> U {
    return function(value)
}
