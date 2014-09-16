# DFS (O(|E| + |V|) linear)
def dfs_recursion(tree,n)
   if tree == nil
       return false
   elsif tree.value == n
       return true
   elsif tree.nodes != nil
       return tree.nodes.any? { |node| dfs_recursion(node,n) }
   else
   return false
   end
end
 
p dfs_recursion(t1, 4) # true
p dfs_recursion(nil, 4) # false
p dfs_recursion(t1, 5) # false
p dfs_recursion(t3, 5) # false
p dfs_recursion(t3, 4) # true

 def dfs(tree,n)
   visited = []
   stack = [tree]
   while (!stack.empty?) do
       node = stack.pop()
       if node != nil
           visited.push(node)
           return true if node.value == n
           if node.nodes != nil
               node.nodes.each { |d|
                   stack.push(d) unless visited.include?(d)
               }
           end
       end
   end
   return false
end
 
p dfs(t1, 4) # true
p dfs(nil, 4) # false
p dfs(t1, 5) # false
p dfs(t3, 5) # false
p dfs(t3, 4) # true