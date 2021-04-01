# Write your MySQL query statement below
SELECT ad_id, 
COALESCE(ROUND(SUM(action = 'Clicked') / SUM(action IN ('Clicked', 'Viewed')) * 100 , 2), 0) AS ctr
FROM ads
GROUP BY 1
ORDER BY 2 DESC, 1 