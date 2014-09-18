#Convert into a circular doubly linked list

class Tree
   attr_reader :value
   attr_accessor :left
   attr_accessor :right
  
   def initialize(n, l = nil, r = nil)
       @value = n
       @left = l
       @right = r
   end
end

t1 = Tree.new(4)
t2 = Tree.new(6, t1)
t3 = Tree.new(8, t2, Tree.new(20))
t4 = Tree.new(8, Tree.new(20), t2)

class LinkedList # DOUBLY. CIRCULAR. THE WORKS.
  attr_accessor :first, :rest, :previous
  include Enumerable

  def initialize(value, rest=nil, previous=nil)
    self.first = value
    self.rest = rest
    self.previous = previous
  end
  def each(&block)
    yield self
    rest.each(&block) if rest
  end
  def self.from_array(arr)
    next_node = nil
    last_node = nil
    arr.reverse_each do |v|
      node = self.new(v, next_node)
      last_node = node unless last_node
      next_node.previous = node if next_node
      next_node = node
    end
    next_node.previous = last_node
    # last_node.rest = next_node # makes circular, but also can't print out if so
    return next_node
  end
  def inspect
    self.reduce("[") {|string, v| v.rest.nil? ? "#{string}#{v.first}" : "#{string}#{v.first}," } + "]"
  end
end
t = LinkedList.from_array([0, 1, 2])
p t
p t.previous

def tree_to_list(tree)
   stack = []
   prev, root = nil
   while (!stack.empty? || tree) do
      if tree
         stack.push(tree)
         tree = tree.left
      else
         tree = stack.pop()
         ll_node = LinkedList.new(tree.value)
         root = ll_node unless root
         prev.rest = ll_node if prev
         ll_node.previous = prev
         prev = ll_node
         tree = tree.right
      end
   end
   #ll_node.rest = root # makes circular, but also can't print out if so
   root.previous = ll_node
   return root
end

p tree_to_list(t4)