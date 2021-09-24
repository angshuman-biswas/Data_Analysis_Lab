# Take a random sample from the normal distribution, and plot the estimated density function.
y <- rnorm(100)
plot(density(y), type = "l", main = "Density Function Plot")

# Now take repeated samples of size 4, calculate the mean for each such sample, and plot the density.
x <- numeric(100)

for(i in 1:100) {
  x[i] <- mean(rnorm(4))
}

lines(density(x), col = "darkred")

# Repeat the above: taking samples of size 9, and of size 25.
y <- numeric(100)

for(i in 1:100) {
  y[i] <- mean(rnorm(9))
}

lines(density(y), col = "blue")

z <- numeric(100)

for(i in 1:100) {
  z <- mean(rnorm(25))
}

lines(density(z), col = "orange")