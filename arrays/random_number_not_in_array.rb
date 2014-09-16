# Given a random number generator, and an array consists of M numbers, generate a number from 1 to N, but not in that array.
# 1. is the array sorted?
# 2. is the array consisting of numbers of 1 to n?
require 'set'
def generate_random_number(arr, n)
  set = arr.to_set
  while set.length != arr.length + 1
    potential_number = 1 + rand(n)
    set.add(potential_number)
  end
  return potential_number
end

arr = [1,2,3,5,6,7]
p generate_random_number(arr, arr.max) # 4
p generate_random_number(arr, arr.max + 1) # 4 or 8
p generate_random_number([], arr.max + 1) # 1..8