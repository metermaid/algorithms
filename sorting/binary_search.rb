# Basic Binary Search (log n / n in stack)
def binary_search (arr, val)
    low = 0
    high = arr.length - 1
    while low <= high
       mid = (low + high)/2
       return mid if arr[mid] == val
       arr[mid] < val ? low = mid + 1 : high = mid - 1
    end
    return false
end

p binary_search([], 3) # false
p binary_search([3],3) # 0
p binary_search([1,1,1,1], 3) # false
p binary_search([1,2,3,4,5,5,5,6,7,8],3) # 2

# picks a number between 0-1000 and wants to know what would I do to guess it  -> binary search!! (logn)