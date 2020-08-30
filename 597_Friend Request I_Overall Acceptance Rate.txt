# Write your MySQL query statement below
WITH a AS (SELECT COUNT(DISTINCT requester_id, accepter_id) AS accept FROM request_accepted),

b AS (SELECT COUNT(DISTINCT sender_id, send_to_id) AS request FROM friend_request)

SELECT ROUND(ifnull(accept/request, 0),2) AS accept_rate FROM a, b