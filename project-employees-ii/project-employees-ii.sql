# Write your MySQL query statement below
WITH test_cte AS (
SELECT project_id, RANK() OVER (ORDER BY COUNT(employee_id) DESC) AS rrank
    FROM project
    GROUP BY 1)

SELECT project_id
FROM test_cte
WHERE rrank = 1



# RANK() OVER (ORDER BY COUNT(employee_id) DESC) AS num_ranking
