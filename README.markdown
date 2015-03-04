Pipes (Not Tears)
=================

Finding yourself searching for a good “Batman utility belt” framework
for Swift projects?

Not really into adding extensions to `Array` because it isn’t very
“Swifty”.

Want something that is definitely “Swifty” (as per current thinking,
thinking subject to change, thinking may not be considered real
thinking).


```swift
[4,2,3,3,3,3,1] | sorted | unique | reverse | chunk(2)  //=> [[4,3], [2,1]]

[1,5,2,4,3] | sorted | last(2)  //=> [4,5]

if [1,2,3] | shuffle | first(2) | any({ $0 > 0 }) {
    println("HI!")
}

["key1": 1] + ["key2": 2]  //=> ["key1": 1, "key2": 2]
```

To see more examples and play with the framework, clone and open
the bundled playground.

You can call these functions more normally, but they are curried, so
if you plan to do that just use one of the million other projects
like this one.

```swift
chunk(2)([1,2,3])  //=> [[1,2], [3]]
```


Is This Stable?
===============

We will be changing stuff, but in a source-safe manner with deprecations.


Xcode?
======

Will work with 6.1 with a few syntax corrections. Built for the upcoming 6.3 release.


Getting Started
===============

Use Carthage:

```ruby
github "mxcl/PipesNotTears"
```

```bash
$ carthage update
```


Thanks
======

* Thanks to [mariusschulz](https://twitter.com/mariusschulz) for the `|` [blog post](https://blog.mariusschulz.com/2014/09/13/implementing-a-custom-forward-pipe-operator-for-function-chains-in-swift) that inspired P(NT).
* Thanks to [YOLOKit](https://github.com/mxcl/YOLOKit) for inspiring the core functions a toolbelt needs.

Author
======

[mxcl](https://twitter.com/mxcl)
