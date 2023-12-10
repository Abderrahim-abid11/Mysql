/* unique value for column */

create database data;

create table data(
id int unique,
first_name varchar(20),
last_name varchar(20),
age int default 0
);


alter table name add constraint unique (name_id);
/* for add unique to column */
