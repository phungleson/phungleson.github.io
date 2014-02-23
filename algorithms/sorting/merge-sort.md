---
layout: algorithms
title: Merge sort
---

## Merge sort

Apply merge sort to the sublists of an unsorted list then merge all the sorted sublists.

~~~
def merge_sort(array)
  return array if array.size <= 1

  mid = array.size / 2

  merge_sort(array.take(mid))
  merge_sort(array.drop(mid))

  array.size.times do |index|
    array += b.shift and next if a.empty?
    array += a.shift and next if b.empty?

    array[index] = a.first < b.first ? a.shift : b.shift
  end
end
~~~