/*4. Create Table with foreign key constraints. 
 a. Alter table with add n modify b. Drop table */
 
create database persons;
use persons;

create table customers(cid int not null auto_increment primary key,cname varchar(55),email varchar(100));
insert into customers values(1,'Samruddhi','samruddhi@gmail.com');
insert into customers values(2,'Aditi','aditi@gmail.com');
insert into customers values(3,'Soham','soham@gmail.com');
describe customers;
select *from customers;

create table orders(oid int not null auto_increment primary key,orderdate date,oamount int,cid int,
                    foreign key(cid) references customers(cid));
insert into orders values(1,'2023/2/3',55,1);
insert into orders values(2,'2022/7/10',87,2);
insert into orders values(3,'2020/6/8',76,3);
describe orders;
select *from orders;

select *from customers,orders;

ALTER TABLE orders add oname varchar(100);
describe  orders;
select *from  orders;

ALTER TABLE orders modify oname varchar(10);
describe orders;
select *from orders;

ALTER TABLE orders drop oname;
describe orders;
select *from orders;

drop table orders;
drop database persons;