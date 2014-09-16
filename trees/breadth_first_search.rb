# BFS (O(|E| + |V|) linear)
def bfs(tree,n)
   visited = []
   queue = [tree]
   while (!queue.empty?) do
       node = queue.shift()
       if node != nil
           visited.push(node)
           return true if node.value == n
           if node.nodes != nil
               node.nodes.each { |d|
                   queue.unshift(d) unless visited.include?(d)
               }
           end
       end
   end
   return false
end
 
p bfs(t1, 4) # true
p bfs(nil, 4) # false
p bfs(t1, 5) # false
p bfs(t3, 5) # false
p bfs(t3, 4) # true