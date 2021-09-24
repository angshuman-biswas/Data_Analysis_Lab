#2(e):  Plot the LEVEL for the year "2001"

current_path <- getwd()
PAICOL <- read.csv(paste0(current_path, "/PAICOL.csv"))
PAICOL$DATE <- as.Date(PAICOL$DATE, origin = PAICOL$DATE[1])
PAICOL$YEAR <-  as.numeric(format(PAICOL$DATE, "%Y"))
index <- PAICOL$YEAR == 2001
g <- ggplot(PAICOL[index,], aes(x= DATE, y = LEVEL)) + geom_line()
plot(g)