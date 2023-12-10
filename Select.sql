
create table data(
id int primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
age int default 0
);


select * from data; /* select all from data .*/
select first_name, last_name from data; 
/* select first_name and last_name columns .*/
select * from data where id = 1 and id = 2; 
/* select row id = 1 and row id = 2 .*/

