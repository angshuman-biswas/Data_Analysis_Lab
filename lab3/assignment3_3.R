#3. Simulate a simple dataset of 10 points.Create a heat map to visualize relationships between
#the variables. A heat map is agraphical representation of data where the data values are
#represented as colours.


data <- matrix(rnorm(100, 0, 10), nrow = 10, ncol = 10)
colnames(data) <- paste0("col", 1:10) 
rownames(data) <- paste0("row", 1:10)
View(data)
heatmap(data, Rowv = NA, Colv = NA, col = cm.colors(256))