
SELECT COUNT(*) total_yellow_rides, strftime('%H', Date) hour
FROM yellow
GROUP BY hour
ORDER BY COUNT(*) DESC