/*1. Design any database with at least 3 entities and relationships between them. 
Draw suitable ER/EER diagram for the system*/

create database Books;
use Books;

CREATE TABLE Customer (CustomerID INT PRIMARY KEY,Name VARCHAR(50),Email VARCHAR(50),Phone VARCHAR(20));
INSERT INTO Customer values(1001,'Samruddhi','sam@gmail.com','4557675453');
INSERT INTO Customer values(2002,'Soham','soham@gmail.com','8954269237');
INSERT INTO Customer values(3003,'Aditi','aditi@gmail.com','9870800783');
select *from Customer;

CREATE TABLE Book (BookID INT PRIMARY KEY,Title VARCHAR(100),Author VARCHAR(100),Price DECIMAL(10, 2));
INSERT INTO Book values(1,'Adv Java','James Gosling',7865);
INSERT INTO Book values(2,'Python','Rossum',986);
INSERT INTO Book values(3,'C Lang','Dennis Ritchie',432);
select *from Book;

CREATE TABLE Orders (OrdersID INT PRIMARY KEY,OrdersDate DATE,TotalAmount DECIMAL(10),CustomerID INT,
                     FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));
INSERT INTO Orders values(11,'2002-02-11',876,1001);       
INSERT INTO Orders values(22,'2004-05-08',909,2002);
INSERT INTO Orders values(33,'2021-11-06',234,3003);            
select *from Orders;

CREATE TABLE OrdersBook (OrdersID INT,BookID INT,
					    FOREIGN KEY (OrdersID) REFERENCES Orders(OrdersID),
						FOREIGN KEY (BookID) REFERENCES Book(BookID));
INSERT INTO OrdersBook values(11,1);
INSERT INTO OrdersBook values(22,2);
INSERT INTO OrdersBook values(33,3);
select *from OrdersBook;

drop database Books;

