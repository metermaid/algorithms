# Implementation
class Tree
   attr_reader :value
   attr_accessor :nodes
  
   def initialize(n, nodes = nil)
       @value = n
       @nodes = nodes
   end
end
 
t1 = Tree.new(4)
t2 = Tree.new(6, [t1])
t3 = Tree.new(8, [nil, nil, Tree.new(20, [t1, nil, nil])])