# all possible subsets of a set or powerset in general (+1)
def power_set(arr)
  arr.length.times.flat_map {|n| arr.combination(n).to_a } << arr
end
p power_set([1,2,3]) # [[], [1], [2], [3], [1,2], [1,3], [2,3], [1,2,3]]
p power_set([]) # [[]]
def all_subsets(arr)
  arr.length.times.flat_map {|n| arr.combination(n).to_a }
end
p all_subsets([1,2,3]) # [[], [1], [2], [3], [1,2], [1,3], [2,3]]
p all_subsets([]) # []