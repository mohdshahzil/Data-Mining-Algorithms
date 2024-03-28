# Load required libraries
library(ggplot2)

# Read data from CSV file
data <- read.csv("Mall_Customers.csv")  # Adjust file path if necessary

# Print column names
colnames(data)

# Standardize the numerical columns
data_scaled <- scale(data[, c("Age", "Annual.Income..k..", "Spending.Score..1.100.")])

# Perform K-means clustering
set.seed(123) # for reproducibility
kmeans_results <- kmeans(data_scaled, centers = 3)

# Add cluster assignments to the original data
data$Cluster <- as.factor(kmeans_results$cluster)

# Visualize the clusters
# Plot for Age vs Spending Score
ggplot(data, aes(x = Age, y = `Spending.Score..1.100.`, color = Cluster)) +
  geom_point() +
  labs(title = "K-means Clustering (Age vs Spending Score)", x = "Age", y = "Spending Score")

# Plot for Annual Income vs Spending Score
ggplot(data, aes(x = `Annual.Income..k..`, y = `Spending.Score..1.100.`, color = Cluster)) +
  geom_point() +
  labs(title = "K-means Clustering (Annual Income vs Spending Score)", x = "Annual Income", y = "Spending Score")

# Plot for Age vs Annual Income
ggplot(data, aes(x = Age, y = `Annual.Income..k..`, color = Cluster)) +
  geom_point() +
  labs(title = "K-means Clustering (Age vs Annual Income)", x = "Age", y = "Annual Income")
