#2(d): Find and plot circles on the LEVEL plot at the maximum and minimum value

current_path <- getwd()
PAICOL <- read.csv(paste0(current_path, "/PAICOL.csv"))
PAICOL$DATE <- as.Date(PAICOL$DATE,origin=PAICOL$DATE[1])
g <- ggplot(PAICOL, aes(x= DATE, y = LEVEL)) + geom_point(data = PAICOL, aes(x = DATE, y = LEVEL, color="rose")) + labs(x = "Date", y = "Level", title = "Date vs Level Plot")
plot(g)


