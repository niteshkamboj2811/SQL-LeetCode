# Write your MySQL query statement below
SELECT p.product_name AS product_name, 
SUM(unit) AS unit
FROM products AS p, orders AS o
WHERE p.product_id = o.product_id
AND MONTH(o.order_date) = '02'
GROUP BY 1
HAVING SUM(unit) >= 100