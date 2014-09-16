# contiguous subsequence of integers with the largest sum
# you probably wish I’d memoize, but w/e, addition is such order 1 lol
def subarray_sum(arr)
  max = -Float::INFINITY
  slice = []
  (1..arr.length).each do |n|
    arr.each_cons(n) do |candidate|
      sum = candidate.inject(0) {|x, sum| sum += x}
      slice, max = candidate, sum if sum > max
    end
  end
  return slice
end
p subarray_sum([1,-43,2,3]) # [2,3]
p subarray_sum([1]) # [1]
p subarray_sum([]) # []