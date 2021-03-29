# Write your MySQL query statement below      
# WITH a AS (
# SELECT extra AS report_reason, COUNT(DISTINCT post_id) AS report_count, 'action'
# FROM actions
# WHERE action_date = '2019-07-04'
#     AND extra IS NOT NULL
# GROUP BY 1)

# SELECT report_reason, report_count
# FROM a

SELECT extra AS report_reason, COUNT(DISTINCT post_id) AS report_count
FROM actions
WHERE action_date = '2019-07-04'
AND extra IS NOT NULL
AND action = 'report'
# where action like "%report%" 
# and action_date like "%2019-07-04%" 
# and extra is not null 

GROUP BY 1