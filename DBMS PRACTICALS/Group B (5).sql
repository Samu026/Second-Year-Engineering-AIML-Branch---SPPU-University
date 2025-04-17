create database Employee;
use Employee;

create table Emp1(ID int ,NAME varchar(55),EXPERIENCE int);
insert into Emp1 values(1,'Samruddhi',12);
insert into Emp1 values(2,'Aditi',7);
insert into Emp1 values(3,'Soham',9);
insert into Emp1 values(4,'Nikita',11);
select *from Emp1;

create view Emp1view
as
select *from Emp1;
select *from Emp1view;

create view Emp1viewA
as
select ID,NAME from Emp1;
select *from Emp1viewA;

create view Emp1viewB
as
select ID,NAME,EXPERIENCE from Emp1 where EXPERIENCE>10;
select *from Emp1viewB;

create table Emp2(ID int,COUNTRY varchar(10));
insert into Emp2 values(1,'India');
insert into Emp2 values(2,'USA');
insert into Emp2 values(3,'Canada');
select *from Emp2;




create view Emp2viewA
as 
select Emp1.ID,NAME,COUNTRY
from Emp1,Emp2
where Emp1.ID=Emp2.ID;
select *from Emp2viewA;

-- DDL Commands On View (create,drop,alter,truncate,rename)--
-- Create Command on view--
create view Emp2viewB
as
select ID,COUNTRY from Emp2 where ID>2;
select *from Emp2viewB;

-- drop Command on view--
drop view Emp1view;
drop view Emp1viewA;
drop view Emp1viewB;
drop view Emp2viewA;
drop view Emp2viewB;

-- alter command on view--
Alter view Emp1view AS select Name,EXPERIENCE from Emp1 where EXPERIENCE>9;
select *from Emp1view;
  
-- truncate command on view--
truncate table Emp1;

-- Rename command in view--
rename table Emp1 to Emp3;
select *from Emp3;
rename table Emp3 to Emp1;
select *from Emp1;

-- DML Commands On View (insert,update,delete)--
-- Insert command on view--
insert into Emp1viewB values(6,'Prachi',21);
select *from Emp1viewB;

-- update command on view--
update Emp1viewB set NAME='Kangude' where ID=1;
select *from Emp1viewB;

-- delete command on view--
delete from Emp1viewB where ID=5;
select *from Emp1viewB;

-- Update the base table using its corresponding view --
update Emp1viewA set NAME='Yewale' where ID=6;
select *from Emp1viewA;
Select *from Emp1;

update Emp2viewB set COUNTRY='AMERICA' WHERE ID=3;
select *from Emp2viewB;
select *from Emp2;





drop database Employee;