SELECT DISTINCT Top 20 P2.dest_city AS city
FROM [dbo].[FLIGHTS] AS P1,
 [dbo].[FLIGHTS] AS P2
WHERE P1.dest_city = P2.origin_city AND 
    P1.origin_city = 'Seattle WA' AND
    P2.dest_city !=  'Seattle WA' AND
    P2.dest_city NOT IN(SELECT P3.dest_city FROM [dbo].[FLIGHTS] AS P3 WHERE P3.origin_city = 'Seattle WA' )
ORDER BY city ASC;

-- Comment
-- 20 secinds
-- 256 rows
--print
-- city
-- Aberdeen SD
-- Abilene TX
-- Adak Island AK
-- Aguadilla PR
-- Akron OH
-- Albany GA
-- Albany NY
-- Alexandria LA
-- Allentown/Bethlehem/Easton PA
-- Alpena MI
-- Amarillo TX
-- Appleton WI
-- Arcata/Eureka CA
-- Asheville NC
-- Ashland WV
-- Aspen CO
-- Atlantic City NJ
-- Augusta GA
-- Bakersfield CA
-- Bangor ME
