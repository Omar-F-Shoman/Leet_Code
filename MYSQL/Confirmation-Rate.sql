# Write your MySQL query statement below
SELECT S.user_id, 
       ROUND(IFNULL(AVG(action = 'confirmed'), 0), 2) AS confirmation_rate
FROM Signups AS S
LEFT JOIN Confirmations AS C ON S.user_id = C.user_id
GROUP BY S.user_id;