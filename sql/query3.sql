
WITH p AS (
    SELECT Distance,
           NTILE(100) OVER (ORDER BY Distance) AS percentile_bucket
      FROM (
               SELECT Distance
                 FROM uber
                WHERE Date >= '2013-07' AND 
                      Date <= '2013-08'
               UNION ALL
               SELECT Distance
                 FROM yellow
                WHERE Date >= '2013-07' AND 
                      Date <= '2013-08'
           )
)
SELECT MAX(Distance) AS Distance
  FROM p
 WHERE percentile_bucket = 95;