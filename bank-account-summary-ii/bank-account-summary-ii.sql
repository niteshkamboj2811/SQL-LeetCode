# Write your MySQL query statement below
SELECT name, balance 
FROM (SELECT u.name AS name, sum(t.amount) AS balance, t.account
FROM transactions AS t, users AS u
WHERE t.account = u.account
GROUP BY t.account) AS t
WHERE balance > 10000