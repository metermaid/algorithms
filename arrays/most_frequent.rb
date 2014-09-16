# most frequent entry in array?
# what if there’s a tie? what if there aren’t any entries?
def most_frequent (arr)
  maxes = []
  return maxes if arr.empty?
  counts = arr.reduce(Hash.new(0)) {|hash, entry| hash[entry] += 1; hash }
  counts.each { |k, v| maxes << k if v == counts.values.max }
  return maxes
end

p most_frequent([3,3,3,4,4,4,4]) # [4]
p most_frequent([3,3,3,3,4,4,4,4]) # [3,4]
p most_frequent([]) # []