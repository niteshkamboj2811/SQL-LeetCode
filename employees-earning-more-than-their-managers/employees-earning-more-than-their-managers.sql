# Write your MySQL query statement below
SELECT t1.name AS Employee
FROM employee AS t1, employee AS t2
WHERE t1.managerid = t2.id
AND t1.salary>t2.salary