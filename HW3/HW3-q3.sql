WITH Short AS (SELECT P2.origin_city AS city, sum(case when P2.actual_time < 180 then 1 else 0 end ) AS co 
FROM [dbo].[FLIGHTS] AS P2
WHERE P2.canceled = 0 
GROUP BY P2.origin_city)

SELECT Top 20 P.origin_city As origin_city, ROUND(s.co*100.0/count(P.origin_city),2) AS ​percentage
FROM [dbo].[FLIGHTS] AS P,
    Short AS s
WHERE P.canceled = 0 AND s.city = P.origin_city
GROUP BY P.origin_city, s.co
Order by percentage, origin_city ASC;

-- comment
--7 second
--327 rows
--Print
-- origin_city,percentage
-- Guam TT,0.000000000000
-- Pago Pago TT,0.000000000000
-- Aguadilla PR,28.900000000000
-- Anchorage AK,31.810000000000
-- San Juan PR,33.660000000000
-- Charlotte Amalie VI,39.560000000000
-- Ponce PR,40.980000000000
-- Fairbanks AK,50.120000000000
-- Kahului HI,53.510000000000
-- Honolulu HI,54.740000000000
-- San Francisco CA,55.830000000000
-- Los Angeles CA,56.080000000000
-- Seattle WA,57.610000000000
-- Long Beach CA,62.180000000000
-- New York NY,62.370000000000
-- Kona HI,63.160000000000
-- Las Vegas NV,64.920000000000
-- Christiansted VI,65.100000000000
-- Newark NJ,65.850000000000
-- Plattsburgh NY,66.670000000000


