import PipesNotTears

[1,2,3] |> all{ $0 > 0 }
[1,2,3] |> any{ $0 > 1 }
[1,2,3] |> chunk(2)
[[1,2,3],[4,5,6]] |> flatten
[1,2,3,4] |> first(2)
[1,2,3,4] |> last(2)
[1,2,3,4,5,6] |> rotate(1)
[1,2,3,4,5,6] |> sample
[1,2,3,4,5,6] |> shuffle
[1,2,3,4] |> skip(2)
[1,2,3,4] |> snip(2)
[[1,2,3],[4,5,6]] |> transpose
[1,2,1,3,2,4,3,5,1,2,3,4] |> uniq

let a = [1,2,3,4,5]
a |> first(2)
a |> last(2)
a |> skip(2)
a |> snip(2)
a[1..<4]

[1:3, 3:4] + [1:2, 5:6, 7:8]

// stdlib functions that are relevant
maxElement([1,2,3])
minElement([1,2,3])
contains([1,2,3], 2)
split("foo bar"){ $0 == " " }
first([1,2,3])  // our version takes 2 parameters and returns an array
last([1,2,3])

// You can use our pipe forward operator still:
[1,2,3] |> maxElement

if ([1,2,3] |> sorted |> any{ $0 > 0 }) {
    println("HI")
}
