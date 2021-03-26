# # Write your MySQL query statement below
# SELECT CASE
# WHEN id % 2 = 0 THEN id-1
# WHEN id = (SELECT COUNT(id) FROM seat) THEN id
# ELSE id + 1
# END AS id, student
# FROM seat

# SELECT CASE
# WHEN id % 2 = 0 THEN id - 1
# WHEN id = (SELECT COUNT(id) FROM seat) THEN id
# ELSE id + 1
# END AS id, student
# FROM seat
# ORDER BY 1

SELECT id, IFNULL(CASE 
WHEN id % 2 = 0 THEN LAG(student, 1) OVER (ORDER BY id)
WHEN id % 2 = 1 THEN LEAD(student, 1) OVER (ORDER BY id)
ELSE NULL
END, student) AS student
FROM seat
ORDER BY 1