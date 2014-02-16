---
layout: algorithms
title: Hash functions
---

## Hash functions

A hash function is a mathematical function that maps keys to integers.

### Collision

A collision is where two distinct keys hash to the same value.

**Chaining** represents hash table as an array of linked lists. When two keys, having the same hash value, will be put in the same linked list. Equality comparison will be used to ensure the uniqueness of keys in the linked list.