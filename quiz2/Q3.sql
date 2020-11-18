CREATE TABLE HFS_EMPLOYEE(
	sid primary key references student_employement(rid),
	sname references student_employement(name),
	role
	)

CREATE TABLE TA(
	sid primary key references student_employement(rid),
	sname references student_employement(name),
	cid NOT NULL references class(id),
	cname NOT NULL references class(name),
	cdepartment NOT NULL references class(department)
	)

CREATE TABLE student_employement(name, id primary key)

CREATE TABLE class(id primary key, name, department)

CREATE TABLE Enrolled_in(

	sid references student_employement(id),
	sname references student_employement(name),
	cid references class(id),
	cname references class(name),
	cdepartment references class(department),
	primary key(sid, cid)

)


