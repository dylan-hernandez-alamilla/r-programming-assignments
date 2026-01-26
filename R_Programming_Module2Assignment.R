
# dylan hernandez-alamilla
# LIS 4370
# module 2 assignment

#setwd("~/Documents/R_Programming")
#getwd()
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

myMean <- function(assignment2) {
  return(sum(assignment) / length(someData))
} 
myMean
# The given function "myMean" is a function that incorrectly
# has "assignment" in the sum function and "someData" in the 
# length function. Additionally because myMean is simply a function
# it still needs an argument to be passed to it. This is why
# when trying to test the myMean function it simply prints out its
# own contents of what makes it a function

myMean <- function(assignment2) {
  return((sum(assignment2) / length(assignment2)))
}
print(myMean)
myMean(assignment2)
# when the proper arguments are changed (assignment2) for the
# sum and length function, the function is ready to give a mean.
# To perform this the "assignment2" argument is passed to the newly
# edited "myMean" function and so the contents of "assignment2" are
# inserted into the argument and used for calculating the sum of the
# argument divided by the length of the argument, to give the mean
# of 19.25
