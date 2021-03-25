# CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
# BEGIN
#   RETURN (
#       SELECT DISTINCT Salary
#       FROM 
#       (SELECT salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS row_num
#       FROM employee
#       )AS t 
#       WHERE row_num = N
#   );
# END


CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT Salary AS 'getNthHighestSalary'
      FROM Employee
      ORDER BY Salary DESC
      LIMIT 1 OFFSET N
  );
END