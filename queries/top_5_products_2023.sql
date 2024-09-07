SELECT product_name, SUM(order_total_amount) as total_sales
FROM transformed_sales_data
WHERE order_year = 2023
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;