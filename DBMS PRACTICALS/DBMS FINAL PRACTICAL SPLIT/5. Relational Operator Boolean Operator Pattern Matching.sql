/* 5. Perform following SQL queries on the database
• Implementation of relational operators in SQL 
• Boolean operators and pattern matching*/

create database Magazine;
use Magazine;

create table Magazine(M_id int primary key,year double,ISBN int,Price double,Title 
varchar(20));
insert into Magazine values(1001,2002,765,2200,'Advanced Java');
insert into Magazine values(2002,2011,987,1770,'Postgree SQL');
insert into Magazine values(3003,2021,324,1000,'Software Agile');
select *from Magazine;

create table Publisher(pname varchar(20) primary key,Address varchar(20),PPhone 
varchar(10),Url varchar(30),M_id int, foreign key(M_id) references Magazine(M_id));
insert into Publisher values('John','Pune','9090987544','john.com',1001);
insert into Publisher values('Albert','mumbai','9865784321','albert.com',2002);
insert into Publisher values('hichey','kolkata','7689543221','hichey.com',3003);
select *from Publisher;
 
create table Customer(email varchar(30) primary key,Cid int,C_name varchar(20),CPhone 
varchar(10),Address varchar(30), CDOB date);
insert into Customer values('samruddhikangude@gmail.com',100,'samruddhi','7218380003','Pune','2017-06-06');
insert into Customer values('aditimagar@gmail.com',200,'aditi','8787878787','osmanabad','2015-05-04');
insert into Customer values('sohampawar@gmail.com',300,'soham','7765432234','Baramati','2019-09-12');
select *from Customer;

-- Relational Operator --
select *from Customer where Cid <200;
select *from Customer where Cid >200;
select *from Publisher where M_id =1001;
select *from Publisher where M_id <=2002;
select *from Publisher where M_id >=1001;
select *from Customer where Cid !=200;

-- Boolean operators --
select C_name from Customer where email ='samruddhikangude@gmail.com';
select C_name from Customer where Cid=400;
select C_name from Customer where email='aditimagar@gmail.com' AND Cid=200;
select C_name from Customer where email='nikita@gmail.com' AND Cid=300;
select pname from Publisher where Address='Pune' OR Url='abc.com';
select pname from Publisher where Address='kanada' OR Url='xyz.com';
select pname from Publisher where Address='Pune' != Url='john.com';

-- Pattern Matching --
select *from Publisher where pname LIKE 'h%';
select *from Customer where C_name LIKE '%i';
select *from Customer where C_name LIKE '%d%';
select *from Publisher where pname LIKE '__b%';
select *from Publisher where pname LIKE '%h__';
select *from Customer where email REGEXP 's';
select pname from Publisher where pname LIKE 'h%';

drop database Magazine;
