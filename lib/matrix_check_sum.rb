# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  al = matrix.length - 1
  length = matrix.length
  n = 0
  x = 0
  row_sum = 0
  column_sum = 0

  while x < matrix.length

    while n < matrix.length
      column_sum += matrix[al-n][al]
      n+=1
    end
    n = 0

    while n < matrix.length
      row_sum +=  matrix[al][al-n]
      n+=1
    end


    if row_sum != column_sum
      return false
    end
    n = 0
    x += 1
  end
  return true
end


#leverage sorting, hashes
