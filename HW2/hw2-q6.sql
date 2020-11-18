SELECT C.name AS carrier , MAX(P1.price) AS max_price	  
FROM FLIGHTS AS P1 JOIN CARRIERS AS C ON P1.carrier_id = C.cid 
WHERE (P1.origin_city = 'Seattle WA' AND P1.dest_city = 'New York NY') OR
(P1.origin_city = 'New York NY' AND P1.dest_city = 'Seattle WA')
GROUP BY C.name;
-- 3rows
	
