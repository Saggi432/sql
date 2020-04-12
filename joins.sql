-- Illustrative examples on different joings
-- Joining same tables
-- joining tables in different databases
-- joinings multiples tables
-- Compound Join Conditions
-- implicit join
-- outer join(left join and right join)
-- selft outer joins




-- use sql_store;
-- JOIN COLUMNS FROM MULTIPLE TABLES
-- prefixing the identital name with the table like orders.customer_id
-- select order_id, first_name, last_name, orders.customer_id from orders 
-- join orders table with customers table based on customer id
-- join customers on orders.customer_id=customers.customer_id

-- // If the column is same then prefix it with the table name
-- // you can use join or join by
-- select order_id, products.unit_price, products.product_id, quantity, products.name 
-- from order_items
-- join products on order_items.product_id=products.product_id 
-- order by products.unit_price desc

-- //JOINING ACROSS MULTIPLE DATABASES

-- select * 
-- from sql_store.order_items oi
-- join sql_inventory.products p
-- on oi.product_id=p.product_id

-- // SELF JOINS
-- select e.first_name, e.last_name, m.first_name as manager 
-- from sql_hr.employees e
-- join sql_hr.employees m
-- on e.reports_to=m.employee_id

-- // JOIN MORE THAN 2 TABLES
-- use sql_store;
-- select c.first_name,c.last_name,o.order_id, os.order_status_id as status
-- from orders o
-- join customers c
-- on o.customer_id=c.customer_id
-- join order_statuses os
-- on os.order_status_id=o.status

-- // JOIN ALL THESE 3 tables and produce a report payments_methods, clients, payments table




-- use sql_invoicing;
-- select c.client_id, p.payment_method,p.amount, p.date, c.name,pm.name as type
-- from clients c
-- join payments p
-- on c.client_id=p.client_id
-- join payment_methods pm
-- on p.payment_method=pm.payment_method_id

-- // COMPOUND JOIN CONDITION joining based on more one column
-- // composite primary key has more than one column

-- use sql_store;
-- select * from order_items oi
-- join order_item_notes oin
-- on
-- oi.order_id=oin.order_id
-- and oi.product_id=oin.product_id

-- // Normal Join

use sql_store;
-- select * from orders o
-- join customers c
-- on o.customer_id=c.customer_id

-- // IMPLICIT JOIN

-- select * 
-- from orders o, customers c
-- where o.customer_id=c.customer_id

-- outer joins

select c.customer_id,
        c.first_name,
        o.order_id
from customers c
join orders o
on c.customer_id=o.customer_id
order by customer_id asc


-- 2 types of outer joins, outer joins are used to display the columns which are not matching the criteria as well.
-- when i say left join that means that i am trying to fetch all the matching conditions even if the left  specified condition in join
-- does not exist
-- left join and right join

select c.customer_id,
        c.first_name,
        o.order_id
from customers c
left join orders o
on c.customer_id=o.customer_id
order by customer_id asc

select c.customer_id,
        c.first_name,
        o.order_id
from customers c
left join orders o
on c.customer_id=o.customer_id
order by customer_id asc

-- product id, name, quantity needs to be displayed
-- how many times each item is ordered
-- products table and order_items table
select * from order_items
select * from products

select p.product_id,p.name,oi.quantity from
products p
left join order_items oi
on p.product_id=oi.product_id



select c.customer_id,
        c.first_name,
        o.order_id
from customers c
left join orders o
on c.customer_id=o.customer_id
left join shippers sh
on o.shipper_id - sh.shipper_id
order by customer_id asc

-- // SELF OUTER JOINS

use sql_hr;
select 
e.employee_id,
e.first_name,
m.first_name as manager
from employees e
-- BY DOING THE BELOW OUTERJOIN WE ARE DISPLAYING THE employee eventhough he does not have a reports_to, by using left join strategy
left join employees m
on e.reports_to=m.employee_id


