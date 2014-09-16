# Fibonacci
def fibonacci(n)
 fibonacci_helper(0,1,n)
end
def fibonacci_helper(a,b,n)
   if n == 0
       a
   else
       fibonacci_helper(b,a+b,n-1)
   end
end

def fibonacci(n) # recursive non-optimal solution… 2^n
if (n == 0 || n == 1) 
   return n
else
   return fibonacci(n - 1) + fibonacci(n - 2)
end
end
def fibonacci(n)
  n1 = 0
  n2 = 1
  n.times do |i|
    n1, n2 = n2, n1 + n2
  end
  return n1
end
 
p fibonacci(0)==0
p fibonacci(1)==1
p fibonacci(3)==2
p fibonacci(7)==13
