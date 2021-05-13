# Write your MySQL query statement below
SELECT w.name AS warehouse_name, SUM((p.width*p.length*p.height)*w.units) AS volume
FROM Warehouse AS w, Products AS p
WHERE w.product_id = p.product_id
GROUP BY 1