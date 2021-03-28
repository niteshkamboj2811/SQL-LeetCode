# Write your MySQL query statement below
SELECT actor_id, director_id
FROM actordirector 
GROUP BY 1, 2
HAVING COUNT(1) >= 3