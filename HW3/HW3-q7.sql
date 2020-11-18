SELECT DISTINCT Top 20 C.name AS carrier
FROM FLIGHTS AS P1 JOIN CARRIERS AS C ON P1.carrier_id = C.cid	
WHERE P1.origin_city = 'Seattle WA' AND
	  P1.dest_city = 'San Francisco CA'
ORDER BY carrier ASC;

--comment
-- 1 second
-- 4 rows
-- print
-- carrier
-- Alaska Airlines Inc.
-- SkyWest Airlines Inc.
-- United Air Lines Inc.
-- Virgin America


