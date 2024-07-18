# Data and Feature Definitions

## Raw Data Sources

| Dataset Name | Original Location   | Destination Location  | Data Movement Tools / Scripts | Link to Report |
| ---:| ---: | ---: | ---: | -----: |
| Fichier des ventes mensuelles | Logiciel de gestion de l'entreprise | Fichiers Excel | [script1.ipynb](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Code/Data_Acquisition_and_Understanding/merge%20sales%20data.ipynb) | [Rapport fichier des ventes](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/b8d4b21e3a4ac7a29faefe50550dd88da46e925b/Docs/Data_Dictionaries/Dictionnaire_donn%C3%A9es_brutes.csv)|

* Résumé Fichier des ventes: _Le fichier des données brutes contient l'enregistrement des ventes par mois sur une période de 4 années. Elle comporte principalement 3 indicateurs qui permettent de caractériser une vente mais pour la suite nous allons unique travailler avec un seul indicateur : les volumes de vente._

## Processed Data

| Processed Dataset Name | Input Dataset(s)   | Data Processing Tools/Scripts | Link to Report |
| ---:| ---: | ---: | ---: |
| Jeu de données anonimisé| [Product families over time](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Sample_Data/Processed/Product%20families%20over%20time.csv) | [script2.ipynb](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Code/Data_Acquisition_and_Understanding/transform%20data%20for%20time%20series.ipynb) | [Processed Dataset Report](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/main/Docs/Data_Dictionaries/Processed%20data%20Report.md)|

* Résumé données anonymisées. _Dans cette étape on a anonymisé les données pour travailler et partager notre travail. On a aussi transformé les données brutes pour les adapter au format classique de séries temporelles_

## Feature Sets

| Feature Set Name | Input Dataset(s)   | Feature Engineering Tools/Scripts | Link to Report |
| ---:| ---: | ---: | ---: |
| Données de clusters | [Clusters(complete)data](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Sample_Data/For_Modeling/pf+clusters+dtw+complete.csv) | [Clustering.rmd](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Code/Data_Acquisition_and_Understanding/Clustering.Rmd) | [Feature Set1 Report](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/main/Docs/Data_Dictionaries/Clustering%20data%20Report.md)|
| Données de stationnarisation | [Stationnarity steps](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Sample_Data/For_Modeling/stationnarity_steps.csv) |[Stationnarisation.ipynb](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/51d2d2c26a6bac8a20782762489fd016dc73fb1a/Code/Data_Acquisition_and_Understanding/analyse%20exploratoire%20diff%C3%A9renciation.ipynb) | [Feature Set2 Report](https://github.com/Yannickdla/MS-EBDE-UTT-23-Prof-thesis/blob/main/Docs/Data_Dictionaries/Stationnarization%20data%20Report.md)|

* Résumé Clustering. _Cette information permet de diviser les familles de produit groupes afin de pouvoir mettre ensemble les familles qui les mêmes profils d'évolution_
* Résumé stationnarisation. _Cette information permet de synthétiser les informations nécessaire pour rendre les séries temporelles stationnaires_
