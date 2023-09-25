WITH cte
AS (
	SELECT managerId
	FROM Employee
	GROUP BY managerId
	HAVING COUNT(*) >= 5
	)
SELECT e.name
FROM employee e
JOIN cte ON e.id = cte.managerId
