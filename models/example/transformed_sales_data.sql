WITH transformed_sales_data AS (
  SELECT 
    order_id,
    order_date,
    customer_id,
    product_id,
    product_name,
    quantity,
    price,
    order_status,
    -- extract year, month, and day
    EXTRACT(YEAR FROM TO_DATE(order_date, 'MM/DD/YYYY')) AS order_year,
    EXTRACT(MONTH FROM TO_DATE(order_date, 'MM/DD/YYYY')) AS order_month,
    EXTRACT(DAY FROM TO_DATE(order_date, 'MM/DD/YYYY')) AS order_day,
    -- calculate total sales amount for each order
    quantity * price AS order_total_amount
  FROM {{ ref('sales') }}
)
SELECT * FROM transformed_sales_data