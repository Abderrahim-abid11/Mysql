/* null and not null we can used with column value . */

create database data;

create table data(
id int,
first_name varchar(20),
last_name varchar(20),
age int null
);

/* hear age can be null 0 if we not enter value . */

alter table name modify last_name VARCHAR(15) not null;
/* we can modify the column and make it not null  */

