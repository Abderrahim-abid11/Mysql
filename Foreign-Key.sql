
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


select * from customers;
+-------------+------------+-----------+
| costomer_id | first_name | last_name |
+-------------+------------+-----------+
|           1 | root       | user1     |
|           2 | admin      | user2     |
|           3 | user       | user3     |
+-------------+------------+-----------+

select * from transactions;
+----------------+--------+-------------+
| transaction_id | amount | customer_id |
+----------------+--------+-------------+
|            100 |   5.00 |           2 |
|            101 |   6.00 |           1 |
|            102 |   7.00 |           3 |
|            103 |   8.00 |           2 |
+----------------+--------+-------------+


/* 
we can use join to get the data link between these tables .
*/


