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

puts dfs_recursion(t1, 4) # true
puts dfs_recursion(nil, 4) # false
puts dfs_recursion(t1, 5) # false
puts dfs_recursion(t3, 5) # false
puts dfs_recursion(t3, 4) # true

def dfs(tree,n)
    visited = []
    stack = [tree]
    while (!stack.empty?) do
        node = stack.pop()
        if node != nil
            visited.push(node)
            return true if node.value == n
            stack.push(node.left) unless visited.include?(node.left)
            stack.push(node.right) unless visited.include?(node.right)
        end
    end
    return false
end
 
puts "dfs"
 
puts dfs(t1, 4) # true
puts dfs(nil, 4) # false
puts dfs(t1, 5) # false
puts dfs(t3, 5) # false
puts dfs(t3, 4) # true