sumOfN <- function(n) {
  return(n*(n+1)/2) 
}

n <- as.integer(readline(prompt = "Enter n: "))
sum <- sumOfN(n)
print(paste("Sum = ", sum))