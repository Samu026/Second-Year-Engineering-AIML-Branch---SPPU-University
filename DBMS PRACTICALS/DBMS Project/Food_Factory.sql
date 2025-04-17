create database Food_Factory;
use Food_Factory;

-- EMPLOYEE TABLE
use Food_Factory;
create table Employee(
ID int not null primary key auto_increment primary key,
Name_ varchar (50) not null,
Address varchar (55) not null,
Designation double not null,
Salary double not null,
DOJ date not null,
Absents int not null,
Received_Salary double not null
); 
show tables;
insert into Employee(Name_,Address,Designation,Salary,DOJ,Absents,Received_Salary)
values('Samruddhi Kangude','Kothrud',1,30500,'2022-10-04',5,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Aditi Magar','Osmanabad',2,40500,'2022-02-04',1,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Soham Pawar','Baramati',3,50500,'2022-02-02',2,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Vaishnavi Gaikwad','Nashik',5,60500,'2022-10-07',3,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Manthan Vaidya','Chakan',4,80500,'2022-06-10',4,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Vikrant Kothimbire','Pune',10,70500,'2022-10-06',6,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Vishal Narwade','Karve Nagar',8,90500,'2022-11-12',8,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Siddharth choudhary','Mumbai',9,37500,'2022-12-11',7,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Vaishnavi Panchal','Latur',6,77500,'2022-11-10',10,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Nikita Nagwade','Parner',7,67500,'2022-10-11',9,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents));
select *from Employee;

-- CUSTOMER TABLE
use Food_Factory;
create table Customer(
ID int not null auto_increment,
Name_ varchar(50) not null,
Address varchar(50) not null,
Purchase_Items varchar(50),
Quantity int not null,
Phone_Number varchar(50) not null,
Product_Amount double not null,
Pay_Amount double not null,
Date_ date,
Remaining_Amount int,
PRIMARY KEY (ID)
);
show tables;
insert into Customer(Name_,Address,Purchase_Items,Quantity,Phone_Number,Product_Amount,Pay_Amount,Date_,Remaining_Amount)
values('Dhanashri choudhary','Parner','2 Burger and 5 Bread',7,'9876543564',
Customer.Quantity*50,300,'2022-1-15',Customer.Product_Amount-Customer.Pay_Amount),
('Vaishnavi Andhale','Ahmadnagar','3 Burger and 6 Bread',9,'9876546564',
Customer.Quantity*50,200,'2022-2-15',Customer.Product_Amount-Customer.Pay_Amount),
('Prachi Yewale','wafgaon','3 Burger and 3 Bread',6,'9976566564',
Customer.Quantity*50,300,'2022-3-14',Customer.Product_Amount-Customer.Pay_Amount),
('Lalita Kshirsagar','Saswad','2 Burger and 2 Bread',4,'6767643564',
Customer.Quantity*50,200,'2022-4-5',Customer.Product_Amount-Customer.Pay_Amount),
('Tejal Sawale','Mawal','5 Burger and 5 Bread',10,'5555543564',
Customer.Quantity*50,100,'2022-6-15',Customer.Product_Amount-Customer.Pay_Amount),
('Divya Gharate','Nashik','9 Burger and 5 Bread',14,'9876543434',
Customer.Quantity*50,250,'2022-7-5',Customer.Product_Amount-Customer.Pay_Amount),
('Nikita Ghadage','mumbai','2 Burger and 10 Bread',12,'8877743564',
Customer.Quantity*50,150,'2022-8-25',Customer.Product_Amount-Customer.Pay_Amount),
('Arati Shinde','Khed','5 Burger and 5 Bread',10,'9866643564',
Customer.Quantity*50,100,'2022-8-10',Customer.Product_Amount-Customer.Pay_Amount),
('Nikita Dhulgande','Latur','4 Burger and 5 Bread',9,'7776543564',
Customer.Quantity*50,200,'2022-9-15',Customer.Product_Amount-Customer.Pay_Amount),
('Sakshi Ghanwat','Khed','4 Burger and 4 Bread',8,'8888543564',
Customer.Quantity*50,170,'2022-10-15',Customer.Product_Amount-Customer.Pay_Amount);
select *from Customer;

-- PURCHASE TABLE
Use food_factory;
create table purchase (
Serial_No int not null auto_increment,
Salad double,
Chocolate double not null,
Bread double not null,
PawBhaji double not null,
MilkShake double not null,
Pizza double not null,
Sandwitch double not null,
Cake double,
Noodles double,
Pasta double,
Dosa double,
Ice_Cream double,
Burger double,
Veg_Biryani double,
sum double,
PRIMARY KEY(Serial_No)
);
show tables;
insert into purchase(Salad,Chocolate,Bread,PawBhaji,MilkShake,Pizza,Sandwitch,Cake,Noodles,Pasta,Dosa,Ice_Cream,Burger,Veg_Biryani,sum)
values(2,5,26,7,6,2,2,2,2,2,2,2,2,2,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani),
(3,5,25,7,7,2,4,5,6,2,7,2,9,8,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani),
(4,5,16,4,6,3,4,4,6,8,9,2,7,2,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani),
(5,5,26,7,6,3,5,2,3,2,2,7,4,2,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani),
(3,5,7,5,6,2,2,2,2,7,4,7,2,3,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani),
(4,3,14,7,6,25,2,7,2,2,5,2,8,2,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani),
(2,5,6,7,6,6,7,5,2,9,2,2,7,2,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani),
(8,5,3,7,6,7,4,2,3,5,7,2,2,2,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani),
(9,5,6,3,6,2,3,2,8,2,9,5,2,2,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani),
(6,7,26,7,3,7,2,7,2,9,9,9,5,2,purchase.Salad+purchase.Chocolate+purchase.Bread+purchase.PawBhaji+purchase.MilkShake+purchase.Pizza+purchase.Sandwitch+purchase.Cake+purchase.Noodles+purchase.Pasta+purchase.Dosa+purchase.Ice_Cream+purchase.Burger+purchase.Veg_Biryani);
select *from purchase;

-- SALE_MAN TABLE
use food_factory;
create table sale_man(
ID int not null auto_increment,
Name_ varchar (50)not null,
Address varchar(50) not null,
Purchase_Items varchar(50),
Quantity int not null,
Phone_Number varchar(50) not null,
sum double not null,
Pay_Amount double not null,
Date_ date,
Remaining_Amount int,
PRIMARY KEY (ID)
);
show tables;
insert into sale_man(Name_,Address,Purchase_Items,Quantity,Phone_Number,sum,Pay_Amount,Date_,Remaining_Amount)
values('Nikita nagwade','parner','5 burgers and 10 breads',15,'9087698769',sale_man.Quantity*50,500,'2022-11-10',sale_man.sum-sale_man.Pay_Amount),
('Vaishnavi andhale','Ahmadnagar','6 burgers and 1 breads',7,'8087623143',sale_man.Quantity*50,200,'2022-03-12',sale_man.sum-sale_man.Pay_Amount),
('Dhanashri chaudhary','Nagar','7 burgers and 5 breads',13,'7087667654',sale_man.Quantity*50,390,'2022-07-11',sale_man.sum-sale_man.Pay_Amount),
('Nikita ghadge','Mumbai','4 burgers and 7 breads',11,'6087654328',sale_man.Quantity*50,450,'2022-11-12',sale_man.sum-sale_man.Pay_Amount),
('Sakshi ghanwat','Khed','3 burgers and 8 breads',11,'5087690909',sale_man.Quantity*50,300,'2022-12-09',sale_man.sum-sale_man.Pay_Amount),
('Divya gharate','Nashik','2 burgers and 10 breads',12,'8889094923',sale_man.Quantity*50,150,'2022-10-10',sale_man.sum-sale_man.Pay_Amount),
('Tejal sawale','Mawal','9 burgers and 9 breads',18,'6765655320',sale_man.Quantity*50,250,'2022-04-11',sale_man.sum-sale_man.Pay_Amount),
('Nikita dhulgande','Latur','1 burgers and 5 breads',6,'7587878323',sale_man.Quantity*50,100,'2022-07-12',sale_man.sum-sale_man.Pay_Amount),
('Prachi yewale','Rajgurunagar','5 burgers and 4 breads',9,'8734343328',sale_man.Quantity*50,150,'2022-09-03',sale_man.sum-sale_man.Pay_Amount),
('Lalita kshirsagar','Saswad','8 burgers and 2 breads',10,'7088884323',sale_man.Quantity*50,100,'2022-10-02',sale_man.sum-sale_man.Pay_Amount);
select *from sale_man;

-- SALARIES TABLE
use food_factory;
create table salaries(
serial_no int auto_increment primary key,
employee_id int,
employee_name varchar(40),
employee_salary int,
foreign key(employee_id) references employee (id)
);
show tables;
insert into salaries(employee_id,employee_name,employee_salary)
values(1,(select name_ from employee where id=1),
(select received_salary from employee where id=1)),
(2,(select name_ from employee where id=2),
(select received_salary from employee where id=2)),
(3,(select name_ from employee where id=3),
(select received_salary from employee where id=3)),
(4,(select name_ from employee where id=4),
(select received_salary from employee where id=4)),
(5,(select name_ from employee where id=5),
(select received_salary from employee where id=5)),
(6,(select name_ from employee where id=6),
(select received_salary from employee where id=6)),
(7,(select name_ from employee where id=7),
(select received_salary from employee where id=7)),
(8,(select name_ from employee where id=8),
(select received_salary from employee where id=8)),
(9,(select name_ from employee where id=9),
(select received_salary from employee where id=9)),
(10,(select name_ from employee where id=10),
(select received_salary from employee where id=10));
select *from salaries;

-- EXPENSES TABLE
use food_factory;
create table expenses(
serial_no int primary key auto_increment,
purchase_product double,
renovation double,
salaries_ double,
sum_of_expenses double,
date_ date
);
show tables;
insert into expenses(purchase_product,renovation,salaries_,sum_of_expenses,date_)
values((select sum(sum)from purchase),500,(select sum(employee_salary)from salaries),
expenses.purchase_product+expenses.renovation+expenses.salaries_,'2022-11-15');
select *from expenses;

-- SALES TABLE
use food_factory;
create table sales(
serial_no int auto_increment primary key,
sale_man_sales int,
customer_sales int);
show tables;
insert into sales(sale_man_sales,customer_sales)
values((select sum from sale_man where id=1),(select product_Amount from customer where id=1)),
((select sum from sale_man where id=2),(select product_Amount from customer where id=2)),
((select sum from sale_man where id=3),(select product_Amount from customer where id=3)),
((select sum from sale_man where id=4),(select product_Amount from customer where id=4)),
((select sum from sale_man where id=5),(select product_Amount from customer where id=5)),
((select sum from sale_man where id=6),(select product_Amount from customer where id=6)),
((select sum from sale_man where id=7),(select product_Amount from customer where id=7)),
((select sum from sale_man where id=8),(select product_Amount from customer where id=8)),
((select sum from sale_man where id=9),(select product_Amount from customer where id=9)),
((select sum from sale_man where id=10),(select product_Amount from customer where id=10));
select *from sales;

-- PROFIT TABLE
use food_factory;
create table profit(
day_ int,
expenses double,
purchase double,
salary double,
daily_profit int,
foreign key(day_) references expenses (serial_no)
);
show tables;
insert into profit(expenses,purchase,salary,daily_profit)
values((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=1),
(select employee_salary from salaries where serial_no=1),
((select sale_man_sales from sales where serial_no=1)+
(select customer_sales from sales where serial_no=1))-(profit.expenses+profit.purchase+profit.salary)),
((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=2),
(select employee_salary from salaries where serial_no=2),
((select sale_man_sales from sales where serial_no=2)+
(select customer_sales from sales where serial_no=2))-(profit.expenses+profit.purchase+profit.salary)),
((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=3),
(select employee_salary from salaries where serial_no=3),
((select sale_man_sales from sales where serial_no=3)+
(select customer_sales from sales where serial_no=3))-(profit.expenses+profit.purchase+profit.salary)),
((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=4),
(select employee_salary from salaries where serial_no=4),
((select sale_man_sales from sales where serial_no=4)+
(select customer_sales from sales where serial_no=4))-(profit.expenses+profit.purchase+profit.salary)),
((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=5),
(select employee_salary from salaries where serial_no=5),
((select sale_man_sales from sales where serial_no=5)+
(select customer_sales from sales where serial_no=5))-(profit.expenses+profit.purchase+profit.salary)),
((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=6),
(select employee_salary from salaries where serial_no=6),
((select sale_man_sales from sales where serial_no=6)+
(select customer_sales from sales where serial_no=6))-(profit.expenses+profit.purchase+profit.salary)),
((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=7),
(select employee_salary from salaries where serial_no=7),
((select sale_man_sales from sales where serial_no=7)+
(select customer_sales from sales where serial_no=7))-(profit.expenses+profit.purchase+profit.salary)),
((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=8),
(select employee_salary from salaries where serial_no=8),
((select sale_man_sales from sales where serial_no=8)+
(select customer_sales from sales where serial_no=8))-(profit.expenses+profit.purchase+profit.salary)),
((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=9),
(select employee_salary from salaries where serial_no=9),
((select sale_man_sales from sales where serial_no=9)+
(select customer_sales from sales where serial_no=9))-(profit.expenses+profit.purchase+profit.salary)),
((select sum_of_expenses from expenses where serial_no=1),
(select sum from purchase where serial_no=10),
(select employee_salary from salaries where serial_no=10),
((select sale_man_sales from sales where serial_no=10)+
(select customer_sales from sales where serial_no=10))-(profit.expenses+profit.purchase+profit.salary));
select *from profit;

-- MENU TABLE
use food_factory;
create table menu(
serial_no int auto_increment primary key,
saleman_list varchar(50),
employee_list varchar(50),
customer_list varchar(50),
profit double,
product double not null,
salaries double not null);
insert into menu(saleman_list,employee_list,customer_list,profit,product,salaries)
values((select name_ from sale_man where id=1),
(select name_ from employee where id=1),
(select name_ from customer where id=1),
(select sum(daily_profit)from profit where day_ =1),
(select sum from purchase where serial_no=1),
(select employee_salary from salaries where serial_no=1)),
((select name_ from sale_man where id=2),
(select name_ from employee where id=2),
(select name_ from customer where id=2),
(select sum(daily_profit)from profit where day_ =1),
(select sum from purchase where serial_no=2),
(select employee_salary from salaries where serial_no=2)),
((select name_ from sale_man where id=3),
(select name_ from employee where id=3),
(select name_ from customer where id=3),
(select sum(daily_profit)from profit where day_ =1),
(select sum from purchase where serial_no=3),
(select employee_salary from salaries where serial_no=3)),
((select name_ from sale_man where id=4),
(select name_ from employee where id=4),
(select name_ from customer where id=4),
(select sum(daily_profit)from profit where day_ =1),
(select sum from purchase where serial_no=4),
(select employee_salary from salaries where serial_no=4)),
((select name_ from sale_man where id=5),
(select name_ from employee where id=5),
(select name_ from customer where id=5),
(select sum(daily_profit)from profit where day_ =1),
(select sum from purchase where serial_no=5),
(select employee_salary from salaries where serial_no=5)),
((select name_ from sale_man where id=6),
(select name_ from employee where id=6),
(select name_ from customer where id=6),
(select sum(daily_profit)from profit where day_ =1),
(select sum from purchase where serial_no=6),
(select employee_salary from salaries where serial_no=6)),
((select name_ from sale_man where id=7),
(select name_ from employee where id=7),
(select name_ from customer where id=7),
(select sum(daily_profit)from profit where day_ =1),
(select sum from purchase where serial_no=7),
(select employee_salary from salaries where serial_no=7)),
((select name_ from sale_man where id=8),
(select name_ from employee where id=8),
(select name_ from customer where id=8),
(select sum(daily_profit)from profit where day_ =1),
(select sum from purchase where serial_no=8),
(select employee_salary from salaries where serial_no=8)),
((select name_ from sale_man where id=9),
(select name_ from employee where id=9),
(select name_ from customer where id=9),
(select sum(daily_profit)from profit where day_ =1),
(select sum from purchase where serial_no=9),
(select employee_salary from salaries where serial_no=9)),
((select name_ from sale_man where id=10),
(select name_ from employee where id=10),
(select name_ from customer where id=10),
(select sum(daily_profit)from profit where day_ =10),
(select sum from purchase where serial_no=1),
(select employee_salary from salaries where serial_no=10));
select *from menu;

drop database Food_Factory;
