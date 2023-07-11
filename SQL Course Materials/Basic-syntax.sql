-- USE DATABASE
USE sql_store;

-- SELECT STATEMENT
SELECT 
	name, 
    unit_price,
    (unit_price * 1.1) AS new_price
    FROM products;
    
-- WHERE STATEMENT
USE sql_store;
SELECT * 
FROM customers;

SELECT * 
FROM customers 
WHERE birth_date > '1990-01-01';

-- OR
USE sql_store;
SELECT * 
FROM customers
WHERE birth_date > ' 1990-01-01' OR state = 'va';

-- AND
USE sql_store;
SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' AND points > 1000;

-- BETWEEN
USE sql_store;
SELECT * 
FROM customers 
WHERE points BETWEEN 1000 AND 3000;

-- LIKE
USE sql_store;
SELECT * 
FROM customers
WHERE first_name LIKE 'b%';
-- % any no of characters
-- _ single character LIKE 'b_y' 3 letter word

-- REGEXP
USE sql_store;
SELECT * FROM customers
WHERE last_name REGEXP 'd';
-- ^d beginning of string
-- d$ end of a string
-- 'field|mac' search for field or mac
-- '[gim]e' before e either g or i or m reverse e[gim] e[a-h]

USE sql_store;
SELECT * FROM customers WHERE first_name REGEXP 'ELKA|AMBUR';

USE sql_store;
SELECT * FROM customers WHERE last_name REGEXP 'ey$|on$';

USE sql_store;
SELECT * FROM customers WHERE last_name REGEXP '^MY|SE';

USE sql_store;
SELECT * FROM customers WHERE last_name REGEXP 'b[ru]';

-- IS NULL
USE sql_store;
SELECT * 
FROM customers 
WHERE phone IS NULL;

-- NOT NULL
USE sql_store;
SELECT *
FROM customers
WHERE phone IS NOT NULL;

-- ORDER BY
USE sql_store;
SELECT *
FROM customers
ORDER BY first_name;
-- ORDER BY name DESC descending order

USE sql_store;
SELECT *, unit_price * quantity AS new  FROM order_items WHERE order_id = 2 ORDER BY new DESC;

-- LIMIT
USE sql_store;
SELECT *
FROM customers
LIMIT 3;

-- LIMIT 6,3; skip till 6 then take the next 3









    

