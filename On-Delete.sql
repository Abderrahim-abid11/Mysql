/* on delete set null , and on delete cascade , in on delete
set null : whene a FK is deleted , we replace it with NULL
and in on delete cascade will delete the row . */

create database data;

create table customers(
customer_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50)
);

insert into customers (first_name, last_name) values ("user" 
"user1") ("root", "user2") ("admin", "user3");

create table transactions (
transaction_id int primary key auto_increment,
amount decimal(5, 2),
customer_id int
foreing key (customer_id) references customers (customer_id)
);

alter table transaction auto_increment = 1000;
/* start increment from 1000 . */

insert into transacrions (amount, customer_id) values
(5.00, 2),
(6.00, 1),
(7.00, 3),
(8.00, 2);

/* hear we have two tables . */

set foreign_key_checks = 0; --for stop foreing key process .

---------------------------------------/*drop foreign key*/

create table transactions (
transaction_id int primary key auto_increment,
amount decimal(5, 2),
customer_id int
foreing key (customer_id) references customers (customer_id)
on delete set null
);

-- hear we add on delete set null , if we delete same id
-- will replace it with null .

alter table transactions add constraint ft_customer_id 
foreign key (customer_id) references customers (customer_id)
on delete set null;

/* for add foreign key with on delete set null . */

alter table transactions drop constraint ft_customer_id;

/* for drop the foreign key . */

alter table transactions add constraint ft_customer_id 
foreign key (customer_id) references customers (customer_id)
on delete cascade;

/* for add on delete cascade */

