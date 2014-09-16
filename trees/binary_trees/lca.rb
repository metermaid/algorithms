# LCA
# 1. what do i return if there is none??
def lca(root, a, b)
  return nil if root.nil?
  return root if root == a || root == b
  left = lca(root.left, a, b)
  right = lca(root.right, a, b)

  return root unless left.nil? || right.nil?

  return left.nil? ? right : left
end

p lca(t3, t2, t1) # t2