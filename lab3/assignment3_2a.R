#2(a): Create a line plot of the attribute LEVEL

current_path <- getwd()
PAICOL <- read.csv(paste0(current_path,"/PAICOL.csv"))
PAICOL$DATE <- as.Date(PAICOL$DATE, origin = PAICOL$DATE[1])
#View(PAICOL)


#install.packages("ggplot2")
library(ggplot2)
g <- ggplot(data = PAICOL, aes(x = DATE,y = LEVEL)) + geom_line(col ="blue")
plot(g)