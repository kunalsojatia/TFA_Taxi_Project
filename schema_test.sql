CREATE TABLE IF NOT EXISTS uber (
"index" BIGINT, 
"Total_Amt" FLOAT, 
"Trip_Pickup_DateTime" TEXT, 
"Start_Lon" FLOAT, 
"Start_Lat" FLOAT, 
"End_Lon" FLOAT, 
"End_Lat" FLOAT, 
"Date" DATETIME, 
"Distance" FLOAT, 
"Type" TEXT
);


CREATE TABLE IF NOT EXISTS yellow (
"index" BIGINT, 
"Trip_Pickup_DateTime" TEXT, 
"Start_Lon" FLOAT, 
"Start_Lat" FLOAT, 
"End_Lon" FLOAT, 
"End_Lat" FLOAT, 
"Tip_Amt" FLOAT,
"Total_Amt" FLOAT, 
"Date" DATETIME, 
"Distance" FLOAT, 
"Type" TEXT
);

CREATE TABLE hourtable (
"DATE" DATETIME, 
"HourlyTemperature" FLOAT, 
"HourlyWindSpeed" FLOAT, 
"HourlyPrecipitation" FLOAT
);


CREATE TABLE daytable (
	"DATE" DATE, 
	"DailyTemperature" FLOAT, 
	"DailyAvgWindSpeed" FLOAT
);

CREATE VIEW IF NOT EXISTS HurricaneSandy3 AS
    SELECT Date,
           Count( * ) Number_of_Rides
      FROM (
               SELECT Date,
                      Distance
                 FROM (
                          SELECT Date,
                                 Distance
                            FROM uber
                          UNION ALL
                          SELECT Date,
                                 Distance
                            FROM yellow
                      )
                WHERE Date >= '2012-10-21' AND 
                      Date <= '2012-11-03'
           )
     GROUP BY Date;
     
     