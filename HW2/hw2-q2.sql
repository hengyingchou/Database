SELECT P1.flight_num AS 'flight_num', 
	   P1.origin_city AS 'f1_origin_city', 
	   P1.dest_city AS 'f1_dest_city', 
	   P1.actual_time AS '​f1_actual_time',
	   P2.flight_num AS 'f2_flight_num', 
	   P2.origin_city AS 'f2_origin_city',
	   P2.dest_city AS 'f2_dest_city', 
	   P2.actual_time AS '​f2_actual_time',
	   P1.actual_time + P2.actual_time AS 'actual_time'
FROM FLIGHTS AS P1 
	JOIN CARRIERS AS C ON P1.carrier_id = C.cid 
	JOIN WEEKDAYS AS W ON P1.day_of_week_id = W.did
	JOIN MONTHS AS M ON P1.month_id = M.mid,
	FLIGHTS AS P2 
	JOIN CARRIERS AS C2 ON P2.carrier_id = C.cid 
	JOIN WEEKDAYS AS W2 ON P2.day_of_week_id = W.did
	JOIN MONTHS AS M2 ON P2.month_id = M.mid
WHERE M.month = "July" AND
	  M2.month = "July" AND
	  P1.day_of_month = 15 AND
	  P2.day_of_month = 15 AND  
	  P1.origin_city = "Seattle WA" AND
	  P1.dest_city = P2.origin_city AND
	  P2.dest_city = "Boston MA" AND
	  C.name = C2.name AND
	  P1.actual_time + P2.actual_time <= 420;
--1472 rows
