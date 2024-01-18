library(dplyr)
data <- read.csv("time-series-19-covid-combined.csv")

data$Date <- as.Date(data$Date)

time_series_data <- data %>%
  group_by(Date) %>%
  summarise(Confirmed = sum(Confirmed))

covid_ts <- ts(time_series_data$Confirmed, start = c(2021, 1), frequency = 365)

# Plotting
plot(covid_ts, main = "COVID-19 Cases", xlab = "Date", ylab = "No: of Cases")

trend <- lm(covid_ts ~ time(covid_ts))
abline(trend, col = "red")