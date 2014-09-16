# DFS (O(|E| + |V|) linear)
def dfs_recursion(tree,n)
   if tree == nil
       return false
   elsif tree.value == n
       return true
   else
       return dfs_recursion(tree.left,n) || dfs_recursion(tree.right,n)
   end
end