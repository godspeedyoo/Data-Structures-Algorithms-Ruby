# Trees

<img src='assets/binary-tree.png' align='right' width='200px'>

The Tree data structure stores hierarchies, and takes a shape akin to an upside-down "Family Tree." Trees all start with a single _root_ Node. Nodes can have _child_ Nodes. Nodes at the bottom, with no children, are known as _leaf_ Nodes.

Really, Trees are Graphs with more restrictions.

Trees can also serve as the underlying data structure of a List. Like Lists, but unlike Maps, Trees can be _ordered collections_. Ordered trees allow for more efficient search than a List, but are less efficient than a Map at simple lookups.

The [Wikipedia entry](http://en.wikipedia.org/wiki/Tree_%28data_structure%29) on Trees includes more vocabulary along with definitions.

## Why is this important?

Certain problems are naturally modeled as a Tree. Organization hierarchies, and many kinds of parsed text (code, HTML, JSON). For example, the following equation...

```
1 + (3 * 4)
```

... can be recognized as a tree of operators and numerals:

```
|----+---|
1      --*--
       |   |
       3   4
```

Trees can also be useful when an ordered List is desired, and you need searching to be better than O(n).

## Release 1, Implement a Tree

Implement and test `Tree` and `Node` classes. Rely on any of the Data Structures you have implemented thus far, along with basic Ruby objects that you create yourself.

### Interface

#### Node

- `Node::new(value)`: Instantiate a new Node containing `value`
- `Node#add_child(child)`: Add `child` as a child of this node
- `Node#value`: Return the value of this node
- `Node#children`: Return a collection of child nodes

#### Tree

- `Tree::new(node)`: Instantiate a new Tree with `node` as the _root_
- `Tree#search {|value| }`: Search through the tree. `#search` takes a block that receives the _value_ of the node. It should return the first node for which the block returns `true`, or nil if no node is found.

Have at least one test that constructs a tree that looks like this and verify that you can search and find `#baz-box`.

```
       ----------<body id='foo'>----------
       |                                 |
<h1 id='bang'>                   <div id='bar-box'>
                                         |
                                 <div id='baz-box'>

```

## Release 2, Implement a Tree List

Implement and test a TreeList data structure. A TreeList is a just a List implementation that uses an _ordered_ Tree behind the scenes. Consider using your Tree as a binary tree in your implementation.

Since this TreeList will be ordered, your methods should only accept elements that implement the comparison operator, `#<=>`. String, Fixnum and others already implement it, or you can create a simple class.

As you add items to `TreeList` it should correctly maintain order. If you iterate through the elements later, no matter the order they were added in, they should come out ordered.

Your TreeList class should conform to the following interface:

### Interface

- `TreeList#new()`: Instantiate a new TreeList
- `TreeList#add(element)`: Add an element to the list
- `TreeList#find(element)`: Return the position of `element` in the list
- `TreeList#size`: Return the size of the list
- `TreeList#each {|element|}`: Iterate through the list. The list should be in order.

Most importantly, `#find` should be _faster_ than O(n). Remember that this is an ordered tree — how can you use this to your advantage?
