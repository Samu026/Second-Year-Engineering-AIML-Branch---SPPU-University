create database persons;
use persons;


create table customers(cid int not null auto_increment primary key,cname varchar(55),email varchar(100));
insert into customers values(1,'Samruddhi','samruddhi@gmail.com');
insert into customers values(2,'Aditi','aditi@gmail.com');
insert into customers values(3,'Soham','soham@gmail.com');
select *from customers;
ALTER TABLE customers drop email;
describe customers;


create table orders(oid int not null auto_increment primary key,orderdate date,oamount int,cid int,
                    foreign key(cid) references customers(cid));
insert into orders values(1,'2023/2/3',55,1);
insert into orders values(2,'2022/7/10',87,2);
insert into orders values(3,'2020/6/8',76,3);
select *from orders;
ALTER TABLE orders drop oamount;
describe orders;


select *from customers,orders;
drop table customers;
drop table orders;
drop database persons;