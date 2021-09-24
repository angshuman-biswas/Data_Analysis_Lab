data("iris")
#print(iris)

#1(b): Load the package RColorBrewer and create stacked bar plot to show the comparison
# between cumulative totals across "Species" and "Petal Length". The RColorBrewer
# package is normally used to manage colors with R

#install.packages("RColorBrewer")
library(RColorBrewer)
dataset <- table(iris$Species, iris$Petal.Length)
print(dataset)
barplot(dataset, col= brewer.pal(3, "Set2"), main = "Species vs Petal Length")