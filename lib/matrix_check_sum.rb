# Thought process: sum up each row and column and nth index, compare if they equal
# Time complexity: O(mn) - m is the length of matrix and n is the length of matrix[0]
# Space complexity: O(1)
def matrix_check_sum(matrix)
  i = 0
  while i < matrix.length
    sum_row = 0
    sum_column = 0
    j = 0
    while j < matrix.length
      sum_row += matrix[i][j]
      sum_column += matrix[j][i]
      j += 1
    end
    return false if sum_row != sum_column
    i += 1
  end
  return true
end
