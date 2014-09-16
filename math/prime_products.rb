# Prime Products
# Assuming that the list is unsorted and contains duplicates,

def prime_products(primes)
    result = [1]
    primes.each_with_index do |p,i|
        result = result + result.map {|k| k * p}
end
    return result
end

def prime_products(primes)
    result = [1]
    primes_hash = primes.inject({}) { |h,v| h[v] ||= 0; h[v] += 1; h }
    primes_hash.each_with_index do |p,i|
        p[1].times {|n| result = result + result.map {|k| k * p[0] ** n } }
    end
    return result
end

def prime_products(primes)
    result = [1]
    primes_product = primes.product(primes)
    primes_product.each do |p|
        result << p[0] * p[1]
    end
    result
end

p prime_products([1,2,3]) # 1,2,3,6
p prime_products([2,3,11]) # 1, 11, 2, 22, 3, 33, 6, 66
p prime_products([1,3,3,2]) # 1, 11, 2, 22, 3, 33, 6, 66