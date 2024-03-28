# Load required libraries
library(cluster)
library(ggplot2)

# Read data from CSV file
data <- read.csv("Mall_Customers.csv")  # Adjust file path if necessary

# Preprocess data (if needed)
# Standardize the numerical columns
data_scaled <- scale(data[, c("Age", "Annual.Income..k..", "Spending.Score..1.100.")])

# Calculate pairwise distances using Euclidean distance
dist_matrix <- dist(data_scaled, method = "euclidean")

# Perform hierarchical clustering with complete linkage
hierarchical_results <- hclust(dist_matrix, method = "complete")

# Determine the optimal number of clusters and cut the dendrogram
# (You may need to adjust this based on your specific dataset)
optimal_clusters <- cutree(hierarchical_results, k = 3)

# Add cluster assignments to the original data
data$Cluster <- as.factor(optimal_clusters)

# Visualize the clusters
# Plot for Age vs Spending Score
ggplot(data, aes(x = Age, y = `Spending.Score..1.100.`, color = Cluster)) +
  geom_point() +
  labs(title = "Chameleon-like Clustering (Age vs Spending Score)", x = "Age", y = "Spending Score")

# Plot for Annual Income vs Spending Score
ggplot(data, aes(x = `Annual.Income..k..`, y = `Spending.Score..1.100.`, color = Cluster)) +
  geom_point() +
  labs(title = "Chameleon-like Clustering (Annual Income vs Spending Score)", x = "Annual Income", y = "Spending Score")

# Plot for Age vs Annual Income
ggplot(data, aes(x = Age, y = `Annual.Income..k..`, color = Cluster)) +
  geom_point() +
  labs(title = "Chameleon-like Clustering (Age vs Annual Income)", x = "Age", y = "Annual Income")
