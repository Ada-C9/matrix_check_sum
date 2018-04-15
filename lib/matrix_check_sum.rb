# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)

  row_array = []
  column_array = []

  matrix.each do |row|
    row_sum = 0
    row.each do |element|
      row_sum += element
    end
    row_array << row_sum
  end

  column_length = matrix[0].length
  j = 0
  until j == column_length
    column_sum = 0
    matrix.each do |row|
      column_sum += row[j]
    end
    j += 1
    column_array << column_sum
  end

  if row_array == column_array
    return true
  else
    return false
  end

end
