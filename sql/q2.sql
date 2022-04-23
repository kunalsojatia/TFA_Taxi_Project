SELECT COUNT(*) Total_Uber_Rides, strftime('%w', Date) Day_of_Week
FROM uber
GROUP BY Day_of_Week
ORDER BY COUNT(*) DESC
