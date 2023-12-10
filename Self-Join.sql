/* selef join used to join table to itself , so we can 
use self join to compare rows of the same table . */

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

alter table data add referral_id int;
/* we add new column to table . */

update data set referral_id = 1 where id = 2;
/* we update the referral_id to 1 in id = 2 */

update data set referral_id = 2 where id = 3;
update data set referral_id = 2 where id = 4;

select * from data as a inner join data as b on 
a.referral_id = b.id;

id f      l     rf id f    l      rf
2  root   root  1  1  root kill
3  kill   root  2  2  root root   1
4  kill   kill  2  2  root root   1

/* this what we get with jelf join , the id = 1 referral 
of id 2 and id = 2 referral of id 3 and 4 and id = 1 
he dont have referral id like he the boos . */

/* and we can use left and right . */

