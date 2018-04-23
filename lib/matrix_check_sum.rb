# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  length = matrix.length

  iteration = 0

  while iteration < length do
    x = 0
    y = 0
    row_sum = 0
    column_sum = 0
    
    while x < length do
      row_sum += matrix[iteration][x]
      x += 1
    end
    while y < length do
      column_sum += matrix[y][iteration]
      y += 1
    end

    return false if row_sum != column_sum

    iteration += 1
  end

  return true
end
