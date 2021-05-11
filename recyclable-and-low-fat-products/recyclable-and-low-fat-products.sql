# Write your MySQL query statement below
SELECT product_id
FROM products
WHERE product_id in (SELECT DISTINCT product_id 
                    FROM products 
                     WHERE low_fats = 'Y' 
                    AND recyclable = 'Y');