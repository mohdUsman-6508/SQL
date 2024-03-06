 -- DATABASE RELATED QUERIES
 
CREATE DATABASE if not exists School;
create database if not exists Techclub;
show databases;
drop database Techclub;
use School;
show tables;

-- TABLE RELATED QUERIES 

create table student
(id int primary key,
name varchar(50),
class tinyint);

select * from student;
insert into student
(id,name,class)
values
(1,'usman',12),
(2,'anmol',12),
(3,'aman',10),
(4,'harsh',11),
(5,'amaan',9);

insert into student values(6,'osman',12);

select * from student;

-- CONSTRAINTS not null , unique , primary key , foreign key, default ,check

create table games(
	student_id int,
    game varchar(50),
    Foreign key(student_id) references student(id)
    );

insert into games (student_id) values
(1),
(2),
(4);

select * from games;
alter table games
change column game game varchar(50) default 'football';

use college;
show tables;

-- SELECT
select name, rollno from student;
select * from student;
-- WHERE Clause
select * from student where marks>80;
select * from student where grade='A';

select * from student where marks>80 and city="delhi";
select * from student where marks>90 or city="mumbai";

select * from student where marks between 80 and 90;
select name,rollno,grade,city from student where city not in ("kerala","delhi");
 
select * from student limit 3;

select * from student order by city asc;

select max(marks), min(marks), avg(marks) from student;

select count(rollno) as total_stuents from student;

select city,count(name)
from student
group by city;

select count(name),city
from student
group by city
having max(marks)>90;

-- General Order--
-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condition
-- ORDER BY column(s) ASC;
-- ----------------------------------- 

-- TABLE RELATED QUERIES
set sql_safe_updates=0;

update student
set grade='E'
where grade='F';

delete from student 
where marks<35;

select * from student;

show tables;

create table courses(
c_id int,
c_name varchar(50),
student_id int,
foreign key(student_id) references student(rollno)
on delete cascade
on update cascade);

insert into courses (c_id,c_name,student_id)
values
(50,'cs50',3005);

select rollno from student;

select * from courses;

update student 
set rollno=3005
where rollno=107;

select * from student;
select * from courses;

-- TO CHANGE SCHEMA -- 

alter table courses
add column marks int default 33;

select * from courses;

update courses 
set marks=78 
where marks=33;

alter table student
add column game varchar(50) default 'football';

select * from student;

alter table student 
add column sex varchar(1);

alter table student 
drop column sex;

alter table student
rename to students;

show tables;

alter table students
change column game sports varchar(60);

select * from students; 

alter table courses
modify c_id  INT ;

-- TRUNCATE --TO DELETE TABLE DATA

select * from students inner join courses
on students.rollno=courses.student_id;


select * from students as s left join courses as c
on s.rollno=c.student_id;

select * from students as s right join courses as c
on s.rollno=c.student_id;

select * from students as s left join courses as c
on s.rollno=c.student_id 
union
select * from students as s right join courses as c
on s.rollno=c.student_id;

use college;
select * from courses as c1
join courses as c2 
on c1.student_id=c2.student_id;

-- SQL SUBQUERIEs --
select name ,marks from students 
where marks > (select avg(marks) from students);

select avg(marks) from students;

select name,rollno from students where rollno%2=0;

select max(marks) from students where city='delhi';

select marks,city from students where city="delhi";

select * from students;

create view view1 as
select name, rollno 
from student;

select * from view1;












