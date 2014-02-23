---
layout: algorithms
title: Heap
---

## Heap

A heap is a tree that satisfies the **heap property**: if `x` is a child node of `y` then `y.key < x.key`. Alternatively, **min-heap** is a heap where the smallest element is always in the root node.

~~~
require 'rspec'

def create_heap(array)
  array.each_with_index do |element, i|
    while i > 0 && array[i/2] < array[i]
      array[i/2], array[i] = array[i], array[i/2]
      i /= 2
    end
  end
end

describe 'create heap' do
  it 'create heap from empty array' do
    expect(create_heap([])).to eq []
  end

  it 'create heap from single item array' do
    expect(create_heap([1])).to eq [1]
  end

  it 'create heap from 2-item array' do
    expect(create_heap([1, 2])).to eq [2, 1]
  end

  it 'create heap from 3-item array' do
    expect(create_heap([1, 2, 3])).to eq [3, 2, 1]
  end

  it 'create heap from multiple-item array' do
    array = (0..10).to_a.shuffle
    create_heap(array)
    expect(array.first).to eq 10
  end
end
~~~