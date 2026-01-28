# 📊 Hybrid Customer Segmentation & Revenue Analysis

Olist E-commerce Dataset from [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

## Overview
This project analyzes customer purchasing behavior to support revenue optimization through customer segmentation and trend analysis.  
It combines exploratory clustering with rule-based RFM segmentation to balance analytical insight and business actionability.

## Business Goal
Provide a concise, executive-level overview of customer segments to support data-driven marketing and retention decisions.

## Approach
- Built customer-level RFM metrics using PostgreSQL SQL joins and aggregations  
- Applied KMeans clustering to explore customer structure and identify revenue concentration  
- Identified a high proportion of one-time buyers, limiting effective cluster separation  
- Merged similar clusters and redefined segments for clearer interpretation  
- Implemented rule-based RFM segmentation for actionable customer targeting

## Key Insights
- Approximately 30% of customers generate over 55% of total revenue (VIP segment)  
- Pure clustering alone was insufficient for action-oriented segmentation  
- Rule-based RFM provided clearer targeting criteria for marketing decisions

## Current Status
- Customer segmentation completed (KMeans + rule-based RFM)  
- Segment-level profiling and comparison finalized  
- Preparing segment-based revenue trend analysis and lightweight forecasting

## Planned Components (Power BI Dashboard)
- KPI cards (Revenue, Customers, AOV)  
- Customer segment contribution visualization  
- Revenue trend and lightweight forecasting  
- Segment-level profile and comparison table

## Repository Structure
- `rfm.sql` – SQL query used to generate customer-level RFM metrics from transactional data  
- `rfm.csv` – Derived dataset containing RFM metrics extracted via SQL  
- `analyze.ipynb` – Python-based analysis and segmentation workflow  

## Skills Demonstrated
- SQL-based feature engineering (PostgreSQL)  
- Customer segmentation and revenue analysis  
- Data visualization and analytical storytelling  
- Executive and stakeholder-focused reporting

## Tools
PostgreSQL, Python (pandas, scikit-learn), Power BI, KMeans, RFM Analysis

<img width="2160" height="1798" alt="Dashboard 1 (2)" src="https://github.com/user-attachments/assets/01c852e9-6d50-4ed0-909f-0d3a2188f1c8" />

