# Graphs

<img src='assets/directed-graph.png' align='right'>

Graphs come to us from [Graph Theory](http://en.wikipedia.org/wiki/Graph_theory) in mathematics. A Graph is made up of a set of _Nodes_. Links between Nodes are known as _edges_. Nodes can have many edges. There is no concept of hierarchy in a graph, it's simply a data structure that allows us to maintain a web of interconnected things.

A `Node` in the context of a Graph is similar to a Node in a LinkedList, but a graph may have multiple edges as opposed to the concept of the "next Node in the chain" (e.g. a single edge) that we find in Linked Lists.

In addition to edges, Nodes typically contain a value attached to that node.

The [Wikipedia entry](http://en.wikipedia.org/wiki/Graph_%28abstract_data_type%29) on Graphs includes more vocabulary along with definitions.

## Graph sub-types

 * Some graphs have edges with _direction_. In other words, an edge from A to B does not imply an edge from B to A. These are known as **directed graphs**. The graph in the upper right corner is a directed graph (note the arrows indicating direction).
 * Some directed graphs have no path from a node back to itself. These graphs are known as acyclic graphs. The graph in the upper right corner is _not_ acyclic because it's possible to follow a series of directed edges back to the first node (resulting in a "graph cycle").

## Why is this important?

We model many things as graphs in computing. A few examples:

* Your social network
  * Each person is a node and friendships are an edge. The value might be a kind of "Person" object.
* Spreadsheets
  * Each cell is a node, dependencies between cells (e.g.`=C2+B4`) are edges.
* Topologies
  * A network of interdependent services is a graph, with edges representing dependencies between services
* Trees
  * Trees are really just graphs with more restrictions

There are also a slew of common algorithms for searching and working with graphs. You may have heard of [Depth-First Search](http://en.wikipedia.org/wiki/Depth-first_search), [Breadth-First Search](http://en.wikipedia.org/wiki/Breadth-first_search), or [Topological Sorting](http://en.wikipedia.org/wiki/Topological_sorting) (handy for spreadsheets).

## Release 1, Implement a Graph

Create and test a `Node` class. This Graph should be a _directed_ graph, so your Node's edges will only go one direction (though there's nothing stopping you from having two edges on two nodes that point to each other).

### Interface

- `Node::new(value)`: Instantiate a new Node containing `value`
- `Node#add_edge(other_node)`: Add an edge between this node and `other_node`
- `Node#value`: Return the value of this node
- `Node#nodes`: Return a collection of nodes to which this node has an outgoing edge
- `Node#exists? {|node| }`: Return true if the block passes for any of the nodes "downstream" from this one by following graph edges.

  e.x. Given `foo.exists?{|node| node.value == 'hello'}`, some other node in the graph _may_ exist that causes the block to return true. However,`#exists?` should only return true if the node containing `hello` can be reached by following the edges of `foo` or its descendent nodes.

Come up with interesting test cases. For example, does `#exists?` work with an acyclic graph? What about a cyclic one?
