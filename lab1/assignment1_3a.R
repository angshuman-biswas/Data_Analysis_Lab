greatestOfThree <- function (x, y, z) {
  if (x >= y && x >= z) {
    print(paste(x,"is the greatest"))
    
  } else if (y >= x && y >= z) {
    print(paste(y,"is the greatest"))
  } else {
    print(paste(z,"is the greatest"))
  }
  
}

x <- as.integer(readline(prompt = "Enter first number: "))
y <- as.integer(readline(prompt = "Enter second number: "))
z <- as.integer(readline(prompt = "Enter third number: "))
greatestOfThree(x, y, z)