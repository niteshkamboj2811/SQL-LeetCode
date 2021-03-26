# Write your MySQL query statement below
WITH test_cte AS (SELECT d.name AS Department, e.Name AS Employee, e.salary AS Salary, RANK() OVER (PARTITION BY d.name ORDER BY e.Salary DESC) AS row_num
FROM employee AS e, Department AS d
WHERE e.departmentid = d.id)

SELECT Department, Employee, Salary
FROM test_cte
WHERE row_num = 1
