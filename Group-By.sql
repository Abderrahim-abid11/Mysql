/* group by we can use it for aggregate all rows by 
a specific column often used with aggregate functions :
sum() , max() , min() , avg() , count() */

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

select sum(amount), order_date 
from data group by order_date;  

sum(amount)  order_date
25.00        2023-11-1
16.00        2023-11-2
11.00        2023-11-3

-- hear we get return sum amount group by order_date column
-- so we group by can be good for filter data .

select sum(amount), order_date 
from data group by order_date
having sum(amount) > 11.00;

sum(amount)  order_date
25.00        2023-11-1
16.00        2023-11-2

-- hear we use having like where to get data .
-- and we can add more to filter data .


