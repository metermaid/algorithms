# BFS (O(|E| + |V|) linear)
def bfs(tree,n)
   visited = []
   queue = [tree]
   while (!queue.empty?) do
       node = queue.shift()
       if node != nil
           visited.push(node)
           return true if node.value == n
           queue.unshift(node.left) unless visited.include?(node.left)
           queue.unshift(node.right) unless visited.include?(node.right)
       end
   end
   return false
end
