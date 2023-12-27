# Load the ggplot2 package
library(ggplot2)

# question 2 
# Create a bar plot of the number of cylinders (cyl) in the mtcars dataset. 
# Use different colors to represent the transmission type (am).
# Add appropriate title, labels, and legend to the plot.

cars<-read.csv("mtcars.csv")
print(cars)


# Create the bar plot with different colors for the "am" variable
ggplot(mtcars, aes(x = factor(cyl), fill = factor(am))) +
  geom_bar(position = "dodge") +
  
  # Add labels, title, and legend
  labs(
    x = "Number of Cylinders",
    y = "Count",
    title = "Bar Plot of Number of Cylinders by Transmission Type",
    fill = "Transmission Type"
  ) +
  
  scale_fill_manual(values = c("0" = "blue", "1" = "red")) +  # Define colors
  theme_minimal()  # Set a minimal theme
