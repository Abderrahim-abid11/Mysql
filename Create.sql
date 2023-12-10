/* this for create database and table . */

show databases; 
show tables;

use name_database;

drop name_database; 
drop table name_table;


create database data;

create table data(
id int,
first_name varchar(20),
last_name varchar(20),
age int
);

alter table name add age INT; -- add new column .

alter table name rename column age to Age; -- rename column .

alter table name modify column last_name VARCHAR(20);
-- modify column .

alter table name modify Age INT after name_id; 
-- change column place .

alter table name drop column Age; -- drop column .


