# dylan hernandez-alamilla
# LIS 4370
# setwd("~/Documents/R_Programming")
getwd()

require(boot)
# install.packages("plyr")
library(data.table)
library(plyr)
StudentAssignment6 <- read.table("~/Documents/R_Programming/Assignment 6 Dataset.txt",
                                 header = TRUE, sep = ",")
StudentAssignment6

StudentAverage = ddply(StudentAssignment6,"Sex",transform,
                       Grade.Average=mean(Grade))
# gets the average of the male and female students
StudentAverage
sex = StudentAssignment6$Sex
mean(sex)
# does not work because sex has a character datatype
write.table(StudentAverage, "Sorted_Average")
# writes file that contains quotes on everything except the nummerics
write.table(StudentAverage, "Sorted_Average", sep=",")
i_students <- subset(StudentAssignment6, grepl("[iI]", StudentAssignment6$Name,
                                               ignore.case=T))
# students with the letter I or i in their names are moved and created into a 
# new file, including grades, sex, and age
head(i_students)
write.table(i_students, "DataSubset", sep = ",")
# csv file is written from the data, by separating with columns
