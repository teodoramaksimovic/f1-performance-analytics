-- Top 10 drivers by race wins for 2014 - 2024
SELECT d."driver name", COUNT(*) AS total_wins
FROM results r JOIN drivers d ON r.driverId = d.driverId
WHERE r.win = 1
GROUP BY d.driverId, d."driver name"
ORDER BY total_wins DESC
LIMIT 10;