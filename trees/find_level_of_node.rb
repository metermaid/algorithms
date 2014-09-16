# detect levels of all nodes as efficiently as possible
def find_level(tree,n,level=0)
   if tree == nil
       return false
   elsif tree.value == n
       return level
   elsif tree.nodes != nil
       return tree.nodes.collect { |node| find_level(node,n,level+1) }.find{|n| n.is_a? Numeric} || false
   else
      return false
   end
end
 
p find_level(t1, 4) # true
p find_level(nil, 4) # false
p find_level(t1, 5) # false
p find_level(t3, 5) # false
p find_level(t3, 4) # true