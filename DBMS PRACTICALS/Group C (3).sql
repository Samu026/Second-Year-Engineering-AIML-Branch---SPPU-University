create database slot;
use slot;
create table mytable(id int(2),name varchar(20),class varchar(20));
show tables;
insert into mytable values(1,'Samruddhi','Phd'),(2,'Aditi','Mtech'),(3,'Soham','Be'),(4,'Nikita','Btech'),(5,'Tejal','Diploma');
select *from mytable;
drop database slot;

set @name_list = " ";
call mycur (@name_list);
select @name_list;
select *from mytable;
