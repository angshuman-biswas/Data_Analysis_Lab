# 4. (a) Import the Iris dataset
dataset <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"),
                    header=FALSE, col.names=c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width","Species"))

# (b) As you may know, this dataset contains three kinds of flowers: Iris-Setosa, Iris-
#   Versicolor, and Iris-Virginica, having the following four features: sepal length, sepal
# width, petal length, petal width. choose only two features: petal length, petal width,
# and plot the data points in a 2-D space where the x-axis and the y-axis represent the
# petal length and the petal width, respectively.
plot(dataset$Petal.Length, dataset$Petal.Width, xlab="Petal Length",
     ylab="Petal Width", main="Petal Length vs. Petal Width", pch = 20, col = "darkgreen")

# (c) Compute the similarity measure between Iris-Setosa and Iris-Versicolor; and Iris-
# Versicolor and Iris-Virginica; and Iris-Setosa and Iris-Virginica considering only two
# features petal length and petal width

library(lsa)

setosa <- dataset[dataset$Species=="Iris-setosa", 3:4]
versicolor <- dataset[dataset$Species=="Iris-versicolor", 3:4]
virginica <- dataset[dataset$Species=="Iris-virginica", 3:4]

colnames(setosa) <- c("Set.PL", "Set.PW")
colnames(versicolor) <- c("Ver.PL", "Ver.PW")
colnames(virginica) <- c("Vir.PL", "Vir.PW")

setosa <- as.matrix(setosa)
versicolor <- as.matrix(versicolor)
virginica <- as.matrix(virginica)

setosa_versicolor <- cosine(cbind(setosa, versicolor))
versicolor_virginica <- cosine(cbind(versicolor, virginica))
setosa_virginica <- cosine(cbind(setosa, virginica))

# Print the cosine similarities
setosa_versicolor
versicolor_virginica
setosa_virginica
