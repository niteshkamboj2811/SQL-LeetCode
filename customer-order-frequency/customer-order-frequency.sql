# Write your MySQL query statement below
SELECT o.customer_id, c.name
FROM customers AS c, product AS p, orders As o
WHERE c.customer_id = o.customer_id AND o.product_id = p.product_id
GROUP BY 1
HAVING SUM(CASE WHEN MONTH(o.order_date) = '06' THEN p.price * o.quantity ELSE 0 END) >= 100
AND
SUM(CASE WHEN MONTH(o.order_date) = '07' THEN p.price * o.quantity ELSE 0 END) >= 100

# SELECT o.customer_id, c.name
# FROM customers AS c, product AS p, orders As o
# WHERE c.customer_id = o.customer_id AND o.product_id = p.product_id
# GROUP BY 1
# HAVING SUM(CASE WHEN MONTH(o.order_date)=6 THEN p.price * o.quantity ELSE 0 END) >= 100
# AND 
# SUM(CASE WHEN MONTH(o.order_date) = '07' THEN p.price * o.quantity ELSE 0 END) >= 100
