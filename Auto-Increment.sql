/* we can use auto_increment for increment the id number . */

create table date (
  id INT primary key auto_increment,
  first_name VARCHAR(15),
  last_name VARCHAR(15),
);

insert into date (first_name, last_name) values ("user", 
"user"); /* we add first_name and last_name but id will start
from 1 evry time we add row . */

alter table data auto_increment = 100;
/* for start from 100 */
