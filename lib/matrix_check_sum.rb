# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  size = matrix[0].length
  x = 0

  while x < size
    i = 0
    sum_across = 0
    sum_down = 0

    while i < size
      sum_across += matrix[x][i]
      sum_down += matrix[i][x]
      i += 1
    end

    return false if sum_across != sum_down
    x += 1
  end

  return true
end
