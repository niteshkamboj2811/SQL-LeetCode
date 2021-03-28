# Write your MySQL query statement below
WITH t_cte AS(SELECT seller_id, SUM(price) AS total_price
     FROM sales
     GROUP BY 1)

SELECT seller_id
FROM t_cte
WHERE total_price = (SELECT MAX(total_price) FROM t_cte)     