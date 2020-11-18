CREATE TABLE FLIGHTS (
	fid int PRIMARY KEY,
	month_id int REFERENCES MONTHS(mid), -- 1-12
	day_of_month int, -- 1-31
	day_of_week_id int REFERENCES WEEKDAYS(did), -- 1-7, 1 = Monday, 2 = Tuesday, etc 
	carrier_id varchar(7) REFERENCES CARRIERS(cid),
	flight_num int,
	origin_city varchar(34),
	origin_state varchar(47),
	dest_city varchar(34),
	dest_state varchar(46),
	departure_delay int, -- in mins
    taxi_out int, 
    arrival_delay int, 
    canceled int, 
    actual_time int, 
    distance int, e
    capacity int, 
    price int
	);
CREATE TABLE CARRIERS (
	cid varchar(7) PRIMARY KEY, 
	name varchar(83)
	); 
CREATE TABLE MONTHS (
	mid int PRIMARY KEY, 
	month varchar(9)
	);
CREATE TABLE WEEKDAYS (
	did int PRIMARY KEY, 
	day_of_week varchar(9)
	);
-- 32 rows








