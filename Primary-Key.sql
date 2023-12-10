/* primary key used for unique and not null column like id */

create table data (
transaction_id int primary key,
amount decimal(5, 2)
);

/* for add primary key constraint to table :  */

alter table data add constraint primary key (transaction_id);

/* now the transaction_id must be unique and not null . */
