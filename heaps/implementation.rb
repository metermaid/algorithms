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
t = Heap.new([3,4])
p t.size
