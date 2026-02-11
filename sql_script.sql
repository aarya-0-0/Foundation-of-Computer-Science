-- Script for normalized table in MYSQL workbench
create database info;
use info;

CREATE TABLE student (
    studentid INT PRIMARY KEY,
    studentname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

create table club (
	clubid int primary key,
    clubname varchar(50),
    clubroom varchar (10),
    clubmentor varchar(50)
);

create table members(
	studentid int,
	clubid int, 
    joindate date
);


insert into student(studentid, studentname, email) values 
(1, 'Asha', 'asha@email.com'),
(2, 'Bikash', 'bikash@email.com'),
(3, 'Nisha', 'nisha@email.com'),
(4, 'Rohan', 'rohan@email.com'),
(5, 'Suman', 'suman@email.com'),
(6, 'Pooja', 'pooja@email.com'),
(7, 'Aman', 'aman@email.com');



insert into club (clubid, clubname, clubroom, clubmentor) values
(1, 'Music club', 'R101', 'Mr.Raman'),
(2, 'Sports club', 'R202', 'Ms.Sita'),
(3, 'Drama club', 'R303', 'Mr.Kiran'),
(4, 'Coding club', 'Lab1', 'Mr.Anil');



insert into members(studentid, clubid, joindate) values 
(1, 1, '2024-01-15'),
(1, 2, '2024-01-18'),
(2, 2, '2024-01-18'),
(2, 3, '2024-01-24'),
(3, 1, '2024-01-19'),
(4, 4, '2024-01-22'),
(5, 3, '2024-01-26'),
(6, 2, '2024-01-28'),
(7, 4, '2024-01-30');

select * from student;



