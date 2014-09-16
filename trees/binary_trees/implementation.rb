# Binary Trees
# Implementation
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