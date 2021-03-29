# Write your MySQL query statement below
SELECT DISTINCT p.product_id AS product_id, p.product_name AS product_name 
FROM product AS p, sales AS s
WHERE p.product_id = s.product_id
AND s.sale_date BETWEEN '2019-01-01' AND '2019-03-31'
AND s.product_id NOT IN (SELECT product_id 
                         FROM sales
                         WHERE sale_date < '2019-01-01' OR sale_date > '2019-03-31' )


