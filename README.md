# Matrix: Check sum
Checks if the sum of values in a given row matches the sum of values in the corresponding column.

## Exercise
* A method takes an input parameter that is a matrix of integers where the number of rows are equal to the number of columns. e.g. 3 rows and 3 columns, 7 rows and 7 columns or *n* rows and *n* columns. The method returns `true` if the sum of all elements in each row matches the sum of all elements in the corresponding column. Otherwise, it returns false.
* e.g. In an input matrix with 2 rows and 2 columns, if the sum of all elements in the row at index 0 matches the sum of all elements in the column at index 0, and the sum of all elements in the row at index 1 matches the sum of all elements in the column at index 1, then the method will return true.
* Consider the example input:
```
1 2 3 4
9 5 3 1
0 3 5 6
0 8 3 6
```
* In the above example case, the method should return true. (Sum of 0th row and 0th column is 10, sum of 1st row as well as the 1st column is 18 and so on.)
* Share and explain the time and space complexities for your solution.
* If you think of multiple approaches to solve the problem, implement the solution which minimizes space complexity. Explain the other approaches, and your decision in comments above the code.
