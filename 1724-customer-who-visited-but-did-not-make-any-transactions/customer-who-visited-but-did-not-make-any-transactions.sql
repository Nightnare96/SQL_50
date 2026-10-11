# Write your MySQL query statement below
SELECT customer_id, count(*)as count_no_trans 
FROM visits as v 
LEFT join 
transactions as t 
on v.visit_id = t.visit_id 
WHERE 
t.transaction_id is NULL 
GROUP BY customer_id 