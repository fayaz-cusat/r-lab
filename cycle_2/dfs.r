library(igraph)

# Create a graph
g <- graph(c("A", "B", "B", "C", "C", "D", "E", "F", "F", "G"), directed = FALSE)

# Perform DFS traversal
dfs_result <- dfs(g, root = "A", mode = "all")

# Print the DFS traversal order
print(dfs_result$order)
