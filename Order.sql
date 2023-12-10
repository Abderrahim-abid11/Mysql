/* we can use order to order the output query */

create database data;

create table data(
id int,
first_name varchar(20),
last_name varchar(20),
age int
);


insert into data values 
(1, "root", "kill", 23),
(2, "root", "root", 24),
(3, "kill", "root", 25),
(4, "kill", "kill", 26)
);


select * from data order by first_name;
/* order by first_name from a to z */

select * from data order by first_name DESC;
/* order by first_name from z to a */
