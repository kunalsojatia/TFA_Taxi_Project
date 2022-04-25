
SELECT COUNT(*) Number_of_Rides,Date as Windiest_Dates from (SELECT Distance,strftime('%Y-%m-%d', Date) Date from uber UNION ALL Select Distance,strftime('%Y-%m-%d', Date) Date from yellow) WHERE Date
IN(SELECT strftime('%Y-%m-%d', Date) Day 
from dayweather ORDER BY DailyAvgWindSpeed DESC LIMIT 10) GROUP BY Date;
