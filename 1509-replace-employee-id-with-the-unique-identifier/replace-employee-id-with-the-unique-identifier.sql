# Write your MySQL query statement below
SELECT eu.unique_id, e.name 
FROM Employees as e
LEFT JOIN
employeeUNI as eu 
on 
e.id = eu.id 