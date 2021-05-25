# Write your MySQL query statement below

SELECT v.customer_id, COUNT(1) AS count_no_trans
FROM visits AS v LEFT JOIN transactions AS t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY 1;