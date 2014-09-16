# compare trees for same elements
# Given two binary trees, return true if they have same elements (irrespective of tree structure)
def compare_trees(t1, t2)
    count_nodes(t1) == count_nodes(t2)
end

def count_nodes(tree)
    node_count = Hash.new(0)
    queue = [tree]

    until queue.empty?
        node = queue.pop
        next if node.nil?
        node_count[node.value] += 1

        queue << node.left << node.right
    end
    return node_count
end
p compare_trees(t1, t1) # true
p compare_trees(t1, t3) # false
p compare_trees(nil, nil) # true
p compare_trees(t3, t3) # true
p compare_trees(t3, t4) # true