# Balance Parentheses
# parentheses? brackets? etc? just one type?? should i match all parentheses???
def balanced_parentheses?(string)
  stack = []
  string.chars.each do |c|
    return false if !check_parentheses(c, "(", ")", stack) || !check_parentheses(c, "[", "]", stack)
  end
  stack.empty?
end

def check_parentheses(c, first, last, stack)
  if c == first
    stack.push(c)
  elsif c == last
    return false if stack.empty?
    top = stack.pop
    return false if top != first
  end
  return true
end

p balanced_parentheses?("") # true
p balanced_parentheses?("(()") #false
p balanced_parentheses?("([(]))") # false
p balanced_parentheses?("(()())") # true
p balanced_parentheses?("(((())()))") # true
p balanced_parentheses?("[[]]") # true
p balanced_parentheses?(" fdsfds  ,,,   (fdsfsdf      ()  dsadsadas    ) (     #å∂ß∂)") # true