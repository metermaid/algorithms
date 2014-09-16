# division without +, - or *
# ints only?
def divide(numerator, denominator)
   case denominator
   when 0
      raise "Can't divide by zero"
   when 1
      return numerator
   when 2
      return numerator >> 1
   when numerator
      return 1
   else
      positive = (numerator > 0 && denominator > 0) || (numerator < 0 && denominator < 0)
      result = Math::E**(Math.log(numerator.abs) - Math.log(denominator.abs))
      result = result.round
      return positive ? result : -result
   end
end

p divide(14, 1) # 14
p divide(14, 14) # 1
p divide(14, 2) # 7
p divide(14, -2) # -7
p divide(-14, 2) # -7
p divide(-14, -2) # 7
p divide(3, 2) # 1
p divide(9, 3) # 3
p divide(3, 0) # ERROR