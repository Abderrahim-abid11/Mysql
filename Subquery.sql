/* subquery is query with another query . */

create database data;

create table data(
id int,
first_name varchar(20),
last_name varchar(20),
pay int,
age int
);

insert into data values 
(1, "root", "kill",10.00, 23),
(2, "root", "root",11.00, 24),
(3, "kill", "root",13.00, 25),
(4, "kill", "kill",15.00, 26)
);

select first_name, last_name, 
(select avg(pay) from data) as avg_pay
from data;
-- hear we get first_name and last_name and avg pay with 
-- another query in new column name name avg_pay .

select first_name, last_name, pay, from data where pay > 
(select avg(pay) from data);

/* hear we get the first_name and last_name and pay that 
who have pay > avg pay . */


