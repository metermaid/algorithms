# multiply two strings: "123 * "45"
# without direct casting I assume?
# can i convert each char into an int to create the int???
def multiply_two_strings(a,b)
   return string_to_int(a) * string_to_int(b)
end

def string_to_int(string)
   digits = []
   result = 0
   string.each_byte { |ascii| digits << (ascii - 48) }
   digits.reverse.each_with_index {|digit, index| result += digit*10**index }
   return result
end


p multiply_two_strings("1","45") # 45
p multiply_two_strings("3","7") # 21