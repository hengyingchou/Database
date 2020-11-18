# problem 1
CREATE TABLE Sales(
	name varchar(15),
	discount varchar(15),
	month varchar(15),
	price int
);

# problem2
/* FD
name -> price
*/

SELECT * 
FROM Sales AS f1, Sales AS f2
WHERE f1.name = f2.name	 and
	f1.price != f2.price;

/* FD
month -> discount
*/
SELECT * 
FROM Sales AS f1, Sales AS f2
WHERE f1.month = f2.month	 and
	f1.discount != f2.discount;	

/* FD
name discount -> price 
*/
SELECT * 
FROM Sales AS f1, Sales AS f2
WHERE f1.name = f2.name	 and
	f1.discount = f2.discount and
	f1.price != f2.price and	

/* FD
price month ->  discount
*/
SELECT * 
FROM Sales AS f1, Sales AS f2
WHERE f1.price = f2.price	 and
	f1.month = f2.month and
	f1.discount != f2.discount 

/* All non trivial dependency :
name -> price 
month -> discount
*/

#problem3
/*
R(name, discount, month, price)
FD:
name -> price
month -> discount
Normalize(R)
name -> price => {name}^+ = {name,price} and {name}^+ != name and {name}^+ != R(name, discount, month, price)
so FD: name -> price is "bad" 
Hereby, R can be decomposed:
R = R1(name, price) + R2(name, discount, month)
Normalize(R2)
month-> discount => {month}^+ = {month, discount} and {month}^+ != month and {month}^+ != R(name, discount, month, price)
so month -> discount is bad
Hereby R2 can be decomposed:
R2 = R3(month, discount) + R4(month, name)

Because we cannot find more FD such that X^+ != X and X^+ != R, So R can be written as:
R(name, discount, month, price) = R1(name, price) + R3(month, discount) + R4(month, name)

*/
CREATE TABLE nameprice(
	name varchar(15) Primary Key, 
	price int
);
CREATE TABLE monthdiscount(
	month varchar(15) Primary Key,
	discount varchar(15)
);
CREATE TABLE monthname(
	month varchar(15) References monthdiscount(month),
	name varchar(15) References nameprice(name)
);


#problem4

INSERT INTO nameprice
SELECT DISTINCT name, price  
from Sales;

INSERT INTO monthdiscount
SELECT DISTINCT month, discount  
from Sales;

INSERT INTO monthname
SELECT DISTINCT month, name  
from Sales;

SELECT COUNT(*) FROM nameprice;
-- 36 rows
SELECT COUNT(*) FROM monthdiscount;
-- 12 rows
SELECT COUNT(*) FROM monthname;
-- 426 rows

