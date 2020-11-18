SELECT DISTINCT Top 20 c.name AS carrier
FROM CARRIERS AS c 
WHERE c.cid in (SELECT P1.carrier_id
FROM FLIGHTS AS P1 
WHERE P1.origin_city = 'Seattle WA' AND 
      P1.dest_city = 'San Francisco CA')
ORDER BY carrier ASC;

--comment
-- 4 second
-- 4 rows
--print
-- carrier
-- Alaska Airlines Inc.
-- SkyWest Airlines Inc.
-- United Air Lines Inc.
-- Virgin America