SELECT DISTINCT Top 20 F.dest_city AS city 
FROM [dbo].[FLights] AS F
        
WHERE F.dest_city not in (SELECT DISTINCT F1.dest_city FROM [dbo].[FLIGHTS] AS F1 WHERE F1.origin_city = 'Seattle WA' ) AND 
      F.dest_city not in (SELECT DISTINCT P2.dest_city AS city FROM [dbo].[FLIGHTS] AS P1,
      [dbo].[FLIGHTS] AS P2
WHERE P1.dest_city = P2.origin_city AND 
    P1.origin_city = 'Seattle WA')
ORDER BY city ASC;

--comment
-- 179 second
-- 3 rows
-- print
-- city
-- Devils Lake ND
-- Hattiesburg/Laurel MS
-- St. Augustine FL

