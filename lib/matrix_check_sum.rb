# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  return false if matrix.length == 0

  row_sum = 0
  column_sum = 0
  i = 0
  j = 0

  while i < matrix.length
    while j < matrix.length
      row_sum += matrix[i][j]
      column_sum += matrix[j][i]
      j += 1
    end
    i += 1
  end
  return true if row_sum == column_sum
  return false
end

# my_matrix = [[1, 10, 1, 32],
#           [2, 3, 12, 4],
#           [2, 3, 12, 4],
#           [9, 4, 9, 5]]
#
# puts matrix_check_sum(my_matrix)
