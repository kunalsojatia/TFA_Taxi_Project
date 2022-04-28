
SELECT  strftime('%H', Date) hour,COUNT(*) total_yellow_rides
FROM yellow
GROUP BY hour
ORDER BY COUNT(*) DESC