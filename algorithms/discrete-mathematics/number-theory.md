---
layout: algorithms
title: Number theory
---

## Number theory

### Prime number

Prime number is a number greater than 1 that has no positive divisors other than 1 and itself.

### Greatest common divisor and least common multiple

Greatest common divisor of two or more integers is the largest positive integer that divides the numbers without a remainder.

~~~ ruby
def gcd(a, b)
  b == 0 ? a : gcd(b, a % b)
end
~~~

Least common multiple is the smallest integer such as `a` and `b` divide it without a reminder.

~~~ ruby
def lcm(a, b)
  a * (b / gcd(a, b))
end
~~~

### Factorial

The factorial of a non-negative integer n, denoted by n!, is the product of all positive integers less than or equal to n.