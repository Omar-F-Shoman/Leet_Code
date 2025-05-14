# Write your MySQL query statement below
SELECT p.project_id,ROUND(AVG(e.experience_years),2) average_years
FROM Project p
LEFT JOIN Employee e 
ON p.employee_id = e.employee_id
AND e.experience_years IS NOT NULL
GROUP BY  p.project_id
