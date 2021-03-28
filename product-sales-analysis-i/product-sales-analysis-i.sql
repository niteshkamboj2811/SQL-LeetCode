# Write your MySQL query statement below
SELECT p.product_name, s.year, s.price
FROM sales AS s, product AS p
WHERE s.product_id = p.product_id
GROUP BY s.sale_id