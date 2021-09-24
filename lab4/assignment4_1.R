# 1. Perform the following tasks :
# In R a simple bar graph can be used to model the probability distribution function.
# Take a random vector and probability associated with it and plot it with a bar graph.
data <- table(sample(x = 1:5, size = 100, replace = TRUE, prob = c(0.1,0.25,0.4,0.1,0.15)))
barplot(data, col = "lightblue", main = "Random vector distribution")

# (b) For the above problem create a cumulative frequency table and plot the cumulative
# frequency against each sample point mentioned in the vector.
cfreq_data <- cumsum(data)
barplot(cfreq_data, col = "orange", main = "Random vector cumulative freq distribution")


# (c) Using some simple commands in R generate the probability values for the binomial
# distribution for the number of children in 10 with blue eyes using p = 0.16. Plot the
# obtained result.
probabilities <- dbinom(x = c(1:10), size = 10, prob = 0.16)
plot(1:10, probabilities, type = "l", xlab = "No. of students", ylab = "probabilities", main = "Binomial distribution", sub = "p = 0.16")

# (d) Run the above example with probabilities that a child has blue eyes is 0.05, 0.2, 0.5,
# and 0.8 and see how this changes the distribution.
plot(1:10, dbinom(x = c(1:10), size = 10, prob = 0.05), type = "l", col = "blue", xlab = "No. of students", ylab = "probabilities", main = "Binomial distribution", sub = "p = 0.05")
plot(1:10, dbinom(x = c(1:10), size = 10, prob = 0.2), type = "l", col = "orange", xlab = "No. of students", ylab = "probabilities", main = "Binomial distribution", sub = "p = 0.2")
plot(1:10, dbinom(x = c(1:10), size = 10, prob = 0.5), type = "l", col = "red", xlab = "No. of students", ylab = "probabilities", main = "Binomial distribution", sub = "p = 0.5")

# (e) Consider you have a vector 0:10. Compute poisson distribution with p=0.2. Plot it
# to visualize the distribution.
vec <- 0:10
poisson <- dpois(x = vec, 0.2)
plot(x = vec, y = poisson, type = "l", col = "purple", xlab = "",  ylab = "Probability", main = "Poisson distribution", sub = "p = 0.2")

