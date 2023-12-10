/* limit close for limit the recored number */

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


select * from data limit 1;
/* I get frist row */

select * from data limit 2;
/* I get row 1 and 2 */

select * from data desc limit 1;
/* I get last row */

select * from data limit 1, 1;
/* I get row 2 */

select * from data limit 3, 1;
/* I get row 4 */

select * from data limit 1, 2;
/* I get row 3*/



