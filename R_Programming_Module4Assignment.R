# dylan hernandez-alamilla
# setwd("~/Documents/R_Programming")
# getwd()
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0,0,1,1,0,0,1,1,1,1)
finaldecision <- c(0,1,0,1,0,1,0,1,1,1)
boxplot(Freq, bloodp, first, second, finaldecision)
localHospital <- data.frame(Frequency, bloodp, first, second, finaldecision)
boxplot(localHospital)
boxplot(Freq)
boxplot(bloodp)
boxplot(first)
boxplot(second)
boxplot(finaldecision)
# the boxplots show interesting distributions for the frequency and bloodp
# variables. The frequency boxplot has some fairly large outliers and the mean
# lingers around 0.4. The bloodp variables has a mean of 100 and also has some 
# large outliers but the distribution is a lot more even. 
localHospitalFitted <- data.frame(Freq = scale(Freq),
                                  bloodp = scale(bloodp),
                                  first = scale(first),
                                  second = scale(second),
                                  finaldecision = scale(finaldecision))
# This displays the boxplots side by side so more information can be obtained,
# the data is scaled so that the difference from "bloodp" and the generally
# binary data can be shown together
boxplot(localHospitalFitted)
# Though the information still doesn't reveal much on the side of the binary 
# variables because the sample size is small, though the first, second and 
# final decision show a leaning towards 1 with their respective keys ("bad",
# "bad", "high")
# histograms-----------
hist(Freq)
hist(bloodp)
hist(first)
hist(second)
hist(finaldecision)
# after reviewing the histograms it is a little clearer how the frequency of 
# visits is on the lower hald of visits. The histogram of "bloodp" reveals why
# the distribution is nearly equal, and the three decisions in binary, again
# show that the data is leaning towards 1 but just barely (although it is much
# easier to see that in histogram form)