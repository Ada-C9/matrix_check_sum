# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
require "pry"

def matrix_check_sum(matrix)
  length = matrix.length
  row_sums = []
  column_sums = Array.new(length, 0)
  row_index = 0
  matrix.each do | row |
    row_sum = 0
    column_index = 0
    row.each do | value |
      row_sum += value
      column_sums[column_index] += value
      column_index += 1
    end
    row_index += 1
    row_sums << row_sum
  end
  length.times do |index|
    if row_sums[index] != column_sums[index]
      return false
    end
  end
  true
end
