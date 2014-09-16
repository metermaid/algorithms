# given matrix, Find a minimum range contain a number from each row
# n log k, where n is # and log is # of rows, b/c of initial merging step
def minimum_range_from_matrix(mat)
  values = mat.flatten.uniq
  candidate = []
  (1..mat.length).each do |n|
    candidate = values.combination(n).to_a.find {|i| check_row_presence(mat, i)}
    return candidate unless candidate.nil?
  end
end

def check_row_presence(mat, arr)
  mat.reject{|row| (row & arr).length > 0 }.empty?
end

p minimum_range_from_matrix([[1],[2]]) # [1,2]
p minimum_range_from_matrix([[1,9],[1,7]]) # [1]
p minimum_range_from_matrix([[1,2,3],[4,5,6],[7,8,9]]) # some arr of length 3