# Keys of Max Values
def max_values (hash)
  maxes = []
  hash.each { |k, v| maxes << k if v == hash.values.max }
  return maxes
end