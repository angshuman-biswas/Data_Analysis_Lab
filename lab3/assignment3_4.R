#4. Creating a sample of 100 numbers which are incremented by 1.5. Create the binomial distribution and plot it using dotchart.
x <- seq(from = 1,to = 150, by = 1.5)
y <- dbinom(x, 100, 0.5)
plot(x, y, col = "darkred", main = "Binomial distribution")
