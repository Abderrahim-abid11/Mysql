/* with key word defualt we can 
add defualt value to column */

create database data;

create table data(
id int,
first_name varchar(20),
last_name varchar(20),
age int default 0
);
