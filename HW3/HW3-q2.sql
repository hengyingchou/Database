SELECT DISTINCT Top 20 P1.origin_city AS city
FROM [dbo].[FLIGHTS] AS P1
WHERE P1.canceled = 0 
GROUP BY P1.origin_city
HAVING Max(P1.actual_time) < 180
Order by city ASC;
-- Comment
-- 109 rows
-- 4 seconds
--print
-- Aberdeen SD
-- Abilene TX
-- Alpena MI
-- Ashland WV
-- Augusta GA
-- Barrow AK
-- Beaumont/Port Arthur TX
-- Bemidji MN
-- Bethel AK
-- Binghamton NY
-- Brainerd MN
-- Bristol/Johnson City/Kingsport TN
-- Butte MT
-- Carlsbad CA
-- Casper WY
-- Cedar City UT
-- Chico CA
-- College Station/Bryan TX
-- Columbia MO
-- Columbus GA