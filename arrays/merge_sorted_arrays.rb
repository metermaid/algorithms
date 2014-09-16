# Given a list of k sublists containing n sorted integers, generate output as one sorted list.
# Just use the merge from merge sort
def merge(left, right)
    result = []
    until left.empty? || right.empty?
        if left.first < right.first
            result << left.shift
        else
            result << right.shift
        end
    end
    return result + left + right
end