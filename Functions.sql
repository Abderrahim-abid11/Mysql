/* in Mysql we can use some defualt function . */


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

select count(id) from data;
/* return the count of id rows */
select count(id) as count_id from data;
/* return  count with namecolumn */

select max(age) as big_persion from data;
/* we use max function for get the big age number */

/* and we can use min, avg, sum, cocat, and more . */





