Create Table If Not Exists buildings (
name varchar(80) not null,
shortname varchar(10)  unique, 
id integer primary key AUTOINCREMENT);

Create Table If Not Exists rooms (
number Integer,
buildingid Integer Primary Key References buildings(id),
seating Integer);

Insert Into buildings (name, shortname) Values ('Kane Hall',  'KNE');
Insert Into buildings (name, shortname) Values ('Alder Hall',  'ALD');
Insert Into buildings (name, shortname) Values ('Smith Hall',  'SMI');
Insert Into buildings (name, shortname) Values ('Savery Hall',  'SAV');
Insert Into buildings (name, shortname) Values ('Elm Hall',  'ELM');

INSERT INTO rooms VALUES (100, (SELECT id FROM buildings WHERE name="Kane Hall"), 500);
INSERT INTO rooms VALUES (101, (SELECT id FROM buildings WHERE name="Alder Hall"), 400);
INSERT INTO rooms VALUES (102, (SELECT id FROM buildings WHERE name="Smith Hall"), 300);
INSERT INTO rooms VALUES (103, (SELECT id FROM buildings WHERE name="Savery Hall"), 200);
INSERT INTO rooms VALUES (104, (SELECT id FROM buildings WHERE name="Elm Hall"), 100);