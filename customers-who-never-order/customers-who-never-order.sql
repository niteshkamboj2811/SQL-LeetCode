SELECT name AS Customers
FROM customers AS c
LEFT JOIN
Orders AS o
ON c.id = o.customerid
WHERE o.customerid IS NULL
