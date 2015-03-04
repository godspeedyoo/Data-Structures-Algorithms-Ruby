# Queues

A [Queue](http://en.wikipedia.org/wiki/Queue_%28abstract_data_type%29) is a lot like the Stack data structure, but the order in which you pull elements out is different. In a Queue you _enqueue_ to put something in the Queue and you _dequeue_ to pull something out. The first thing in to the data structure is the first thing that will be _dequeued_. In other words, this is a **first-in, first-out** data structure, aka FIFO.

To recap:
 * Stacks — The **last** element added to the list is the first to be removed with `pop`, so a stack if a LIFO data structure
 * Queues - The **first** element added to the list is the first to be removed with `dequeue`, so a Queue is a FIFO data structure.

## Why is this important?

Queues are the natural complement to Stacks. Some algorithms work with Queues or Stacks to help maintain state. The same algorithm using a Queue vs a Stack can produce wildly different results.

## Release 1: Implement the Queue

Write and test a `Queue` class that conforms to the following interface:

### Interface
- `Queue#new(suggested_capacity)`: Instantiate a new `Queue` with an optional initial capacity
- `Queue#enqueue(element)`: Add a new element to the queue
- `Queue#dequeue`: Remove and return the first element in the queue
- `Queue#peel`: Return (but do not remove) the first element in the queue
- `Queue#empty?`: Answer whether or not the queue is empty

Do not use any Ruby data structures in your implementation. Instead, pick one of your own to use in your implementation:

 * FixedArray
 * ArrayList
 * LinkedList

## Resources

* [Wikipedia: Queue](http://en.wikipedia.org/wiki/Queue_%28abstract_data_type%29)
