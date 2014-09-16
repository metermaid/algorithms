# reverse
def reverse!(linked_list)
  return linked_list if linked_list.nil?
  prev_node = nil
  until linked_list == nil
    next_node = linked_list.rest
    linked_list.rest = prev_node
    prev_node = linked_list
    linked_list = next_node
  end
  return prev_node
end

test = LinkedList.from_array([0, 1, 2])
p test
p reverse!(test)
p reverse!(nil)
p reverse!(LinkedList.new(3))