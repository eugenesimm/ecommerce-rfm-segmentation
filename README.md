# 📊 Hybrid Customer Segmentation & Revenue Analysis

Olist E-commerce Dataset from [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

## Overview
This data analysis project combines SQL-based RFM customer segmentation with short-term revenue forecasting to diagnose revenue concentration and support actionable retention strategies.


## Business Questions

- Which customer groups are actually driving revenue?
- How concentrated is revenue across customers?
- Are there early warning signals in short-term revenue trends?
- What actions should be taken by customer segment?

## Approach
- SQL (PostgreSQL)
  - Built customer-level RFM metrics using delivered orders only
  - Prevented double-counting by aggregating payments at the order level first

- Python
  - Explored customer structure using KMeans clustering
  - Reframed segments using rule-based RFM for clearer business actionability

- Forecasting
  - Generated a 30-day revenue forecast to identify short-term risk signals

- Tableau
  - Designed an executive-level dashboard focused on “so what?” questions


## Key Insights
- Approximately 30% of customers generate over 55% of total revenue (VIP segment)  
- Pure clustering alone was insufficient for action-oriented segmentation  
- Rule-based RFM provided clearer targeting criteria for marketing decisions
- Revenue composition shows potential shifts when comparing recent performance to short-term forecasts

## Repository Structure
- `rfm.sql` – SQL query used to generate customer-level RFM metrics from transactional data  
- `rfm.csv` – Derived dataset containing RFM metrics extracted via SQL  
- `analyze.ipynb` – Python-based analysis and segmentation workflow  

├── rfm.sql                  # SQL used to generate customer-level RFM metrics
├── customer_rfm.csv         # Derived RFM dataset
├── daily_revenue.csv        # Daily revenue time series
├── analyze.ipynb            # Segmentation and forecasting analysis
├── Customer & Revenue Performance Dashboard.twbx   # Final executive dashboard



## Skills Demonstrated
- SQL-based feature engineering (PostgreSQL)  
- Customer segmentation and revenue analysis  
- Short-term revenue forecasting and risk interpretation
- Data visualization and analytical storytelling  
- Executive and stakeholder-focused reporting

## Tools
PostgreSQL · Python (pandas, scikit-learn, Prophet) · Tableau


## Dashboard
The full Tableau workbook can be accessed via [here](https://public.tableau.com/views/CustomerRevenuePerformanceDashboard/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link) or found directly in this repository.

<img width="2160" height="1798" alt="Dashboard 1 (3)" src="https://github.com/user-attachments/assets/bf59c16f-e7f2-4c0c-83e1-963d1a225e6b" />

