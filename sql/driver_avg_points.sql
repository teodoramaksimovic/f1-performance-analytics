-- average points per race by driver for  2014 - 2024
--drivers with less than 10 races will be excluded

WITH driver_stats AS (
    SELECT d."driver name", COUNT(*) AS total_races, SUM(r.points) AS total_points
    FROM results r
    JOIN drivers d ON r.driverId = d.driverId
    GROUP BY d.driverId, d."driver name"
)

SELECT "driver name", total_races, total_points,
    ROUND(CAST(total_points AS NUMERIC) / total_races, 2) AS avg_points_per_race
FROM driver_stats
WHERE total_races >= 10
ORDER BY avg_points_per_race DESC;
