/* date : we can add date or time like values . */

create table date_time(
my_date DATE,
my_time TIME,
my_datetime DATETIME
);

insert into data_time values (current_date(), current_time(), 
now()); /* hear we add date and time and date+time . */

