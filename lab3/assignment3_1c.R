data("iris")
#print(iris)

#1(c): Create box plot. Visualize how the spread (of Sepal Length) is across various categories
# ( of Species). Fill all the box plots with different color palettes.

data(iris)
boxplot(iris$Sepal.Length~iris$Species,col = "yellow")