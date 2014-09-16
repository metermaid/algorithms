# largest number just smaller with same digits
# what if there is nothing smaller with the same digits?
naive approach, just generate all permutations (n^2??)
def just_smaller(num)
  permutations = num.to_s.chars.permutation.map(&:join).map(&:to_i).uniq.sort
  return permutations.index(num) - 1 >= 0 ? permutations[permutations.index(num) - 1] : nil
end

def just_smaller(num)
  reversed = num.to_s.chars.reverse
  reversed.each_with_index do |char, index|
    reversed[index+1].nil? ? return : next_char = reversed[index+1]
    if char < next_char
      reversed[index], reversed[index+1] = next_char, char
      break
    end
  end
  reversed.reverse.join.to_i
end

p just_smaller(132) # 123
p just_smaller(9873333) # 9837333
p just_smaller(1234) # nil
p just_smaller(333) # nil