# Finding the kth largest element using a min-heap
# We start counting at one right hahahaha
def kth_largest(arr, k)
   return nil if k > arr.length
   heaped, remaining = arr[0..k-1], arr[k..-1]
   heap = Heap.new(heaped)
   remaining.each do |n|
      if n > heap.top 
         heap.pop!
         heap.push(n)
      end
   end
   heap.top
end 
p kth_largest([3,4,7,5,1,36,65,23], 3) # 23
p kth_largest([], 3) # nil
p kth_largest([2,12,2,12,2,12,2,12,12], 5) # 12
p kth_largest(["cab", "bca", "kes", "acb"], 4) # "acb"