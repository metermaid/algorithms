# interleave 2 arrays
def interleave(arr1, arr2)
  result = arr1.zip(arr2).flatten.compact
  result.concat(arr2[arr1.length..-1]) if arr2.length > arr1.length
end

p interleave([1,2], [3,4]) # [1,3,2,4]
p interleave([1,2,3], [4,5]) # [1,4,2,5,3]
p interleave([1,2,3], [4,5,6,7]) # [1,4,2,5,3,6,7]