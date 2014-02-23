---
layout: algorithms
title: Binary search tree
---

## Binary search tree - BST

Let `x` be a node in a BST. If `y` is a node in the left subtree of `x`, then `y.key < x.key`. If `y` is a node in the right subtree of `x`, then `y.key > x.key`.

~~~
class Node < Struct.new(:key, :parent, :left, :right)
end

class BST
  attr_accessor :root

  def search(key)
    node = root

    while !node.nil?
      return node if node.key == key
      node = key < node.key ? node.left : node.right
    end
  end

  def insert(key)
    root = Node.new(key) if root.nil?

    node = root
    while key != node.key
      node =  key < node.key ? (node.left ||= Node.new(key)) : (node.right ||= Node.new(key))
    end
  end

  def delete(key)
    node = search(key)

    return if node.nil?

    if node.left && node.right

    elsif node.left

    elsif node.right

    else
      replace_node(node)
    end
  end

  private

  def replace_node(node, new_node = nil)
    parent = node.parent
    return if parent.nil?
    parent.left == node ? parent.left = new_node : parent.right = new_node
  end
end
~~~