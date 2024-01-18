library(ggplot2)

data <- read.csv("C:\\Users\\cusat\\Downloads\\house-prices-advanced-regression-techniques\\train.csv")

model <- lm(SalePrice ~ LotArea, data = data)

summary(model)

slope <- coef(model)[2]
intercept <- coef(model)[1]

cat('Slope = ',coef(model)[2] , "\n")
cat("intercept = ", coef(model)[1] ,"\n")

ggplot(data, aes(x = LotArea, y = SalePrice)) +
  geom_point() +
  geom_abline(intercept = intercept, slope = slope, color = "red") +
  labs(title = "Simple Linear Regression",
       x = "Size (Square Feet)",
       y = "Price")