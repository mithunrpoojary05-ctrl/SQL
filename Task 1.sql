create database FinancialDB;
use FinancialDB;
create table Customers(
customer_id int primary key,
customer_name varchar(40) not null,
email varchar(40),
phone varchar(50)
);
create table Accounts(
account_id int primary key,
customer_id int not null,
account_type varchar(50),
balance decimal(12,2),
foreign key (customer_id) references Customers(customer_id)
);
create table Ledgers(
ledger_id int primary key,
account_id int not null,
ledger_name varchar(50),
balance decimal(12,2),
foreign key (account_id) references Accounts(account_id)
);
create table Transactions(
transaction_id int primary key,
account_id int not null,
transaction_date Date,
transaction_type varchar(50),
amount decimal(12,2),
foreign key (account_id) references Accounts(account_id)
);
create table invoice(
invoice_id int primary key,
customer_id int not null,
invoice_date date,
due_date date,
amount decimal(12,2),
status varchar(50),
foreign key (customer_id) references Customers(customer_id)
);
create table payments(
payment_id int primary key,
invoice_id int not null,
payment_date date,
amount decimal(12,2),
payment_method varchar(50),
foreign key (invoice_id) references Invoice(invoice_id)
);

insert into Customers values
(1011,"Manav","manav@gmail.com",9876534563),
(1012,"Kaali","kaali@gmail.com",9786345012),
(1013,"Harsha","harsha@gmail.com",9087524192);
select * from Customers;

insert into Accounts values
(2010,1011,"current",45000),
(2011,1012,"savings",32000),
(2012,1013,"current",56000);
select * from Accounts;

insert into Ledgers values
(3001,2010,"current ledger",45000),
(3002,2011,"savings ledger",32000),
(3003,2012,"current ledger",56000);
select * from Ledgers;

insert into Transactions values
(4001,2010,"2026-03-12","withdraw",6500.00),
(4002,2011,"2026-08-03","deposit",7800.00),
(4003,2012,"2026-11-29","withdraw",12000.00);
select * from Transactions;

insert into invoice values
(5010,1011,"2026-03-12","2026-04-18",8000.00,"pending"),
(5011,1012,"2026-08-03","2026-09-10",6000.00,"paid"),
(5012,1013,"2026-11-29","2026-01-03",4600.00,"paid");
select * from Invoice;

insert into Payments values
(6100,5010,"2026-04-22",8000.00,"UPI"),
(6101,5011,"2026-09-18",6000.00,"cash"),
(6102,5012,"2026-01-11",4600.00,"cash");

select * from Customers;
select * from Accounts;
select * from Ledgers;
select * from transactions;
select * from Invoice;
select * from Payments;