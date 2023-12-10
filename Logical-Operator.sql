
/*
= , > , < , => , <= , != , not null , null , as , and , 
or , not , and not , or not , & , | , between AND , 
column in ("", "", "") , ... .
#
we use where for condition .
#
% , _ : wild card characters .
column like a% : string start with character a .
column like %a : string end with character a .
column like %a% : string start and end .
column like abd% : string start  .
column like "_bid" : string start with randem character .
column like "_b%" : start with randem and search from b .

*/


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


select * from data where id = 1 and id = 2;
/* we get row id 1 and 2 */

select * from data where first_name = k% and last_name = k%;
/* here we get rwo that first_name start with k and 
last_name start with k to . */

select * from data where id between 1 and 3;
/* hear we get row id 1 2 3 . */


