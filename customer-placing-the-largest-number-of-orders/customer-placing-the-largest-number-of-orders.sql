# Write your MySQL query statement below
# SELECT customer_number
# FROM (SELECT customer_number, COUNT(order_number) OVER (ORDER BY customer_number) order_nums FROM orders) AS t
# ORDER BY order_nums DESC
# LIMIT 1

SELECT customer_number 
FROM orders
GROUP BY 1
ORDER BY COUNT(order_number) DESC
LIMIT 1