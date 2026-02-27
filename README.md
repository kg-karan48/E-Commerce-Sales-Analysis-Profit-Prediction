#E Commerce Sales Analysis Profit Prediction

Project Overview
This project demonstrates an end-to-end data analytics and machine learning workflow using SQL + Python to analyze e-commerce sales data and predict business performance.

The goal is to:
Extract business insights from raw transactional data using SQL
Perform data cleaning, EDA, and feature engineering
Build and evaluate a machine learning model for sales/profit prediction
Translate data into actionable business decisions


Tech Stack ;
SQL (MySQL) – Data extraction, validation, KPIs, views
Python – Data analysis & modeling
Libraries: Pandas, NumPy, Matplotlib, Seaborn, Scikit-Learn
Notebook: Jupyter Notebook


Project Structure ;

E-Commerce-Sales-Analysis/
│
├── data/
│   └── sales_data.csv
│
├── sql/
│   └── ecommerce_analysis.sql
│
├── notebooks/
│   └── E-Commerce Sales Analysis & Profit Prediction.ipynb



Step 1: Data Preparation (SQL)
Database & Table Creation
Designed a structured sales_data table with sales, profit, category, region, and time attributes.

Data Quality Checks

Identified:
NULL values
Zero quantity records
Negative sales values
Ensured data consistency before analysis.

Step 2: Business Analysis Using SQL ;
#Key Business KPIs
Total Revenue
Total Profit
Total Orders
Average Sales

Revenue & Profit Analysis ;
Revenue by category
Profit by region
Top 5 products by revenue
Loss-making products

Time-Based Trends ;
Monthly revenue trend analysis to identify seasonality.

SQL Views ;
Created reusable views for reporting:
revenue_summary
business_summary
These views simplify dashboards and repeated analysis.

Step 3: Exploratory Data Analysis (Python)
Visualized sales and profit distributions
Detected outliers using IQR method

Analyzed relationships between:
Sales & profit
Quantity & revenue
Category & performance

Step 4: Feature Engineering
Created profit margin (%)
Extracted time-based features from order dates
Prepared clean datasets for modeling

Step 5: Machine Learning Model
##Model Used
Linear Regression


##Objective
Predict sales/profit based on historical data


##Evaluation Metrics
R² Score
Mean Absolute Error (MAE)
Root Mean Squared Error (RMSE)
The model achieved strong performance, showing a clear relationship between business features and revenue outcomes.



Business InsightsCertain categories contribute the majority of revenue
Some products consistently generate losses and require review
Sales show monthly seasonality, useful for demand planning
Profit margin varies significantly across categories and regions

##These insights can help businesses:
Optimize pricing strategies
Reduce losses
Improve inventory planning
Focus on high-margin products


