/*3. Create Table with primary key constraints. 
 a. Alter table with add n modify b. Drop table */
 
create database Student;
use Student;

create table Student_info(Sid int not null auto_increment primary key,Sname varchar(55),email varchar(100));
insert into  Student_info values(1,'Samruddhi','samruddhi@gmail.com');
insert into  Student_info values(2,'Aditi','aditi@gmail.com');
insert into  Student_info values(3,'Soham','soham@gmail.com');
select *from  Student_info;

ALTER TABLE  Student_info add address varchar(100);
describe  Student_info;
select *from  Student_info;

ALTER TABLE  Student_info modify address varchar(10);
describe  Student_info;
select *from  Student_info;

ALTER TABLE  Student_info drop address;
describe  Student_info;
select *from Student_info;

drop table  Student_info;
drop database  Student;