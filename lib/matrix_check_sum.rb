# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  # check that matrix is n * n

  matrix_col = []
  matrix_row = []

  i = 0
  length = matrix[0].count
  while i < length
    matrix_row = matrix[i]
    matrix.each do |row|
      matrix_col << row[i]
    end

    if calculate_sum(matrix_row) != calculate_sum(matrix_col)
      return false
    end

    i += 1
    matrix_col = []
  end

  return true
end

def calculate_sum(array)
  sum = 0
  array.each do |ele|
    sum += ele
  end
  return sum
end
