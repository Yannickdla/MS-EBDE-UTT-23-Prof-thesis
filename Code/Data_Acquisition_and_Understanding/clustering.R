# Import des librairies 
library(tidyverse)
library(lubridate)
library(dtwclust)
library(wpp2019)
library(countrycode)
library(dynamicTreeCut)
library(cluster)
rm(list= ls())

sales_time_series <- read.csv("Product families over time.csv")
sales_time_series <- sales_time_series %>% 
  rename_with(~str_replace(., "X", ""), starts_with("X"))

productfamilies <- sales_time_series$Product.Family
sales_time_series$Product.Family <- NULL

sales_time_series.norm <- zscore(sales_time_series)

#interactive_clustering(sales_time_series)
al = "dtw_basic"
my.dist <-proxy::dist(sales_time_series, method = al,window.size = NULL, normalize = TRUE)
my.dist.norm <-proxy::dist(sales_time_series.norm, method = "dtw_basic",window.size = NULL, normalize = TRUE)

my.dist <- stats::as.dist(my.dist)

cl.norm <- hclust(my.dist.norm, method = "average")# voir la méthode de clustering average ??

clusters.norm <- cutreeDynamicTree(cl.norm, minModuleSize = 2)

# Calcul de l'indice de silhouette
silhouette_scores <- cluster::silhouette(clusters.norm, my.dist.norm)

# Affichage des scores de silhouette
print(silhouette_scores)

cluster.df <- data.frame(productfamilies, clusters.norm)


#,"euclidean", "manhattan", "maximum", "canberra", "binary"
find_best_clustering <- function(data) {
  methods_dist <- c("dtw_basic")
  methods_hclust <- c("ward.D", "single", "complete", "average", "mcquitty")

  best_silhouette <- -Inf
  best_combination <- c()

  for (dist_method in methods_dist) {
    for (hclust_method in methods_hclust) {
      dist_matrix <- proxy::dist(data, method = dist_method)
      dist_matrix <- stats::as.dist(dist_matrix)

      hclust_tree <- hclust(dist_matrix, method = hclust_method)
      hclust_tree$height <- sort(hclust_tree$height) # Tri de la composante 'height'
      clusters <- cutreeDynamicTree(hclust_tree, minModuleSize = 2) # Utilisation de 'cutree' au lieu de 'cutreeDynamicTree'
      #silhouette_scores <- cluster::silhouette(clusters.norm, my.dist.norm)

      silhouette_scores <- cluster::silhouette(clusters, dist_matrix)#$sil_width
      mean_silhouette <- mean(silhouette_scores, na.rm = TRUE)

      if (!is.na(mean_silhouette) && mean_silhouette > best_silhouette) {
        best_silhouette <- mean_silhouette
        best_combination <- c(dist_method, hclust_method)
      }
    }
  }

  return(best_combination)
}
datatest <- sales_time_series.norm
best_combination <- find_best_clustering(datatest)
print(best_combination)
