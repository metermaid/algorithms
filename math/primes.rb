# Primes
# Write a method that will generate N number of primes. Start with a naïve implementation and suggest how it might be optimized.
def primes(n)
   list_primes = []
   (2..n**2).each do |i|
       list_primes << i if is_prime(i, list_primes)
       break if list_primes.length() >= n
   end
   list_primes
end
 
def is_prime(n, list_primes)
   prime = true
   list_primes.each do |j|
       if n % j == 0
           prime = false
           break
       elsif j > Math.sqrt(n)
           break
       end
   end
   prime
end
p primes(23)