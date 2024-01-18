install.packages("igraph")

library(igraph)

# Create an empty graph
myGraph <- graph.empty(n = 7, directed = FALSE)

# Add edges to the graph
myGraph <- add_edges(myGraph, c(1, 2, 2, 3, 2, 4, 3, 5, 5, 6, 6, 7, 7, 3, 4, 6))

# Plot the graph
plot(myGraph, main = "Undirected Graph")

# Perform DFS traversal starting from a specific vertex
dfs <- function(graph, startVertex) {
  cat("DFS traversal starting from vertex", startVertex, ": ")
  cat(startVertex, " ")
  visitedNodes <- rep(FALSE, vcount(graph))
  visitedNodes[startVertex] <- TRUE
  
  
  dfs_recursive <- function(vertex) {
    neighbors <- neighbors(graph, vertex)
    for (neighbor in neighbors) {
      if (!visitedNodes[neighbor]) {
        cat(neighbor, " ")
        visitedNodes[neighbor] <- TRUE
        # Add a check before the recursive call
        if (!visitedNodes[neighbor]) {
          dfs_recursive(neighbor)
        }
      }
    }
  }
  
  
  dfs_recursive(startVertex)
  cat("\n")
}

# Example usage:
dfs(myGraph, 1)
