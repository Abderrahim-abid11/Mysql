/* trigger like function do something when event happens . */
-- insert , delete , update , ...

create database data;

create table data(
id int,
first_name varchar(20),
last_name varchar(20),
hourly_pay decimal(10, 2) null,
salary decimal (10, 2),
hire_date DATE
);

update data set salary = hourly_pay * 2080;

select *  from data;

id
1   A  a  25.50  53040.00 2023-11-1
2   B  b  15.00  31200.00 2023-11-2
3   C  c  12.50  26000.00 2023-11-1
4   D  d  12.50  26000.00 2023-11-3

/* this the result . */

create trigger befour_hourly_pay_update
before update on data
for each row 
set new.salary = (new.hourly_pay * 2080);

update data set hourly_pay = 50 where id = 1;

/* new if we update some row in hourly_pay its will update
the salary to , and the salary of id 1 will be 104000.00 */

-- and we can add this with insert for fill the salary 
-- of all new ids or employed  .

create trigger befour_hourly_pay_insert
before insert on data
for each row 
set new.salary = (new.hourly_pay * 2080);

-- we can use keywords like new , old , with trigger .



