-- Illustrative examples on different joings
-- Joining same tables
-- joining tables in different databases
-- joinings multiples tables
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




use sql_invoicing;
select c.client_id, p.payment_method,p.amount, p.date, c.name,pm.name as type
from clients c
join payments p
on c.client_id=p.client_id
join payment_methods pm
on p.payment_method=pm.payment_method_id


