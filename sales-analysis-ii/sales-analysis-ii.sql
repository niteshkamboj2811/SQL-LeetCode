# Write your MySQL query statement below
# WITH a AS
# (SELECT p.product_id AS product_id, p.product_name AS product_name, s.buyer_id AS buyer_id
#  FROM product AS p, sales AS s
# WHERE p.product_id = s.product_id
# AND p.product_name IN ('S8', 'iPhone'))
 
# SELECT buyer_id
# FROM a
#  WHERE product_name = 'S8' 
# AND buyer_id NOT IN (SELECT buyer_id FROM a WHERE product_name = 'iPhone')

SELECT DISTINCT buyer_id
FROM (SELECT buyer_id  FROM product AS p, sales AS s
WHERE p.product_id = s.product_id
     AND p.product_name = 'S8') AS a
     WHERE a.buyer_id NOT IN (
     SELECT buyer_id FROM product AS p, sales AS s
WHERE p.product_id = s.product_id
     AND p.product_name = 'iPhone' )
     