# Mall Customers Dataset Analysis

This repository contains code and visualizations for analyzing the Mall Customers dataset using various clustering algorithms.

## Dataset

The Mall Customers dataset contains information about customers, including their age, annual income, and spending score.

### Features

- `CustomerID`: Unique identifier for each customer
- `Gender`: Gender of the customer (Male or Female)
- `Age`: Age of the customer
- `Annual Income (k$)`: Annual income of the customer in thousands of dollars
- `Spending Score (1-100)`: Spending score assigned to the customer based on their purchasing behavior

## Clustering Algorithms

### K-means Clustering

- Code File: [k_means_clustering.R](k_means_clustering.R)
- Description: Performs k-means clustering on the dataset and visualizes the clusters.

### K-medoids Clustering

- Code File: [k_medoids_clustering.R](k_medoids_clustering.R)
- Description: Performs k-medoids clustering on the dataset and visualizes the clusters.

### Hierarchical Clustering

- Code File: [hierarchical_clustering.R](hierarchical_clustering.R)
- Description: Performs hierarchical clustering on the dataset and visualizes the dendrogram.

### AGNES (Agglomerative Nesting) Clustering

- Code File: [agnes_clustering.R](agnes_clustering.R)
- Description: Performs AGNES clustering on the dataset and visualizes the dendrogram.

### CLARA (Clustering Large Applications) Clustering

- Code File: [clara_clustering.R](clara_clustering.R)
- Description: Performs CLARA clustering on the dataset and visualizes the clusters.

## Generated Visualizations

- [Age vs Spending Score](visualizations/age_vs_spending_score.png)
- [Annual Income vs Spending Score](visualizations/annual_income_vs_spending_score.png)
- [Age vs Annual Income](visualizations/age_vs_annual_income.png)
- [AGNES Clustering](visualizations/agnes.png)
- [CLARA Clustering](visualizations/clara.png)
- [Hierarchical Clustering](visualizations/hierarchical.png)
- [K-means Clustering](visualizations/k_means.png)
- [K-medoids Clustering](visualizations/k_medoid.png)

## Usage

1. Clone this repository to your local machine.
2. Run the relevant R script for the clustering algorithm you want to use.
3. View the generated visualizations in the `visualizations` folder.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
