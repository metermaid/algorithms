# 3sum
# we assume r is an array of numbers
def three_sum(r)
  r.combination(3).select { |a,b,c| a+b+c = 0 }
end
 
p three_sum [1,2]
p three_sum [1,2,-3]
p three_sum [4,-3,0,-1]
p three_sum [1,2,-3, 5,-6]
p three_sum [1,2,3,5,6]
 
def three_sum_new(r)
   r = r.sort.uniq
   result = []
   r[0..-3].each_with_index do |a, i|
       j = i + 1
       k = r.length - 1
       while j < k
           b = r[j]
           c = r[k]
           sum = a+b+c
           result << [a,b,c] if sum == 0
           if sum < 0
               j = j + 1
           else
               k = k - 1
           end
       end
   end
   result
end
 
p three_sum_new []
p three_sum_new [3.12,-3.12,0]
p three_sum_new [1,2,-3]
p three_sum_new [4,-3,0,-1]
p three_sum_new [1,2,-3, 5,-6]
p three_sum_new [1,2,3,5,6]