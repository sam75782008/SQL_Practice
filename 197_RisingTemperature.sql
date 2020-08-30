# Write your MySQL query statement below
Select w1.id as id
From Weather as w1, Weather as w2
WHERE w1.Temperature > w2.Temperature AND
DATEDIFF(w1.recordDate,w2.recordDate)=1;