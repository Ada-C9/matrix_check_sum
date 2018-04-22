# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

require "pry"
def matrix_check_sum(matrix)

  matrix.length.times do |i|
    row_tally = 0
    column_tally = 0

    matrix.length.times do |j|
      row_tally += matrix[i][j]
      column_tally += matrix[j][i]
    end
    return false if column_tally != row_tally
  end

  return true
end
