# interleave 2 lists
def interleave(list1, list2)
  # we need to be non-destructive...
  list1 = list1.dup
  list2 = list2.dup
  head, list1 = list1, list1.rest
  curr = head
  until list1.nil? || list2.nil?
    new_node, list2 = list2, list2.rest
    curr.rest = new_node
    curr = new_node
    new_node, list1 = list1, list1.rest
    curr.rest = new_node
    curr = new_node
  end
  curr.rest = list1.nil? ? list2 : list1
  return head 
end

test = LinkedList.from_array([0, 1, 2])
test2 = LinkedList.new(3)
p interleave(test, test2)
p interleave(test2, test) 
