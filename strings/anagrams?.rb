# are two strings anagrams
# Case sensitive? Ignore whitespace?
def anagrams?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def anagrams?(word1, word2)
  # is it an anagram by counting lettters
  count_chars(word1) == count_chars(word2)
end
def count_chars(word)
  char_count = Hash.new {|hash, key| hash[key] = 0}
  word.chars.each {|c| char_count[c] += 1 }
  return char_count
end

p anagrams? "fart", "fart" # true
p anagrams? "fart", "arft" # true
p anagrams? "fart", "erft" # false
p anagrams? "fart", "art" # false
p anagrams? "fart", "Fart" # false