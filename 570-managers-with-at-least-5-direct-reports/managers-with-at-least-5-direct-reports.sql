# Write your MySQL query statement below

SELECT a1.name
FROM 
employee as a1
JOIN 
employee as a2 
ON a1.id = a2.managerId
GROUP BY a2. managerId 
having COUNT(*) >= 5



