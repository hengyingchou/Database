SELECT W.day_of_week AS 'day_of_week',
	   AVG(P.arrival_delay) AS 'delay'
FROM FLIGHTS AS P JOIN WEEKDAYS AS W ON P.day_of_week_id = W.did 
GROUP BY W.day_of_week
ORDER BY W.day_of_week
LIMIT 1;
-- 1 rows
	 





