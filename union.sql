-- Using Union operator to combine data between 2 queries
-- from same table or from different table

-- MAKE SURE THE NUMBER OF COLUMNS ARE ALWAYS THE SAME.


use sql_store;

select order_id,
order_date,
'Archived' as status
from orders
where
order_date < '2019-01-01'
-- BY USING THE BELOW STATEMENT WE ARE COMBINING THE 2 STATEMENTS
UNION
select order_id,
order_date,
'Active' as status
from orders
where
order_date >= '2019-01-01'
order by order_id asc

select first_name
from customers
union
select name
from shippers

-- EXERCISE 
-- sort by first_name and combine 3 queries
-- include another column

select customer_id,first_name, points, 'bronze' as type

from customers 
where 
points < 2000
UNION
select customer_id,first_name, points, 'Silver' as type

from customers 
where 
points < 3000 and points > 2000
UNION
select customer_id,first_name, points, 'gold' as type

from customers 
where 
points > 3000
order by first_name
-- 
