
WITH p AS (SELECT Distance, NTILE(20) OVER (ORDER BY Distance) AS percentile_bucket
FROM (SELECT Distance FROM uber UNION ALL SELECT Distance FROM yellow))
SELECT MAX(Distance) as Distance
FROM p where percentile_bucket = 19;