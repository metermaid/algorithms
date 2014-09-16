# LCM (with GCD inside)
def lcm (arr)
    arr.inject(:lcm)
end
def gcd (a, b)
    until b == 0
        temp = b
        b = a % b
        a = temp
    end
    return a
end
def lcm_manual (a, b)
    a * (b / gcd(a, b))
end
def lcm (arr)
    arr.inject{|result,element| lcm_manual(result,element)}
end
p lcm([2,2]) # 2
p lcm([2, -7]) # 14
p lcm(1..20) # 232792560