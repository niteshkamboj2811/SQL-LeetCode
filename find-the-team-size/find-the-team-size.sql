# Write your MySQL query statement below
SELECT employee_id, COUNT(1) OVER (PARTITION BY team_id) AS team_size
FROM employee
GROUP BY 1