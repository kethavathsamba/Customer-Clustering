# Customer-Clustering

This repository contains an R script for performing K-Means clustering on Ecommerce customer data. The clustering is based on two features:
- Length of Membership (in years)
- Yearly Amount Spent (in dollars)

## Files in this repository

- `clustering.r` — R script that:
  - Loads and cleans the data
  - Checks for missing values and duplicates
  - Applies K-Means clustering with 5 clusters
  - Visualizes the clusters with a scatter plot
  - Saves the cluster plot as `customer_clusters.png`
  - Prints summary statistics of each cluster

- `Customer_Clustering_Report.docx` — Detailed project report explaining the methodology, results, and analysis of the clustering.

## How to run

1. Make sure you have R installed.
2. Install the required package if not already installed:
   ```r
   install.packages("ggplot2")
````

3. Place the dataset file `Ecommerce Customers.csv` in the same directory as the script.
4. Run the script in R or RStudio:

   ```r
   source("clustering.r")
   ```
5. View the cluster plot and summary output in your R console. The plot image `customer_clusters.png` will also be saved in the directory.

---

If you have any questions or want to contribute, feel free to open an issue or pull request.

---
```
