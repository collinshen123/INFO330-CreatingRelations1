Create Table If Not Exists students_courses (
studentid Integer,
course varchar(10),
grade Numeric (2,1) Default Null,
FOREIGN Key (studentid) References students(id),
FOREIGN Key (course) References courses(code)
);


Insert Into students_courses (studentid, course, grade) Values (1, 'INFO330A', 3.1);
Insert Into students_courses (studentid, course, grade) Values (1, 'INFO448A', 3.7);
Insert Into students_courses (studentid, course, grade) Values (1, 'INFO314', 2.5);
Insert Into students_courses (studentid, course, grade) Values (3, 'INFO330A', 2.9);
Insert Into students_courses (studentid, course, grade) Values (3, 'INFO449A', 3.6);
Insert Into students_courses (studentid, course, grade) Values (2, 'BAW0100', 3.9);
Insert Into students_courses (studentid, course, grade) Values (2, 'BAW100A', 3.8);
Insert Into students_courses (studentid, course, grade) Values (4, 'BAW0100', 3.5);