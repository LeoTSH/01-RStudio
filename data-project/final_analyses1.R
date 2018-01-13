# Import ggplot2 package
install.packages("ggplot2")

# Get working directory
getwd()

# Change working directory
setwd("C:/Users/Leo/Desktop/01-RStudio/data-project")

# Load dataset
data <- read.csv(file = "data_v3.csv", header = T)

# Partition/select data based on country
canada_data <- data[data$country == "Canada" & data$year <= 1982, ]

# Write selected data to csv file
write.csv(canada_data, file = "canada.csv", row.names = FALSE)

# Plot graph
library(ggplot2)
ggplot(data = canada_data, aes(x = year, y = lifeExp)) +
  geom_point() +
  geom_line() +
  ylab("Life Expectancy") +
  xlab("Year") +
  ggtitle("Canada Life Expectancy")
ggsave("graph_canada.png")