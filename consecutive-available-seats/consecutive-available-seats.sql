# # # Write your MySQL query statement below
# WITH t_cte AS (SELECT seat_id, LEAD(free, 1) OVER (ORDER BY seat_id) AS 
# WHEN LEAD(free, 2) OVER (ORDER BY seat_id) = free THEN seat_id
# ELSE NULL
# END AS seat_id
# FROM cinema

select seat_id from (
    select *, 
lag(free) over (order by seat_id) as prev,
lead(free) over (order by seat_id) as next
from cinema) a
where (free <> 0) and (prev <> 0 or next <> 0)