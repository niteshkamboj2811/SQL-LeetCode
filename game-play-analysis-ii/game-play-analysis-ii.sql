# Write your MySQL query statement below
SELECT player_id, device_id
FROM (SELECT player_id, device_id, DENSE_RANK() OVER (PARTITION BY player_id ORDER BY event_date) AS dense_row
     FROM activity) AS t
     WHERE dense_row = 1
