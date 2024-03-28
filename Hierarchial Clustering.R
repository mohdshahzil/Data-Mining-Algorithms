# Load required libraries
library(ggplot2)

# Read data from CSV file
data <- read.csv("Mall_Customers.csv")  # Adjust file path if necessary

# Print column names
colnames(data)

# Standardize the numerical columns
data_scaled <- scale(data[, c("Age", "Annual.Income..k..", "Spending.Score..1.100.")])

# Perform hierarchical clustering
dist_matrix <- dist(data_scaled, method = "euclidean")
hierarchical_results <- hclust(dist_matrix, method = "ward.D")

# Plot dendrogram
plot(hierarchical_results, hang = -1, cex = 0.6, main = "Hierarchical Clustering Dendrogram")

# Color the dendrogram based on k clusters
k <- 3  # Specify the desired number of clusters
rect.hclust(hierarchical_results, k, border = 2:5)
