# Write your MySQL query statement below
WITH A AS(SELECT DISTINCT p.product_id As product_id, 
          SUM(p.price * u.units) AS total_price, SUM(u.units) AS total_sold
FROM prices AS p, unitssold AS u
WHERE p.product_id = u.product_id
          AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id)

SELECT product_id, ROUND(total_price/total_sold, 2) AS average_price
FROM A
GROUP BY 1

