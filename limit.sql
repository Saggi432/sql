use sql_store;
select * from customers
-- Skip the first 6 and get the rest 3
-- limit 6, 3
-- Get 3 loyal customers
order by points desc
-- LIMIT CLAUSE SHOULD ALWAYS BE AT THE END
limit 3


