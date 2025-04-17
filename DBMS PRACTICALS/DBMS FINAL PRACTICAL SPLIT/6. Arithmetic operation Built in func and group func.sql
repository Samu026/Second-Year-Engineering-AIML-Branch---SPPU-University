/* 6. Perform following SQL queries on the database 
• Arithmetic operations and built in functions 
• Group functions */

create database Magazine;
use Magazine;
create table Magazine(M_id int primary key,year double,ISBN int,Price double,Title varchar(20));
insert into Magazine values(1001,2002,765,2200,'Advanced Java');
insert into Magazine values(2002,2011,987,1770,'Postgree SQL');
insert into Magazine values(3003,2021,324,1000,'Software Agile');
select *from Magazine;

create table Publisher(pname varchar(20) primary key,Address varchar(20),PPhone varchar(10),Url varchar(30),M_id int,
					  foreign key(M_id) references Magazine(M_id));
insert into Publisher values('John','Pune','9090987544','john.com',1001);
insert into Publisher values('Albert','mumbai','9865784321','albert.com',2002);
insert into Publisher values('hichey','kolkata','7689543221','hichey.com',3003);
select *from Publisher;
                    
create table Customer(email varchar(30) primary key,Cid int,C_name varchar(20),CPhone varchar(10),Address varchar(30),
					CDOB date);
insert into Customer values('samruddhikangude@gmail.com',100,'samruddhi','7218380003','Pune','2017-06-06');
insert into Customer values('aditimagar@gmail.com',200,'aditi','8787878787','osmanabad','2015-05-04');
insert into Customer values('sohampawar@gmail.com',300,'soham','7765432234','Baramati','2019-09-12');
select *from Customer;

 -- Arithmetic operations --
 select *from Magazine where (Price+10000)<250000;
 select *from Magazine where (Price-800)<1000;
 select *from Magazine where (Price*10)>20000;
 select *from Magazine where (Price%10)<150;
 select *from Magazine where (Price/10)<150;
 select *from Magazine where (Price/2*10)<1000;

 -- built in functions --
 select lower(pname) from Publisher;
 select upper(pname) from Publisher; 
 select sum(Price) from Magazine;
 select max(Price) from Magazine;
 select min(Price) from Magazine;
 select sqrt(9);
 select floor(9.4);
 select ceil(3.6);
 select power(9,2);
 select strcmp('samruddhi','aditi');
 select char_length('samruddhi');
 select concat('Samruddhi',' kangude');
 select instr('AIML DEPARTMENT','L');
 select mid('AIML DEPARTMENT IN ALARD',5,11);
 select reverse('SAMRUDDHI');
 select space(100);

 --  Group functions--
select pname from Publisher group by pname;
select pname,count(*)from Publisher group by pname;
select Title from Magazine where Price<=1800 group by Title;
select Title,sum(Price),avg(Price) from Magazine group by Title; 
select Title,min(Price),max(Price)from Magazine group by Title;

drop database Magazine;
