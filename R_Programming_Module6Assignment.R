# dylan hernandez-alamilla
# LIS 4370
# setwd("~/Documents/R_Programming")
getwd()
# 1.
A = matrix(c(2,0,1,3), ncol=2)
B = matrix(c(5,2,4,-1), ncol=2)
# matrices fit the space they are told, and in this instance the number of 
# columns is specified as 2. This causes the four elements in matrix A and B to
# fit into the matrix by those two columns, resulting in a 2 by 2 matrix
str(A)
A
B
A + B
# adding the matrices A and B results in a matrix of the same
# size (a 2 by 2 matrix) and is calculated by adding all of the
# singular rows and columns with the same row and column of an entry
A - B
# A - B subtracts matrix B from matrix A and similarly subtracts A's entries
# by the entries in the same position of B
# 2. 
x = c(4,1,2,3)
diag(x)
# the diagonal matrix was created by setting a vector "x" to the intended
# elements of 4,1,2,3 and then using the diagonal function on x
# noticeably, because the matrix is a diagonal, everything surrounding it is 
# zero and the number of rows and columns correlates to the number of elements
# in the vector x
# 3.
x2 <- c(3,3,3,3,3)
myMatrix <- diag(x2)
myMatrix
myMatrix[1, 2:5] <- 1
myMatrix
myMatrix[2:5, 1] <- 2  
myMatrix
# I was able to make my diagonal matrix with the 3's across in a 
# five by five matrix using the diag() function
# next I used indexing to edit the matrix that I had created and targeted only 
# the 1st row and 2nd to 5th columns to change to 1 and the 2nd to 5th rows on
# column 1 to change to 2
# I think this was a good way to learn how the matrix can be manipulated after
# being created whether it's added, subtracted, or specific rows or columns are
# targeted for changes. 
