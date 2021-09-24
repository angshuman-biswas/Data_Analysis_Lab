#2(c):  Create a plot of the RAIN and LEVEL.

current_path <- getwd()
PAICOL <- read.csv(paste0(current_path, "/PAICOL.csv"))
PAICOL$DATE <- as.Date(PAICOL$DATE, origin = PAICOL$DATE[1])
g <- ggplot(PAICOL, aes(x= DATE, y = LEVEL)) + geom_point(data = PAICOL,aes(color="LEVEL")) + geom_point(data = PAICOL, aes(x = DATE,y = RAIN,color="RAIN"))
plot(g)