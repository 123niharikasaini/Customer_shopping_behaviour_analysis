# Customer Shopping Behaviour Analysis

### Project Overview

This project presents a Customer Shopping Behaviou Dashboard aimed at uncovering key business insights from customer shopping data. The analysis focuses on understanding customer ordering behavior, sales performance, and product trends in order to improve sales, customer satisfaction, and long-term loyalty.

Special thanks to the Amlan Mohanty YouTube channel for providing the dataset and inspiration for this project.

### Purpose

The objective of this project is to analyze customer shopping data for a leading retail company and visualize key performance indicators to help stakeholders:

1. Understand sales patterns and customer behavior
2. Identify top-performing products
3. Improve customer engagement
4. Optimize marketing and product strategies
   
### Tools & Technologies

1. Python
2. SQL
3. Power BI
4. Data Cleaning & Transformation
5. Exploratory Data Analysis
6. Data Visualization


### Data Source:

The dataset is sourced from the Amlan Mohanty YouTube channel and contains customers shopping data.

###### Key fields included in the dataset are:
1. Customer_id: unique identifier for each row
2. Age, gender, subscription_status, previous_purchases, frequency_of_purchases (customer information)
3. Item_purchased,	category,	purchase_amount, size,	color (product details)
4. Location,	season,	review_rating,	shipping_type,	discount_applied,	payment_method (transaction information)


### Key Performance Indicators (KPIs)

1. Total Revenue - Total income generated
2. Total Customer - Total number of customer
3. Average Rating - Average of rating given to a particular purchase

### Project Implementation
   
#### Data Preprocessing & Feature Engineering (Python)
1. Data Cleaning: Cleaned the raw customer dataset by renaming columns for consistency, removing redundant attributes, and handling missing values to ensure data integrity.
2. Feature Engineering: Created two new analytical columns to uncover deeper insights into customer segments and shopping habits.
3. Pipeline: Exported the transformed, high-quality data into a structured format ready for relational database ingestion.
   
#### Relational Database Analysis (MySQL)
1. Data Ingestion: Imported the cleaned dataset into a MySQL environment.
2. Exploratory Querying: Wrote optimized SQL queries to analyze customer shopping trends, calculate key metrics, and directly answer core business questions regarding retail performance.

#### Interactive Dashboard Development (Power BI)
1. Dynamic Slicers: Implemented global filters including Category, Gender, Subscription Status, Season, and Shipping Type to allow stakeholders to slice data dynamically.
2. Advanced Dynamic Filtering: Engineered a dynamic parameter table allowing users to toggle the dashboard’s Y-axis metrics between Revenue, Rating, and Total Purchases, enabling multiple views within a single visual space.
3. Strategic Data Visualization:
   1. Donut Charts: Formatted to show distribution metrics for Subscription Status, Category and Shipping Type.
   2. Horizontal Bar Graphs: Built to highlight Top N Products and Age Group Distribution.
   3. Customer Segmentation Analysis: Designed a specialized bar chart classifying and visualizing the distribution of New, Loyal, and Returning customer to assist management with retention strategies.

### Key Insights
Based on the data analysis and Power BI visualizations, the following strategic insights were delivered to management:

1. Subscription Growth Opportunity (Gender Gap): Identified a significant gap in subscription adoption, particularly among female customers who currently show zero or minimal subscription rates.
###### Recommendation: Launch targeted marketing campaigns, exclusive perks, or introductory offers specifically designed to convert female shoppers into subscribers.

2. Targeting the High-Value Demographics: The Young Adult age group emerged as the primary revenue driver with the highest customer lifetime value potential.
###### Recommendation: Allocate more marketing budget toward this demographic and tailor product offerings to capture these promising future buyers.

3. Core Product Performance: The Clothing category is the company's clear powerhouse, generating both the highest revenue and the largest volume of total purchases.
###### Recommendation: Maintain strong inventory levels for high-demand apparel and use this category as a hook for cross-selling lesser-performing categories.

4. Data-Driven Customer Retention Strategies:
###### New & Returning Customers: Implement targeted discounts, first-time buyer perks, and personalized milestone benefits to nurture them into becoming high-value, long-term buyers.
###### Loyal Customers: Deploy loyalty appreciation initiatives, such as personalized "Thank You" communication and exclusive early access to sales, to protect and maintain this critical revenue segment.

5. Seasonal Revenue Peak: Sales data revealed that the Fall season drives peak revenue for the company.
###### Recommendation: Optimize supply chains, plan major inventory rests, and launch peak promotional campaigns right before the Autumn surge to maximize seasonal profitability.

### Dashboard

https://github.com/123niharikasaini/Customer_shopping_behaviour_analysis/blob/main/Dashboard_image.png
