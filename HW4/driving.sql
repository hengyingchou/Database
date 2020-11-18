-- part a

CREATE TABLE ProfessionalDriver(

	SSN number Primary Key References Person(SSN),
	medicalHistory varchar(100),

);
CREATE TABLE NonProfessionalDriver(

	SSN number Primary Key References Person(SSN)
	
);
CREATE TABLE Driver(

	SSN number Primary Key References Person(SSN),
	driverID number

);
CREATE TABLE Person(

	SSN number Primary Key,
	name varchar(100)

);

CREATE TABLE Car(

	make varchar(100),
	licensPlate varchar(100) Primary Key REFERENCES Vehicle(licensePlate) 
)	
CREATE TABLE Truck(

	capacity int,
	licensPlate varchar(100) Primary Key REFERENCES Vehicle(licensePlate), 
	Tssn number references ProfessionalDriver(SSN) 
);
CREATE TABLE Vehicle(

	Pssn number References Person(ssn),
	maxLiability real,
	Iname varchar(100) references InsuranceCo(name),
	licensePlate varchar(100) Primary key,
	year int

);


CREATE TABLE InsuranceCo(

	name varchar(100) PRIMARY KEY,
	phone int

);

CREATE TABLE Drives(

	clicensPlate varchar(100) References Car(licensPlate),
	nssn number References NonProfessionalDriver(SSN),
	Primary key(clicensPlate, nssn)

);

--  part b 
--  since the relationship of insures is many to one, we do not need to write 
--  a Table for it. So the way I implement the relationship is by 
--  "Iname varchar(100) references InsuranceCo(name)" in Vehcile 
--  which can refer the name of InsuranceCo to Vehicle. 



--  part c
--  since the relationship of Drives is many to many, 
--  it should contain primary key from both Car and NonProfessionalDriver as
--  it's primary key. However, the relationship of operates is many to one, so
--  we do not need to write a table for operates. We only include a references in
--  Truck which is "Tssn number references ProfessionalDriver(SSN)".  






