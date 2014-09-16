# maximum tree length
def find_height (tree)
  return 0 if tree.nil?
  max_child_height = tree.nodes.nil? ? 0 : tree.nodes.map {|node| find_height(node) }.max
  return max_child_height + 1
end
p find_height(t1) # 1
p find_height(t2) # 2
p find_height(t3) # 3