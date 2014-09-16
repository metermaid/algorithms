# largest drop in an array
# what do we output when there is no drop? do you mean consecutively?
# can there be only one item in an array? or 0? 
def find_drop(r)
    if r.empty? || r.length == 1
        return false
    end
    max = r[0]
    max_drop = max - r[1]
    r[1..-1].each do |n|
        max_drop = [max_drop, max - n ].max
        max = [max, n].max
    end
    return max_drop 
end

p find_drop([]) # false
p find_drop([3]) # false
p find_drop([1,2]) # -1
p find_drop([3,2]) # 1
p find_drop([2,2]) # 0
p find_drop([100,20,2]) # 98
