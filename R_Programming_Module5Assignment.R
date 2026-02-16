# setwd("~/Documents/R_Programming")
# getwd()

A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)
dim(A) # dimensions of matrix A show 10 rows and 10 columns (square matrix)
dim(B) # dimensions of matrix B show 10 rows 100 columns (rectangular matrix)

class(A) # data type is a matrix
class(B) # data type is a matrix

# A_Inverse <- solve(A) # error in solving
A_Determinant <- det(A)
A_Determinant # determinant is zero, so the matrix is singular, meaning the rows
# and columns are linearly dependent. When this happens there are no matrices
# that can be multiplied by this matrix to equal the identity matrix
# B_Inverse <- solve(B) # The matrix B is not a square matrix so it cannot have 
# an inverse
# B_Determinant <- det(B) # A warning shows up because rectangular matrices 
# cannot have a determinant

A_Transpose <- t(A) # flipped but remains a 10 by 10 matrix
A_Transpose
# The numbers count up from rows now 
B_Transpose <- t(B)
# B_Transpose
dim(B_Transpose) 
# B becomes a 100 by 10 matrix and the numbers now count up
# from rows
A_Vector <- c(1:10)
B_Vector <- c(1:100)

AtimesVector <- A %*% A_Vector
AtimesVector # R takes the last column of A and multiples it by every row
# (there are only 10 rows) of the vector A. The result is a single column with
# 10 rows 
C <- A %*% B
dim(C) # multiplying the 10x10 and the 10x100 matrix results in a 10x100 matrix
S <- matrix(2:5, nrow = 2)
S
solve(S)
det(S)
newS <- t(S)
t(S)
solve(newS)
det(newS)
# The transpose of the matrix S has the same determinant as the matrix S
