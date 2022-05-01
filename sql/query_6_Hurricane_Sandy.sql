
SELECT strftime('%Y-%m-%d Hour %H', HurricaneSandy3.Date) Date_Hour,
       Number_of_Rides,
       hourweather.HourlyWindSpeed AS Sustained_Wind_Speed,
       hourweather.HourlyPrecipitation AS Hourly_Precipitation
  FROM HurricaneSandy3
       LEFT JOIN
       hourweather ON hourweather.DATE = HurricaneSandy3.Date;
