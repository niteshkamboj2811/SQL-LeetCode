# Write your MySQL query statement below
# SELECT l1.num
# FROM Logs AS l1, Logs AS l2, Logs AS l3
# WHERE l1.id = l2.id - 1
# AND l2.id = l3.id - 1
# AND l1.num = l2.num
# AND l2.num = l3.num

# SELECT DISTINCT num as ConsecutiveNums
# FROM
# (
# SELECT num,LEAD(num) OVER(ORDER BY id) AS lead, LAG(num) OVER (ORDER BY id) AS lag
# FROM logs
# )t
# WHERE num=lead and num=lag;


# WITH src as (SELECT CASE WHEN t.num = LEAD(t.num) OVER(ORDER BY id)
# AND t.num = LEAD(t.num,2) OVER(ORDER BY id)
# THEN t.num
# ELSE NULL END as ConsecutiveNums FROM Logs t )
# SELECT DISTINCT src.ConsecutiveNums FROM src WHERE src.ConsecutiveNums IS NOT NULL

WITH test_cte AS (SELECT CASE
                 WHEN num = LEAD(num, 1) OVER (ORDER BY id) 
                 AND num = LEAD(num, 2) OVER (ORDER BY id)
                 THEN num
                 ELSE NULL
                 END AS ConsecutiveNums
                 FROM logs)

SELECT DISTINCT ConsecutiveNums
FROM test_cte
WHERE ConsecutiveNums is NOT NULL