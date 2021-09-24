# 2. Perform the following:
# (a) Define a normalized vector P.
P <- 1:10/sum(1:10)

# (b) Define a normalized vector Q.
Q <- 11:20/sum(11:20)

# (c) Combine P and Q as matrix object. Please note that when defining a matrix from
# vectors, the vectors should be combined as rows.
df <- rbind(P,Q)
print(df)

# (d) Compute the Euclidean Distance with default parameters
euc <- dist(df, method = "euclidean")
print(sprintf("Euclidean distance = %f", euc))