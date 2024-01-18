file_path <- "D:/r-lab-cusat-s5/data/house-price.csv"

# Load the CSV file into a data frame
house_price <- read.csv(file_path)

dependent_variable <- "SalePrice"
independent_variable <- "LotArea"

# Fit the linear regression model
model <- lm(house_price[[dependent_variable]] ~ house_price[[independent_variable]])

# Print the summary of the regression model
summary(model)

# Extract regression coefficients
slope <- coef(model)[2]
intercept <- coef(model)[1]

# Plot scatter plot and regression line
plot(house_price[[independent_variable]], house_price[[dependent_variable]], 
     main = "Scatter Plot with Regression Line",
     xlab = "Size", ylab = "Price")

# Add regression line to the plot
abline(model, col = "red")

# Add legend
legend("topleft", legend = paste("y =", round(intercept, 2), "+", round(slope, 2), "x"),
       col = "red", lty = 1, cex = 0.8)

