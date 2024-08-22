# Import des librairies 
library(tidyverse)
library(lubridate)
library(dtwclust)
library(wpp2019)
library(countrycode)
library(dynamicTreeCut)
library(cluster)
library(fpc)

rm(list= ls())
setwd("D:/Alternance_2023_UTT/Thèse PROFESSIONNELLE")

sales_time_series <- read.csv("D:/Alternance_2023_UTT/Thèse PROFESSIONNELLE/Product families over time.csv")
sales_time_series <- sales_time_series %>% 
  rename_with(~str_replace(., "X", ""), starts_with("X"))

productfamilies <- sales_time_series$Product.Family
sales_time_series$Product.Family <- NULL

sales_time_series.norm <- zscore(sales_time_series)

# Liste des méthodes de linkage et de calcul de distance à tester
linkage_methods_hclust <- c("ward.D", "single", "complete", "average", "mcquitty", "median", "centroid")
distance_methods <- c("dtw_basic", "euclidean","manhattan","canberra")#, "dtw_lb_keogh", "dtw_sakoechiba", "dtw_itakura")

# Initialisation du dataframe pour stocker les scores de silhouette
silhouette_results <- data.frame(linkage_method = character(), distance_method = character(), silhouette_mean = numeric())

# Boucles pour tester toutes les combinaisons de méthodes
for (linkage_method in linkage_methods_hclust) {
  for (distance_method in distance_methods) {
    
    # Calcul de la matrice de distance avec la méthode choisie
    my.dist.norm <- proxy::dist(sales_time_series.norm, method = distance_method, window.size = NULL, normalize = TRUE)
    my.dist.norm <- stats::as.dist(my.dist.norm)
    
    # Clustering avec la méthode de linkage choisie
    cl.norm <- hclust(my.dist.norm, method = linkage_method)
    
    # Identification des clusters
    clusters.norm <- cutree(cl.norm, k = 2)  # Utiliser le nombre de clusters au lieu de minModuleSize
    
    # Calcul de l'indice de silhouette
    silhouette_scores <- cluster::silhouette(clusters.norm, my.dist.norm)
    
    # Calcul de la moyenne des scores de silhouette
    silhouette_mean <- mean(silhouette_scores[, "sil_width"])
    
    # Stockage des résultats
    silhouette_results <- rbind(silhouette_results, data.frame(linkage_method = linkage_method, distance_method = distance_method, silhouette_mean = silhouette_mean))
  }
}

# Affichage des scores de silhouette pour chaque combinaison
print(silhouette_results)