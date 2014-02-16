---
layout: algorithms
title: Geometry - Vector
---

## Geometry - Vector

Vector is a directed line segment connecting an intial point with a terminal point.

* Length or magnitute of a vector.

  $$ \|\vec{A}\| = \sqrt{x_a^2 + y_a^2} $$

* Addition of two vectors is a vector.

  $$ \vec{C} = \vec{A} + \vec{B} = (x_a + x_b, y_a + y_b) $$

* Dot product of two vectors is a number called **scalar**.

  $$ \begin{align}
    \vec{A} \cdot \vec{B}
    & = x_a x_b + y_a y_b \\
    & = \|\vec{A}\| \|\vec{B}\| \cos\theta
  \end{align} $$

  Where $$ \theta $$ is the angle between two vectors.

* Cross product of two vectors is a number.

  $$ \begin{align}
    \vec{A} \times \vec{B}
    & = x_a x_b - y_a y_b \\
    & = \|\vec{A}\| \|\vec{B}\| \sin\theta
  \end{align} $$

  Cross product $$ \vec{A} \times \vec{B} $$ is the area of the parallelogram with two of its sides formed by $$ \vec{A} $$ and $$ \vec{B} $$.
