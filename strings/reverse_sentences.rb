# Reverse Sentences
# Is it always period separated? are the words inside always space separated?
def reverse_sentences(string)
   string.split(".").map {|sentence| sentence.split(" ").reverse.join(" ") }.join(". ")
end

p reverse_sentences "one two three. four five six." # "three two one. six five four."
p reverse_sentences "one two. four five six. one." # "two one. six five four. one."