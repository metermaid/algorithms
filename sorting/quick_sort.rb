# quicksort (n log n / n^2, not stable, in place)
def quick_sort(arr)
    return arr if arr.length <= 1
    arr.shuffle! # guarantees performance
    quick_sort_helper(arr, 0, arr.length - 1)
end

def quick_sort_helper(arr, low, high)

    return arr if low >= high

    lower_bound, upper_bound = low, high
    pivot, i = arr[low], low

    while i <= upper_bound
        if arr[i] < pivot
            arr[i], arr[lower_bound] = arr[lower_bound], arr[i]
            i += 1
            lower_bound += 1
        elsif arr[i] > pivot
            arr[i], arr[upper_bound] = arr[upper_bound], arr[i]
            upper_bound -= 1
        else
            i += 1
        end
    end

    quick_sort_helper arr, low, lower_bound - 1
    quick_sort_helper arr, upper_bound + 1, high
end

p quick_sort([3,2,1]) # [1,2,3]
p quick_sort([3]) # [3]
p quick_sort([1,1,-2,-2,0,0]) # [-2,-2,0,0,1,1]
p quick_sort([9,8,7,6,5,4,3]) # [3,4,5,6,7,8,9]
p quick_sort(["arr", "rar", "arr"]) # ["arr", "arr", "rar"]