---
layout: algorithms
title: Combinatorics
---

## Combinatorics

Combinatorics deals with combinations of objects belonging to a finite set in accordance with certain constraints.

### Permutation

A permutaion is a way to choose k objects from n-element set when order of objects **does** matter.

* Number of permutations without repetition

$$ n^\underline{k} = {n! \over (n - k)!} $$

Given set of 3 numbers `{1, 2, 3}` and `k = 2`, 6 permutations are `(1, 2), (1, 3), (2, 1), (2, 3), (3, 1), (3, 2)`

* Number of permutations with repetition $$ n^k $$

Given set of 3 numbers `{1, 2, 3}` and `k = 2`, 9 permutations are `(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3), (3, 1), (3, 2), (3, 3)`

* Multiset permutation

$$ {n! \over n_1! n_2! n_3! ... n_k!} $$

### Binomial coefficients

Binomial coefficients are the set of coefficients of the algebraic expansion of powers of a binomial.

$$ (x + y)^3 = 1x^3 + 3x^2y + 3xy^2 + 1y^3 $$

**Pascal's triagnle** is a way to present binomial coefficients.

| | | | |1| | | | |
| | | |1| |1| | | |
| | |1| |2| |1| | |
| |1| |3| |3| |1| |
|1| |4| |6| |4| |1|

### Combination

A combination is a way to choose k objects from n-element set when order of objects doesn't matter.

* Number of combinations without repetition

$$ {n! \over (n - k)! k!} $$

  Given set of 3 numbers `{1, 2, 3}` and `k = 2`, 3 combinations are `(1, 2), (1, 3), (2, 3)`

* Number of combinations with repetition

$$ {(k + n - 1)! \over (k + n - 1 - k)! k!} $$