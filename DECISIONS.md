# Decisions Made

1. Used `dbt seed` to easily ingest data.
2. Extracted year, month, and day from `order_date` to simplify time-based queries.
3. Used calculated fields like `total_sales_amount` to help with analysis.
4. Included all the information from the sales table into transformed sales table to ensure flexibility for future analysis.