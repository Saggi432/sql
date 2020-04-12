use sql_store;
-- SELECTING BASED ON NULL VALUES
-- select * from customers 
-- where phone is not null
-- where phone is null
-- select * from orders
-- where comments is null and shipped_date is null

-- BY DEFAULT THEY ARE SORTED BY THE PRIMARY KEY, BY USING ORDER_BY
-- WE ARE MAKING SURE TO SORT BY THE NON PRIMARY KEYS INSTEAD.
-- select * from customers
-- order by state desc,first_name desc
select *, quantity*unit_price AS total_price from order_items 
where order_id = '2'
order by quantity*unit_price desc


