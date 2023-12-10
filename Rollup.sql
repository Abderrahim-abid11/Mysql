/* rollup is extension of the group by clause can produces
another row and shows the grand total . */

create database data;

create table data(
id int,
first_name varchar(20),
last_name varchar(20),
amount int,
order_date DATE
);

insert into data values 
(1, "root", "kill", 10.00, 2023-11-1),
(2, "root", "root", 15.00, 2023-11-1),
(3, "kill", "root", 16.00, 2023-11-2),
(4, "kill", "kill", 11.00, 2023-11-3)
);

select sum(amount), order_date from data 
group by order_date with rollup;

sum(amount)  order_date
25.00        2023-11-1
16.00        2023-11-2
11.00        2023-11-3
51.00

/* so hear we get the sum amount order by order_date and
we get the sum of amount number . */


