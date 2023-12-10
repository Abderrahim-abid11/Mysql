/* check keyword or check contraint can used for check the 
value if valid or not  */

create database data;

create table data(
id int,
first_name varchar(20),
last_name varchar(20),
age int,
constraint check_age check (age >= 18)
);

alter table name add contraint check_age check(age >= 18);
/* for add check to column */

alter table name drop check check_age;
/* for drop check from column */

