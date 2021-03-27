# # Write your MySQL query statement below

SELECT ROUND(IFNULL(
    (SELECT COUNT(1) FROM (SELECT DISTINCT requester_id, accepter_id FROM requestaccepted) AS A)
/
 (SELECT COUNT(1) FROM (SELECT DISTINCT sender_id, send_to_id FROM friendrequest)AS B), 0),2)
 AS accept_rate