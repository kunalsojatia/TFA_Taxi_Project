
Select COUNT(Distance) Rides,AVG(Distance) Average_Distance,strftime('%Y-%m-%d', Date) Date
from (SELECT Distance,Date FROM uber WHERE strftime('%Y', Date) IN('2009') UNION ALL 
SELECT Distance,Date FROM yellow WHERE strftime('%Y', Date) IN('2009')) 
GROUP BY strftime('%Y-%m-%d', Date) ORDER BY Rides DESC LIMIT 10
