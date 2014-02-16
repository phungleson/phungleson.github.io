---
layout: algorithms
title: Traversing a graph
---

## Traversing a graph

A systematic way to visit every edge and vertex in a graph.

### Breath first search - BFS

From the source vertex, BFS visits vertices that are direct neighbors, then all neighbors of the direct neighbors, layer by layer.

Smallest in terms of number of edges.

### Depth first search - DFS

From the source vertex, DFS visits the first neighboring vertex, then first neighboring vertex of the first neighboring vertex, until it reaches a vertex where it cannot go any deeper.