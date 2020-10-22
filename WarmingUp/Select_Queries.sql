USE `company`;


-- aList all of the unique items in alphabetical order.
select distinct Item 
from Sales 
order by Item;

-- b)List all of the customers who bought at least 1 Hammer.
select CustomerName
from sales 
where item = 'Hammer' AND Qty >=1;

-- c)List all of the items bought on February 25th, 2020. Include the item and customer name listed by the
-- items in alphabetical order.

select item, CustomerName
from sales 
 where Date = '2012-02-25'
order by item;
-- d)List all of the items bought by “Omar Ahmed” on January 21st, 2020.
select item
from sales 
 where CustomerName = 'Omar Ahmed' and Date = '2020-01-21';

-- e)What is the grand total in sales? Sales is calculated by multiplying qty by price for each row.
select sum(qty*Price) as grand_total
from sales;
-- f)What is the average quantity of items that were bought by each customer during the month of March
-- 2020? Display results as “Avg Quantity”.    
select avg(qty) as 'Avg Quantity',  CustomerName
from sales
where date >='2020-03-01'and date <='2020-03-31'
group by CustomerName;


-- g)What is the average sales for all the orders during the month of January 2020? 
-- Display the amounts as “Avg Sales”. Sales is calculated by multiplying qty by price for each row.
select avg(qty*Price) as 'Avg Sales'
from sales
where date >='2020-01-01'and date <='2020-01-31';



