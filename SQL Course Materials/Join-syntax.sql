-- INNER JOIN
USE sql_store;
SELECT order_id, c.customer_id, order_date, first_name 	AS name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
    
USE sql_store;
SELECT order_id, o.product_id, name,quantity_in_stock, p.unit_price, o.unit_price AS total_price
FROM order_items o 
JOIN products p 
	ON o.product_id = p.product_id;   
    
-- JOIN Multiple db
USE sql_store;
SELECT *
FROM order_items o 
JOIN sql_inventory.products p
		ON o.product_id = p.product_id;
        
-- SELF JOIN
USE sql_hr;
SELECT e.employee_id,
		e.first_name AS Employee_Name,
        e.job_title,
        m.first_name AS Manager
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;
    
-- JOIN multiple table
USE sql_store;
SELECT o.order_id,
	o.customer_id,
    c.first_name,
    c.last_name,
    o.order_date,
    os.name AS status
FROM orders o 
JOIN customers c 
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id;
    
USE sql_invoicing;
SELECT p.client_id,
	   p.invoice_id,
       c.name,
       c.address,
       c.phone,
       p.date,
       p.amount,
       pm.name AS payment_method
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;
    
-- copound JOIN statements
USE sql_store;
SELECT * 
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;
    
-- Implicit JOIN
USE sql_store;
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

-- OUTER JOIN
USE sql_store;
SELECT c.customer_id,
		c.first_name,
        o.order_id
FROM customers c
LEFT JOIN orders o
		ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

USE sql_store;
SELECT  o.product_id, p.name,o.quantity
FROM products p 
LEFT JOIN order_items o
	ON p.product_id = o.product_id;  

-- OUTER JOIN bw multiple tables    
USE sql_store;
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name AS shipper
FROM customers c 
LEFT JOIN orders o 
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;   

-- SELF OUTER Join
USE sql_hr;
SELECT e.employee_id,
		e.first_name AS Employee_Name,
        e.job_title,
        m.first_name AS Manager
FROM employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id;

-- USING clause
USE sql_store;
SELECT  o.order_id,
		c.first_name
FROM orders o 
LEFT JOIN customers c
		USING(customer_id)
ORDER BY o.order_id;     

-- Natural Join
USE sql_store;
SELECT c.first_name, o.order_id
FROM customers c 
NATURAL JOIN orders o;   

-- CROSS Join
USE sql_store;
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c 
CROSS JOIN products p 
ORDER BY c.first_name; 

-- IMPLICIT
USE sql_store;
SELECT 
	c.first_name AS customer,
	p.name AS product
FROM customers c, products p
ORDER BY c.first_name ;
 

    
    