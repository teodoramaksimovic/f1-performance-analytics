-- Qualifying vs race performance for 2014-2024

SELECT d."driver name",
        COUNT(*) AS total_races,
        ROUND(AVG(q.position), 2) AS avg_qualifying_position,
        ROUND(AVG(r.positionOrder), 2) AS avg_race_position,
        ROUND(AVG(q.position - r.positionOrder), 2) AS avg_positions_gained
FROM qualifying q JOIN results r ON q.raceId = r.raceId AND q.driverId = r.driverId
                  JOIN drivers d ON q.driverId = d.driverId
GROUP BY d.driverId, d."driver name"
ORDER BY avg_positions_gained DESC;