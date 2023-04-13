Create Table If Not Exists buildings (
name varchar(80) not null,
shortname varchar(10)  unique, 
id integer primary key AUTOINCREMENT);

Insert Into buildings (name, shortname) Values ('Kane Hall', 'KNE');


Create Table If Not Exists rooms (
number Integer,
buildingid Integer Primary Key References buildings(id),
seating Integer);

INSERT INTO rooms VALUES (100, (SELECT id FROM buildings WHERE name="Kane Hall"), 500);