SELECT SUM(P1.capacity) AS capacity	  
FROM FLIGHTS AS P1 
	JOIN CARRIERS AS C ON P1.carrier_id = C.cid
	JOIN MONTHS AS M ON P1.month_id = M.mid
WHERE ((P1.origin_city = "Seattle WA" AND
	  P1.dest_city = 'San Francisco CA') OR
	  (P1.origin_city = "San Francisco CA" AND
	  P1.dest_city = "Seattle WA")) AND 
	  M.month = 'July' AND
	  P1.day_of_month = 10;
-- 1 rows