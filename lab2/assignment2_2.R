# (a) Import iris dataset.
data("iris")
print(head(iris, 4))


# (b) Find the mean of all the metrics (Sepal.Length Sepal.Width Petal.Length Petal.Width)
for (col in names(iris)) {
  if (class(iris[0,col]) == "numeric") {
    print(paste("Mean ", col, " = ", mean(iris[,col])))
  }
}

# (c) Compute the sum of all the metrics across species and group by species.
aggdata1 <- aggregate(iris[,1:4], by=list(iris$Species), FUN=sum, na.rm=TRUE)
print(aggdata1)

# (d) Compute the count of all the metrics across species and group by species.
aggdata2 <- aggregate(iris[,1:4], by=list(iris$Species), FUN=length)
print(aggdata2)

# (e) Compute the maximum of all the metrics across species and group by species.
aggdata3 <- aggregate(iris[,1:4], by=list(iris$Species), FUN=max, na.rm=TRUE)
print(aggdata3)