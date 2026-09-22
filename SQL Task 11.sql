use my_database;
CREATE TABLE monthly_finance (
    id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    month_name VARCHAR(20),
    sales DECIMAL(10,2),
    expenses DECIMAL(10,2),
    tax_rate DECIMAL(5,2)
    );
    
INSERT INTO monthly_finance
VALUES
(1, 'Rahul', 'January', 50000, 30000, 10),
(2, 'Priya', 'January', 60000, 35000, 10),
(3, 'Anu', 'January', 45000, 25000, 10),

(4, 'Rahul', 'February', 55000, 32000, 10),
(5, 'Priya', 'February', 65000, 38000, 10),
(6, 'Anu', 'February', 50000, 27000, 10),

(7, 'Rahul', 'March', 60000, 34000, 10),
(8, 'Priya', 'March', 70000, 40000, 10),
(9, 'Anu', 'March', 55000, 30000, 10);
select * from monthly_finance;

DELIMITER //
create procedure calculateTax_t(
    in p_sales decimal(10,2),
    in p_tax_rate decimal(10,2)
    )
    
begin 
     select P_sales as sales,
     p_tax_rate as tax_rate,
     p_sales*p_tax_rate/100 as tax_amount;
end //
DELIMITER ;     

call calculateTax_t(5000,18);





