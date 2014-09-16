# Making Change
def make_change(amount, coins = [25, 10, 5, 1])
  coins.sort!.reverse!
  optimal_change = {}

  (1..amount).each do |n| 
    if n < coins.min
      optimal_change[n] = []
    elsif coins.include? n
      optimal_change[n] = [n]
    else
      min_oins = coins.reject {|coin| coin > n}.
      map {|coin| [coin] + optimal_change[n - coin] }.
      reject {|change| change.reduce(0, :+) != n }.
      min {|a,b| a.size <=> b.size}
      optimal_change[n] = min_coins || []
    end
  end
  optimal_change[amount]
end
p make_change(43) # [25, 10, 5, 1, 1, 1]
p make_change(25) # [25]
p make_change(0) # nil