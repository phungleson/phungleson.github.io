---
layout: algorithms
title: Merge sort
---

## Merge sort

Apply merge sort to the sublists of an unsorted list then merge all the sorted sublists.

~~~
require 'rspec'

def merge_sort(a)
  return a if a.size <= 1

  mid = a.size / 2

  b = merge_sort(a.take(mid))
  c = merge_sort(a.drop(mid))

  a.each_with_index do |element, index|
    a[index] = b.shift and next if c.empty?
    a[index] = c.shift and next if b.empty?
    a[index] = b.first < c.first ? b.shift : c.shift
  end
end

describe 'merge sort' do
  it 'sort empty array' do
    expect(merge_sort([])).to eq([])
  end

  it 'sort single item array' do
    expect(merge_sort([1])).to eq([1])
  end

  it 'sort two-item array' do
    expect(merge_sort([2, 1])).to eq([1, 2])
  end

  it 'sort multiple-item array' do
    expect(merge_sort((0..10).to_a.shuffle)).to eq((0..10).to_a)
  end
end
~~~