# Install and load the igraph package
library(igraph)

# Create an undirected graph
g <- graph(c("A", "B", "B", "C", "C", "D", "E", "F", "F", "G"), directed = FALSE)

# Print the adjacency list
adj_list <- as_adj_list(g)
print(adj_list)
