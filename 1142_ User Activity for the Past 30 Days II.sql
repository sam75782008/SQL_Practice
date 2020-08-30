# Write your MySQL query statement below
WITH a AS (SELECT DISTINCT user_id, COUNT(DISTINCT session_id) AS cnt
          FROM Activity
          WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
          GROUP BY user_id)

SELECT ROUND(ifnull(AVG(cnt),0),2) AS average_sessions_per_user FROM a