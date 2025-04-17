/*7. Perform following SQL queries on the database 
• Processing Date and Time functions 
• Complex queries and set operators */

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
select *from Customer;
select *from publisher;
select C_name from Customer UNION select pname from publisher;
select C_name from Customer UNION ALL select pname from publisher; -- It will take all duplicate contents--


drop database Magazine;