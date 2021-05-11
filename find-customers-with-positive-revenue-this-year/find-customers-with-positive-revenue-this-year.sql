# Write your MySQL query statement below
SELECT customer_id
FROM customers
WHERE year = 2021
GROUP BY 1
HAVING SUM(revenue) > 0;