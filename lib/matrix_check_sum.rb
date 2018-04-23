# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  matrix_check_helper(matrix, 0, 0, true)
end

private

# NOTE: I don't like this solution, as I think it should return earlier. But I'm
# still working out how to do without resorting to poor style (no boolean zen)
def matrix_check_helper(matrix, row, column, has_equal_sums)
  if !has_equal_sums || row == matrix.length
    return has_equal_sums
  else
    has_equal_sums = get_has_equal_sums?(matrix, row, column)
    matrix_check_helper(matrix, row + 1, column + 1, has_equal_sums)
  end
end

def get_row_sum(matrix, row)
  sum = 0
  matrix.length.times { |column_index| sum += matrix[row][column_index] }
  return sum
end

def get_has_equal_sums?(matrix, row, column)
  sum_difference = get_row_sum(matrix, row)
  matrix.length.times do |row_index|
    sum_difference -= matrix[row_index][column]
    break if sum_difference < 0
  end
  return sum_difference == 0
end
