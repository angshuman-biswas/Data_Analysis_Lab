# 2. Data whose distribution is close to lognormal are common. Size measurements of biological
# organisms often have this character. As an example, consider the measurements of
# body weight (body),in the data frame Animals (MASS). Begin by drawing a histogram of
# the untransformed values,and overlaying a density curve. Then

# (a) Draw an estimated density curve for the logarithms of the values.

library(MASS)
hist(Animals$body, xlab = "Animal body weight",prob = TRUE, col = "lightblue", main ="Animal body weight histogram")
lines(density(Animals$body), type = "l", col = "black", main = "Untransformed density function")

logbody <- log(Animals$body)
plot(density(logbody), type = "l", col = "darkred", main = "Log of body weight : Density function")

# (b) Determine the mean and standard deviation of log(Animals$body). Overlay the estimated
# density with the theoretical density for a normal distribution with the mean
# and standard deviation just obtained.

Mean <- mean(logbody)
Standard_Deviation <- sd(logbody)
pred <- pretty(c(Mean - 3 * Standard_Deviation, Mean + 3 * Standard_Deviation), 50)
lines(pred, dnorm(xval, mean = Mean, sd = Standard_Deviation))
