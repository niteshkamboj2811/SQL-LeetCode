# Write your MySQL query statement below
SELECT machine_id,
ROUND(AVG(end_time - start_time), 3) AS processing_time
FROM
(SELECT machine_id,
LEAD(timestamp, 1) OVER (PARTITION BY machine_id, process_id ORDER BY activity_type) AS end_time, timestamp AS start_time
FROM activity)AS t
GROUP BY 1
