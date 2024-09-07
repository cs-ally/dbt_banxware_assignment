# Banxware Sales Analysis Assignment

## Overview

This project is a data engineering take-home assignment designed to create a data pipeline that processes and analyzes fictional sales data. Using dbt (Data Build Tool) and Snowflake as the data warehouse, the project performs the following tasks:

- Loads raw sales and customer data from CSV files into Snowflake.
- Transforms the raw data into an analysis-ready format.
- Provides SQL queries to answer sales team question.

## Prerequisites

Before running this project, ensure you have the following tools and accounts set up:

- Python 3.x installed on your local machine
- A Snowflake account
- dbt (Data Build Tool) installed

## Project Setup

1. Clone this repository to your local machine.
2. Install Python dependencies by running `pip install -r requirements.txt`
3. Configure profiles.yml file in your `~/.dbt` directory with your actual Snowflake credentials.
4. Run `dbt debug` to test the connection.
5. Run `dbt seed` to load raw data into Snowflake.
6. Run `dbt run --models transformed_sales_data` to perform data transfomations.

## Querying the Data

1. Copy queries in the `queries` folder to Snowflake worksheet to answer the sales team's questions.
2. Queries:
   - `top_5_products_2023.sql`: What are the top 5 products by total sales amount in the year 2023?
   - `top_5_customers_2023.sql`: What are the names of the top 5 customers by total sales amount in the year 2023?
   - `avg_order_value_per_month_2023.sql`: What is the average order value for each month in the year 2023?
   - `cutomer_highest_order_voume_october_2023.sql`: Which customer had the highest order volume in the month of October 2023?
