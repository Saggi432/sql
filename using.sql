-- // using clause
-- Instead of on we can just use "using" and only works if the column name is same across different tables

use sql_store;
select 
o.order_id,
c.first_name,
sh.name as shipper
from orders o
join customers c
-- on c.customer_id=o.customer_id
using(customer_id)
left join shippers sh
using (shipper_id)

use sql_invoicing;

-- payments table
-- payment_method
select * from payments
select * from payment_methods
select * from clients


select p.date,c.name, p.amount,pm.name 
from
clients c
join payments p
using (client_id)
join payment_methods pm
-- notice we cannot use using in the below as the column names are different.
on pm.payment_method_id=p.payment_method
