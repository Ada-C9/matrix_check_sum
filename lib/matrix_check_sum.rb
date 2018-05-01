# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  row = 0
  length = matrix.length

  while row < length
    sum_row = 0
    sum_column = 0

    column = 0
    while column < length
      sum_row += matrix[row][column]
      sum_column += matrix[column][row]
      column += 1
    end

    if sum_row != sum_column
      return false
    end
    
    row += 1
  end

  return true
end
