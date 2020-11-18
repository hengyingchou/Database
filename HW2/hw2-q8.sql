SELECT C.name AS name, SUM(P1.departure_delay) AS delay
FROM FLIGHTS AS P1 
	JOIN CARRIERS AS C ON P1.carrier_id = C.cid
GROUP BY C.name;
-- 22 rows