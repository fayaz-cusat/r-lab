library(datasets)
i <- data(iris)
i.Sepal.length

sl <- iris$Sepal.Length
pl <- iris$Petal.Length

plot(sl,pl,main="iris dataset",xlab = "sepal length",ylab = "petal length", cex = 0.5)

