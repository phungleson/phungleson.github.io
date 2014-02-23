---
layout: algorithms
title: Asymptotic analysis
---

## Asymptotic analysis

Asymptotic analysis provide a way to predict how an algorithm behaves when the size of the input grows.

### $$ \Theta $$ notation

$$ \Theta(g(n)) $$ is defined a set of functions that are **asymptotically tight bound** for $$ f(x) $$.

If $$ f(n) = \Theta(g(n)) $$ thus there exist positive constants $$ c_1, c_2 $$ and $$ n_0 $$ such that $$ 0 \le c_1g(n) \le f(n) \le c_2g(n) $$ for all $$ n \ge n_0 $$

### $$ O $$ notation

$$ O(g(n)) $$ is defined as a set of functions that are **asymptotic upper bound** for $$ f(x) $$.

If $$ f(n) = O(g(n)) $$ then thus exist positive constants $$c$$ and $$ n_0 $$ such that $$ 0 \le f(n) \le cg(n)$$ for all $$n \ge n_0 $$

### $$ \Omega $$ notation

$$ \Omega(g(n)) $$ defines a set of functions that are **asymptotic lower bound** for $$ f(x) $$.

If $$ f(n) = \Omega(g(n)) $$ thus there exist positive constants $$ c $$ and $$ n_0 $$ such that $$ 0 \le cg(n) \le f(n) $$ for all $$ n \ge n_0 $$

### Growth rate

| Rate          | Notaion           | n = 1000; 1 per ms|
|:--------------|:------------------|:------------------|
| Constant      | $$ O(1) $$        | 0                 |
| Logarithmic   | $$ O(log(n)) $$   | 7 ms              |
| Linear        | $$ O(n) $$        | 1 seconds         |
| Superlinear   | $$ O(nlog(n)) $$  | 7 seconds         |
| Polynomial    | $$ O(n^c) $$      |                   |
| Quadratic     | $$ O(n^2) $$      | 17 mimutes        |
| Cubic         | $$ O(n^3) $$      | 11 days           |
| Exponential   | $$ O(c^n) $$      | $$\infty$$        |
| Factorial     | $$ O(n!) $$       | $$\infty$$        |