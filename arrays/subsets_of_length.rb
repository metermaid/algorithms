# return all possible subsets of length n
def subsets_of_length(arr, n)
  arr.combination(n).to_a
end
p subsets_of_length([1,2,3], 1) # [[1], [2], [3]]
p subsets_of_length([1,2,3], 2) # [[1,2], [1,3], [2,3]]
p subsets_of_length([1,2,3], 5) # []
p subsets_of_length([], 1) # []