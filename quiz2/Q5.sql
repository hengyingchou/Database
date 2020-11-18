SELECT m.id
FROM Meet m
WHERE NOT EXISTS (SELECT c.tid
                  FROM  Event e, Performance p, Contestant c
                  WHERE m.id = e.mid AND e.id = p.eid AND p.cid = c.id
                  GROUP BY c.tid
                  HAVING COUNT(c.id) >= 3)
ORDER BY m.id;


----------------------------
SELECT m.id
FROM Meet as m join Event AS e on m.id = e.mid,
	Event AS e2 join Performance AS p on e2.id = p.eid,
	Performance2 AS p2 join Contestant As c on p2.cid = c.id
WHERE e.mid = e2.mid AND p.eid = p2.eid
GROUP BY c.tid, m.id
HAVING COUNT(c.tid) < 3
ORDER BY m.id 




