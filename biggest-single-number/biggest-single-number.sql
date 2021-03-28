# Write your MySQL query statement below
SELECT MAX(num) AS num
FROM (SELECT num, COUNT(1) FROM my_numbers
      GROUP BY num
      HAVING COUNT(1) = 1) AS t
     