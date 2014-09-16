# Telephone # to Words
nums_to_chars = {
    "2" => "A".."C",
    "3" => "D".."F",
    "4" => "G".."I",
    "5" => "J".."L",
    "6" => "M".."O",
    "7" => "P".."S",
    "8" => "T".."V",
    "9" => "W".."Z",
    "0" => "",
    "1" => ""
}


def possible_words(digits, nums_to_chars)    
    words = []
    
    if digits == ""
        return words
    end
    
    digits.chars.each do |c|
        if c == "#"
            return words
        elsif nums_to_chars.has_key?(c)
            letters = nums_to_chars[c]
            words2 = []
            letters.each do |d|
                if words.empty?
                    words2 << d
                else
                    words.each do |word|
                        words2 << "#{word}#{d}"
                    end
                end
            end
            words = words2
        else
            return "Error"
        end
    end
    return words
end


def possible_words2(digits, nums_to_chars)    
    words = []
    
    if digits == ""
        return words
    end
    
    digits.chars.each do |c|
        if c == "#"
            return words.first.product(*words[1..-1]).map(&:join)
        elsif nums_to_chars.has_key? c
            words << nums_to_chars[c].to_a
        else
            return "Error"
        end
    end
end

def possible_words3(digits, nums_to_chars)    
    words = []
    
    if digits == ""
        return words
    end
    
    digits.chars.each do |c|
        if c == "#"
            return words
        elsif nums_to_chars.has_key? c
            chars = nums_to_chars[c]
            if words.empty?
                words = chars.to_a
            else
                words = words.map { |word| chars.map {|char| "#{word}#{char}"}}.flatten
            end
        else
            return "Error"
        end
    end
end