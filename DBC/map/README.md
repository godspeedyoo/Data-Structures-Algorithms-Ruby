# Maps

A Map, also know as a Dictionary, is a collection of key-value pairs. Entries (known as associations) can be added by providing a value and a key that can be used to retrieve that value. Keys in a map are unique, though multiple keys could store the same value.

Map is also an example of an _un-ordered collection_. You can put keys in, but if you iterate through there is no guarantee as to the order of the values that come out.

## Why is this important?

Storing key:value pairs is a common need in programming, you've done it yourself many times in Ruby. While the `Map` data structure is abstract, and thereby does not specify an underlying implementation, most Maps allow you to access elements by key in _constant time_, aka O(1). This is a valuable feature of Maps: they are both fast, and a convenient data store.

Some form of Map is available in nearly every language.

While Maps are fast to access, they don't allow for ordered collections. To get a fast _and_ ordered collection we'll look at Trees next.

## Release 0

Find out what the Map data structure is called in Ruby, Javascript and Java. It's vital that you're able to connect the abstract data structure with its language-specific implementation. Commit your answer in a file called `notes.md`.

## Release 1: Implement Map

Write and test a `Map` class. Do not use Ruby's `Hash` class. Instead, you can rely on any of the Data Structures you have implemented thus far.

Your class should conform to the following interface.

### Interface
- `Map::new`: Instantiate a new Map
- `Map#set(key, value)`: Add a key-value pair. If the key is already present, replace the value
- `Map#get(key)`: Retrieve the value stored at `key`
  `Map#has_key?(key)`: Answer where or not the map has an entry for `key`
  `Map#remove(key)`: Remove the entry stored at `key`
- `Map#iterate{ |value, key| block }`: Iterate through the Map, passing the block each value and key

##Resources

* [Wikipedia: Associative Array](http://en.wikipedia.org/wiki/Associative_array)
* [NIST: Abstract dictionary](http://xlinux.nist.gov/dads//HTML/dictionary.html)
