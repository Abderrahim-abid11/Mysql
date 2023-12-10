/* we can use union for combines the results of two or 
more tables or statements . */

create database data;

create table data(
id int,
first_name varchar(20),
last_name varchar(20),
age int
);

create table new_data(
id int,
first_name varchar(20),
last_name varchar(20),
age int
);

select * from data union select * from new_data;
/* and I get data and new_data columns . */

select * from data union all select * from new_data;
/* hear we can get duplicate values */

