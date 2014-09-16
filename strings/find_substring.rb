# Find substring
my_string = "Hello World"
find_this = "Hello"
p my_string.include? find_this
p true if my_string =~ /#{find_this}/i # truthy value, but prints index
p true if my_string[find_this] # truthy value, but prints searched string