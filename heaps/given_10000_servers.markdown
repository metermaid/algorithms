# Given 10,000 servers containing a Billion integers each how would you find how to find the median
You might be able to use counting sort if you could bound the inputs

use counting sort to put values in a hash ON then add inputs until you reach half/median ON

1. Create a max heap for the lower half and a min heap for the top half (ones that keep track of size)
2. For the first two integers, add the smaller to the max and the larger to the min
3. then add a number to the max heap if it’s smaller than its root or min heap otherwise
4. if the sizes are different by two/more then pop from the larger heap and add it to the other one
5. once you’re done if the heaps are equally sized, average the roots, otherwise take the root of the larger heap
