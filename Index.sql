/* index (BTree data structure), we use index for find 
values within a specific column more quickly . */

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

show indexes from data;
/* index information */

create index name_idx on data (first_name);
show indexes from data;
--we add new index in indexes table .

select * from data where first_name = "root";
/* this will be fast to get result . */

create index name_idx on data (first_name, last_name)
/* we search about two columns with index . */

alter table data drop index name_idx;
/* for drop index . */

-- so we can use index to make search process fast .

