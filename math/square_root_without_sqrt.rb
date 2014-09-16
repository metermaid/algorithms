# square root without built in sqrt
def square_root(num)
   result = 10**(Math.log10(num)/2)
end

# heron's method
def square_root(num, precision = 3)
   num = num.to_f
   guess = num/2
   square_root_helper(guess, num, precision)
end
def square_root_helper(guess, num)
   until (guess**2 - num).abs <= 10**-precision
      guess = (guess + num/guess)/2
   end
   return guess.round(precision)
end

p square_root(4) # 2
p square_root(9) # 3
p square_root(2) # ~1.414