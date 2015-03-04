# Fixed Arrays

Way down deep, past the abstraction of Ruby, data you don't write to disk is stored in _memory_. You can access pieces of memory by numerical index (or "address"), kind of like an array. You can say "allocate me 32 bytes of memory" and you'll get a chunk of memory that's 32 bytes, carved out somewhere in the gigabytes of memory installed on your computer.

Every program on your system has to _pre-allocate_ the memory it wants to use. It can't say "give me 32 bytes, but I might need more later."

At this low-level there are no "dynamically sized arrays. Arrays are, in truth, just chunks of memory that you access by address. They are a fixed size; you say how big they are up front and that's all you get.

## Why is this important?

In low-level languages like C, fixed-size arrays are all you get. In high-level languages like Ruby, arrays can grow and shrink as you need them too, but down deep they're built using fixed-size arrays that _can't_ change size.

There are no Hashes or Dynamic Arrays at a low level, your only data structure is the fixed array. We'll be building many data structures in this unit, but all of them will ultimately be built up from the humble fixed-size array.

In the course of this challenge you will implement your own `FixedArray` class to mimic the lower level fixed-size arrays. We will use this `FixedArray` class to build up progressively more advanced data structures.

## Release 1: Implement `FixedArray`

Implement and write RSpec tests for the `FixedArray` class. The class must conform to the following interface:

### Interface
- `FixedArray#new(size)`: Instantiate a new array with space for `size` elements.
- `FixedArray#get(index)`: Get a value from the array at the specified index.

  Throw an `OutOFBoundsException` if the user tries to get a value at an index outside the bounds of the array.
- `FixedArray#set(index, element)`: Set a value in the array at a specific index.

  Throw an `OutOFBoundsException` if the user tries to get a value at an index outside the bounds of the array.

#Resources

* [Wikipedia: Array data type](http://en.wikipedia.org/wiki/Array_data_type#Abstract_arrays)
* [Wikipedia: Array data structure](http://en.wikipedia.org/wiki/Array_data_structure)
