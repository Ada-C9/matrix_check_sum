# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
require 'pry'
def matrix_check_sum(matrix)
  row_sums = []
  column_sums = []

  row = 0
  while row < matrix.length
    column = 0
    row_sum = 0
    while column < matrix[row].length
      row_sum += matrix[row][column]
      column += 1
    end
    row_sums << row_sum

    row += 1
  end

  column = 0
  while column < matrix[0].length
    row = 0
    column_sum = 0
    while row < matrix.length
      column_sum += matrix[row][column]
      row += 1
    end
    column_sums << column_sum
    column += 1
  end

  return row_sums == column_sums

end
