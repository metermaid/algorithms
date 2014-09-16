# Nth smallest element
# is it a binary search tree? If it’s not just add it all to a minheap and keep popping until nth O(n)
# Can we store the number of elements in the tree? if so we can get it down to log n by comparing n to the num_elements of the subtree
# Otherwise, In order traversal O(n)
def nth_smallest_bst(root, n)
   return nil if root.nil?
   counter = 0
   nth_helper(root, n, [0]) 
end

def nth_helper(tree, n, count)
   nth_helper(tree.left, n, count) unless tree.left.nil?
   count[0] += 1 # wrapped so we can mutate
   return tree.value if count[0] == n
   nth_helper(tree.right, n, count) unless tree.right.nil?
end

p nth_smallest_bst(t1, 4) # nil, out of bounds
p nth_smallest_bst(t3, 4) # 20
p nth_smallest_bst(t4, 1) # 8
p nth_smallest_bst(nil, 4) # nil

=begin

def find_second_largest(root_node):
    current = root_node

    while current:
        # case: current is largest and has a left subtree
        # 2nd largest is the largest in that subtree
        if current.left and not current.right:
            return find_largest(current.left)
        
        # case: current is parent of largest, and
        # largest has no children, so
        # current is 2nd largest
        if current.right and 
          not current.right.left and 
          not current.right.right:
            return current_node.value

        current = current.right
def find_largest(root_node):
    current = root_node
    while current:
        if not current.right:
            return current.value
        current = current.right
For balanced searching tree, it takes O(log n) in the average case but O(n) if not

   = end