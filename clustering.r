library(ggplot2)

data <- read.csv("Ecommerce Customers.csv")

if (any(is.na(data))) {
  print("Missing values found in the dataset.")
} else {
  print("No missing values.")
}

if (any(duplicated(data))) {
  print("Duplicate rows found in the dataset.")
} else {
  print("No duplicate rows.")
}

selected_data <- data[, c("Length.of.Membership", "Yearly.Amount.Spent")]

scaled_data <- scale(selected_data)

kmeans_result <- kmeans(scaled_data, centers = 5)

data$Cluster <- as.factor(kmeans_result$cluster)

ggplot(data, aes(x = Length.of.Membership, y = Yearly.Amount.Spent, color = Cluster)) +
  geom_point(size = 3) +
  labs(title = "Customer Clusters",
       x = "Length of Membership",
       y = "Yearly Amount Spent") +
  theme_minimal()
