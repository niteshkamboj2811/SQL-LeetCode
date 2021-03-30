# Write your MySQL query statement below

WITH a AS (SELECT CASE
WHEN order_date = customer_pref_delivery_date THEN 1
        ELSE 0
        END AS types_of_order
              FROM delivery)
              
SELECT ROUND(SUM(types_of_order)/COUNT(types_of_order) * 100,2) AS immediate_percentage 
FROM a
