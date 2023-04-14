Create Table If Not Exists courses (
code varchar(40) primary key not null Check(length(code) >=7), 
description varchar(400), 
start Date not null, 
end Date not null CHECK(end > start));
Insert Into courses (code, description, start, end) Values ('INFO330A',  'Data and Databases', '2023-04-01', '2023-06-01');
Insert Into courses (code, description, start, end) Values ('INFO314',  'Networking and distributed Systems', '2023-04-01', '2023-06-01');
Insert Into courses (code, description, start, end) Values ('INFO448A',  'Introduction to iOS', '2023-09-25', '2023-12-19');
Insert Into courses (code, description, start, end) Values ('INFO449A',  'Introduction to Android', '2023-09-25', '2023-12-19');
Insert Into courses (code, description, start, end) Values ('BAW0100',  'Introduction to Basket-Weaving', '2023-04-01', '2023-06-01');
Insert Into courses (code, description, start, end) Values ('BAW100A',  'Underwater Basket-Weaving', '2023-04-01', '2023-06-01');