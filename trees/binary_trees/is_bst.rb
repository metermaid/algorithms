# Check if one binary tree is a bst.
def is_bst?(tree)
   is_bst_helper(tree, -Float::INFINITY, Float::INFINITY)
end
def is_bst_helper(tree, min, max)
   return true if tree.nil?
   tree.value > min && tree.value < max && is_bst_helper(tree.left, min, tree.value) && is_bst_helper(tree.right, tree.value, max)
end

t1 = Tree.new(4)
t2 = Tree.new(6, t1)
t3 = Tree.new(8, t2, Tree.new(20))
t4 = Tree.new(8, Tree.new(20), t2)
p is_bst?(t1) # tre
p is_bst?(t3) # true
p is_bst?(t4) # false
p is_bst?(nil) # true