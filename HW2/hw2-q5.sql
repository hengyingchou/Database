.mode column
.header on
SELECT C.name AS name, SUM(P.canceled) * 100.0/count(C.name) AS percentage
FROM FLIGHTS AS P JOIN CARRIERS AS C ON P.carrier_id = C.cid
Where P.origin_city = "Seattle WA"
GROUP BY C.name
HAVING percentage/100.0 > 0.005
order by percentage ASC;
-- 6 rows
