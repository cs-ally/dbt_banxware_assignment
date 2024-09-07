SELECT customer_id, name, SUM(quantity) as order_volume
FROM transformed_sales_data, raw_customer_data
WHERE transformed_sales_data.customer_id = raw_customer_data.id
    AND order_year = 2023
    AND order_month = 10
GROUP BY customer_id, name
ORDER BY order_volume DESC
LIMIT 1;