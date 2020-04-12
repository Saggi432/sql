-- CRUD
-- column attributes
-- CHAR is waste of space so its advisable to use VARCHAR as when we use CHAR it fills the rest as well which are not used as well, resulting in wastage of memory
use sql_store;

select * from customers

-- Inserting a single row
insert into customers
-- DEFAULT so that mysql can generate
-- single quote or double quote does not matter
values (DEFAULT,'satish', 'mandoddi', '1990-01-01', NULL,'address','city','se',DEFAULT)


-- Another way to insert the row
insert into customers (
first_name,
last_name,
birth_date,
address,
city,
state)
-- DEFAULT so that mysql can generate
-- single quote or double quote does not matter
values ('satish', 'mandoddi', '1990-01-01','address','city','se')




-- INSERTING MULTIPLE ROWS

insert into shippers ( name)
values ('shipper1'),
	('shipper2'),
    ('shipper3')
    
    select * from shippers
    
select * from products

insert into products (name,quantity_in_stock,unit_price)
values ('one','9','9.0'),
 ('one','9','9.0'),
 ('one','9','9.0')
 
 
 -- Inserting data into multiple tables
 select * from orders
 
 insert into orders(customer_id,order_date,status)
 values(1,'2019-01-02', 1);
 
 insert into order_items
 values(LAST_INSERT_ID(), 1,1,2.95)
 
 select * from order_items


-- copy date from one table to another table

create table orders_archived as
select * from orders

-- use the sql statment as a subquery
insert into orders_archive
select * from orders
where order_date < 2019-01-01

select * from sql_store.customers

-- invoices_archive - client
use sql_invoicing;
select * from clients

create table invoices_archive as 
select 
*
from invoices i
 join clients c
using(client_id)


select * from invoices

-- UPDATE EXAMPLE

update invoices
set payment_total=10,payment_date='2019-03-01'
where invoice_id=1

-- UPDATE MULTIPLE ROWS

update invoices
set payment_total=10,payment_date='2019-03-01'
where client_id=3

-- DELETE RECORDS

delete from clients
where client_id= (
select * 
from clients
where name = 'myworks')
