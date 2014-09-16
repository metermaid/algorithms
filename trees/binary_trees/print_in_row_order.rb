# Print in Row Order
def print_tree(tree)
   visited = []
   this_row = []
   next_row = []
   unless tree.nil?
       this_row.unshift(tree)
   end
   while !this_row.empty?
       node = this_row.shift
       unless node.nil?
           print "#{node.value} " unless node.nil?
          
           next_row.unshift(node.left)
           next_row.unshift(node.right)
       end
       if this_row.empty?
           print "\n"
           this_row = next_row
           next_row = []
       end
   end
end