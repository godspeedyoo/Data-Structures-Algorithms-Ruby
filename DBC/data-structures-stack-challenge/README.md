# Stacks

A stack is a special data structure where you only add, access, and remove elements from its top.  A stack is also known as a last-in first-out (LIFO) structure.

## Why is this important?

As you learned in Phase 1, your computer uses a call-stack when it executes code. You probably blew the call stack more than a few times when you studied recursion.

Stacks are simple data structures, but they're powerful too. A simple infix (e.g. 3 + 4) expression parser can be produced using nothing but stacks, queues and the [Shunting-yard algorithm](http://en.wikipedia.org/wiki/Shunting-yard_algorithm), and executed using a stack-based [reverse-polish notation calculator](http://en.wikipedia.org/wiki/Reverse_Polish_notation).

Most importantly for us, they're a classic example of a first-in-last-out (FIFO) data structure. FIFO and LIFO (last-in-first-out) are a useful part of your technical vocabulary as you reason about data and how it's processed.

## Release 1: Implement the Stack

Write and test a `Stack` class that conforms to the following interface:

### Interface
- `Stack#new(suggested_capacity)`: Instantiate a new `Stack` with an optional initial capacity
- `Stack#push(element)`: Add a new element to the top of the stack
- `Stack#pop`: Remove and return the top element of the stack
- `Stack#top`: Return (but do not remove) the top element of the stack
- `Stack#empty?`: Answer whether or not the stack is empty

Do not use any Ruby data structures in your implementation. Instead, pick one of your own to use in your implementation:

 * FixedArray
 * ArrayList
 * LinkedList

##Resources

* [Wikipedia: Stack (Abstract Data Type)](http://en.wikipedia.org/wiki/Stack_%28abstract_data_type%29)
* [Wikipedia: (Computing) Stacks](http://en.wikipedia.org/wiki/Stack#Computers)
