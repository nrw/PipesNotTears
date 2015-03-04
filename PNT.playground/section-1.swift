import PipesNotTears


let a1 = [1,2,3]
let a2 = [4,5,6]
let aa = flatten(a1, a2)

// logical
all(aa){ $0 > 0 }
any(aa){ $0 > 1 }

// transformative
aa | chunk(2)
aa | rotate(1)
aa | sample
aa | shuffle
aa | unique

[a1, a2] | flatten
[a1, a2] | transpose

// filtering
let (evens, odds) = aa | partition{ $0 % 2 == 0 }
evens
odds

// slicing
aa | prefix(2)
aa | suffix(2)
aa | skip(2)
aa | snip(2)
aa[1..<4]

// merging
[1:3, 3:4] + [1:2, 5:6, 7:8]

// stdlib functions that are relevant
maxElement(aa)
minElement(aa)
contains(aa, 2)
split("foo bar"){ $0 == " " }
first(aa)
last(aa)
zip(aa, aa)
suffix(aa, 2)  // same as our suffix, but our suffix is pipeable
dropFirst(aa)  // less well-named skip that only skips one
dropLast(aa)   // less well-named snip that only snips one

// You can use our pipe forward operator still:
aa | maxElement

if any(aa | shuffle | skip(1) | prefix(2), { $0 >= 2 }) {
    println("HI")
}
