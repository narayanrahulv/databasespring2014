--1. name & city of customers who live in A city where the MOST number of products are made
Select c.name
	,c.city
From products p
Inner Join customers c on
	p.city = c.city
Where 	
	p.quantity = (select max(quantity) from products)

--2. name & city of customers who live in ANY city where the MOST number of products are made
Select c.name
	,c.city
From customers c
Where c.city in (select city from products where quantity = (select max(quantity) from products))	

--3. list the products whose priceUSD is above the average priceUSD
Select *
From products p
Where p.priceusd > (select avg(priceusd)
			from products)	

--4. show the customer name, pid ordered, and the dollars for all customer orders sorted by dollars from high to low			
Select c.cid
	, c.name
	, o.pid
	, o.dollars
From customers c
Inner join orders o
	on c.cid = o.cid
Order by 
	o.dollars desc

--5. show all customers names (in order) and their total ordered, and nothing more. Use coalesce to avoid showing NULL's
Select c.name
	,Sum(o.qty) totalorders
From customers c
Left join orders o
	on c.cid = o.cid
Group by c.name	
Order by c.name

--6. show the names of all customers who bought products from agents based in new york along with the names of products they ordered and agent names	
Select c.cid
	,c.name
	,a.name
	,p.name
From customers c
Inner join orders o
	on c.cid = o.cid
Inner join agents a
	on o.aid = a.aid
Inner join products p
	on o.pid = p.pid
Where
	lower(a.city) = 'new york'

--7. check the accuracy of the dollars column in the orders table. Means calculating orders.dollars from other data in other tables and then
--comparing those values to the values in orders.dollars
--formula = quantity of order times price of product in order less customers dicount
--ex: if order quantity = 1000 and price of pid in order is 0.5 and customer discount is 10 then dollars = (1000 * 0.5) - ((1000 * 0.5) * 0.10)
Select (o.qty * p.priceusd) - ((o.qty * p.priceusd) * (c.discount/100)) as ordervaluecalculated
	,o.dollars as realordervalue
From orders o
Inner join customers c
	on o.cid = c.cid
Inner join products p
	on o.pid = p.pid