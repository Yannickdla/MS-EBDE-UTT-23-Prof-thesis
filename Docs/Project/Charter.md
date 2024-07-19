# Project Charter

## Business background

* Client: Davey Bickford Enaex
* Business Domain: Manufacturing and industrial explosives
* Business Problems:
  * Variability in sales volumes leading to supply chain inefficiencies
  * Lack of accurate sales volume forecasts affecting production planning and inventory management

## Scope

* Data Science Solutions:
    Develop predictive models for sales volumes using machine learning techniques
    Implement clustering techniques to group similar product families for better prediction accuracy
    Build a comprehensive data pipeline for continuous data processing and model retraining
* Deliverables:
    Predictive models for sales volumes
    Detailed analysis and visualizations of sales trends
    Documentation of the data pipeline and model deployment process
* Consumption by Customer:
    The predictive models will be integrated into the company's existing decision-making systems

## Personnel

* UTT:
  * Project lead : UTT educational tutor

* DB Enaex:
  * PM : Yannick DONGUE
  * Data scientist : Yannick DONGUE
  * Data administrator : Head of Management Control
  * Business contact : Global Product Marketing Manager

## Metrics

* Qualitative Objectives : Enhance production planning accuracy
* Quantifiable Metrics

* Quantify what improvement in the values of the metrics are useful for the customer scenario (e.g. reduce the  fraction of users with 4-week inactivity by 20%)
* What is the baseline (current) value of the metric? (e.g. current fraction of users with 4-week inactivity = 60%)
* How will we measure the metric? (e.g. A/B test on a specified subset for a specified period; or comparison of performance after implementation to baseline)

## Plan

1. Data Collection and Preprocessing

   * Collect historical sales data
   * Clean and preprocess data

2. Exploratory Data Analysis and Clustering

   * Perform EDA to understand data characteristics
   * Implement clustering techniques
  
3. Model Development and Validation
  
   * Develop predictive models
   * Validate models using historical data

4. Deployment and Integration

   * Deploy models into production

## Architecture

* Data
  * Raw data: Historical sales data stored in Excel files
  * Data processing: VSCode, Jupyter Notebooks

* Tools and Resources:
  * VSCode, Jupyter Notebooks
  * R and Python for feature construction and modeling

* Model Consumption
  * Pas encore défini

## Communication

* Meetings :
  Weekly meetings with the projec lead and the data administrator
