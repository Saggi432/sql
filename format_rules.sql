/* Rule 1: Rule of Indentation */
use sql_invoicing;
select
	sum(client_id)
from
	clients
    
/* Rule 2: Rule of Capitalization */
SELECT 
	SUM(client_id)
FROM
	clients

/* Rule 3: Rule of Alias */

SELECT 
	FTS.custom AS customerkey
    
FROM 
	FactInternetSale RIS
    
/* Rule 4: Rule of Commas*/
/* Especially helps during commenting as you test it*/
SELECT
	CustomerKey
    ,ProductKey
    ,PromotionKey
FROM
	SampleDB
    
/* Rule 5: Rule of Join Clause*/

SELECT 
	FTS.CustomerKey AS CustomerKey
    ,DC.AddressLine1 AS AddressLine1
FROM
	FactInternetSales FIS
    JOIN DimCustomer DC
		ON
        (
			FIS.CustomerKey = DC.CustomerKey
            AND DC.e = "Degree"
            OR DC.g = "Sample"
		)
/* Rule 6: Rule of where clause */


SELECT 
	FIC.Customerkey AS CustomerKey
    
FROM 
	FactInternetSales FIS
	JOIN DimCustomer DC ON (FIS.CustoemrKey = DC.CustomerKey)
WHERE
	-- ( 1-1 relationShip, Helps in commenting out the code)
    (1=1)
    AND DC.EnglishEducation = 'Degree'
    AND Dc.EnglishOcupaation = "Professional"
