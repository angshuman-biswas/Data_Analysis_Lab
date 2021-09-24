# 3. Compute Manhattan distance and cosine similarity after  performing (a),(b),(c) steps of Q.2.
library(philentropy)

P <- 1:10/sum(1:10)
Q <- 11:20/sum(11:20)
df <- rbind(P,Q)
print(df)

man <- dist(df, method="manhattan")
print(sprintf("Manhattan distance = %f", man))


cos <- distance(df, method="cosine")
print(sprintf("Cosine similarity = %f", euc))