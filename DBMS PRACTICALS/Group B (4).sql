create database Magazine;
use Magazine;
create table Magazine(M_id int primary key,year double,ISBN int,Price double,Title varchar(20));
insert into Magazine values(1001,2002,765,2200,'Advanced Java');
insert into Magazine values(2002,2011,987,1770,'Postgree SQL');
insert into Magazine values(3003,2021,324,1000,'Software Agile');
select *from Magazine;

create table Author(Aname varchar(20) primary key,Aid int,Address varchar(20),Url varchar(30),Asalary double,M_id int,
				    foreign key(M_id) references Magazine(M_id));
insert into Author values('Albert',101,'Bengalore','Rhickey.com',267654,1001);
insert into Author values('Stephen King',202,'Kanada','Stephenking.com',198767,2002);
insert into Author values('DrPhillMcCraw',303,'USA','drphillmccraw.com',998642,3003);
select *from Author;

create table Publisher(pname varchar(20) primary key,Address varchar(20),PPhone varchar(10),Url varchar(30),M_id int,
					  foreign key(M_id) references Magazine(M_id));
insert into Publisher values('John','Pune','9090987544','john.com',1001);
insert into Publisher values('Albert','mumbai','9865784321','albert.com',2002);
insert into Publisher values('hichey','kolkata','7689543221','hichey.com',3003);
select *from Publisher;
                    
create table ShoppingBasket(basket_ID int primary key,M_id int,
                    foreign key(M_id) references Magazine(M_id));
insert into ShoppingBasket values(298,1001);
insert into ShoppingBasket values(898,2002);
insert into ShoppingBasket values(760,3003);
select *from ShoppingBasket;
                    
create table Customer(email varchar(30) primary key,Cid int,C_name varchar(20),CPhone varchar(10),Address varchar(30),
					CDOB date,basket_ID int,foreign key(basket_ID) references ShoppingBasket(basket_ID));
insert into Customer values('samruddhikangude@gmail.com',100,'samruddhi','7218380003','Pune','2017-06-06',298);
insert into Customer values('aditimagar@gmail.com',200,'aditi','8787878787','osmanabad','2015-05-04',898);
insert into Customer values('sohampawar@gmail.com',300,'soham','7765432234','Baramati','2019-09-12',760);
select *from Customer;

-- Relational Operator --
select *from Magazine where ISBN <400;
select *from Author where Aid >300;
select *from Publisher where M_id =1001;
select *from Magazine where ISBN <=324;
select *from Author where Aid >=300;
select *from ShoppingBasket where basket_ID !=298;

-- Boolean operators --
select C_name from Customer where email ='samruddhikangude@gmail.com';
select basket_ID from ShoppingBasket where M_id=4004;

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
select *from Magazine where Title REGEXP 'a';

 -- Arithmetic operations --
 select *from Author where (Asalary+10000)<250000;
 select *from Magazine where (Price-800)<1000;
 select *from Author where (Asalary*10)>300000;
 select *from Magazine where (Price%10)<150;
 select *from Magazine where (Price/10)<150;
 select *from Author where (Asalary/2*10)<1000000;

 -- built in functions --
 select lower(pname) from Publisher;
 select upper(pname) from Publisher; 
 select sum(Price) from Magazine;
 select max(Asalary) from Author;
 select min(Asalary) from Author;
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
select Aname from Author group by Aname;
select Aname,count(*)from Author group by Aname;
select Aname from Author where Asalary<=270000 group by Aname;
select Title,sum(Price),avg(Price) from Magazine group by Title; 
select Title,min(Price),max(Price)from Magazine group by Title;

--  Processing Date --
SELECT curdate();
SELECT current_timestamp();
SELECT NOW();
SELECT DATE(NOW());
SELECT MONTH('2022-12-31');
SELECT MONTHNAME(NOW());
SELECT DAYNAME("2032-12-12");
SELECT MONTHNAME("2020-05-06");
SELECT CID ,DATE(CDOB) FROM CUSTOMER;

-- Time functions --
SELECT CURTIME();
SELECT TIME(NOW());
SELECT TIME("19:30:10");
SELECT TIME("2017-08-15 19:30:10");
select current_timestamp();
select time_to_sec(20000);

-- Complex queries-- 
select *from Magazine;
select price,M_id,year,ISBN,Title from Magazine where M_id=1001;
select M_id ,year ,Price,RANK() Over (partition by year ORDER BY Price DESC) as Price from Magazine;
select Title,count(Title),M_id,ISBN from Magazine where price>1500 GROUP BY Title,M_id,ISBN;
select Title,M_id,Price,ISBN,year,count(*) from Magazine 
             GROUP BY Title,M_id,Price,ISBN,year Having Title="Advanced Java";

-- set operators--
select *from Author;
select *from publisher;
select Aname from Author UNION select pname from publisher;
select Aname from Author UNION ALL select pname from publisher; -- It will take all duplicate contents--

drop database Magazine;