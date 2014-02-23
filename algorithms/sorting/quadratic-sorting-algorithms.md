---
layout: algorithms
title: Quadratic sorting algorithms
---

## Quadratic sorting algorithms

Sorting algorithms that run in $$ \Theta(n^2) $$ time complexity.

### Insertion sort

~~~
require 'rspec'

def insertion_sort(a)
  a.size.times do |i|
    current_element = a[i]
    current_index = i

    (i - 1).downto(0) do |j|
      a[j] > current_element ? a[j + 1] = a[j] : break
      current_index -= 1
    end

    a[current_index] = current_element
  end
  a
end

describe 'insertion sort' do
  it 'should sort empty array' do
    expect(insertion_sort([])).to eq []
  end

  it 'should sort single-element array' do
    expect(insertion_sort([1])).to eq [1]
  end

  it 'should sort 2-element array' do
    expect(insertion_sort([2, 1])).to eq [1, 2]
  end

  it 'should sort multiple-element array' do
    expect(insertion_sort((0..10).to_a.shuffle)).to eq (0..10).to_a
  end
end
~~~

### Bubble sort