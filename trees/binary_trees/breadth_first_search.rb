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
 
puts "BFS"
 
puts bfs(t1, 4) # true
puts bfs(nil, 4) # false
puts bfs(t1, 5) # false
puts bfs(t3, 5) # false
puts bfs(t3, 4) # true