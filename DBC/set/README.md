# Sets

Like a List, a [Set](http://en.wikipedia.org/wiki/Set_%28abstract_data_type%29) is a collection of elements. Sets have two key characteristics that make them stand apart from other Collection types like List.

 * **Sets are unordered**: Regardless of how data enters a Set, the ordering of its elements is _not_ guaranteed.
 * **Sets contain only unique elements**: There are no duplicates in a Set. If you add the string "hello" to a Set twice, there will only be one element ("hello") inside of it.

## Why is this important?

The notion of Sets comes directly from [Set Theory](http://en.wikipedia.org/wiki/Set_theory) in math. Sets let us reason about collections of data as first class citizens themselves.

If you asked me to tell you all the living things in the world I _could_ start enumerating everything living being on Earth. Alternatively, I could treat these categories as Sets. I could say "the set of living things is the union of the flora and fauna sets".

You're already familiar with classic Set operations like `union` and `intersection` from your experience with SQL. You've produced _subsets_ of arrays in Ruby using `#select` or `#filter`. You might have even used Ruby's `Hash` _as_ a set by relying on the fact that setting the same key in a Hash twice is idempotent.

Finally, Sets can be much faster for specific operations than a List. If you need to only check for _membership_ in a collection, a Set is probably faster than a List. Sets don't have the overhead of needing to access elements by index or keep them in order.

## Release 1: Implement `MySet`

Implement and write RSpec tests for a `MySet` class that conforms to the following interface:

### Interface
- `MySet#new()`: Instantiate a new empty Set.
- `MySet#add(element)`: Add an element to the set (if necessary)
- `MySet#remove(element)`: Remove `element` from the set if it's present
  `MySet#contains?(element)`: Answer whether or not `element` is in the set
- `MySet#iterate{ |element| block }`: Iterate through all of the elements of the receiver
- `MySet#size`: Return the size of the set

Pick one of _your_ existing data structures to implement `MySet` under the hood. Justify the structure you choose in the comments.

## Release 2: Set Operations

We have the basics, but let's expand our Set class to include classic Set operations.

Implement and write RSpec tests for the following methods:

### Interface (cont.)

- `MySet#union(other_set)`: Return a new set that is the union of this set and `other_set`
- `MySet#intersection(other_set)`: Return a new set that is the intersection of this set and `other_set`
- `MySet#difference(other_set)`: Return a new set that contains this elements in the set that aren't in `other_set`
- `MySet#subset?(other_set)`: Answers whether or not `other_set` is a subset of this set

Be sure to include tests for operations involving empty sets!
