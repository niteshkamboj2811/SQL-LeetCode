# Write your MySQL query statement below
SELECT sell_date, COUNT(DISTINCT product) AS num_sold, GROUP_CONCAT(DISTINCT product SEPARATOR ',') AS products
FROM activities
GROUP BY 1