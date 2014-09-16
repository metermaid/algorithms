# are two strings are palindromes without doing any preprocessing. (TWO TIMES)
# 1. that isn’t the definition of a palindrome… one string the same backwards and forwards
# 2. can i reverse on the fly ?
# 3. Case sensitive? Ignore whitespace?
def palindrome?(word1, word2)
  word1 == word2.reverse
end

def palindrome?(word1, word2)
  word1.chars.each_with_index do |c, index|
    return false if c != word2[-index-1]
  end
  return true
end

p palindrome? "fart", "fart" # false
p palindrome? "fart", "traf" # true
p palindrome? "fart", "tref" # false
p palindrome? "fart", "ref" # false
p palindrome? "fart", "traF" # false