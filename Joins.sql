/*
inner : get valid data .
left : get valid and invalid data from left table .
right : get valid and invalid data from right table .
*/


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

insert into customers (first_name, last_name) values 
("cusomer" "user4");

+-------------+------------+-----------+
| costomer_id | first_name | last_name |
+-------------+------------+-----------+
|           1 | root       | user1     |
|           2 | admin      | user2     |
|           3 | user       | user3     |
|           4 | customer   | user4     |
+-------------+------------+-----------+


insert into transacrions (amount, customer_id) values
(1.00, NULL);

select * from transactions;
+----------------+--------+-------------+
| transaction_id | amount | customer_id |
+----------------+--------+-------------+
|            100 |   5.00 |           2 |
|            101 |   6.00 |           1 |
|            102 |   7.00 |           3 |
|            103 |   8.00 |           2 |
|            104 |   1.00 |        NULL |
+----------------+--------+-------------+



select * from  transactions inner join customers on 
transactions.customer_id = customers.customer_id;

+----------------+--------+-------------+-------------+------------+-----------+
| transaction_id | amount | customer_id | costomer_id | first_name | last_name |
+----------------+--------+-------------+-------------+------------+-----------+
|            100 |   5.00 |           2 |           2 | admin      | user2     |
|            101 |   6.00 |           1 |           1 | root       | user1     |
|            102 |   7.00 |           3 |           3 | user       | user3     |
|            103 |   8.00 |           2 |           2 | admin      | user2     |
+----------------+--------+-------------+-------------+------------+-----------+


select * from  transactions left join customers on 
transactions.customer_id = customers.customer_id;

+----------------+--------+-------------+-------------+------------+-----------+
| transaction_id | amount | customer_id | costomer_id | first_name | last_name |
+----------------+--------+-------------+-------------+------------+-----------+
|            100 |   5.00 |           2 |           2 | admin      | user2     |
|            101 |   6.00 |           1 |           1 | root       | user1     |
|            102 |   7.00 |           3 |           3 | user       | user3     |
|            103 |   8.00 |           2 |           2 | admin      | user2     |
|            104 |   1.00 |        NULL |        NULL | NULL       | NULL      |
+----------------+--------+-------------+-------------+------------+-----------+


select * from  transactions right join customers on 
transactions.customer_id = customers.customer_id;

+----------------+--------+-------------+-------------+------------+-----------+
| transaction_id | amount | customer_id | costomer_id | first_name | last_name |
+----------------+--------+-------------+-------------+------------+-----------+
|            100 |   5.00 |           2 |           2 | admin      | user2     |
|            101 |   6.00 |           1 |           1 | root       | user1     |
|            102 |   7.00 |           3 |           3 | user       | user3     |
|            103 |   8.00 |           2 |           2 | admin      | user2     |
|           NULL |   NULL |        NULL |           4 | customer   | user4     |
+----------------+--------+-------------+-------------+------------+-----------+


select * from  customers inner join transactions on 
customers.customer_id = transactions.customer_id;

+-------------+------------+-----------+----------------+--------+-------------+
| costomer_id | first_name | last_name | transaction_id | amount | customer_id |
+-------------+------------+-----------+----------------+--------+-------------+
|           2 | admin      | user2     |            100 |   5.00 |           2 |
|           1 | root       | user1     |            101 |   6.00 |           1 |
|           3 | user       | user3     |            102 |   7.00 |           3 |
|           2 | admin      | user2     |            103 |   8.00 |           2 |
+-------------+------------+-----------+----------------+--------+-------------+

/* this is join we can get data from two tables . */


