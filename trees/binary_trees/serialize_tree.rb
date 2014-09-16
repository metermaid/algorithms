# serialize and deserialize tree
require 'yaml'
def serialize_tree(tree)
   YAML.dump(tree)
end
def deserialize_tree(serialized_tree)
   YAML.load(serialized_tree)
end

p serialize_tree(t1) # tre
p serialize_tree(t3) # true
p serialize_tree(nil)
p deserialize_tree(serialize_tree(t3))