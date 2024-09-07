SELECT order_month, AVG(order_total_amount)
FROM transformed_sales_data
WHERE order_year = 2023
GROUP BY order_month
ORDER BY order_month ASC;