# Permutations of a String
def permutations(string)
   permutation_helper(string.scan(/./), [])
end
 
def permutation_helper(chars, strings)
   if chars.length == 0
       strings
   elsif strings.length == 0
       c = chars.pop()
       permutation_helper(chars, [c])
   else
       c = chars.pop()
       new_strings = []
       strings.each do |s|
           p = (0..s.length).map { |n| s[0,n] + c + s[n,s.length] }
           new_strings = new_strings + p
       end
       permutation_helper(chars, new_strings)
   end
en
def permutations(string)
   string.chars.to_a.permutation.map(&:join)
end
 
p permutations("a") # ["a"]
p permutations("as") # ["as", "sa"]
p permutations("ask") # ["kas", "ksa", "aks", "ska", "ask", "sak"]