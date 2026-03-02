
setwd("~/Documents/R_Programming")
getwd()
# install.packages("datasets")
# library(datasets)
# iris dataset will be used
data("iris")
head(iris,6)
class(iris)
summary(iris)
typeof(iris)
is.object(iris)
isS4(iris)
# attributes(iris)
# generic functions can be assigned to the iris datset
# The iris dataset has the class of data.fame so functions
# are then able to be assigned. For example with the above function summary
# it's really performing summary.data.frame
# 1). How do you tell what OO system (S3 vs. S4) an object is associated with?
# There is a function called "isS4()" that can be used as verification to see
# whether an object is S4. For S3 verification that functino "is.object" can be
# used.
# -------------------------
# 2). How do you determine the base type (like integer or list) of an object?
# The base type of an object can be determined with the "typeof()" function. 
# By using this function on the "iris" dataset it displays that the object is a
# list
# -------------------------
# 3). what is a generic function?
# a generic function is a function that takes the class of an object that it
# is given and uses that to find the appropriate methods for that class
# -------------------------
# 4).What are the main differences between S3 and S4?
# S3 and S4 differ in how strict they are and what is allowed. Generally S3 is 
# not very formal and so many actions can be taken without knowing if the data
# types being used are cohesive. However, in S4 the format is much more formal
# and demands that classes are defined. Because of this S4 allows for validation
# and more careful programming to prevent mistakes or errors
# -------------------------



