CREATE TABLE If Not Exists timeslots (
  id INTEGER PRIMARY KEY,
  start_time TIME,
  end_time TIME
);


CREATE TABLE If Not Exists temp_rooms (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER
);

INSERT INTO temp_rooms (number, buildingid, seating)
SELECT number, buildingid, seating FROM rooms;
DROP TABLE rooms;
ALTER TABLE temp_rooms
RENAME TO rooms;


CREATE TABLE If Not Exists schedule (
  id INTEGER PRIMARY KEY,
  coursecode VARCHAR(10),
  roomid INTEGER,
  timeslotid INTEGER,
  UNIQUE (roomid, timeslotid),
  FOREIGN KEY (roomid) REFERENCES rooms(id),
  FOREIGN KEY (timeslotid) REFERENCES timeslots(id)
);

INSERT INTO timeslots (start_time, end_time) VALUES ('09:00:00', '10:30:00');
INSERT INTO timeslots (start_time, end_time) VALUES  ('10:45:00', '12:15:00');
INSERT INTO timeslots (start_time, end_time) VALUES ('13:00:00', '14:30:00');
INSERT INTO timeslots (start_time, end_time) VALUES ('14:45:00', '16:15:00');

INSERT INTO rooms (number, buildingid, seating) VALUES (101, 1, 50);
INSERT INTO rooms (number, buildingid, seating) VALUES (102, 1, 40);
INSERT INTO rooms (number, buildingid, seating) VALUES (103, 2, 30);

INSERT INTO schedule (coursecode, roomid, timeslotid) VALUES ('INFO330A', 1, 1);
INSERT INTO schedule (coursecode, roomid, timeslotid) VALUES ('INFO330A', 2, 2);
INSERT INTO schedule (coursecode, roomid, timeslotid) VALUES ('INFO448A', 7, 3);
INSERT INTO schedule (coursecode, roomid, timeslotid) VALUES ('INFO314', 3, 4);