
getwd()
# Load the Iris dataset from a CSV file
iris_data <- read.csv("Iris.csv")
head(iris_data)

# Create a PNG file to save the scatterplot
png("iris_output.png", width = 864, height = 457, res = 100)

# Create the scatterplot
plot(iris_data$SepalLengthCm, iris_data$PetalLengthCm, 
     xlab = "Sepal Length", ylab = "Petal Length",
     main = "Scatterplot of Sepal Length vs Petal Length")

points(iris_data$SepalLengthCm[iris_data$Species == "Iris-setosa"], 
       iris_data$PetalLengthCm[iris_data$Species == "Iris-setosa"], 
       col = "red", pch = 1)
points(iris_data$SepalLengthCm[iris_data$Species == "Iris-versicolor"], 
       iris_data$PetalLengthCm[iris_data$Species == "Iris-versicolor"], 
       col = "blue", pch = 2)
points(iris_data$SepalLengthCm[iris_data$Species == "Iris-virginica"], 
       iris_data$PetalLengthCm[iris_data$Species == "Iris-virginica"], 
       col = "green", pch = 3)

legend("topright", legend = unique(iris_data$Species), 
       col = c("red", "blue", "green"), pch = 1:3, title = "Species")

# Save the plot as a PNG file
dev.off()
