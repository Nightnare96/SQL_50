# Write your MySQL query statement below

SELECT p.product_id,
    ROUND
      (IFNULL(sum(p.price * u.units)/ sum(u.units),0),
      2)  
      
    as average_price

FROM 

Prices as p 
LEFT JOIN 
unitssold as u
on 
p.product_id = u.product_id 
AND
u.purchase_date BETWEEN p.start_date AND p. end_date 
GROUP BY p.product_id 
