# encoded message containing digits, determine the total number of ways to decode it (3)
# is 0 an error?
# uses the mapping {A: 1, … Z: 26}
def numDecodings(s)
    s = s.chars.to_a
    if s.empty? || s[0] == "0"
        return 0
    end
    ways = [] # ways[n] is num decodings for s[0..n]
    ways[0] = 1 # we know there is one at least
    s.each_with_index do |c, i|
        if c == "0" && (s[i - 1] == "1" || s[i - 1] == "2")
            ways[i] = ways[i - 1]
        elsif c ==  "0"
            return 0
        elsif i >= 2 && (s[i - 1] == "1" || (s[i - 1] == "2" && c.to_i < 6))
            ways[i] = ways[i - 1] + ways[i - 2]
        else
            ways[i] = ways[i - 1]
        end
    end
    return ways[s.length - 1]
end

p numDecodings("") # 0
p numDecodings("0") # 0
p numDecodings("123") # 3
p numDecodings("102") # 1
p numDecodings("302") # 0