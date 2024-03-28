# Load required libraries
library(cluster)
library(ggplot2)

# Read data from CSV file
data <- read.csv("Mall_Customers.csv")  # Adjust file path if necessary

# Print column names
colnames(data)

# Standardize the numerical columns
data_scaled <- scale(data[, c("Age", "Annual.Income..k..", "Spending.Score..1.100.")])

# Perform DIANA clustering
diana_results <- diana(data_scaled)

# Assign cluster membership to original data
cluster_membership <- cutree(diana_results, k = 3)

# Add cluster assignments to the original data
data$Cluster <- as.factor(cluster_membership)

# Visualize the clusters
# Plot for Age vs Spending Score
ggplot(data, aes(x = Age, y = `Spending.Score..1.100.`, color = Cluster)) +
  geom_point() +
  labs(title = "DIANA Clustering (Age vs Spending Score)", x = "Age", y = "Spending Score")

# Plot for Annual Income vs Spending Score
ggplot(data, aes(x = `Annual.Income..k..`, y = `Spending.Score..1.100.`, color = Cluster)) +
  geom_point() +
  labs(title = "DIANA Clustering (Annual Income vs Spending Score)", x = "Annual Income", y = "Spending Score")

# Plot for Age vs Annual Income
ggplot(data, aes(x = Age, y = `Annual.Income..k..`, color = Cluster)) +
  geom_point() +
  labs(title = "DIANA Clustering (Age vs Annual Income)", x = "Age", y = "Annual Income")
