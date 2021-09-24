data("iris")
#print(iris)

#1(d): Create a scatter plot with Species along the Y axis and Petal Length along the X axis

plot(x = iris$Petal.Length,y = iris$Species,
     xlab = "Petal Length (cm)", ylab = "Species",
     main = "Petal Length (cm) vs Species", col = "darkgreen")