CREATE DATABASE student;

USE student;

CREATE table student_details(
id int primary key,
name varchar(20),
course varchar(50));

insert into student_details values(1,'osman','B.TECH');

select * from student_details;
  
create database deleteme;
drop database deleteme;

drop database if exists deleteme;

create database if not exists student;

show databases;

show tables;

-- practice ques.1

create database XYZ;
use XYZ;
create table employee
(id int primary key,
name varchar(50),
salary tinyint);

insert into employee values
(1,'adam',25000);

insert into employee values
(2,'bob',20000);

insert into employee values
(3,'casey',40000);

select * from employee;

create database college;
use college;

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20));

insert into student 
(rollno,name,marks,grade,city)
values
(101,'anil',78,'C','pune'),
(102,'bhumika',94,'A','mumbai'),
(103,'chetan',85,'B','mumbai'),
(104,'dhruv',96,'A','delhi'),
(105,'emanuel',12,'F','delhi'),
(106,'farah',83,'B','delhi'),
(107,'haider',88,'B','punjab'),
(108,'hamza',97,'A','kerala');

use school;
show tables;

select * from student;









