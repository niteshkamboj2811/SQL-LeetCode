# Write your MySQL query statement below
SELECT u.name, COALESCE(SUM(r.distance), 0) AS travelled_distance
FROM users AS u LEFT JOIN
rides AS r
ON u.id = r.user_id
GROUP BY 1
ORDER BY 2 DESC, 1