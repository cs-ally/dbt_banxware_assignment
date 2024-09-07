SELECT name, SUM(order_total_amount) as total_sales
FROM transformed_sales_data, raw_customer_data
WHERE order_year = 2023 AND transformed_sales_data.customer_id = raw_customer_data.id
GROUP BY name
ORDER BY total_sales DESC
LIMIT 5;