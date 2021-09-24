#2(b): Create the scatter plot of "RAIN" against "LEVEL"

current_path <- getwd()
PAICOL <- read.csv(paste0(current_path, "/PAICOL.csv"))
PAICOL$DATE <- as.Date(PAICOL$DATE, origin = PAICOL$DATE[1])
g <- ggplot(data = PAICOL, aes(x = RAIN, y = LEVEL)) + geom_point(col = "darkgreen") + labs(title = "LEVEL vs RAIN", x = "Level", y = "Rain")
plot(g)
