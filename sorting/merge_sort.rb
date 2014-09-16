# merge sort (n log n, n added space, stable)
def merge_sort(arr)
    return arr if arr.length <= 1
     
    midpoint = arr.length / 2
    left = merge_sort(arr[0..midpoint-1])
    right = merge_sort(arr[midpoint..-1])
    return merge(left, right)
end

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
p merge_sort([3,2,1]) # [1,2,3]
p merge_sort([3]) # [3]
p merge_sort([1,1,-2,-2,0,0]) # [-2,-2,0,0,1,1]