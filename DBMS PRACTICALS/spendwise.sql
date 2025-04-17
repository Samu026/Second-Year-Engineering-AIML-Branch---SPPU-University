create database spendwise;
use spendwise;

create table User
(
	UserID int primary key, 
    FirstName varchar(50), 
    LastName varchar(50),
    Email varchar(100),
    Password varchar(8) 
);
select *from User;

create table Expense
(
	ExpenseID int,
    UserID int ,foreign key(UserID) references User(UserID),
    Amount decimal,
    Date date,
    CategoryID int primary key,
    Description varchar(100)
);
select *from Expense;

create table Category
(
	CategoryID int,foreign key(CategoryID) references Expense(CategoryID),
    CategoryName varchar(50)
);
select *from Category;
 




drop table User;
drop table Expense;
drop table Category;



drop database spendwise;
