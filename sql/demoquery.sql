SELECT AVG(Distance) Average_Day_Distance,strftime('%Y-%m-%d', Date) Day 
from (SELECT Distance,Date FROM uber WHERE strftime('%Y', Date) 
IN('2009') UNION ALL SELECT Distance,Date FROM yellow WHERE strftime('%Y', Date) IN('2009')) 
GROUP BY Day ORDER BY AVG(Distance) DESC LIMIT 10;