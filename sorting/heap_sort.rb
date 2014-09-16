# heapsort
class Heap # default is min heap
   attr_reader :size
   def initialize(arr=[], compare = "min")
      @comparator = compare == "min" ? lambda { |x, y| (x <=> y) == -1 } : lambda { |x, y| (x <=> y) == 1 } # min or max heap
      @size = arr.size
      @array = arr
      (@size / 2 - 1).downto(0) {|i| heapify!(i)} if @size > 0
   end
   def heapify!(i)
      l = left(i)
      r = right(i)

      root = l < @size && @comparator[@array[l], @array[i]] ? l : i
      root = r if r < @size && @comparator[@array[r], @array[root]]

      if root != i
         exchange(i, root)
         heapify!(root)
      end
   end
   def push(key)
      i = @size
      @array[i] = key
      while (i > 0) && @comparator[@array[i], @array[parent(i)]]
         exchange(i, parent(i))
         i = parent(i)
      end
      @size += 1
   end
   def top
      @array[0]
   end
   def pop!
      root = @array[0]
      @array[0] = @array[@size - 1]
      @size -= 1
      heapify!(0)
      return root
   end

   private

   def parent(i)
      (i+1)/2 -1
   end
   def left(i)
      (2*i) + 1
   end
   def right(i)
      (2*i)+2
   end
   def exchange(i,j)
      @array[i], @array[j] = @array[j], @array[i]
   end
end

def heapsort(arr)
   result = []
   h = Heap.new(arr)
   until h.size == 0
      result << h.pop!
   end
   result
end 
p heapsort([3,4,7,5,1,36,65,23]) # [1, 3, 4, 5, 7, 23, 36, 65]
p heapsort([]) # []
p heapsort([2,12,2,12,2,12,2,12,12]) # [2, 2, 2, 2, 12, 12, 12, 12, 12]
p heapsort(["cab", "bca", "kes", "acb"]) # ["acb", "bca", "cab", "kes"]