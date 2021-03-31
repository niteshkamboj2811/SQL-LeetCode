# Write your MySQL query statement below
WITH a AS 
(SELECT query_name, ROUND(AVG(rating/position), 2) AS quality, ROUND(100*AVG(rating < 3), 2) AS
 poor_query_percentage 
FROM queries
GROUP BY 1)

# SELECT * FROM A

SELECT query_name, ROUND(AVG(rating/position), 2) AS quality,
ROUND(100 * AVG(rating < 3), 2) AS poor_query_percentage
FROM queries
GROUP BY 1