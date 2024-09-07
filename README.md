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
- Python virual environment manager (e.g. 'venv')
- The required Python dependencies will be installed via requirements.txt

**Note:** This project was implemented and tested on macOS. It should work on other operating systems with slight adjustments to certain commands (e.g., activating virtual environments).

## Project Setup

1. Clone this repository to your local machine and navigate to the project folder.
2. Create and activate Python virtual environment in the project folder.
To create a virtual environment with `venv`, run: `python3 -m venv venv`.
To activate the virtual environment with `venv`: `source venv/bin/activate`.
3. Install Python dependencies by running `pip install -r requirements.txt`.
4. Create `~/.dbt` folder and add `profiles.yml` file with your actual Snowflake credentials and database information.
5. Run `dbt debug` from the project folder to test the connection.
6. Run `dbt seed` to load raw data into Snowflake.
7. Run `dbt run --models transformed_sales_data` to perform data transfomations.

## Querying the Data

1. Copy queries in the `queries` folder to Snowflake worksheet to answer the sales team's questions.
2. Queries:
   - `top_5_products_2023.sql`: What are the top 5 products by total sales amount in the year 2023?
   - `top_5_customers_2023.sql`: What are the names of the top 5 customers by total sales amount in the year 2023?
   - `avg_order_value_per_month_2023.sql`: What is the average order value for each month in the year 2023?
   - `cutomer_highest_order_voume_october_2023.sql`: Which customer had the highest order volume in the month of October 2023?
