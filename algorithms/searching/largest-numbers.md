---
layout: algorithms
title: Largest numbers
---

## Largest numbers

### Find k-th number

* Quick select is similar to quick sort. Select a random number and try to put it in the correct place. Repeat the steps with half of the array until the pivot number put in k-th index. Time complexity is $$ O(n) $$

* Sort k numbers in to a sorted array then loop through n numbers and push the number in the sorted array if the number is larger than the largets number of the array. Remeber to remove the smallest number of the array. Time complexity is $$ O(klogk + n) $$

* Use a heap.

### Find k-largest numbers

* Sort the array in $$ O(nlogn) $$ time complexity then get k largest numbers out.

* Maintain a min-heap of k elements. Loop through the array, update the heap with new element if the element is bigger than the head of the heap. Time complexity is $$ O(nlogk) $$

* If the array is dense. Maintain a set of all possible values of the array, count all values from the array, and conclude the k-largest number.

### Find k-th numbers of two sorted arrays