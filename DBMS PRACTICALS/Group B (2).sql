create database college;
use college;

create table college_info(clg_id int ,college_name varchar(10),address varchar(10),
Branches varchar(10));
insert into college_info values(1,'GPA','Awasari','IT');
insert into college_info values(2,'GPP','Pune','COMPUTER');
insert into college_info values(3,'GPM','Mumbai','MECHANICAL');
insert into college_info values(5,'GPN','Nashik','E&TC');
insert into college_info values(4,'GPK','Karad','ELECTRICAL');

alter table college_info 
add column(college_course varchar(10));

RENAME table college_info to college_details;
select *from college_details;
select *from college_info;

truncate table college_info;
drop database college;