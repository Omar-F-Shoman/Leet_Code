# Write your MySQL query statement below
SELECT E.name
FROM Employee E
JOIN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
) M
ON E.id = M.managerId;
