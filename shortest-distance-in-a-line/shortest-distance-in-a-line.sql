# Write your MySQL query statement below
SELECT MIN(diff) AS shortest
FROM (SELECT ABS(LEAD(x,1) OVER (ORDER BY x) - x) AS diff
FROM point) AS t
