# 1. Assume a tiny version of web with 4 web pages and edges between them and apply
# (a) Basic page rank algorithm
# (b) Teleporting on page rank algorithm

library(igraph)
# Page Rank Algorithm with teleporting
web <- graph(
            edges = c(1,2, 1,3, 1,4, 4,2, 2,4, 4,3, 3,3),
            n = 4,
            directed = TRUE)

plot(web)
mt <- stochastic_matrix(web)
mt <- t(as.matrix(mt))
v <- as.matrix(c(1/4, 1/4, 1/4, 1/4))
diff <- matrix(Inf, nrow=4, ncol=1)
while(abs(max(diff)) > 0.001){
  v_dash <- mt %*% v
  diff <- v_dash - v
  v <- v_dash
}
print("Rank without teleporting:")
print(v)

beta <- 0.8
e <- c(1, 1, 1, 1)
mt <- beta*mt
t2 <- ((1-beta)*e)/4

diff <- matrix(Inf, nrow = 4, ncol = 1)
while(abs(max(diff)) > 0.001){
  v_dash <- (mt %*% v) + t2
  diff <- v_dash - v
  v <- v_dash
}
print("Page Ranks with teleporting:")
print(v)