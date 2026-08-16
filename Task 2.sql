create database FinancialDB;
use FinancialDB;
create table Customers(
Customer_id int primary key,
Customer_name varchar(50),
Email varchar (50),
Phone varchar(50)
);

create table Accounts(
Account_id int primary key,
Customer_id int not null,
Account_type varchar(50),
Balance int,
foreign key (customer_id) references Customers(customer_id)
);

create table Transactions(
Transaction_id int primary key,
Account_id int not null,
Transaction_date date,
Transaction_type varchar(50),
Amount decimal(12,2),
foreign key (Account_id) references Accounts(Account_id)
);

insert into Customers values
(01,"karan","karan@gmail.com",9485573592),
(02,"Arya","arya@gmail.com",9867435612),
(03,"Aryan","aryan@gmail.com",9878675431);
select * from Customers;

insert into Accounts values
(101,01,"savings",40000),
(102,02,"current",57000),
(103,03,"current",81000);
select * from Accounts;

insert into Transactions values
(1001,101,"2026-09-12","withdraw",3400),
(1002,102,"2026-03-28","deposit",4000),
(1003,103,"2026-05-15","deposit",8500);
select * from Transactions;

alter table Transactions add Payments varchar(50);
select * from Transactions;

create table temproary_table(
temproary_id int
);
drop table temproary_table;