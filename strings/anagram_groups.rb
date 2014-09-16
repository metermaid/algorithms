# Given a list of strings, return a list of lists of strings, which represents the list grouping strings by whether they are anagrams of one another

def anagram_groups(words)
    result = Hash.new { |hash, key| hash[key] = [] }
    words.each { |word| result[word.split.sort].push(word) }
    return result.values
end

p anagram_groups(["aba"]) # [["aba"]]
p anagram_groups(["aba", "baa", "aca"]) # [["aba", "baa"],["aca"]