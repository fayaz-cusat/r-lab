# Load the necessary library
library(ggplot2)

# Create a bar plot
ggplot(mtcars, aes(x = factor(cyl), fill = factor(am)))+
  geom_bar() +
  labs(title = "No: of Cylinders by Transmission Type",
       x = "Cylinders",
       y = "Count") +
  scale_fill_manual(values = c("0" = "green", "1" = "red")) +
  guides(fill=guide_legend(title="Transmission Type"))