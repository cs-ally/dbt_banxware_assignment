## Project Setup and Workflow

1. Created a Snowflake account and a database named `home_assignment`.
2. Created project folder on the local machine.
3. Created and activated python virtual environment for the project.
4. Installed `dbt-snowflake` using `pip install`.
5. Created `~/.dbt` folder at the root folder.
6. Ran `dbt init` and followed the instruction to configure the project and connection with the Snowflake.
7. Ran `dbt debug` to test the setup.
8. Moved raw data files to the `seeds` folder. 
9. Configured aliases in `dbt_project.yml` to change table names during loading.
9. Ran `dbt seed` to load raw data into Snowflake as tables.
10. Added `transformed_sales_data.sql` to handle data transfomation. Extracted year, month, and day from `order_date` to simplify time-based queries. Included all information from the original sales table into the transformed table to allow for flexible future analysis.
11. Ran `dbt run --models transformed_sales_data` to perform the transformations.
12. Tested the transformation result by quering the transformed table in Snowflake.
13. Added 4 SQL queries file to `queries` folder and tested the queries using the Snowflake worksheet.