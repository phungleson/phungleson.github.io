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
  a.each_with_index do |element, i|
    (i - 1).downto(0) do |j|
      a[j + 1] = element and break if a[j] < element
      a[j + 1] = a[j]
      a[j] = element if j == 0
    end
  end
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