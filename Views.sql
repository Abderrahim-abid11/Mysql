/* views is virtual table based on the result-set of
on sql statement , so we can use select with logical 
operator and save the result in views tables . */

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

create view view_name as 
select first_name, last_name from data;
/* and we will have new view . */

select * from view_name;
/* and we can use select the result to . */

drop view view_name;
/* for drop the view . */

/* and if we add new data to table view will update to . */

