-- QUERY 1: HIGH-VALUE TIP ZONES
-- Identifying which neighborhoods consistently tip above the city average.
WITH Citywide_Avg AS (
    SELECT AVG(tip_amount) as city_avg FROM taxi_trips
)
SELECT 
    pickup_zone, 
    AVG(tip_amount) as zone_avg
FROM taxi_trips, Citywide_Avg
GROUP BY pickup_zone
HAVING AVG(tip_amount) > city_avg;

-- QUERY 2: THE TRAFFIC TRAP (SPEED ANALYSIS)
-- Calculating MPH to find the slowest hours of the day.
WITH Trip_Speeds AS (
    SELECT 
        EXTRACT(HOUR FROM pickup_datetime) AS hour_of_day,
        (trip_distance / (duration_minutes / 60.0)) AS speed_mph
    FROM taxi_trips
    WHERE duration_minutes > 0 AND trip_distance > 0
)
SELECT 
    hour_of_day,
    AVG(speed_mph) AS avg_speed
FROM Trip_Speeds
GROUP BY hour_of_day
ORDER BY avg_speed ASC;
