-- Q1
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM read_csv_auto('customers.csv') c
LEFT JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Q2
SELECT c.name, SUM(o.total_amount) AS total_value
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_value DESC
LIMIT 3;

-- Q3
SELECT p.product_name
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
JOIN read_parquet('products.parquet') p
ON o.product_id = p.product_id
WHERE c.city = 'Bangalore';

-- Q4
SELECT c.name, o.order_date, p.product_name, o.quantity
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
JOIN read_parquet('products.parquet') p
ON o.product_id = p.product_id;