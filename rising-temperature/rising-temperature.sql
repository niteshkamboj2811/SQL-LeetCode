# Write your MySQL query statement below
# SELECT id
# FROM 
# (SELECT id, temperature, LAG(Temperature, 1) OVER (ORDER BY temperature) AS prev_temp
# FROM weather) AS t
# WHERE temperature > prev_temp;

# SELECT t1.id
# FROM weather t1, weather t2
# WHERE DATEDIFF(t1.recordDate, t2.recordDate) = 1
# AND t1.temperature > t2.temperature;

Select Id from (
Select
id,
recordDate,
Temperature,
lag(Temperature,1) over (order by recordDate) as prev_temp,
lag(recordDate,1) over (order by recordDate) as prev_date
from Weather ) tab
where Temperature > prev_temp
and datediff(recordDate, prev_date) = 1;