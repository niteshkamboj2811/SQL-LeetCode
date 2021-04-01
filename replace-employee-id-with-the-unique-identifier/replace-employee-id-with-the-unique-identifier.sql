# Write your MySQL query statement below
SELECT eu.unique_id, e.name
FROM employeeuni AS eu
RIGHT JOIN employees AS e
ON eu.id = e.id