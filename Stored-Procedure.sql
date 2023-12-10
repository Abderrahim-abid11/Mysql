/* is a prepared sql code that we can save great if there's
a query that we write often . */

delimiter $$
create procedure name()
begin
  select * from data;
end $$
delimiter;

call name()

-- its like function can store same query .

drop procedure name; -- for drop procedure .

delimiter $$
create procedure name(in id int)
begin
  select * from data where id = id;
end $$
delimiter;

call name(5)

/* this like we pass argement to function . */
/* and will we get the row id = 5 . */


