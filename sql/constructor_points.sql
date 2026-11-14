-- Top 10 constructors by total points for 2014 - 2024
SELECT c.name AS constructor, ROUND(SUM(r.points)::NUMERIC, 2) AS total_points
FROM results r JOIN constructors c ON r.constructorId = c.constructorId
GROUP BY c.constructorId, c.name
ORDER BY total_points DESC
LIMIT 10;