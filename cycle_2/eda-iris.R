library(ggplot2)
library(GGally)


# 2. Iris Dataset
# a) EDA
# Summary statistics
summary(iris)

# Boxplot for each measurement
#boxplot(iris[,1:4], main="Iris Data", xlab="Measurement", ylab="Value (cm)")

# b) ANOVA for sepal lengths between different species
#anova_result <- aov(Sepal.Length ~ Species, data = iris)
#summary(anova_result)

# c) Pair plot to visualize the relationships between all variables
ggpairs(iris, mapping = aes(color = Species))
