---
layout: algorithms
title: Numerical systems
---

## Numerical systems

A numeral system is a writing system for expressing numbers by a given set of symbols.

### Binary system

Binary system or base-2 numeral system represent numbers using only two symbols `0, 1`, each called a bit.

### Bitwise operators

Bits normally are manipulated by **bitwise operators**, i.e. `& (and), | (or), ! (not), ^ (xor)`.

Given `A = 0110`, `B = 1010`

| !A    | A & B | A \| B | A ^ B |
|:------|:------|:-------|:------|
| 1001  | 0010  | 1110   | 1100  |

Bits can also manipulated by **shift operators**, i.e. shift left `<<` and shift right `>>`. `a << b` shifts all bits of `a` to the left by `b` positions, newly exposed bits are filled with `0s`; `a >> b` does the same but to the right.

### Features of bitwise operators

`x` is a power of 2 if `x & (x - 1) == 0`

Max of `x, y` is `x ^ ((x ^ y) & -(x < y))`

Swap integer in-place `x = x ^ y; y = x ^ y; x = x ^ y;`