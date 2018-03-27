# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)

  n = matrix.size

  row_sum = 0
  column_sum = 0

  n.times do |position|

    n.times do |index|
      row_sum += matrix[position][index]
      column_sum += matrix[index][position]
    end

    return false if row_sum != column_sum

  end

  return true

end
