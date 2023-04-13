Create Table If Not Exists students_courses (
studentid,
course,
grade Float Default Null,
FOREIGN Key (studentid) References students(id),
FOREIGN Key (course) References courses(code)
);


Insert Into students_courses (studentid, course) Values (1, 'INFO 330');