# Banxware Sales Analysis Assignment

## Project Setup

1. Set up Snowflake account.
2. Create project folder.
3. Create python environment.
4. Install dbt-snowflake through pip install.
5. Create /.dbt folder at root folder.
6. Run `dbt init` and follow instruction to configure connection with Snowflake.
7. Run `dbt debug` to test the set up.
8. Move raw data to seeds folder. Set up aliases in seed configuration to change table names in Snowflake.
9. Use `dbt seed` to load raw data into Snowflake.
10. Configure tranformation in models/examples folder.
11. Run `dbt run` to perform transformations.

## Querying the Data

1. Use the queries in the `queries/` folder to answer the sales team's questions.
2. Queries:
   - `top_5_products_2023.sql`: What are the top 5 products by total sales amount in the year 2023?
   - `top_5_customers_2023.sql`: What are the names of the top 5 customers by total sales amount in the year 2023?
   - `avg_order_value_per_month_2023.sql`: What is the average order value for each month in the year 2023?
   - `cutomer_highest_order_voume_october_2023.sql`: Which customer had the highest order volume in the month of October 2023?
