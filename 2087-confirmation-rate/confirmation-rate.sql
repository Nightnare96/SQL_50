# Write your MySQL query statement below


SELECT s.user_id,
    round(SUM(case when c.action = "confirmed" then 1 else 0 end )/ COUNT(*),2) as confirmation_rate 

FROM 

signups as s 
LEFT JOIN 
confirmations as c
ON 
s.user_id = c.user_id
GROUP BY s.user_id
ORDER BY confirmation_rate 
