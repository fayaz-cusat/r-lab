# Create a list to store the graph
graph <- list()

# Function to add an edge
add_edge <- function(graph, u, v) {
  if(is.null(graph[[u]])) {
    graph[[u]] <- c(v)
  } else {
    graph[[u]] <- c(graph[[u]], v)
  }
  
  if(is.null(graph[[v]])) {
    graph[[v]] <- c(u)
  } else {
    graph[[v]] <- c(graph[[v]], u)
  }
  
  return(graph)
}

# Add edges
graph <- add_edge(graph, "A", "B")
graph <- add_edge(graph, "A", "C")
graph <- add_edge(graph, "B", "D")
graph <- add_edge(graph, "C", "D")
graph <- add_edge(graph, "C", "E")
graph <- add_edge(graph, "D", "E")

# Print the graph
print(graph)
