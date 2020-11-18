SELECT DISTINCT C.name 
FROM FLIGHTS AS P JOIN CARRIERS AS C ON P.carrier_id = C.cid 
				  JOIN MONTHS AS M ON P.month_id = M.mid
GROUP BY C.name, P.day_of_month, M.month
HAVING COUNT(P.day_of_month) > 1000;
--12rows
