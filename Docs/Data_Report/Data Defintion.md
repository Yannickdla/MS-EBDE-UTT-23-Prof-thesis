# Data and Feature Definitions

This document provides a central hub for the raw data sources, the processed/transformed data, and feature sets. More details of each dataset is provided in the data summary report. 

For each data, an individual report describing the data schema, the meaning of each data field, and other information that is helpful for understanding the data is provided. If the dataset is the output of processing/transforming/feature engineering existing data set(s), the names of the input data sets, and the links to scripts that are used to conduct the operation are also provided. 

When applicable, the Interactive Data Exploration, Analysis, and Reporting (IDEAR) utility developed by Microsoft is applied to explore and visualize the data, and generate the data report. Instructions of how to use IDEAR can be found [here](). 

For each dataset, the links to the sample datasets in the _**Data**_ directory are also provided. 

_**For ease of modifying this report, placeholder links are included in this page, for example a link to dataset 1, but they are just placeholders pointing to a non-existent page. These should be modified to point to the actual location.**_


## Raw Data Sources


| Dataset Name | Original Location   | Destination Location  | Data Movement Tools / Scripts | Link to Report |
| ---:| ---: | ---: | ---: | -----: |
| Fichier des ventes mensuelles | Logiciel de gestion de l'entreprise | Fichiers Excel | [script1.ipynb](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Code/Data_Acquisition_and_Understanding/merge%20sales%20data.ipynb) | [Rapport fichier des ventes](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/b8d4b21e3a4ac7a29faefe50550dd88da46e925b/Docs/Data_Dictionaries/Dictionnaire_donn%C3%A9es_brutes.csv)|


* Résumé Fichier des ventes: _Le fichier des données brutes contient l'enregistrement des ventes par mois sur une période de 4 années. Elle comporte principalement 3 indicateurs qui permettent de caractériser une vente mais pour la suite nous allons unique travailler avec un seul indicateur : les volumes de vente._

## Processed Data
| Processed Dataset Name | Input Dataset(s)   | Data Processing Tools/Scripts | Link to Report |
| ---:| ---: | ---: | ---: | 
| Jeu de données anonimisé| [Product families over time](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Sample_Data/Processed/Product%20families%20over%20time.csv) | [script2.ipynb](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Code/Data_Acquisition_and_Understanding/transform%20data%20for%20time%20series.ipynb) | [Processed Dataset 1 Report](link/to/report1)|


* Rapport données anonymisées. _Dans cette étape on a anonymisé les données pour travailler et partager notre travail_

## Feature Sets

| Feature Set Name | Input Dataset(s)   | Feature Engineering Tools/Scripts | Link to Report |
| ---:| ---: | ---: | ---: | 
| Données de clusters | [Clusters(complete)data](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Sample_Data/For_Modeling/pf+clusters+dtw+complete.csv) | [Clustering.rmd](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Code/Data_Acquisition_and_Understanding/Clustering.Rmd) | [Feature Set1 Report](link/to/report1)|
| Données de stationnarisation | [Stationnarity steps](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Sample_Data/For_Modeling/stationnarity_steps.csv) |[Stationnarisation.ipynb](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Code/Data_Acquisition_and_Understanding/analyse%20exploratoire%20diff%C3%A9renciation.ipynb) | [Feature Set2 Report](link/to/report2)|

* Feature Set1 summary. <Provide detailed description of the feature set, such as the meaning of each feature. More detailed information about the feature set should be in the Feature Set1 Report.>
* Feature Set2 summary. <Provide detailed description of the feature set, such as the meaning of each feature. More detailed information about the feature set should be in the Feature Set2 Report.> 
