# Write your MySQL query statement below
SELECT COALESCE(ROUND(COUNT(DISTINCT session_id)/ COUNT(DISTINCT user_id),2), 0.00) AS average_sessions_per_user
FROM activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
# AND activity_type NOT IN ('open_seesion', 'end_session')