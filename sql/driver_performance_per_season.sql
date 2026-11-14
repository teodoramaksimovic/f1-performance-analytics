--Driver performance by season for 2014 - 2024
SELECT  ra.year AS season,
        d."driver name",
        COUNT(*) AS total_races,
        SUM(r.win) AS total_wins,
        SUM(r.podium) AS total_podiums,
        SUM(r.points) AS total_points
FROM results r JOIN drivers d ON r.driverId = d.driverId 
               JOIN races ra ON r.raceId = ra.raceId
GROUP BY ra.year, d.driverId, d."driver name"
ORDER BY season DESC, total_points DESC;