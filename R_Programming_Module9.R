# dylan hernandez-alamilla
# LIS 4370
# setwd("~/Documents/R_Programming")
# getwd()

# install.packages("AER")
library("AER")
data("Guns", package = "AER")
head(Guns)
# install.packages("lattice")
library("lattice")
# install.packages("ggplot2")
library("ggplot2")
# Base R plots
plot(jitter(as.numeric(Guns$law), amount = 0.15), Guns$violent,
     main = "Base: x vs. y",
     xlab = "Gun Law",
     ylab = "Violent Crime Rates")

hist(Guns$murder,
     xlab = "Murder Rates",
     main = "Distribution of murder rates")
# murder rate is right skewed and shows that the murder rate floats around
# 0-20 murders per 100,000 people with a far higher number of observations
# than in the outliers of higher murder rates (40-80 murders per 100,000 people)

# Lattice R plots
xyplot(prisoners ~ violent | law,
       data = Guns,
       main = "Lattice: y vs. x by group")
bwplot(murder ~ factor(law),
       data = Guns,
       main = "Lattice: z by category")
# GGPlot R plots
ggplot(Guns, aes(x = violent, y = prisoners, color = law)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: y vs. x with trend by group")
ggplot(Guns, aes(x = violent)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ law) +
  labs(title = "ggplot2: violent rates ")

