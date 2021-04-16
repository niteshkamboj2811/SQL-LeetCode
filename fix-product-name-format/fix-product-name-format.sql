# Write your MySQL query statement below
SELECT LOWER(TRIM(product_name)) AS PRODUCT_NAME, LEFT(sale_date, 7) AS SALE_DATE, COUNT(sale_id) AS TOTAL
FROM sales
GROUP BY 1, 2
ORDER BY 1, 2