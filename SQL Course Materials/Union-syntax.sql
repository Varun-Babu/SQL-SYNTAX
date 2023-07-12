-- UNION
USE sql_store;
SELECT order_id,
order_date,
'Active' AS status
FROM orders
WHERE order_date>='2019-01-01'
UNION
SELECT order_id,
order_date,
'Archived' AS status
FROM orders
WHERE order_date <'2019-01-01';


USE sql_store;
SELECT
	customer_id,
    first_name,
    points,
    'bronze' AS Medal
FROM customers
WHERE points<2000
UNION
SELECT 
	customer_id,
    first_name,
    points,
    'silver'
FROM customers    
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'gold'
FROM customers
WHERE points>3000
ORDER BY points

