# Searching
def search_binary_tree(root, key)
    return false if root.nil?
    return true if root.value == key
    search_binary_tree(root.left, key) || search_binary_tree(root.right, key)
end

def search_bst(root, key)
    return false if root.nil?
    return true if root.value == key
    key < root.value ? search_binary_tree(root.left, key) : search_binary_tree(root.right, key)
end

p search_binary_tree(t1, 4) # true
p search_binary_tree(t3, 4) # true
p search_binary_tree(t4, 4) # false
p search_binary_tree(nil, 4) # false
p search_bst(t1, 4) # true
p search_bst(t3, 4) # true
p search_bst(t4, 4) # false
p search_bst(nil, 4) # false