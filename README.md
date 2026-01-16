📊 Hybrid Customer Segmentation & Revenue Analysis

(Olist E-commerce Dataset from Kaggle(https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce))

Overview

This project analyzes customer purchasing behavior to support revenue optimization through customer segmentation and trend analysis.
It combines exploratory clustering with rule-based RFM segmentation to balance analytical insight and business actionability.

Approach

Built customer-level RFM metrics using PostgreSQL SQL joins and aggregations  
Applied KMeans clustering to explore customer structure and identify revenue concentration  
Identified high proportion of one-time buyers, limiting effective cluster separation  
Merged similar clusters and redefined segments for clearer interpretation  
Implemented rule-based RFM segmentation for actionable customer targeting

Key Insights

Approximately 30% of customers generate over 55% of total revenue (VIP segment)  
Pure clustering alone was insufficient for action-oriented segmentation  
Rule-based RFM provided clearer targeting criteria for marketing decisions


Current Status

Customer segmentation completed (KMeans + Rule-based RFM)

Segment-level profiling and comparison finalized

Preparing segment-based revenue trend analysis and forecasting

Tools

PostgreSQL SQL, Python (pandas, scikit-learn), KMeans, RFM Analysis