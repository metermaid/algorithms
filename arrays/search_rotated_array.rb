# Given a list of integers which are sorted, but rotated ([4, 5, 6, 1, 2, 3]), search for a given integer in the list.
# 1. what should i return?
# 2. will it always be sorted in ascending order?
# 3. will there be negative numbers?
# 4. will there be duplicates? lol

class RotatedArray
    attr_reader :values
    def initialize(n)
        @values = n
    end
    def find_integer(val, min = 0, max = values.length - 1)
        return false if values.empty?
        return false if min > max
        mid = (min + max)/2
        if val == values[mid]
            return true
        elsif values[min] > values[max] # if rotated
            if values[mid] > values[min] # rotation point is to the right (so right has larger and smaller values; left only has smaller values)
                if val > values[min] && val < values[mid]
                    find_integer(val,min,mid+1)
                else
                    find_integer(val,mid+1,max)
                end
            else # (so left has larger and smaller values; right only has smaller values)
                if val < max && val > mid
                    find_integer(val,mid+1,max)
                else
                    find_integer(val,min,mid+1)
                end
            end
        else # if not rotated
            if val > mid
                find_integer(val, mid + 1, max)
            else
                find_integer(val, min, mid - 1)
            end
        end
    end
end
p RotatedArray.new([]).find_integer(1) # false
p RotatedArray.new([4,5,6,1,2,3]).find_integer(1) # true
p RotatedArray.new([4,5,6,1,2,3]).find_integer(0) # false
