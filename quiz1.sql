CREATE TABLE Event (
	id int PRIMARY KEY,
	mid int, 
	name varchar(30),
	FOREIGN KEY (id, name)
          REFERENCES Meet 
	);

CREATE TABLE Contestant(
	id int PRIMARY KEY,
	mid int, 
	name varchar(30), 
	birthyear int

);
Meet(id, name, year) 
Event(id, mid, name) 
Team(id, name, organization)
Contestant(id, tid, name, birthyear) 
Performance(eid, cid, time, won) //



With smallest_event(
	SELECT e.mid AS id2, MIN(P.time) AS MIN_TIME
	FROM Event AS e JOIN Performance AS P ON e.id = P.eid
	WHERE P.won = 1
	GROUP BY e.mid
)

SELECT m.name, m.year, e2.name, s.MIN_TIME

	FROM Meet As m JOIN smallest_event AS s ON s.id2 = m.id
		JOIN Event AS e2 ON e2.mid = M.id
		JOIN Performance AS P2 ON P2.eid = e2.id
		WHERE P2.time = s.MIN_TIME 

















