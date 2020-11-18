SELECT DISTINCT P.flight_num AS 'flight_num'
FROM FLIGHTS AS P
	JOIN CARRIERS AS C ON P.carrier_id = C.cid 
	JOIN WEEKDAYS AS W ON P.day_of_week_id = W.did
WHERE P.origin_city = "Seattle WA" AND
	  P.dest_city = "Boston MA" AND
	  W.day_of_week = "Monday" AND
	  C.name = "Alaska Airlines Inc.";
-- 3rows
	  