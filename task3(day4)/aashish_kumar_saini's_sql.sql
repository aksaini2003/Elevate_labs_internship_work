show databases; -- for seeing the databases in the sql dbms like;

create database elevate_labs; 
use elevate_labs;

create table student(rollno int auto_increment primary key,st_name varchar(40),math_score int,science_score int,section varchar(2));
insert into student(st_name, math_score, science_score, section) values
('Aashish Saini', 85, 90, 'A'),
('Kriti Mehra', 78, 82, 'B'),
('Ravi Sharma', 92, 88, 'A'),
('Neha Kumari', 69, 74, 'C'),
('Mohit Verma', 88, 91, 'A'),
('Simran Kaur', 76, 81, 'B'),
('Deepak Joshi', 83, 79, 'C'),
('Anjali Patel', 95, 96, 'A'),
('Rahul Yadav', 67, 70, 'B'),
('Priya Jain', 89, 87, 'A'),
('Ramesh Gupta', 72, 76, 'C'),
('Sneha Rathi', 91, 85, 'B'),
('Alok Singh', 60, 65, 'C'),
('Meena Das', 87, 92, 'A'),
('Saurabh Bansal', 84, 80, 'B'),
('Isha Kapoor', 75, 73, 'C'),
('Tanya Sen', 90, 94, 'A'),
('Nikhil Rana', 68, 72, 'B'),
('Gaurav Thakur', 82, 88, 'A'),
('Ritika Dey', 77, 79, 'C');
select * from student;

-- select ,where,order by ,group by 
select * from student limit 5;
select * from student where science_score > 90;
select * from student where math_score>90 order by math_score desc;
select section,avg(math_score) from student group by section;


-- joins inner left right 
-- create a new table

create table st_add(rollno int, city varchar(20),state varchar(20));
-- lets add the data in this table 
insert into st_add(rollno,city,state) values(1,'alwar','rajasthan'),
(2,'jaipur','rajasthan'),
(7,'rohtak','haryana'),
(9,'ayodhya','uttar pradesh'),
(3,'alwar','rajasthan');
select * from student inner join st_add on student.rollno=st_add.rollno;
select * from student left join st_add on student.rollno=st_add.rollno;
select * from student right join st_add on student.rollno=st_add.rollno;

-- subqueries  average 
select * from student where science_score > (select avg(math_score) from student);
SELECT st_name, (SELECT COUNT(*) FROM student) AS total_students
FROM student;

-- aggregate funciton 
select sum(science_score) as total_science_score from student;
select avg(math_score) as average_math_score from student;

-- view 
create view brilliant_students
as select * from student where (math_score>90) and (science_score>90);
select * from brilliant_students;
drop view brilliant_students;
-- index 
create index index_section on student(section);
explain select * from student;
drop index index_section on student;
